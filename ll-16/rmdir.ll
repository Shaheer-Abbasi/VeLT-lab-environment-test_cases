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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !449
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !414
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !439
@.str.1.41 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !441
@.str.2.43 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !443
@.str.3.42 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !445
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !447
@.str.4.36 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !451
@.str.5.37 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !453
@.str.6.38 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !458
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !463
@.str.61 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !469
@.str.1.62 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !471
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !473
@.str.65 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !504
@.str.1.66 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !507
@.str.2.67 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !509
@.str.3.68 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !514
@.str.4.69 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !516
@.str.5.70 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !518
@.str.6.71 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !520
@.str.7.72 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !522
@.str.8.73 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !524
@.str.9.74 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !526
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.65, ptr @.str.1.66, ptr @.str.2.67, ptr @.str.3.68, ptr @.str.4.69, ptr @.str.5.70, ptr @.str.6.71, ptr @.str.7.72, ptr @.str.8.73, ptr @.str.9.74, ptr null], align 8, !dbg !528
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !539
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !553
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !591
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !598
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !555
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !600
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !543
@.str.10.77 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !560
@.str.11.75 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !562
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !564
@.str.13.76 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !566
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !568
@.str.83 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !606
@.str.1.84 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !609
@.str.2.85 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !611
@.str.3.86 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !613
@.str.4.87 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !615
@.str.5.88 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !617
@.str.6.89 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !622
@.str.7.90 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !627
@.str.8.91 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !629
@.str.9.92 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !631
@.str.10.93 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !636
@.str.11.94 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !641
@.str.12.95 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !643
@.str.13.96 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !645
@.str.14.97 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !650
@.str.15.98 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !652
@.str.16.99 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !657
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.104 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !662
@.str.18.105 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !664
@.str.19.106 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !666
@.str.20.107 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !668
@.str.21.108 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !670
@.str.22.109 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !672
@.str.23.110 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !674
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !679
@exit_failure = dso_local global i32 1, align 4, !dbg !687
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !693
@.str.1.123 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !696
@.str.2.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !698
@.str.140 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !700
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !703
@.str.145 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !718
@.str.1.146 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !721

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !800 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !804, metadata !DIExpression()), !dbg !805
  %2 = icmp eq i32 %0, 0, !dbg !806
  br i1 %2, label %8, label %3, !dbg !808

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !809, !tbaa !811
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !809
  %6 = load ptr, ptr @program_name, align 8, !dbg !809, !tbaa !811
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !809
  br label %34, !dbg !809

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !815
  %10 = load ptr, ptr @program_name, align 8, !dbg !815, !tbaa !811
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !815
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !817
  %13 = load ptr, ptr @stdout, align 8, !dbg !817, !tbaa !811
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !817
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !818
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !818
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !819
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !819
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !820
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !820
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !821
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !821
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !822
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !822
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !823, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !835, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata ptr poison, metadata !835, metadata !DIExpression()), !dbg !840
  tail call void @emit_bug_reporting_address() #38, !dbg !842
  %20 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !843
  call void @llvm.dbg.value(metadata ptr %20, metadata !838, metadata !DIExpression()), !dbg !840
  %21 = icmp eq ptr %20, null, !dbg !844
  br i1 %21, label %29, label %22, !dbg !846

22:                                               ; preds = %8
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str.49, i64 noundef 3) #39, !dbg !847
  %24 = icmp eq i32 %23, 0, !dbg !847
  br i1 %24, label %29, label %25, !dbg !848

25:                                               ; preds = %22
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #38, !dbg !849
  %27 = load ptr, ptr @stdout, align 8, !dbg !849, !tbaa !811
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !849
  br label %29, !dbg !851

29:                                               ; preds = %8, %22, %25
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !835, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !840
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #38, !dbg !852
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3) #38, !dbg !852
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #38, !dbg !853
  %33 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #38, !dbg !853
  br label %34

34:                                               ; preds = %29, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !854
  unreachable, !dbg !854
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !855 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !860 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !866 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !869 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !159 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !163, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata ptr %0, metadata !164, metadata !DIExpression()), !dbg !872
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !873, !tbaa !874
  %3 = icmp eq i32 %2, -1, !dbg !876
  br i1 %3, label %4, label %16, !dbg !877

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #38, !dbg !878
  call void @llvm.dbg.value(metadata ptr %5, metadata !165, metadata !DIExpression()), !dbg !879
  %6 = icmp eq ptr %5, null, !dbg !880
  br i1 %6, label %14, label %7, !dbg !881

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !882, !tbaa !883
  %9 = icmp eq i8 %8, 0, !dbg !882
  br i1 %9, label %14, label %10, !dbg !884

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !885, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !891, metadata !DIExpression()), !dbg !892
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.20) #39, !dbg !894
  %12 = icmp eq i32 %11, 0, !dbg !895
  %13 = zext i1 %12 to i32, !dbg !884
  br label %14, !dbg !884

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !896, !tbaa !874
  br label %16, !dbg !897

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !898
  %18 = icmp eq i32 %17, 0, !dbg !898
  br i1 %18, label %22, label %19, !dbg !900

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !901, !tbaa !811
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !901
  br label %122, !dbg !903

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !168, metadata !DIExpression()), !dbg !872
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.21) #39, !dbg !904
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !905
  call void @llvm.dbg.value(metadata ptr %24, metadata !169, metadata !DIExpression()), !dbg !872
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !906
  call void @llvm.dbg.value(metadata ptr %25, metadata !170, metadata !DIExpression()), !dbg !872
  %26 = icmp eq ptr %25, null, !dbg !907
  br i1 %26, label %54, label %27, !dbg !908

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !909
  br i1 %28, label %54, label %29, !dbg !910

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !171, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 0, metadata !175, metadata !DIExpression()), !dbg !911
  %30 = icmp ult ptr %24, %25, !dbg !912
  br i1 %30, label %31, label %52, !dbg !913

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !872
  %33 = load ptr, ptr %32, align 8, !tbaa !811
  br label %34, !dbg !913

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !171, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %36, metadata !175, metadata !DIExpression()), !dbg !911
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !914
  call void @llvm.dbg.value(metadata ptr %37, metadata !171, metadata !DIExpression()), !dbg !911
  %38 = load i8, ptr %35, align 1, !dbg !914, !tbaa !883
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !914
  %41 = load i16, ptr %40, align 2, !dbg !914, !tbaa !915
  %42 = freeze i16 %41, !dbg !917
  %43 = lshr i16 %42, 13, !dbg !917
  %44 = and i16 %43, 1, !dbg !917
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !918
  call void @llvm.dbg.value(metadata i64 %46, metadata !175, metadata !DIExpression()), !dbg !911
  %47 = icmp ult ptr %37, %25, !dbg !912
  %48 = icmp ult i64 %46, 2, !dbg !919
  %49 = select i1 %47, i1 %48, i1 false, !dbg !919
  br i1 %49, label %34, label %50, !dbg !913, !llvm.loop !920

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !922
  br i1 %51, label %52, label %54, !dbg !924

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !924

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !872
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !168, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata ptr %55, metadata !170, metadata !DIExpression()), !dbg !872
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.22) #39, !dbg !925
  call void @llvm.dbg.value(metadata i64 %57, metadata !176, metadata !DIExpression()), !dbg !872
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !926
  call void @llvm.dbg.value(metadata ptr %58, metadata !177, metadata !DIExpression()), !dbg !872
  br label %59, !dbg !927

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !872
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !168, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata ptr %60, metadata !177, metadata !DIExpression()), !dbg !872
  %62 = load i8, ptr %60, align 1, !dbg !928, !tbaa !883
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !929

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !930
  %65 = load i8, ptr %64, align 1, !dbg !933, !tbaa !883
  %66 = icmp ne i8 %65, 45, !dbg !934
  %67 = select i1 %66, i1 %61, i1 false, !dbg !935
  br label %68, !dbg !935

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !168, metadata !DIExpression()), !dbg !872
  %70 = tail call ptr @__ctype_b_loc() #41, !dbg !936
  %71 = load ptr, ptr %70, align 8, !dbg !936, !tbaa !811
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !936
  %74 = load i16, ptr %73, align 2, !dbg !936, !tbaa !915
  %75 = and i16 %74, 8192, !dbg !936
  %76 = icmp eq i16 %75, 0, !dbg !936
  br i1 %76, label %90, label %77, !dbg !938

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !939
  br i1 %78, label %92, label %79, !dbg !942

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !943
  %81 = load i8, ptr %80, align 1, !dbg !943, !tbaa !883
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !943
  %84 = load i16, ptr %83, align 2, !dbg !943, !tbaa !915
  %85 = and i16 %84, 8192, !dbg !943
  %86 = icmp eq i16 %85, 0, !dbg !943
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !944
  br i1 %89, label %90, label %92, !dbg !944

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !945
  call void @llvm.dbg.value(metadata ptr %91, metadata !177, metadata !DIExpression()), !dbg !872
  br label %59, !dbg !927, !llvm.loop !946

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !948
  %94 = load ptr, ptr @stdout, align 8, !dbg !948, !tbaa !811
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !948
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !231, metadata !DIExpression()), !dbg !872
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.36, i64 noundef 6) #39, !dbg !969
  %97 = icmp eq i32 %96, 0, !dbg !969
  br i1 %97, label %101, label %98, !dbg !971

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.37, i64 noundef 9) #39, !dbg !972
  %100 = icmp eq i32 %99, 0, !dbg !972
  br i1 %100, label %101, label %104, !dbg !973

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !974
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #38, !dbg !974
  br label %107, !dbg !976

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !977
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #38, !dbg !977
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !979, !tbaa !811
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %108), !dbg !979
  %110 = load ptr, ptr @stdout, align 8, !dbg !980, !tbaa !811
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %110), !dbg !980
  %112 = ptrtoint ptr %60 to i64, !dbg !981
  %113 = sub i64 %112, %93, !dbg !981
  %114 = load ptr, ptr @stdout, align 8, !dbg !981, !tbaa !811
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !981
  %116 = load ptr, ptr @stdout, align 8, !dbg !982, !tbaa !811
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %116), !dbg !982
  %118 = load ptr, ptr @stdout, align 8, !dbg !983, !tbaa !811
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %118), !dbg !983
  %120 = load ptr, ptr @stdout, align 8, !dbg !984, !tbaa !811
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !984
  br label %122, !dbg !985

122:                                              ; preds = %107, %19
  ret void, !dbg !985
}

; Function Attrs: nounwind
declare !dbg !986 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !990 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !994 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !996 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !999 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1002 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1005 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1008 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1014 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1015 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1021 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1026, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata ptr %1, metadata !1027, metadata !DIExpression()), !dbg !1083
  %5 = load ptr, ptr %1, align 8, !dbg !1084, !tbaa !811
  tail call void @set_program_name(ptr noundef %5) #38, !dbg !1085
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #38, !dbg !1086
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #38, !dbg !1087
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #38, !dbg !1088
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1089
  br label %10, !dbg !1090

10:                                               ; preds = %20, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1091
  call void @llvm.dbg.value(metadata i32 %11, metadata !1028, metadata !DIExpression()), !dbg !1083
  switch i32 %11, label %19 [
    i32 -1, label %22
    i32 112, label %20
    i32 256, label %12
    i32 118, label %13
    i32 -2, label %14
    i32 -3, label %15
  ], !dbg !1090

12:                                               ; preds = %10
  br label %20, !dbg !1092

13:                                               ; preds = %10
  br label %20, !dbg !1095

14:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #42, !dbg !1096
  unreachable, !dbg !1096

15:                                               ; preds = %10
  %16 = load ptr, ptr @stdout, align 8, !dbg !1097, !tbaa !811
  %17 = load ptr, ptr @Version, align 8, !dbg !1097, !tbaa !811
  %18 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #38, !dbg !1097
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, ptr noundef %17, ptr noundef %18, ptr noundef null) #38, !dbg !1097
  tail call void @exit(i32 noundef 0) #40, !dbg !1097
  unreachable, !dbg !1097

19:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #42, !dbg !1098
  unreachable, !dbg !1098

20:                                               ; preds = %10, %13, %12
  %21 = phi ptr [ @verbose, %13 ], [ @ignore_fail_on_non_empty, %12 ], [ @remove_empty_parents, %10 ]
  store i1 true, ptr %21, align 1, !dbg !1099
  br label %10, !dbg !1090, !llvm.loop !1100

22:                                               ; preds = %10
  %23 = load i32, ptr @optind, align 4, !dbg !1102, !tbaa !874
  %24 = icmp eq i32 %23, %0, !dbg !1104
  br i1 %24, label %29, label %25, !dbg !1105

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8 poison, metadata !1029, metadata !DIExpression()), !dbg !1083
  %26 = icmp slt i32 %23, %0, !dbg !1106
  br i1 %26, label %27, label %131, !dbg !1107

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 2
  br label %31, !dbg !1107

29:                                               ; preds = %22
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #38, !dbg !1108
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30) #38, !dbg !1108
  tail call void @usage(i32 noundef 1) #42, !dbg !1110
  unreachable, !dbg !1110

31:                                               ; preds = %27, %126
  %32 = phi i32 [ %23, %27 ], [ %129, %126 ]
  %33 = phi i1 [ true, %27 ], [ %127, %126 ]
  %34 = sext i32 %32 to i64, !dbg !1111
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34, !dbg !1111
  %36 = load ptr, ptr %35, align 8, !dbg !1111, !tbaa !811
  call void @llvm.dbg.value(metadata ptr %36, metadata !1030, metadata !DIExpression()), !dbg !1112
  %37 = load i1, ptr @verbose, align 1, !dbg !1113
  br i1 %37, label %38, label %42, !dbg !1115

38:                                               ; preds = %31
  %39 = load ptr, ptr @stdout, align 8, !dbg !1116, !tbaa !811
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #38, !dbg !1117
  %41 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #38, !dbg !1118
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %39, ptr noundef %40, ptr noundef %41) #38, !dbg !1119
  br label %42, !dbg !1119

42:                                               ; preds = %38, %31
  %43 = tail call i32 @rmdir(ptr noundef %36) #38, !dbg !1120
  %44 = icmp eq i32 %43, 0, !dbg !1121
  br i1 %44, label %81, label %45, !dbg !1122

45:                                               ; preds = %42
  %46 = tail call ptr @__errno_location() #41, !dbg !1123
  %47 = load i32, ptr %46, align 4, !dbg !1123, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %47, metadata !1034, metadata !DIExpression()), !dbg !1124
  %48 = tail call fastcc i1 @ignorable_failure(i32 noundef %47, ptr noundef %36), !dbg !1125
  br i1 %48, label %126, label %49, !dbg !1127

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8 0, metadata !1037, metadata !DIExpression()), !dbg !1124
  %50 = icmp eq i32 %47, 20, !dbg !1128
  br i1 %50, label %51, label %78, !dbg !1129

51:                                               ; preds = %49
  %52 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %36, i32 noundef 47) #39, !dbg !1130
  call void @llvm.dbg.value(metadata ptr %52, metadata !1038, metadata !DIExpression()), !dbg !1131
  %53 = icmp eq ptr %52, null, !dbg !1132
  br i1 %53, label %78, label %54, !dbg !1133

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1134
  %56 = load i8, ptr %55, align 1, !dbg !1135, !tbaa !883
  %57 = icmp eq i8 %56, 0, !dbg !1136
  br i1 %57, label %58, label %78, !dbg !1137

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #38, !dbg !1138
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1041, metadata !DIExpression()), !dbg !1139
  %59 = call i32 @stat(ptr noundef %36, ptr noundef nonnull %4) #38, !dbg !1140
  call void @llvm.dbg.value(metadata i32 %59, metadata !1079, metadata !DIExpression()), !dbg !1141
  %60 = icmp eq i32 %59, 0, !dbg !1142
  br i1 %60, label %64, label %61, !dbg !1142

61:                                               ; preds = %58
  %62 = load i32, ptr %46, align 4, !dbg !1143, !tbaa !874
  %63 = icmp eq i32 %62, 20, !dbg !1144
  br i1 %63, label %77, label %68, !dbg !1145

64:                                               ; preds = %58
  %65 = load i32, ptr %28, align 8, !dbg !1146, !tbaa !1147
  %66 = and i32 %65, 61440, !dbg !1146
  %67 = icmp eq i32 %66, 16384, !dbg !1146
  br i1 %67, label %68, label %77, !dbg !1151

68:                                               ; preds = %64, %61
  %69 = tail call noalias nonnull ptr @xstrdup(ptr noundef %36) #38, !dbg !1152
  call void @llvm.dbg.value(metadata ptr %69, metadata !1080, metadata !DIExpression()), !dbg !1153
  %70 = tail call i1 @strip_trailing_slashes(ptr noundef %36) #38, !dbg !1154
  call void @llvm.dbg.value(metadata ptr %36, metadata !1155, metadata !DIExpression()), !dbg !1162
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #38, !dbg !1165
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1161, metadata !DIExpression()), !dbg !1166
  %71 = call i64 @readlink(ptr noundef nonnull %36, ptr noundef nonnull %3, i64 noundef 1) #38, !dbg !1167
  %72 = icmp sgt i64 %71, -1, !dbg !1169
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #38, !dbg !1170
  br i1 %72, label %73, label %76, !dbg !1171

73:                                               ; preds = %68
  %74 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !1172
  %75 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %69) #38, !dbg !1172
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %74, ptr noundef %75) #38, !dbg !1172
  call void @llvm.dbg.value(metadata i8 poison, metadata !1037, metadata !DIExpression()), !dbg !1124
  tail call void @free(ptr noundef nonnull %69) #38, !dbg !1174
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #38, !dbg !1175
  br label %126, !dbg !1176

76:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i8 poison, metadata !1037, metadata !DIExpression()), !dbg !1124
  tail call void @free(ptr noundef nonnull %69) #38, !dbg !1174
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #38, !dbg !1175
  br label %78, !dbg !1176

77:                                               ; preds = %61, %64
  call void @llvm.dbg.value(metadata i8 poison, metadata !1037, metadata !DIExpression()), !dbg !1124
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #38, !dbg !1175
  br label %78, !dbg !1176

78:                                               ; preds = %76, %49, %54, %51, %77
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #38, !dbg !1177
  %80 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #38, !dbg !1177
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %47, ptr noundef %79, ptr noundef %80) #38, !dbg !1177
  br label %126, !dbg !1177

81:                                               ; preds = %42
  %82 = load i1, ptr @remove_empty_parents, align 1, !dbg !1179
  br i1 %82, label %83, label %126, !dbg !1181

83:                                               ; preds = %81
  call void @llvm.dbg.value(metadata ptr %36, metadata !1182, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 1, metadata !1187, metadata !DIExpression()), !dbg !1196
  %84 = ptrtoint ptr %36 to i64, !dbg !1199
  %85 = tail call i1 @strip_trailing_slashes(ptr noundef %36) #38, !dbg !1199
  br label %86, !dbg !1200

86:                                               ; preds = %111, %83
  call void @llvm.dbg.value(metadata i8 poison, metadata !1187, metadata !DIExpression()), !dbg !1196
  %87 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %36, i32 noundef 47) #39, !dbg !1201
  %88 = ptrtoint ptr %87 to i64, !dbg !1202
  call void @llvm.dbg.value(metadata ptr %87, metadata !1188, metadata !DIExpression()), !dbg !1202
  %89 = icmp eq ptr %87, null, !dbg !1203
  br i1 %89, label %123, label %90, !dbg !1205

90:                                               ; preds = %86
  call void @llvm.dbg.value(metadata ptr %87, metadata !1188, metadata !DIExpression()), !dbg !1202
  %91 = icmp ugt ptr %87, %36, !dbg !1206
  br i1 %91, label %92, label %103, !dbg !1207

92:                                               ; preds = %90
  %93 = getelementptr i8, ptr %87, i64 %84, !dbg !1208
  %94 = sub i64 0, %88, !dbg !1208
  %95 = getelementptr i8, ptr %93, i64 %94, !dbg !1208
  br label %96, !dbg !1208

96:                                               ; preds = %100, %92
  %97 = phi ptr [ %101, %100 ], [ %87, %92 ]
  call void @llvm.dbg.value(metadata ptr %97, metadata !1188, metadata !DIExpression()), !dbg !1202
  %98 = load i8, ptr %97, align 1, !dbg !1209, !tbaa !883
  %99 = icmp eq i8 %98, 47, !dbg !1210
  br i1 %99, label %100, label %103, !dbg !1208

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, ptr %97, i64 -1, !dbg !1211
  call void @llvm.dbg.value(metadata ptr %101, metadata !1188, metadata !DIExpression()), !dbg !1202
  %102 = icmp ugt ptr %101, %36, !dbg !1206
  br i1 %102, label %96, label %103, !dbg !1207, !llvm.loop !1212

103:                                              ; preds = %100, %96, %90
  %104 = phi ptr [ %87, %90 ], [ %97, %96 ], [ %95, %100 ], !dbg !1202
  %105 = getelementptr inbounds i8, ptr %104, i64 1, !dbg !1214
  store i8 0, ptr %105, align 1, !dbg !1215, !tbaa !883
  %106 = load i1, ptr @verbose, align 1, !dbg !1216
  br i1 %106, label %107, label %111, !dbg !1218

107:                                              ; preds = %103
  %108 = load ptr, ptr @stdout, align 8, !dbg !1219, !tbaa !811
  %109 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #38, !dbg !1220
  %110 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #38, !dbg !1221
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %108, ptr noundef %109, ptr noundef %110) #38, !dbg !1222
  br label %111, !dbg !1222

111:                                              ; preds = %107, %103
  %112 = tail call i32 @rmdir(ptr noundef %36) #38, !dbg !1223
  %113 = icmp eq i32 %112, 0, !dbg !1224
  call void @llvm.dbg.value(metadata i1 %113, metadata !1187, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1196
  %114 = tail call ptr @__errno_location() #41, !dbg !1225
  %115 = load i32, ptr %114, align 4, !dbg !1225, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %115, metadata !1190, metadata !DIExpression()), !dbg !1202
  br i1 %113, label %86, label %116, !dbg !1226

116:                                              ; preds = %111
  %117 = tail call fastcc i1 @ignorable_failure(i32 noundef %115, ptr noundef %36), !dbg !1227
  br i1 %117, label %123, label %118, !dbg !1228

118:                                              ; preds = %116
  %119 = icmp eq i32 %115, 20, !dbg !1229
  %120 = select i1 %119, ptr @.str.18, ptr @.str.60
  call void @llvm.dbg.value(metadata ptr %120, metadata !1191, metadata !DIExpression()), !dbg !1231
  %121 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %120, i32 noundef 5) #38, !dbg !1232
  %122 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #38, !dbg !1232
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %115, ptr noundef %121, ptr noundef %122) #38, !dbg !1232
  br label %123

123:                                              ; preds = %86, %116, %118
  %124 = phi i1 [ true, %116 ], [ false, %118 ], [ true, %86 ]
  %125 = and i1 %33, %124, !dbg !1233
  call void @llvm.dbg.value(metadata i1 %125, metadata !1029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1083
  br label %126, !dbg !1234

126:                                              ; preds = %73, %45, %78, %123, %81
  %127 = phi i1 [ %125, %123 ], [ %33, %81 ], [ %33, %45 ], [ false, %78 ], [ false, %73 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1029, metadata !DIExpression()), !dbg !1083
  %128 = load i32, ptr @optind, align 4, !dbg !1235, !tbaa !874
  %129 = add nsw i32 %128, 1, !dbg !1235
  store i32 %129, ptr @optind, align 4, !dbg !1235, !tbaa !874
  %130 = icmp slt i32 %129, %0, !dbg !1106
  br i1 %130, label %31, label %131, !dbg !1107, !llvm.loop !1236

131:                                              ; preds = %126, %25
  %132 = phi i1 [ true, %25 ], [ %127, %126 ]
  %133 = xor i1 %132, true, !dbg !1238
  %134 = zext i1 %133 to i32, !dbg !1238
  ret i32 %134, !dbg !1239
}

; Function Attrs: nounwind
declare !dbg !1240 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1243 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1244 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1247 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1253 noundef i32 @rmdir(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1255 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i1 @ignorable_failure(i32 noundef %0, ptr noundef %1) unnamed_addr #10 !dbg !1259 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1263, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata ptr %1, metadata !1264, metadata !DIExpression()), !dbg !1265
  %3 = load i1, ptr @ignore_fail_on_non_empty, align 1, !dbg !1266
  br i1 %3, label %4, label %47, !dbg !1267

4:                                                ; preds = %2
  switch i32 %0, label %46 [
    i32 39, label %47
    i32 17, label %47
    i32 13, label %5
    i32 1, label %5
    i32 30, label %5
    i32 16, label %5
  ], !dbg !1268

5:                                                ; preds = %4, %4, %4, %4
  call void @llvm.dbg.value(metadata i32 -100, metadata !1269, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata ptr %1, metadata !1274, metadata !DIExpression()), !dbg !1283
  %6 = tail call i32 (i32, ptr, i32, ...) @openat(i32 noundef -100, ptr noundef %1, i32 noundef 51456) #38, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %6, metadata !1282, metadata !DIExpression()), !dbg !1283
  %7 = icmp slt i32 %6, 0, !dbg !1286
  br i1 %7, label %8, label %11, !dbg !1288

8:                                                ; preds = %5
  %9 = tail call ptr @__errno_location() #41, !dbg !1289
  %10 = load i32, ptr %9, align 4, !dbg !1289, !tbaa !874
  br label %43, !dbg !1290

11:                                               ; preds = %5
  %12 = tail call ptr @fdopendir(i32 noundef %6) #38, !dbg !1291
  call void @llvm.dbg.value(metadata ptr %12, metadata !1275, metadata !DIExpression()), !dbg !1283
  %13 = icmp eq ptr %12, null, !dbg !1292
  %14 = tail call ptr @__errno_location() #41, !dbg !1283
  br i1 %13, label %15, label %18, !dbg !1294

15:                                               ; preds = %11
  %16 = load i32, ptr %14, align 4, !dbg !1295, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %16, metadata !1281, metadata !DIExpression()), !dbg !1283
  %17 = tail call i32 @close(i32 noundef %6) #38, !dbg !1297
  br label %43, !dbg !1298

18:                                               ; preds = %11
  store i32 0, ptr %14, align 4, !dbg !1299, !tbaa !874
  call void @llvm.dbg.value(metadata ptr %12, metadata !1300, metadata !DIExpression()), !dbg !1317
  br label %19, !dbg !1319

19:                                               ; preds = %26, %18
  %20 = tail call ptr @readdir(ptr noundef nonnull %12) #38, !dbg !1320
  call void @llvm.dbg.value(metadata ptr %20, metadata !1315, metadata !DIExpression()), !dbg !1321
  %21 = icmp eq ptr %20, null, !dbg !1322
  br i1 %21, label %37, label %22, !dbg !1324

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.dirent, ptr %20, i64 0, i32 4, !dbg !1325
  call void @llvm.dbg.value(metadata ptr %23, metadata !1326, metadata !DIExpression()), !dbg !1334
  %24 = load i8, ptr %23, align 1, !dbg !1336, !tbaa !883
  %25 = icmp eq i8 %24, 46, !dbg !1337
  br i1 %25, label %26, label %37, !dbg !1338

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dirent, ptr %20, i64 0, i32 4, i64 1, !dbg !1339
  %28 = load i8, ptr %27, align 1, !dbg !1339, !tbaa !883
  %29 = icmp eq i8 %28, 46, !dbg !1340
  %30 = select i1 %29, i64 2, i64 1, !dbg !1341
  %31 = getelementptr inbounds i8, ptr %23, i64 %30, !dbg !1342
  %32 = load i8, ptr %31, align 1, !dbg !1342, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %32, metadata !1331, metadata !DIExpression()), !dbg !1343
  %33 = icmp eq i8 %32, 0, !dbg !1344
  %34 = icmp eq i8 %32, 47, !dbg !1345
  %35 = or i1 %33, %34, !dbg !1345
  %36 = freeze i1 %35
  br i1 %36, label %19, label %37, !dbg !1346

37:                                               ; preds = %26, %22, %19
  call void @llvm.dbg.value(metadata i1 %21, metadata !1280, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1283
  %38 = load i32, ptr %14, align 4, !dbg !1347, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %38, metadata !1281, metadata !DIExpression()), !dbg !1283
  %39 = tail call i32 @closedir(ptr noundef nonnull %12), !dbg !1348
  %40 = icmp eq i32 %38, 0
  %41 = select i1 %21, i1 %40, i1 false, !dbg !1349
  %42 = select i1 %41, i32 -1, i32 %38, !dbg !1349
  br label %43, !dbg !1350

43:                                               ; preds = %8, %15, %37
  %44 = phi i32 [ %10, %8 ], [ %16, %15 ], [ %42, %37 ], !dbg !1283
  %45 = icmp eq i32 %44, 0, !dbg !1351
  br label %47

46:                                               ; preds = %4
  br label %47, !dbg !1352

47:                                               ; preds = %4, %4, %46, %43, %2
  %48 = phi i1 [ false, %2 ], [ true, %4 ], [ %45, %43 ], [ true, %4 ], [ false, %46 ], !dbg !1265
  ret i1 %48, !dbg !1352
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1353 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare !dbg !1354 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr nocapture noundef readonly, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1360 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

declare !dbg !1363 i32 @openat(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare !dbg !1367 ptr @fdopendir(i32 noundef) local_unnamed_addr #3

declare !dbg !1370 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !1373 ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1377 noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @prog_fprintf(ptr noundef nonnull %0, ptr noundef nonnull %1, ...) local_unnamed_addr #10 !dbg !1380 {
  %3 = alloca %struct.__va_list, align 8
  %4 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1418, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata ptr %1, metadata !1419, metadata !DIExpression()), !dbg !1432
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !1433
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1420, metadata !DIExpression()), !dbg !1434
  %5 = load ptr, ptr @program_name, align 8, !dbg !1435, !tbaa !811
  %6 = tail call i32 @fputs_unlocked(ptr noundef %5, ptr noundef nonnull %0), !dbg !1435
  %7 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.23, ptr noundef nonnull %0), !dbg !1436
  call void @llvm.va_start(ptr nonnull %4), !dbg !1437
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #38, !dbg !1438, !noalias !1448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1452
  call void @llvm.dbg.value(metadata ptr %0, metadata !1444, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata ptr %1, metadata !1445, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1446, metadata !DIExpression()), !dbg !1454
  %8 = call i32 @__vfprintf_chk(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %3) #38, !dbg !1438
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #38, !dbg !1438, !noalias !1448
  call void @llvm.va_end(ptr nonnull %4), !dbg !1455
  call void @llvm.dbg.value(metadata i32 10, metadata !1456, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata ptr %0, metadata !1462, metadata !DIExpression()), !dbg !1463
  %9 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !1465
  %10 = load ptr, ptr %9, align 8, !dbg !1465, !tbaa !1466
  %11 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 6, !dbg !1465
  %12 = load ptr, ptr %11, align 8, !dbg !1465, !tbaa !1468
  %13 = icmp ult ptr %10, %12, !dbg !1465
  br i1 %13, label %16, label %14, !dbg !1465, !prof !1469

14:                                               ; preds = %2
  %15 = call i32 @__overflow(ptr noundef nonnull %0, i32 noundef 10) #38, !dbg !1465
  br label %18, !dbg !1465

16:                                               ; preds = %2
  %17 = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1465
  store ptr %17, ptr %9, align 8, !dbg !1465, !tbaa !1466
  store i8 10, ptr %10, align 1, !dbg !1465, !tbaa !883
  br label %18, !dbg !1465

18:                                               ; preds = %14, %16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !1470
  ret void, !dbg !1470
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

declare !dbg !1471 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

declare !dbg !1474 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !1477 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1479, metadata !DIExpression()), !dbg !1480
  store ptr %0, ptr @file_name, align 8, !dbg !1481, !tbaa !811
  ret void, !dbg !1482
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !1483 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1487, metadata !DIExpression()), !dbg !1488
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1489, !tbaa !1490
  ret void, !dbg !1492
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1493 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1498, !tbaa !811
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1499
  %3 = icmp eq i32 %2, 0, !dbg !1500
  br i1 %3, label %22, label %4, !dbg !1501

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1502, !tbaa !1490, !range !1503, !noundef !859
  %6 = icmp eq i8 %5, 0, !dbg !1502
  br i1 %6, label %11, label %7, !dbg !1504

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1505
  %9 = load i32, ptr %8, align 4, !dbg !1505, !tbaa !874
  %10 = icmp eq i32 %9, 32, !dbg !1506
  br i1 %10, label %22, label %11, !dbg !1507

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1.30, i32 noundef 5) #38, !dbg !1508
  call void @llvm.dbg.value(metadata ptr %12, metadata !1495, metadata !DIExpression()), !dbg !1509
  %13 = load ptr, ptr @file_name, align 8, !dbg !1510, !tbaa !811
  %14 = icmp eq ptr %13, null, !dbg !1510
  %15 = tail call ptr @__errno_location() #41, !dbg !1512
  %16 = load i32, ptr %15, align 4, !dbg !1512, !tbaa !874
  br i1 %14, label %19, label %17, !dbg !1513

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1514
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.31, ptr noundef %18, ptr noundef %12) #38, !dbg !1514
  br label %20, !dbg !1514

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.32, ptr noundef %12) #38, !dbg !1515
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1516, !tbaa !874
  tail call void @_exit(i32 noundef %21) #40, !dbg !1517
  unreachable, !dbg !1517

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1518, !tbaa !811
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1520
  %25 = icmp eq i32 %24, 0, !dbg !1521
  br i1 %25, label %28, label %26, !dbg !1522

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1523, !tbaa !874
  tail call void @_exit(i32 noundef %27) #40, !dbg !1524
  unreachable, !dbg !1524

28:                                               ; preds = %22
  ret void, !dbg !1525
}

; Function Attrs: noreturn
declare !dbg !1526 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read) uwtable
define dso_local i1 @strip_trailing_slashes(ptr noundef %0) local_unnamed_addr #17 !dbg !1527 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1529, metadata !DIExpression()), !dbg !1533
  %2 = tail call ptr @last_component(ptr noundef %0) #39, !dbg !1534
  call void @llvm.dbg.value(metadata ptr %2, metadata !1530, metadata !DIExpression()), !dbg !1533
  %3 = load i8, ptr %2, align 1, !dbg !1535, !tbaa !883
  %4 = icmp eq i8 %3, 0, !dbg !1535
  %5 = select i1 %4, ptr %0, ptr %2, !dbg !1537
  call void @llvm.dbg.value(metadata ptr %5, metadata !1530, metadata !DIExpression()), !dbg !1533
  %6 = tail call i64 @base_len(ptr noundef %5) #39, !dbg !1538
  %7 = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !1539
  call void @llvm.dbg.value(metadata ptr %7, metadata !1531, metadata !DIExpression()), !dbg !1533
  %8 = load i8, ptr %7, align 1, !dbg !1540, !tbaa !883
  %9 = icmp ne i8 %8, 0, !dbg !1541
  call void @llvm.dbg.value(metadata i1 %9, metadata !1532, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1533
  store i8 0, ptr %7, align 1, !dbg !1542, !tbaa !883
  ret i1 %9, !dbg !1543
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !1544 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1548, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %1, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata ptr %2, metadata !1550, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1551, metadata !DIExpression()), !dbg !1553
  tail call fastcc void @flush_stdout(), !dbg !1554
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1555, !tbaa !811
  %7 = icmp eq ptr %6, null, !dbg !1555
  br i1 %7, label %9, label %8, !dbg !1557

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !1558
  br label %13, !dbg !1558

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1559, !tbaa !811
  %11 = tail call ptr @getprogname() #39, !dbg !1559
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef %11) #38, !dbg !1559
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1561, !tbaa.struct !1562
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1561
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1561
  ret void, !dbg !1563
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1564 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i32 1, metadata !1568, metadata !DIExpression()), !dbg !1571
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1574
  %2 = icmp slt i32 %1, 0, !dbg !1575
  br i1 %2, label %6, label %3, !dbg !1576

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1577, !tbaa !811
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1577
  br label %6, !dbg !1577

6:                                                ; preds = %3, %0
  ret void, !dbg !1578
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1579 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1581, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 %1, metadata !1582, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata ptr %2, metadata !1583, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1584, metadata !DIExpression()), !dbg !1586
  %7 = load ptr, ptr @stderr, align 8, !dbg !1587, !tbaa !811
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1588, !noalias !1632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1636
  call void @llvm.dbg.value(metadata ptr %7, metadata !1628, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata ptr %2, metadata !1629, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1630, metadata !DIExpression()), !dbg !1638
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !1588
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1588, !noalias !1632
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1639, !tbaa !874
  %10 = add i32 %9, 1, !dbg !1639
  store i32 %10, ptr @error_message_count, align 4, !dbg !1639, !tbaa !874
  %11 = icmp eq i32 %1, 0, !dbg !1640
  br i1 %11, label %21, label %12, !dbg !1642

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1643, metadata !DIExpression()), !dbg !1651
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1653
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1647, metadata !DIExpression()), !dbg !1654
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1655
  call void @llvm.dbg.value(metadata ptr %13, metadata !1646, metadata !DIExpression()), !dbg !1651
  %14 = icmp eq ptr %13, null, !dbg !1656
  br i1 %14, label %15, label %17, !dbg !1658

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.36, ptr noundef nonnull @.str.5.37, i32 noundef 5) #38, !dbg !1659
  call void @llvm.dbg.value(metadata ptr %16, metadata !1646, metadata !DIExpression()), !dbg !1651
  br label %17, !dbg !1660

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1651
  call void @llvm.dbg.value(metadata ptr %18, metadata !1646, metadata !DIExpression()), !dbg !1651
  %19 = load ptr, ptr @stderr, align 8, !dbg !1661, !tbaa !811
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.38, ptr noundef %18) #38, !dbg !1661
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1662
  br label %21, !dbg !1663

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1664, !tbaa !811
  call void @llvm.dbg.value(metadata i32 10, metadata !1665, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata ptr %22, metadata !1670, metadata !DIExpression()), !dbg !1671
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1673
  %24 = load ptr, ptr %23, align 8, !dbg !1673, !tbaa !1466
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1673
  %26 = load ptr, ptr %25, align 8, !dbg !1673, !tbaa !1468
  %27 = icmp ult ptr %24, %26, !dbg !1673
  br i1 %27, label %30, label %28, !dbg !1673, !prof !1469

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !1673
  br label %32, !dbg !1673

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1673
  store ptr %31, ptr %23, align 8, !dbg !1673, !tbaa !1466
  store i8 10, ptr %24, align 1, !dbg !1673, !tbaa !883
  br label %32, !dbg !1673

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1674, !tbaa !811
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !1674
  %35 = icmp eq i32 %0, 0, !dbg !1675
  br i1 %35, label %37, label %36, !dbg !1677

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #40, !dbg !1678
  unreachable, !dbg !1678

37:                                               ; preds = %32
  ret void, !dbg !1679
}

; Function Attrs: nounwind
declare !dbg !1680 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1683 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1686 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1689 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1693, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 %1, metadata !1694, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata ptr %2, metadata !1695, metadata !DIExpression()), !dbg !1697
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !1698
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1696, metadata !DIExpression()), !dbg !1699
  call void @llvm.va_start(ptr nonnull %4), !dbg !1700
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1701, !tbaa.struct !1562
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #43, !dbg !1701
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1701
  call void @llvm.va_end(ptr nonnull %4), !dbg !1702
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !1703
  ret void, !dbg !1703
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !416 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !433, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 %1, metadata !434, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata ptr %2, metadata !435, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 %3, metadata !436, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata ptr %4, metadata !437, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.declare(metadata ptr %5, metadata !438, metadata !DIExpression()), !dbg !1705
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1706, !tbaa !874
  %9 = icmp eq i32 %8, 0, !dbg !1706
  br i1 %9, label %24, label %10, !dbg !1708

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1709, !tbaa !874
  %12 = icmp eq i32 %11, %3, !dbg !1712
  br i1 %12, label %13, label %23, !dbg !1713

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1714, !tbaa !811
  %15 = icmp eq ptr %14, %2, !dbg !1715
  br i1 %15, label %37, label %16, !dbg !1716

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1717
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1718
  br i1 %19, label %20, label %23, !dbg !1718

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1719
  %22 = icmp eq i32 %21, 0, !dbg !1720
  br i1 %22, label %37, label %23, !dbg !1721

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1722, !tbaa !811
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1723, !tbaa !874
  br label %24, !dbg !1724

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1725
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1726, !tbaa !811
  %26 = icmp eq ptr %25, null, !dbg !1726
  br i1 %26, label %28, label %27, !dbg !1728

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !1729
  br label %32, !dbg !1729

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1730, !tbaa !811
  %30 = tail call ptr @getprogname() #39, !dbg !1730
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.41, ptr noundef %30) #38, !dbg !1730
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1732, !tbaa !811
  %34 = icmp eq ptr %2, null, !dbg !1732
  %35 = select i1 %34, ptr @.str.3.42, ptr @.str.2.43, !dbg !1732
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !1732
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1733, !tbaa.struct !1562
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1733
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1733
  br label %37, !dbg !1734

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1734
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1735 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1739, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i32 %1, metadata !1740, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata ptr %2, metadata !1741, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i32 %3, metadata !1742, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata ptr %4, metadata !1743, metadata !DIExpression()), !dbg !1745
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1746
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1744, metadata !DIExpression()), !dbg !1747
  call void @llvm.va_start(ptr nonnull %6), !dbg !1748
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1749, !tbaa.struct !1562
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #43, !dbg !1749
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1749
  call void @llvm.va_end(ptr nonnull %6), !dbg !1750
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1751
  ret void, !dbg !1751
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !1752 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1755, !tbaa !811
  ret ptr %1, !dbg !1756
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !1757 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1759, metadata !DIExpression()), !dbg !1762
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1763
  call void @llvm.dbg.value(metadata ptr %2, metadata !1760, metadata !DIExpression()), !dbg !1762
  %3 = icmp eq ptr %2, null, !dbg !1764
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1764
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1764
  call void @llvm.dbg.value(metadata ptr %5, metadata !1761, metadata !DIExpression()), !dbg !1762
  %6 = ptrtoint ptr %5 to i64, !dbg !1765
  %7 = ptrtoint ptr %0 to i64, !dbg !1765
  %8 = sub i64 %6, %7, !dbg !1765
  %9 = icmp sgt i64 %8, 6, !dbg !1767
  br i1 %9, label %10, label %19, !dbg !1768

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1769
  call void @llvm.dbg.value(metadata ptr %11, metadata !1770, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata ptr @.str.61, metadata !1775, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 7, metadata !1776, metadata !DIExpression()), !dbg !1777
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.61, i64 7), !dbg !1779
  %13 = icmp eq i32 %12, 0, !dbg !1780
  br i1 %13, label %14, label %19, !dbg !1781

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1759, metadata !DIExpression()), !dbg !1762
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.62, i64 noundef 3) #39, !dbg !1782
  %16 = icmp eq i32 %15, 0, !dbg !1785
  %17 = select i1 %16, i64 3, i64 0, !dbg !1786
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1786
  br label %19, !dbg !1786

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1762
  call void @llvm.dbg.value(metadata ptr %21, metadata !1761, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr %20, metadata !1759, metadata !DIExpression()), !dbg !1762
  store ptr %20, ptr @program_name, align 8, !dbg !1787, !tbaa !811
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1788, !tbaa !811
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1789, !tbaa !811
  ret void, !dbg !1790
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !475 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !482, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata ptr %1, metadata !483, metadata !DIExpression()), !dbg !1791
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1792
  call void @llvm.dbg.value(metadata ptr %5, metadata !484, metadata !DIExpression()), !dbg !1791
  %6 = icmp eq ptr %5, %0, !dbg !1793
  br i1 %6, label %7, label %14, !dbg !1795

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1796
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1797
  call void @llvm.dbg.declare(metadata ptr %4, metadata !490, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata ptr %4, metadata !1799, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %4, metadata !1808, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 0, metadata !1814, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i64 8, metadata !1815, metadata !DIExpression()), !dbg !1816
  store i64 0, ptr %4, align 8, !dbg !1818
  call void @llvm.dbg.value(metadata ptr %3, metadata !485, metadata !DIExpression(DW_OP_deref)), !dbg !1791
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1819
  %9 = icmp eq i64 %8, 2, !dbg !1821
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !485, metadata !DIExpression()), !dbg !1791
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1822
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1791
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1823
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1823
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1791
  ret ptr %15, !dbg !1823
}

; Function Attrs: nounwind
declare !dbg !1824 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1830 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1835, metadata !DIExpression()), !dbg !1838
  %2 = tail call ptr @__errno_location() #41, !dbg !1839
  %3 = load i32, ptr %2, align 4, !dbg !1839, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %3, metadata !1836, metadata !DIExpression()), !dbg !1838
  %4 = icmp eq ptr %0, null, !dbg !1840
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1840
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !1841
  call void @llvm.dbg.value(metadata ptr %6, metadata !1837, metadata !DIExpression()), !dbg !1838
  store i32 %3, ptr %2, align 4, !dbg !1842, !tbaa !874
  ret ptr %6, !dbg !1843
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !1844 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1850, metadata !DIExpression()), !dbg !1851
  %2 = icmp eq ptr %0, null, !dbg !1852
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1852
  %4 = load i32, ptr %3, align 8, !dbg !1853, !tbaa !1854
  ret i32 %4, !dbg !1856
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1857 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1861, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 %1, metadata !1862, metadata !DIExpression()), !dbg !1863
  %3 = icmp eq ptr %0, null, !dbg !1864
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1864
  store i32 %1, ptr %4, align 8, !dbg !1865, !tbaa !1854
  ret void, !dbg !1866
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !1867 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1871, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 %1, metadata !1872, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i32 %2, metadata !1873, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 %1, metadata !1874, metadata !DIExpression()), !dbg !1879
  %4 = icmp eq ptr %0, null, !dbg !1880
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1880
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1881
  %7 = lshr i8 %1, 5, !dbg !1882
  %8 = zext i8 %7 to i64, !dbg !1882
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1883
  call void @llvm.dbg.value(metadata ptr %9, metadata !1875, metadata !DIExpression()), !dbg !1879
  %10 = and i8 %1, 31, !dbg !1884
  %11 = zext i8 %10 to i32, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %11, metadata !1877, metadata !DIExpression()), !dbg !1879
  %12 = load i32, ptr %9, align 4, !dbg !1885, !tbaa !874
  %13 = lshr i32 %12, %11, !dbg !1886
  %14 = and i32 %13, 1, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %14, metadata !1878, metadata !DIExpression()), !dbg !1879
  %15 = xor i32 %13, %2, !dbg !1888
  %16 = and i32 %15, 1, !dbg !1888
  %17 = shl nuw i32 %16, %11, !dbg !1889
  %18 = xor i32 %17, %12, !dbg !1890
  store i32 %18, ptr %9, align 4, !dbg !1890, !tbaa !874
  ret i32 %14, !dbg !1891
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1892 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1896, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i32 %1, metadata !1897, metadata !DIExpression()), !dbg !1899
  %3 = icmp eq ptr %0, null, !dbg !1900
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1902
  call void @llvm.dbg.value(metadata ptr %4, metadata !1896, metadata !DIExpression()), !dbg !1899
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1903
  %6 = load i32, ptr %5, align 4, !dbg !1903, !tbaa !1904
  call void @llvm.dbg.value(metadata i32 %6, metadata !1898, metadata !DIExpression()), !dbg !1899
  store i32 %1, ptr %5, align 4, !dbg !1905, !tbaa !1904
  ret i32 %6, !dbg !1906
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1907 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1911, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata ptr %1, metadata !1912, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata ptr %2, metadata !1913, metadata !DIExpression()), !dbg !1914
  %4 = icmp eq ptr %0, null, !dbg !1915
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1917
  call void @llvm.dbg.value(metadata ptr %5, metadata !1911, metadata !DIExpression()), !dbg !1914
  store i32 10, ptr %5, align 8, !dbg !1918, !tbaa !1854
  %6 = icmp ne ptr %1, null, !dbg !1919
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1921
  br i1 %8, label %10, label %9, !dbg !1921

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1922
  unreachable, !dbg !1922

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1923
  store ptr %1, ptr %11, align 8, !dbg !1924, !tbaa !1925
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1926
  store ptr %2, ptr %12, align 8, !dbg !1927, !tbaa !1928
  ret void, !dbg !1929
}

; Function Attrs: noreturn nounwind
declare !dbg !1930 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1931 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1935, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i64 %1, metadata !1936, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata ptr %2, metadata !1937, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i64 %3, metadata !1938, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata ptr %4, metadata !1939, metadata !DIExpression()), !dbg !1943
  %6 = icmp eq ptr %4, null, !dbg !1944
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1944
  call void @llvm.dbg.value(metadata ptr %7, metadata !1940, metadata !DIExpression()), !dbg !1943
  %8 = tail call ptr @__errno_location() #41, !dbg !1945
  %9 = load i32, ptr %8, align 4, !dbg !1945, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %9, metadata !1941, metadata !DIExpression()), !dbg !1943
  %10 = load i32, ptr %7, align 8, !dbg !1946, !tbaa !1854
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1947
  %12 = load i32, ptr %11, align 4, !dbg !1947, !tbaa !1904
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1948
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1949
  %15 = load ptr, ptr %14, align 8, !dbg !1949, !tbaa !1925
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1950
  %17 = load ptr, ptr %16, align 8, !dbg !1950, !tbaa !1928
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %18, metadata !1942, metadata !DIExpression()), !dbg !1943
  store i32 %9, ptr %8, align 4, !dbg !1952, !tbaa !874
  ret i64 %18, !dbg !1953
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1954 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1960, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %1, metadata !1961, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr %2, metadata !1962, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %3, metadata !1963, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 %4, metadata !1964, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 %5, metadata !1965, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr %6, metadata !1966, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr %7, metadata !1967, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr %8, metadata !1968, metadata !DIExpression()), !dbg !2022
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !2023
  %17 = icmp eq i64 %16, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i1 %17, metadata !1969, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2022
  call void @llvm.dbg.value(metadata i64 0, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 0, metadata !1971, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr null, metadata !1972, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 0, metadata !1973, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 0, metadata !1974, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 %5, metadata !1975, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2022
  call void @llvm.dbg.value(metadata i8 0, metadata !1976, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 1, metadata !1977, metadata !DIExpression()), !dbg !2022
  %18 = and i32 %5, 2, !dbg !2025
  %19 = icmp ne i32 %18, 0, !dbg !2025
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2025

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2026
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2027
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2028
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1961, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1976, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1975, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1974, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %34, metadata !1973, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr %33, metadata !1972, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %32, metadata !1971, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 0, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %31, metadata !1963, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr %30, metadata !1968, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr %29, metadata !1967, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 %28, metadata !1964, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.label(metadata !2015), !dbg !2029
  call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !2022
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
  ], !dbg !2030

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1975, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 5, metadata !1964, metadata !DIExpression()), !dbg !2022
  br label %102, !dbg !2031

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1975, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 5, metadata !1964, metadata !DIExpression()), !dbg !2022
  br i1 %36, label %102, label %42, !dbg !2031

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2032
  br i1 %43, label %102, label %44, !dbg !2036

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2032, !tbaa !883
  br label %102, !dbg !2032

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.75, metadata !574, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %28, metadata !575, metadata !DIExpression()), !dbg !2037
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.76, ptr noundef nonnull @.str.11.75, i32 noundef 5) #38, !dbg !2041
  call void @llvm.dbg.value(metadata ptr %46, metadata !576, metadata !DIExpression()), !dbg !2037
  %47 = icmp eq ptr %46, @.str.11.75, !dbg !2042
  br i1 %47, label %48, label %57, !dbg !2044

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !2045
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !2046
  call void @llvm.dbg.declare(metadata ptr %13, metadata !578, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata ptr %13, metadata !2048, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata ptr %13, metadata !2056, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i32 0, metadata !2059, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i64 8, metadata !2060, metadata !DIExpression()), !dbg !2061
  store i64 0, ptr %13, align 8, !dbg !2063
  call void @llvm.dbg.value(metadata ptr %12, metadata !577, metadata !DIExpression(DW_OP_deref)), !dbg !2037
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !2064
  %50 = icmp eq i64 %49, 3, !dbg !2066
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !577, metadata !DIExpression()), !dbg !2037
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2067
  %54 = icmp eq i32 %28, 9, !dbg !2067
  %55 = select i1 %54, ptr @.str.10.77, ptr @.str.12.78, !dbg !2067
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2067
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !2068
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !2068
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2037
  call void @llvm.dbg.value(metadata ptr %58, metadata !1967, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr @.str.12.78, metadata !574, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 %28, metadata !575, metadata !DIExpression()), !dbg !2069
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.76, ptr noundef nonnull @.str.12.78, i32 noundef 5) #38, !dbg !2071
  call void @llvm.dbg.value(metadata ptr %59, metadata !576, metadata !DIExpression()), !dbg !2069
  %60 = icmp eq ptr %59, @.str.12.78, !dbg !2072
  br i1 %60, label %61, label %70, !dbg !2073

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !2074
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !2075
  call void @llvm.dbg.declare(metadata ptr %11, metadata !578, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata ptr %11, metadata !2048, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata ptr %11, metadata !2056, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 0, metadata !2059, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i64 8, metadata !2060, metadata !DIExpression()), !dbg !2079
  store i64 0, ptr %11, align 8, !dbg !2081
  call void @llvm.dbg.value(metadata ptr %10, metadata !577, metadata !DIExpression(DW_OP_deref)), !dbg !2069
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !2082
  %63 = icmp eq i64 %62, 3, !dbg !2083
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !577, metadata !DIExpression()), !dbg !2069
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2084
  %67 = icmp eq i32 %28, 9, !dbg !2084
  %68 = select i1 %67, ptr @.str.10.77, ptr @.str.12.78, !dbg !2084
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2084
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !2085
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !2085
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1968, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr %71, metadata !1967, metadata !DIExpression()), !dbg !2022
  br i1 %36, label %88, label %73, !dbg !2086

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1979, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 0, metadata !1970, metadata !DIExpression()), !dbg !2022
  %74 = load i8, ptr %71, align 1, !dbg !2088, !tbaa !883
  %75 = icmp eq i8 %74, 0, !dbg !2090
  br i1 %75, label %88, label %76, !dbg !2090

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1979, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %79, metadata !1970, metadata !DIExpression()), !dbg !2022
  %80 = icmp ult i64 %79, %39, !dbg !2091
  br i1 %80, label %81, label %83, !dbg !2094

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2091
  store i8 %77, ptr %82, align 1, !dbg !2091, !tbaa !883
  br label %83, !dbg !2091

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %84, metadata !1970, metadata !DIExpression()), !dbg !2022
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2095
  call void @llvm.dbg.value(metadata ptr %85, metadata !1979, metadata !DIExpression()), !dbg !2087
  %86 = load i8, ptr %85, align 1, !dbg !2088, !tbaa !883
  %87 = icmp eq i8 %86, 0, !dbg !2090
  br i1 %87, label %88, label %76, !dbg !2090, !llvm.loop !2096

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2098
  call void @llvm.dbg.value(metadata i64 %89, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 1, metadata !1974, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr %72, metadata !1972, metadata !DIExpression()), !dbg !2022
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %90, metadata !1973, metadata !DIExpression()), !dbg !2022
  br label %102, !dbg !2100

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1974, metadata !DIExpression()), !dbg !2022
  br label %93, !dbg !2101

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1975, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1974, metadata !DIExpression()), !dbg !2022
  br i1 %36, label %102, label %96, !dbg !2102

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1975, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1974, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 2, metadata !1964, metadata !DIExpression()), !dbg !2022
  br label %102, !dbg !2103

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1975, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1974, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 2, metadata !1964, metadata !DIExpression()), !dbg !2022
  br i1 %36, label %102, label %96, !dbg !2103

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2104
  br i1 %98, label %102, label %99, !dbg !2108

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2104, !tbaa !883
  br label %102, !dbg !2104

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1975, metadata !DIExpression()), !dbg !2022
  br label %102, !dbg !2109

101:                                              ; preds = %27
  call void @abort() #40, !dbg !2110
  unreachable, !dbg !2110

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2098
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.77, %42 ], [ @.str.10.77, %44 ], [ @.str.10.77, %41 ], [ %33, %27 ], [ @.str.12.78, %96 ], [ @.str.12.78, %99 ], [ @.str.12.78, %95 ], [ @.str.10.77, %40 ], [ @.str.12.78, %93 ], [ @.str.12.78, %92 ], !dbg !2022
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2022
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1975, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1974, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %108, metadata !1973, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr %107, metadata !1972, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %106, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr %105, metadata !1968, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr %104, metadata !1967, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 %103, metadata !1964, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 0, metadata !1984, metadata !DIExpression()), !dbg !2111
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
  br label %122, !dbg !2112

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2098
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2026
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2113
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1961, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %129, metadata !1984, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1976, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %125, metadata !1971, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %124, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %123, metadata !1963, metadata !DIExpression()), !dbg !2022
  %131 = icmp eq i64 %123, -1, !dbg !2114
  br i1 %131, label %132, label %136, !dbg !2115

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2116
  %134 = load i8, ptr %133, align 1, !dbg !2116, !tbaa !883
  %135 = icmp eq i8 %134, 0, !dbg !2117
  br i1 %135, label %579, label %138, !dbg !2118

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2119
  br i1 %137, label %579, label %138, !dbg !2118

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 0, metadata !1989, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 0, metadata !1990, metadata !DIExpression()), !dbg !2120
  br i1 %114, label %139, label %152, !dbg !2121

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2123
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2124
  br i1 %141, label %142, label %144, !dbg !2124

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %143, metadata !1963, metadata !DIExpression()), !dbg !2022
  br label %144, !dbg !2126

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2126
  call void @llvm.dbg.value(metadata i64 %145, metadata !1963, metadata !DIExpression()), !dbg !2022
  %146 = icmp ugt i64 %140, %145, !dbg !2127
  br i1 %146, label %152, label %147, !dbg !2128

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2129
  call void @llvm.dbg.value(metadata ptr %148, metadata !2130, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata ptr %107, metadata !2133, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %108, metadata !2134, metadata !DIExpression()), !dbg !2135
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2137
  %150 = icmp eq i32 %149, 0, !dbg !2138
  %151 = and i1 %150, %110, !dbg !2139
  br i1 %151, label %630, label %152, !dbg !2139

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1986, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %153, metadata !1963, metadata !DIExpression()), !dbg !2022
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2140
  %156 = load i8, ptr %155, align 1, !dbg !2140, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %156, metadata !1991, metadata !DIExpression()), !dbg !2120
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
  ], !dbg !2141

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2142

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2143

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1989, metadata !DIExpression()), !dbg !2120
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2147
  br i1 %160, label %177, label %161, !dbg !2147

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2149
  br i1 %162, label %163, label %165, !dbg !2153

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2149
  store i8 39, ptr %164, align 1, !dbg !2149, !tbaa !883
  br label %165, !dbg !2149

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2153
  call void @llvm.dbg.value(metadata i64 %166, metadata !1970, metadata !DIExpression()), !dbg !2022
  %167 = icmp ult i64 %166, %130, !dbg !2154
  br i1 %167, label %168, label %170, !dbg !2157

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2154
  store i8 36, ptr %169, align 1, !dbg !2154, !tbaa !883
  br label %170, !dbg !2154

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %171, metadata !1970, metadata !DIExpression()), !dbg !2022
  %172 = icmp ult i64 %171, %130, !dbg !2158
  br i1 %172, label %173, label %175, !dbg !2161

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2158
  store i8 39, ptr %174, align 1, !dbg !2158, !tbaa !883
  br label %175, !dbg !2158

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %176, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 1, metadata !1978, metadata !DIExpression()), !dbg !2022
  br label %177, !dbg !2162

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2022
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %178, metadata !1970, metadata !DIExpression()), !dbg !2022
  %180 = icmp ult i64 %178, %130, !dbg !2163
  br i1 %180, label %181, label %183, !dbg !2166

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2163
  store i8 92, ptr %182, align 1, !dbg !2163, !tbaa !883
  br label %183, !dbg !2163

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %184, metadata !1970, metadata !DIExpression()), !dbg !2022
  br i1 %111, label %185, label %482, !dbg !2167

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2169
  %187 = icmp ult i64 %186, %153, !dbg !2170
  br i1 %187, label %188, label %439, !dbg !2171

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2172
  %190 = load i8, ptr %189, align 1, !dbg !2172, !tbaa !883
  %191 = add i8 %190, -48, !dbg !2173
  %192 = icmp ult i8 %191, 10, !dbg !2173
  br i1 %192, label %193, label %439, !dbg !2173

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2174
  br i1 %194, label %195, label %197, !dbg !2178

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2174
  store i8 48, ptr %196, align 1, !dbg !2174, !tbaa !883
  br label %197, !dbg !2174

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %198, metadata !1970, metadata !DIExpression()), !dbg !2022
  %199 = icmp ult i64 %198, %130, !dbg !2179
  br i1 %199, label %200, label %202, !dbg !2182

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2179
  store i8 48, ptr %201, align 1, !dbg !2179, !tbaa !883
  br label %202, !dbg !2179

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %203, metadata !1970, metadata !DIExpression()), !dbg !2022
  br label %439, !dbg !2183

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2184

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2185

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2186

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2188

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2190
  %210 = icmp ult i64 %209, %153, !dbg !2191
  br i1 %210, label %211, label %439, !dbg !2192

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2193
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2194
  %214 = load i8, ptr %213, align 1, !dbg !2194, !tbaa !883
  %215 = icmp eq i8 %214, 63, !dbg !2195
  br i1 %215, label %216, label %439, !dbg !2196

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2197
  %218 = load i8, ptr %217, align 1, !dbg !2197, !tbaa !883
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
  ], !dbg !2198

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2199

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1991, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %209, metadata !1984, metadata !DIExpression()), !dbg !2111
  %221 = icmp ult i64 %124, %130, !dbg !2201
  br i1 %221, label %222, label %224, !dbg !2204

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2201
  store i8 63, ptr %223, align 1, !dbg !2201, !tbaa !883
  br label %224, !dbg !2201

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %225, metadata !1970, metadata !DIExpression()), !dbg !2022
  %226 = icmp ult i64 %225, %130, !dbg !2205
  br i1 %226, label %227, label %229, !dbg !2208

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2205
  store i8 34, ptr %228, align 1, !dbg !2205, !tbaa !883
  br label %229, !dbg !2205

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %230, metadata !1970, metadata !DIExpression()), !dbg !2022
  %231 = icmp ult i64 %230, %130, !dbg !2209
  br i1 %231, label %232, label %234, !dbg !2212

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2209
  store i8 34, ptr %233, align 1, !dbg !2209, !tbaa !883
  br label %234, !dbg !2209

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %235, metadata !1970, metadata !DIExpression()), !dbg !2022
  %236 = icmp ult i64 %235, %130, !dbg !2213
  br i1 %236, label %237, label %239, !dbg !2216

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2213
  store i8 63, ptr %238, align 1, !dbg !2213, !tbaa !883
  br label %239, !dbg !2213

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %240, metadata !1970, metadata !DIExpression()), !dbg !2022
  br label %439, !dbg !2217

241:                                              ; preds = %152
  br label %251, !dbg !2218

242:                                              ; preds = %152
  br label %251, !dbg !2219

243:                                              ; preds = %152
  br label %249, !dbg !2220

244:                                              ; preds = %152
  br label %249, !dbg !2221

245:                                              ; preds = %152
  br label %251, !dbg !2222

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2223

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2224

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2227

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2229
  call void @llvm.dbg.label(metadata !2016), !dbg !2230
  br i1 %119, label %621, label %251, !dbg !2231

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2229
  call void @llvm.dbg.label(metadata !2018), !dbg !2233
  br i1 %109, label %493, label %450, !dbg !2234

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2235

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2236, !tbaa !883
  %256 = icmp eq i8 %255, 0, !dbg !2238
  br i1 %256, label %257, label %439, !dbg !2239

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2240
  br i1 %258, label %259, label %439, !dbg !2242

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1990, metadata !DIExpression()), !dbg !2120
  br label %260, !dbg !2243

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2120
  br i1 %116, label %262, label %439, !dbg !2244

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2246

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1976, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 1, metadata !1990, metadata !DIExpression()), !dbg !2120
  br i1 %116, label %264, label %439, !dbg !2247

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2248

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2251
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2253
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2253
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %270, metadata !1961, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %269, metadata !1971, metadata !DIExpression()), !dbg !2022
  %271 = icmp ult i64 %124, %270, !dbg !2254
  br i1 %271, label %272, label %274, !dbg !2257

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2254
  store i8 39, ptr %273, align 1, !dbg !2254, !tbaa !883
  br label %274, !dbg !2254

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %275, metadata !1970, metadata !DIExpression()), !dbg !2022
  %276 = icmp ult i64 %275, %270, !dbg !2258
  br i1 %276, label %277, label %279, !dbg !2261

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2258
  store i8 92, ptr %278, align 1, !dbg !2258, !tbaa !883
  br label %279, !dbg !2258

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %280, metadata !1970, metadata !DIExpression()), !dbg !2022
  %281 = icmp ult i64 %280, %270, !dbg !2262
  br i1 %281, label %282, label %284, !dbg !2265

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2262
  store i8 39, ptr %283, align 1, !dbg !2262, !tbaa !883
  br label %284, !dbg !2262

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %285, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !2022
  br label %439, !dbg !2266

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2267

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1992, metadata !DIExpression()), !dbg !2268
  %288 = tail call ptr @__ctype_b_loc() #41, !dbg !2269
  %289 = load ptr, ptr %288, align 8, !dbg !2269, !tbaa !811
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2269
  %292 = load i16, ptr %291, align 2, !dbg !2269, !tbaa !915
  %293 = and i16 %292, 16384, !dbg !2269
  %294 = icmp ne i16 %293, 0, !dbg !2271
  call void @llvm.dbg.value(metadata i1 %294, metadata !1995, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2268
  br label %337, !dbg !2272

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1996, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata ptr %14, metadata !2048, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata ptr %14, metadata !2056, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i32 0, metadata !2059, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 8, metadata !2060, metadata !DIExpression()), !dbg !2277
  store i64 0, ptr %14, align 8, !dbg !2279
  call void @llvm.dbg.value(metadata i64 0, metadata !1992, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8 1, metadata !1995, metadata !DIExpression()), !dbg !2268
  %296 = icmp eq i64 %153, -1, !dbg !2280
  br i1 %296, label %297, label %299, !dbg !2282

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %298, metadata !1963, metadata !DIExpression()), !dbg !2022
  br label %299, !dbg !2284

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2120
  call void @llvm.dbg.value(metadata i64 %300, metadata !1963, metadata !DIExpression()), !dbg !2022
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2285
  %301 = sub i64 %300, %129, !dbg !2286
  call void @llvm.dbg.value(metadata ptr %15, metadata !1999, metadata !DIExpression(DW_OP_deref)), !dbg !2287
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #38, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %302, metadata !2003, metadata !DIExpression()), !dbg !2287
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2289

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1992, metadata !DIExpression()), !dbg !2268
  %304 = icmp ugt i64 %300, %129, !dbg !2290
  br i1 %304, label %306, label %332, !dbg !2292

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1995, metadata !DIExpression()), !dbg !2268
  br label %332, !dbg !2293

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1992, metadata !DIExpression()), !dbg !2268
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2295
  %310 = load i8, ptr %309, align 1, !dbg !2295, !tbaa !883
  %311 = icmp eq i8 %310, 0, !dbg !2292
  br i1 %311, label %332, label %312, !dbg !2296

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %313, metadata !1992, metadata !DIExpression()), !dbg !2268
  %314 = add i64 %313, %129, !dbg !2298
  %315 = icmp eq i64 %313, %301, !dbg !2290
  br i1 %315, label %332, label %306, !dbg !2292, !llvm.loop !2299

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2300
  %319 = and i1 %318, %110, !dbg !2300
  call void @llvm.dbg.value(metadata i64 1, metadata !2004, metadata !DIExpression()), !dbg !2301
  br i1 %319, label %320, label %328, !dbg !2300

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2004, metadata !DIExpression()), !dbg !2301
  %322 = add i64 %321, %129, !dbg !2302
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2304
  %324 = load i8, ptr %323, align 1, !dbg !2304, !tbaa !883
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2305

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %326, metadata !2004, metadata !DIExpression()), !dbg !2301
  %327 = icmp eq i64 %326, %302, !dbg !2307
  br i1 %327, label %328, label %320, !dbg !2308, !llvm.loop !2309

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2311, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %329, metadata !1999, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 %329, metadata !2313, metadata !DIExpression()), !dbg !2321
  %330 = call i32 @iswprint(i32 noundef %329) #38, !dbg !2323
  %331 = icmp ne i32 %330, 0, !dbg !2324
  call void @llvm.dbg.value(metadata i8 poison, metadata !1995, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %302, metadata !1992, metadata !DIExpression()), !dbg !2268
  br label %332, !dbg !2325

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1995, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %333, metadata !1992, metadata !DIExpression()), !dbg !2268
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2326
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2327
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1995, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 0, metadata !1992, metadata !DIExpression()), !dbg !2268
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2326
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2327
  call void @llvm.dbg.label(metadata !2021), !dbg !2328
  %336 = select i1 %109, i32 4, i32 2, !dbg !2329
  br label %626, !dbg !2329

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2120
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2331
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1995, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %339, metadata !1992, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %338, metadata !1963, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i1 %340, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2120
  %341 = icmp ult i64 %339, 2, !dbg !2332
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2333
  br i1 %343, label %439, label %344, !dbg !2333

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2334
  call void @llvm.dbg.value(metadata i64 %345, metadata !2012, metadata !DIExpression()), !dbg !2335
  br label %346, !dbg !2336

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2022
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2111
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2337
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2120
  call void @llvm.dbg.value(metadata i8 %352, metadata !1991, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %351, metadata !1989, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1986, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %349, metadata !1984, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %347, metadata !1970, metadata !DIExpression()), !dbg !2022
  br i1 %342, label %397, label %353, !dbg !2338

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2343

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1989, metadata !DIExpression()), !dbg !2120
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2346
  br i1 %355, label %372, label %356, !dbg !2346

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2348
  br i1 %357, label %358, label %360, !dbg !2352

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2348
  store i8 39, ptr %359, align 1, !dbg !2348, !tbaa !883
  br label %360, !dbg !2348

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2352
  call void @llvm.dbg.value(metadata i64 %361, metadata !1970, metadata !DIExpression()), !dbg !2022
  %362 = icmp ult i64 %361, %130, !dbg !2353
  br i1 %362, label %363, label %365, !dbg !2356

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2353
  store i8 36, ptr %364, align 1, !dbg !2353, !tbaa !883
  br label %365, !dbg !2353

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %366, metadata !1970, metadata !DIExpression()), !dbg !2022
  %367 = icmp ult i64 %366, %130, !dbg !2357
  br i1 %367, label %368, label %370, !dbg !2360

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2357
  store i8 39, ptr %369, align 1, !dbg !2357, !tbaa !883
  br label %370, !dbg !2357

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %371, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 1, metadata !1978, metadata !DIExpression()), !dbg !2022
  br label %372, !dbg !2361

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2022
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %373, metadata !1970, metadata !DIExpression()), !dbg !2022
  %375 = icmp ult i64 %373, %130, !dbg !2362
  br i1 %375, label %376, label %378, !dbg !2365

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2362
  store i8 92, ptr %377, align 1, !dbg !2362, !tbaa !883
  br label %378, !dbg !2362

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %379, metadata !1970, metadata !DIExpression()), !dbg !2022
  %380 = icmp ult i64 %379, %130, !dbg !2366
  br i1 %380, label %381, label %385, !dbg !2369

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2366
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2366
  store i8 %383, ptr %384, align 1, !dbg !2366, !tbaa !883
  br label %385, !dbg !2366

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %386, metadata !1970, metadata !DIExpression()), !dbg !2022
  %387 = icmp ult i64 %386, %130, !dbg !2370
  br i1 %387, label %388, label %393, !dbg !2373

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2370
  %391 = or i8 %390, 48, !dbg !2370
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2370
  store i8 %391, ptr %392, align 1, !dbg !2370, !tbaa !883
  br label %393, !dbg !2370

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2373
  call void @llvm.dbg.value(metadata i64 %394, metadata !1970, metadata !DIExpression()), !dbg !2022
  %395 = and i8 %352, 7, !dbg !2374
  %396 = or i8 %395, 48, !dbg !2375
  call void @llvm.dbg.value(metadata i8 %396, metadata !1991, metadata !DIExpression()), !dbg !2120
  br label %404, !dbg !2376

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2377

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2378
  br i1 %399, label %400, label %402, !dbg !2383

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2378
  store i8 92, ptr %401, align 1, !dbg !2378, !tbaa !883
  br label %402, !dbg !2378

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2383
  call void @llvm.dbg.value(metadata i64 %403, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 0, metadata !1986, metadata !DIExpression()), !dbg !2120
  br label %404, !dbg !2384

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2022
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2120
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2120
  call void @llvm.dbg.value(metadata i8 %409, metadata !1991, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %408, metadata !1989, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1986, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %405, metadata !1970, metadata !DIExpression()), !dbg !2022
  %410 = add i64 %349, 1, !dbg !2385
  %411 = icmp ugt i64 %345, %410, !dbg !2387
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2388

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2389
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2389
  br i1 %415, label %416, label %427, !dbg !2389

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2392
  br i1 %417, label %418, label %420, !dbg !2396

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2392
  store i8 39, ptr %419, align 1, !dbg !2392, !tbaa !883
  br label %420, !dbg !2392

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %421, metadata !1970, metadata !DIExpression()), !dbg !2022
  %422 = icmp ult i64 %421, %130, !dbg !2397
  br i1 %422, label %423, label %425, !dbg !2400

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2397
  store i8 39, ptr %424, align 1, !dbg !2397, !tbaa !883
  br label %425, !dbg !2397

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %426, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !2022
  br label %427, !dbg !2401

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2402
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %428, metadata !1970, metadata !DIExpression()), !dbg !2022
  %430 = icmp ult i64 %428, %130, !dbg !2403
  br i1 %430, label %431, label %433, !dbg !2406

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2403
  store i8 %409, ptr %432, align 1, !dbg !2403, !tbaa !883
  br label %433, !dbg !2403

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2406
  call void @llvm.dbg.value(metadata i64 %434, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %410, metadata !1984, metadata !DIExpression()), !dbg !2111
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2407
  %436 = load i8, ptr %435, align 1, !dbg !2407, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %436, metadata !1991, metadata !DIExpression()), !dbg !2120
  br label %346, !dbg !2408, !llvm.loop !2409

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1991, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i1 %340, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %408, metadata !1989, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1986, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %349, metadata !1984, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %405, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %338, metadata !1963, metadata !DIExpression()), !dbg !2022
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2412
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2022
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2026
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2111
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2120
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1961, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 %448, metadata !1991, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1986, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %445, metadata !1984, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1976, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %442, metadata !1971, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %441, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %440, metadata !1963, metadata !DIExpression()), !dbg !2022
  br i1 %112, label %461, label %450, !dbg !2413

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
  br i1 %121, label %462, label %482, !dbg !2415

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2416

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
  %473 = lshr i8 %464, 5, !dbg !2417
  %474 = zext i8 %473 to i64, !dbg !2417
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2418
  %476 = load i32, ptr %475, align 4, !dbg !2418, !tbaa !874
  %477 = and i8 %464, 31, !dbg !2419
  %478 = zext i8 %477 to i32, !dbg !2419
  %479 = shl nuw i32 1, %478, !dbg !2420
  %480 = and i32 %476, %479, !dbg !2420
  %481 = icmp eq i32 %480, 0, !dbg !2420
  br i1 %481, label %482, label %493, !dbg !2421

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
  br i1 %154, label %493, label %529, !dbg !2422

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2412
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2022
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2026
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2423
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2120
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1961, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 %501, metadata !1991, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %499, metadata !1984, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1976, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %496, metadata !1971, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %495, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %494, metadata !1963, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.label(metadata !2019), !dbg !2424
  br i1 %110, label %621, label %503, !dbg !2425

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1989, metadata !DIExpression()), !dbg !2120
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2427
  br i1 %504, label %521, label %505, !dbg !2427

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2429
  br i1 %506, label %507, label %509, !dbg !2433

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2429
  store i8 39, ptr %508, align 1, !dbg !2429, !tbaa !883
  br label %509, !dbg !2429

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2433
  call void @llvm.dbg.value(metadata i64 %510, metadata !1970, metadata !DIExpression()), !dbg !2022
  %511 = icmp ult i64 %510, %502, !dbg !2434
  br i1 %511, label %512, label %514, !dbg !2437

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2434
  store i8 36, ptr %513, align 1, !dbg !2434, !tbaa !883
  br label %514, !dbg !2434

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2437
  call void @llvm.dbg.value(metadata i64 %515, metadata !1970, metadata !DIExpression()), !dbg !2022
  %516 = icmp ult i64 %515, %502, !dbg !2438
  br i1 %516, label %517, label %519, !dbg !2441

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2438
  store i8 39, ptr %518, align 1, !dbg !2438, !tbaa !883
  br label %519, !dbg !2438

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2441
  call void @llvm.dbg.value(metadata i64 %520, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 1, metadata !1978, metadata !DIExpression()), !dbg !2022
  br label %521, !dbg !2442

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2120
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %522, metadata !1970, metadata !DIExpression()), !dbg !2022
  %524 = icmp ult i64 %522, %502, !dbg !2443
  br i1 %524, label %525, label %527, !dbg !2446

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2443
  store i8 92, ptr %526, align 1, !dbg !2443, !tbaa !883
  br label %527, !dbg !2443

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %502, metadata !1961, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 %501, metadata !1991, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %499, metadata !1984, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1976, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %496, metadata !1971, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %528, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %494, metadata !1963, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.label(metadata !2020), !dbg !2447
  br label %553, !dbg !2448

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2412
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2022
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2026
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2423
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2451
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1961, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 %538, metadata !1991, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1990, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1989, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %535, metadata !1984, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1976, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %532, metadata !1971, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %531, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %530, metadata !1963, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.label(metadata !2020), !dbg !2447
  %540 = xor i1 %534, true, !dbg !2448
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2448
  br i1 %541, label %553, label %542, !dbg !2448

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2452
  br i1 %543, label %544, label %546, !dbg !2456

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2452
  store i8 39, ptr %545, align 1, !dbg !2452, !tbaa !883
  br label %546, !dbg !2452

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %547, metadata !1970, metadata !DIExpression()), !dbg !2022
  %548 = icmp ult i64 %547, %539, !dbg !2457
  br i1 %548, label %549, label %551, !dbg !2460

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2457
  store i8 39, ptr %550, align 1, !dbg !2457, !tbaa !883
  br label %551, !dbg !2457

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2460
  call void @llvm.dbg.value(metadata i64 %552, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !2022
  br label %553, !dbg !2461

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2120
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %561, metadata !1970, metadata !DIExpression()), !dbg !2022
  %563 = icmp ult i64 %561, %554, !dbg !2462
  br i1 %563, label %564, label %566, !dbg !2465

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2462
  store i8 %555, ptr %565, align 1, !dbg !2462, !tbaa !883
  br label %566, !dbg !2462

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %567, metadata !1970, metadata !DIExpression()), !dbg !2022
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2466
  call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2022
  br label %569, !dbg !2467

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2412
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2022
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2026
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2423
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1961, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %576, metadata !1984, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 poison, metadata !1978, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1976, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %572, metadata !1971, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %571, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %570, metadata !1963, metadata !DIExpression()), !dbg !2022
  %578 = add i64 %576, 1, !dbg !2468
  call void @llvm.dbg.value(metadata i64 %578, metadata !1984, metadata !DIExpression()), !dbg !2111
  br label %122, !dbg !2469, !llvm.loop !2470

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1961, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1977, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i8 poison, metadata !1976, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %125, metadata !1971, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %124, metadata !1970, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %123, metadata !1963, metadata !DIExpression()), !dbg !2022
  %580 = icmp ne i64 %124, 0, !dbg !2472
  %581 = xor i1 %110, true, !dbg !2474
  %582 = or i1 %580, %581, !dbg !2474
  %583 = or i1 %582, %111, !dbg !2474
  br i1 %583, label %584, label %621, !dbg !2474

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2475
  %586 = xor i1 %126, true, !dbg !2475
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2475
  br i1 %587, label %595, label %588, !dbg !2475

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2477

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2479
  br label %636, !dbg !2481

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2482
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2484
  br i1 %594, label %27, label %595, !dbg !2484

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2485
  %598 = or i1 %597, %596, !dbg !2487
  br i1 %598, label %614, label %599, !dbg !2487

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1972, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %124, metadata !1970, metadata !DIExpression()), !dbg !2022
  %600 = load i8, ptr %107, align 1, !dbg !2488, !tbaa !883
  %601 = icmp eq i8 %600, 0, !dbg !2491
  br i1 %601, label %614, label %602, !dbg !2491

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1972, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %605, metadata !1970, metadata !DIExpression()), !dbg !2022
  %606 = icmp ult i64 %605, %130, !dbg !2492
  br i1 %606, label %607, label %609, !dbg !2495

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2492
  store i8 %603, ptr %608, align 1, !dbg !2492, !tbaa !883
  br label %609, !dbg !2492

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2495
  call void @llvm.dbg.value(metadata i64 %610, metadata !1970, metadata !DIExpression()), !dbg !2022
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2496
  call void @llvm.dbg.value(metadata ptr %611, metadata !1972, metadata !DIExpression()), !dbg !2022
  %612 = load i8, ptr %611, align 1, !dbg !2488, !tbaa !883
  %613 = icmp eq i8 %612, 0, !dbg !2491
  br i1 %613, label %614, label %602, !dbg !2491, !llvm.loop !2497

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2098
  call void @llvm.dbg.value(metadata i64 %615, metadata !1970, metadata !DIExpression()), !dbg !2022
  %616 = icmp ult i64 %615, %130, !dbg !2499
  br i1 %616, label %617, label %636, !dbg !2501

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2502
  store i8 0, ptr %618, align 1, !dbg !2503, !tbaa !883
  br label %636, !dbg !2502

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2021), !dbg !2328
  %620 = icmp eq i32 %103, 2, !dbg !2504
  br i1 %620, label %626, label %630, !dbg !2329

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2021), !dbg !2328
  %624 = icmp eq i32 %103, 2, !dbg !2504
  %625 = select i1 %109, i32 4, i32 2, !dbg !2329
  br i1 %624, label %626, label %630, !dbg !2329

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2329

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1964, metadata !DIExpression()), !dbg !2022
  %634 = and i32 %5, -3, !dbg !2505
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2506
  br label %636, !dbg !2507

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2508
}

; Function Attrs: nounwind
declare !dbg !2509 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2512 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2515 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2517 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2521, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i64 %1, metadata !2522, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata ptr %2, metadata !2523, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata ptr %0, metadata !2525, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i64 %1, metadata !2530, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr null, metadata !2531, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr %2, metadata !2532, metadata !DIExpression()), !dbg !2538
  %4 = icmp eq ptr %2, null, !dbg !2540
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2540
  call void @llvm.dbg.value(metadata ptr %5, metadata !2533, metadata !DIExpression()), !dbg !2538
  %6 = tail call ptr @__errno_location() #41, !dbg !2541
  %7 = load i32, ptr %6, align 4, !dbg !2541, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %7, metadata !2534, metadata !DIExpression()), !dbg !2538
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2542
  %9 = load i32, ptr %8, align 4, !dbg !2542, !tbaa !1904
  %10 = or i32 %9, 1, !dbg !2543
  call void @llvm.dbg.value(metadata i32 %10, metadata !2535, metadata !DIExpression()), !dbg !2538
  %11 = load i32, ptr %5, align 8, !dbg !2544, !tbaa !1854
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2545
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2546
  %14 = load ptr, ptr %13, align 8, !dbg !2546, !tbaa !1925
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2547
  %16 = load ptr, ptr %15, align 8, !dbg !2547, !tbaa !1928
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2548
  %18 = add i64 %17, 1, !dbg !2549
  call void @llvm.dbg.value(metadata i64 %18, metadata !2536, metadata !DIExpression()), !dbg !2538
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2550
  call void @llvm.dbg.value(metadata ptr %19, metadata !2537, metadata !DIExpression()), !dbg !2538
  %20 = load i32, ptr %5, align 8, !dbg !2551, !tbaa !1854
  %21 = load ptr, ptr %13, align 8, !dbg !2552, !tbaa !1925
  %22 = load ptr, ptr %15, align 8, !dbg !2553, !tbaa !1928
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2554
  store i32 %7, ptr %6, align 4, !dbg !2555, !tbaa !874
  ret ptr %19, !dbg !2556
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2526 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2525, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i64 %1, metadata !2530, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata ptr %2, metadata !2531, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata ptr %3, metadata !2532, metadata !DIExpression()), !dbg !2557
  %5 = icmp eq ptr %3, null, !dbg !2558
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2558
  call void @llvm.dbg.value(metadata ptr %6, metadata !2533, metadata !DIExpression()), !dbg !2557
  %7 = tail call ptr @__errno_location() #41, !dbg !2559
  %8 = load i32, ptr %7, align 4, !dbg !2559, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %8, metadata !2534, metadata !DIExpression()), !dbg !2557
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2560
  %10 = load i32, ptr %9, align 4, !dbg !2560, !tbaa !1904
  %11 = icmp eq ptr %2, null, !dbg !2561
  %12 = zext i1 %11 to i32, !dbg !2561
  %13 = or i32 %10, %12, !dbg !2562
  call void @llvm.dbg.value(metadata i32 %13, metadata !2535, metadata !DIExpression()), !dbg !2557
  %14 = load i32, ptr %6, align 8, !dbg !2563, !tbaa !1854
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2564
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2565
  %17 = load ptr, ptr %16, align 8, !dbg !2565, !tbaa !1925
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2566
  %19 = load ptr, ptr %18, align 8, !dbg !2566, !tbaa !1928
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2567
  %21 = add i64 %20, 1, !dbg !2568
  call void @llvm.dbg.value(metadata i64 %21, metadata !2536, metadata !DIExpression()), !dbg !2557
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2569
  call void @llvm.dbg.value(metadata ptr %22, metadata !2537, metadata !DIExpression()), !dbg !2557
  %23 = load i32, ptr %6, align 8, !dbg !2570, !tbaa !1854
  %24 = load ptr, ptr %16, align 8, !dbg !2571, !tbaa !1925
  %25 = load ptr, ptr %18, align 8, !dbg !2572, !tbaa !1928
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2573
  store i32 %8, ptr %7, align 4, !dbg !2574, !tbaa !874
  br i1 %11, label %28, label %27, !dbg !2575

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2576, !tbaa !2578
  br label %28, !dbg !2579

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2580
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2581 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2586, !tbaa !811
  call void @llvm.dbg.value(metadata ptr %1, metadata !2583, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i32 1, metadata !2584, metadata !DIExpression()), !dbg !2588
  %2 = load i32, ptr @nslots, align 4, !tbaa !874
  call void @llvm.dbg.value(metadata i32 1, metadata !2584, metadata !DIExpression()), !dbg !2588
  %3 = icmp sgt i32 %2, 1, !dbg !2589
  br i1 %3, label %4, label %6, !dbg !2591

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2589
  br label %10, !dbg !2591

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2592
  %8 = load ptr, ptr %7, align 8, !dbg !2592, !tbaa !2594
  %9 = icmp eq ptr %8, @slot0, !dbg !2596
  br i1 %9, label %17, label %16, !dbg !2597

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2584, metadata !DIExpression()), !dbg !2588
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2598
  %13 = load ptr, ptr %12, align 8, !dbg !2598, !tbaa !2594
  tail call void @free(ptr noundef %13) #38, !dbg !2599
  %14 = add nuw nsw i64 %11, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %14, metadata !2584, metadata !DIExpression()), !dbg !2588
  %15 = icmp eq i64 %14, %5, !dbg !2589
  br i1 %15, label %6, label %10, !dbg !2591, !llvm.loop !2601

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2603
  store i64 256, ptr @slotvec0, align 8, !dbg !2605, !tbaa !2606
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2607, !tbaa !2594
  br label %17, !dbg !2608

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2609
  br i1 %18, label %20, label %19, !dbg !2611

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2612
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2614, !tbaa !811
  br label %20, !dbg !2615

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2616, !tbaa !874
  ret void, !dbg !2617
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2618 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2620, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata ptr %1, metadata !2621, metadata !DIExpression()), !dbg !2622
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2623
  ret ptr %3, !dbg !2624
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2625 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2629, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %1, metadata !2630, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i64 %2, metadata !2631, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %3, metadata !2632, metadata !DIExpression()), !dbg !2645
  %6 = tail call ptr @__errno_location() #41, !dbg !2646
  %7 = load i32, ptr %6, align 4, !dbg !2646, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %7, metadata !2633, metadata !DIExpression()), !dbg !2645
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2647, !tbaa !811
  call void @llvm.dbg.value(metadata ptr %8, metadata !2634, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2635, metadata !DIExpression()), !dbg !2645
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2648
  br i1 %9, label %10, label %11, !dbg !2648

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2650
  unreachable, !dbg !2650

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2651, !tbaa !874
  %13 = icmp sgt i32 %12, %0, !dbg !2652
  br i1 %13, label %32, label %14, !dbg !2653

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2654
  call void @llvm.dbg.value(metadata i1 %15, metadata !2636, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2655
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2656
  %16 = sext i32 %12 to i64, !dbg !2657
  call void @llvm.dbg.value(metadata i64 %16, metadata !2639, metadata !DIExpression()), !dbg !2655
  store i64 %16, ptr %5, align 8, !dbg !2658, !tbaa !2578
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2659
  %18 = add nuw nsw i32 %0, 1, !dbg !2660
  %19 = sub i32 %18, %12, !dbg !2661
  %20 = sext i32 %19 to i64, !dbg !2662
  call void @llvm.dbg.value(metadata ptr %5, metadata !2639, metadata !DIExpression(DW_OP_deref)), !dbg !2655
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2663
  call void @llvm.dbg.value(metadata ptr %21, metadata !2634, metadata !DIExpression()), !dbg !2645
  store ptr %21, ptr @slotvec, align 8, !dbg !2664, !tbaa !811
  br i1 %15, label %22, label %23, !dbg !2665

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2666, !tbaa.struct !2668
  br label %23, !dbg !2669

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2670, !tbaa !874
  %25 = sext i32 %24 to i64, !dbg !2671
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2671
  %27 = load i64, ptr %5, align 8, !dbg !2672, !tbaa !2578
  call void @llvm.dbg.value(metadata i64 %27, metadata !2639, metadata !DIExpression()), !dbg !2655
  %28 = sub nsw i64 %27, %25, !dbg !2673
  %29 = shl i64 %28, 4, !dbg !2674
  call void @llvm.dbg.value(metadata ptr %26, metadata !2056, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 0, metadata !2059, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %29, metadata !2060, metadata !DIExpression()), !dbg !2675
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2677
  %30 = load i64, ptr %5, align 8, !dbg !2678, !tbaa !2578
  call void @llvm.dbg.value(metadata i64 %30, metadata !2639, metadata !DIExpression()), !dbg !2655
  %31 = trunc i64 %30 to i32, !dbg !2678
  store i32 %31, ptr @nslots, align 4, !dbg !2679, !tbaa !874
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2680
  br label %32, !dbg !2681

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2645
  call void @llvm.dbg.value(metadata ptr %33, metadata !2634, metadata !DIExpression()), !dbg !2645
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2682
  %36 = load i64, ptr %35, align 8, !dbg !2683, !tbaa !2606
  call void @llvm.dbg.value(metadata i64 %36, metadata !2640, metadata !DIExpression()), !dbg !2684
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2685
  %38 = load ptr, ptr %37, align 8, !dbg !2685, !tbaa !2594
  call void @llvm.dbg.value(metadata ptr %38, metadata !2642, metadata !DIExpression()), !dbg !2684
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2686
  %40 = load i32, ptr %39, align 4, !dbg !2686, !tbaa !1904
  %41 = or i32 %40, 1, !dbg !2687
  call void @llvm.dbg.value(metadata i32 %41, metadata !2643, metadata !DIExpression()), !dbg !2684
  %42 = load i32, ptr %3, align 8, !dbg !2688, !tbaa !1854
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2689
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2690
  %45 = load ptr, ptr %44, align 8, !dbg !2690, !tbaa !1925
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2691
  %47 = load ptr, ptr %46, align 8, !dbg !2691, !tbaa !1928
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2692
  call void @llvm.dbg.value(metadata i64 %48, metadata !2644, metadata !DIExpression()), !dbg !2684
  %49 = icmp ugt i64 %36, %48, !dbg !2693
  br i1 %49, label %60, label %50, !dbg !2695

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %51, metadata !2640, metadata !DIExpression()), !dbg !2684
  store i64 %51, ptr %35, align 8, !dbg !2698, !tbaa !2606
  %52 = icmp eq ptr %38, @slot0, !dbg !2699
  br i1 %52, label %54, label %53, !dbg !2701

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2702
  br label %54, !dbg !2702

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !2703
  call void @llvm.dbg.value(metadata ptr %55, metadata !2642, metadata !DIExpression()), !dbg !2684
  store ptr %55, ptr %37, align 8, !dbg !2704, !tbaa !2594
  %56 = load i32, ptr %3, align 8, !dbg !2705, !tbaa !1854
  %57 = load ptr, ptr %44, align 8, !dbg !2706, !tbaa !1925
  %58 = load ptr, ptr %46, align 8, !dbg !2707, !tbaa !1928
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2708
  br label %60, !dbg !2709

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2684
  call void @llvm.dbg.value(metadata ptr %61, metadata !2642, metadata !DIExpression()), !dbg !2684
  store i32 %7, ptr %6, align 4, !dbg !2710, !tbaa !874
  ret ptr %61, !dbg !2711
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2712 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2716, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata ptr %1, metadata !2717, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %2, metadata !2718, metadata !DIExpression()), !dbg !2719
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2720
  ret ptr %4, !dbg !2721
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2722 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2724, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i32 0, metadata !2620, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %0, metadata !2621, metadata !DIExpression()), !dbg !2726
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2728
  ret ptr %2, !dbg !2729
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2730 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2734, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %1, metadata !2735, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i32 0, metadata !2716, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata ptr %0, metadata !2717, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i64 %1, metadata !2718, metadata !DIExpression()), !dbg !2737
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2739
  ret ptr %3, !dbg !2740
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2741 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2745, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 %1, metadata !2746, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata ptr %2, metadata !2747, metadata !DIExpression()), !dbg !2749
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2750
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2748, metadata !DIExpression()), !dbg !2751
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2752), !dbg !2755
  call void @llvm.dbg.value(metadata i32 %1, metadata !2756, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2761, metadata !DIExpression()), !dbg !2764
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2764, !alias.scope !2752
  %5 = icmp eq i32 %1, 10, !dbg !2765
  br i1 %5, label %6, label %7, !dbg !2767

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2768, !noalias !2752
  unreachable, !dbg !2768

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2769, !tbaa !1854, !alias.scope !2752
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2770
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2771
  ret ptr %8, !dbg !2772
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2773 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2777, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i32 %1, metadata !2778, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %2, metadata !2779, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %3, metadata !2780, metadata !DIExpression()), !dbg !2782
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2783
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2781, metadata !DIExpression()), !dbg !2784
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2785), !dbg !2788
  call void @llvm.dbg.value(metadata i32 %1, metadata !2756, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2761, metadata !DIExpression()), !dbg !2791
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2791, !alias.scope !2785
  %6 = icmp eq i32 %1, 10, !dbg !2792
  br i1 %6, label %7, label %8, !dbg !2793

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2794, !noalias !2785
  unreachable, !dbg !2794

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2795, !tbaa !1854, !alias.scope !2785
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2796
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2797
  ret ptr %9, !dbg !2798
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2799 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2803, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata ptr %1, metadata !2804, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i32 0, metadata !2745, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %0, metadata !2746, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata ptr %1, metadata !2747, metadata !DIExpression()), !dbg !2806
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2808
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2748, metadata !DIExpression()), !dbg !2809
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2810), !dbg !2813
  call void @llvm.dbg.value(metadata i32 %0, metadata !2756, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2761, metadata !DIExpression()), !dbg !2816
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2816, !alias.scope !2810
  %4 = icmp eq i32 %0, 10, !dbg !2817
  br i1 %4, label %5, label %6, !dbg !2818

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2819, !noalias !2810
  unreachable, !dbg !2819

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2820, !tbaa !1854, !alias.scope !2810
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2821
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2822
  ret ptr %7, !dbg !2823
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2824 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2828, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %1, metadata !2829, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i64 %2, metadata !2830, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i32 0, metadata !2777, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i32 %0, metadata !2778, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata ptr %1, metadata !2779, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 %2, metadata !2780, metadata !DIExpression()), !dbg !2832
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2834
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2781, metadata !DIExpression()), !dbg !2835
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2836), !dbg !2839
  call void @llvm.dbg.value(metadata i32 %0, metadata !2756, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2761, metadata !DIExpression()), !dbg !2842
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2842, !alias.scope !2836
  %5 = icmp eq i32 %0, 10, !dbg !2843
  br i1 %5, label %6, label %7, !dbg !2844

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2845, !noalias !2836
  unreachable, !dbg !2845

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2846, !tbaa !1854, !alias.scope !2836
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2847
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2848
  ret ptr %8, !dbg !2849
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2850 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2854, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i64 %1, metadata !2855, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i8 %2, metadata !2856, metadata !DIExpression()), !dbg !2858
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2859
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2861, !tbaa.struct !2862
  call void @llvm.dbg.value(metadata ptr %4, metadata !1871, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8 %2, metadata !1872, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 1, metadata !1873, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8 %2, metadata !1874, metadata !DIExpression()), !dbg !2863
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2865
  %6 = lshr i8 %2, 5, !dbg !2866
  %7 = zext i8 %6 to i64, !dbg !2866
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2867
  call void @llvm.dbg.value(metadata ptr %8, metadata !1875, metadata !DIExpression()), !dbg !2863
  %9 = and i8 %2, 31, !dbg !2868
  %10 = zext i8 %9 to i32, !dbg !2868
  call void @llvm.dbg.value(metadata i32 %10, metadata !1877, metadata !DIExpression()), !dbg !2863
  %11 = load i32, ptr %8, align 4, !dbg !2869, !tbaa !874
  %12 = lshr i32 %11, %10, !dbg !2870
  call void @llvm.dbg.value(metadata i32 %12, metadata !1878, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2863
  %13 = and i32 %12, 1, !dbg !2871
  %14 = xor i32 %13, 1, !dbg !2871
  %15 = shl nuw i32 %14, %10, !dbg !2872
  %16 = xor i32 %15, %11, !dbg !2873
  store i32 %16, ptr %8, align 4, !dbg !2873, !tbaa !874
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2874
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2875
  ret ptr %17, !dbg !2876
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2877 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2881, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8 %1, metadata !2882, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata ptr %0, metadata !2854, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 -1, metadata !2855, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 %1, metadata !2856, metadata !DIExpression()), !dbg !2884
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2886
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2857, metadata !DIExpression()), !dbg !2887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2888, !tbaa.struct !2862
  call void @llvm.dbg.value(metadata ptr %3, metadata !1871, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8 %1, metadata !1872, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i32 1, metadata !1873, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8 %1, metadata !1874, metadata !DIExpression()), !dbg !2889
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2891
  %5 = lshr i8 %1, 5, !dbg !2892
  %6 = zext i8 %5 to i64, !dbg !2892
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2893
  call void @llvm.dbg.value(metadata ptr %7, metadata !1875, metadata !DIExpression()), !dbg !2889
  %8 = and i8 %1, 31, !dbg !2894
  %9 = zext i8 %8 to i32, !dbg !2894
  call void @llvm.dbg.value(metadata i32 %9, metadata !1877, metadata !DIExpression()), !dbg !2889
  %10 = load i32, ptr %7, align 4, !dbg !2895, !tbaa !874
  %11 = lshr i32 %10, %9, !dbg !2896
  call void @llvm.dbg.value(metadata i32 %11, metadata !1878, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2889
  %12 = and i32 %11, 1, !dbg !2897
  %13 = xor i32 %12, 1, !dbg !2897
  %14 = shl nuw i32 %13, %9, !dbg !2898
  %15 = xor i32 %14, %10, !dbg !2899
  store i32 %15, ptr %7, align 4, !dbg !2899, !tbaa !874
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2900
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2901
  ret ptr %16, !dbg !2902
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2903 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2905, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %0, metadata !2881, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8 58, metadata !2882, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata ptr %0, metadata !2854, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i64 -1, metadata !2855, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i8 58, metadata !2856, metadata !DIExpression()), !dbg !2909
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2911
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2857, metadata !DIExpression()), !dbg !2912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2913, !tbaa.struct !2862
  call void @llvm.dbg.value(metadata ptr %2, metadata !1871, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 58, metadata !1872, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 1, metadata !1873, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 58, metadata !1874, metadata !DIExpression()), !dbg !2914
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2916
  call void @llvm.dbg.value(metadata ptr %3, metadata !1875, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 26, metadata !1877, metadata !DIExpression()), !dbg !2914
  %4 = load i32, ptr %3, align 4, !dbg !2917, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %4, metadata !1878, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2914
  %5 = or i32 %4, 67108864, !dbg !2918
  store i32 %5, ptr %3, align 4, !dbg !2918, !tbaa !874
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2919
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2920
  ret ptr %6, !dbg !2921
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2922 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %1, metadata !2925, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata ptr %0, metadata !2854, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i64 %1, metadata !2855, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 58, metadata !2856, metadata !DIExpression()), !dbg !2927
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2929
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2857, metadata !DIExpression()), !dbg !2930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2931, !tbaa.struct !2862
  call void @llvm.dbg.value(metadata ptr %3, metadata !1871, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 58, metadata !1872, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 1, metadata !1873, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 58, metadata !1874, metadata !DIExpression()), !dbg !2932
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2934
  call void @llvm.dbg.value(metadata ptr %4, metadata !1875, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 26, metadata !1877, metadata !DIExpression()), !dbg !2932
  %5 = load i32, ptr %4, align 4, !dbg !2935, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %5, metadata !1878, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2932
  %6 = or i32 %5, 67108864, !dbg !2936
  store i32 %6, ptr %4, align 4, !dbg !2936, !tbaa !874
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2937
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2938
  ret ptr %7, !dbg !2939
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2940 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2761, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2946
  call void @llvm.dbg.value(metadata i32 %0, metadata !2942, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i32 %1, metadata !2943, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata ptr %2, metadata !2944, metadata !DIExpression()), !dbg !2948
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2949
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2945, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i32 %1, metadata !2756, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i32 0, metadata !2761, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2951
  %5 = icmp eq i32 %1, 10, !dbg !2952
  br i1 %5, label %6, label %7, !dbg !2953

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2954, !noalias !2955
  unreachable, !dbg !2954

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2761, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2951
  store i32 %1, ptr %4, align 8, !dbg !2958, !tbaa.struct !2862
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2958
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2958
  call void @llvm.dbg.value(metadata ptr %4, metadata !1871, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 58, metadata !1872, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i32 1, metadata !1873, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 58, metadata !1874, metadata !DIExpression()), !dbg !2959
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2961
  call void @llvm.dbg.value(metadata ptr %9, metadata !1875, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i32 26, metadata !1877, metadata !DIExpression()), !dbg !2959
  %10 = load i32, ptr %9, align 4, !dbg !2962, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %10, metadata !1878, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2959
  %11 = or i32 %10, 67108864, !dbg !2963
  store i32 %11, ptr %9, align 4, !dbg !2963, !tbaa !874
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2964
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2965
  ret ptr %12, !dbg !2966
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2967 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2971, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata ptr %1, metadata !2972, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata ptr %2, metadata !2973, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata ptr %3, metadata !2974, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i32 %0, metadata !2976, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata ptr %1, metadata !2981, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata ptr %2, metadata !2982, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata ptr %3, metadata !2983, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 -1, metadata !2984, metadata !DIExpression()), !dbg !2986
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2988
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2985, metadata !DIExpression()), !dbg !2989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2990, !tbaa.struct !2862
  call void @llvm.dbg.value(metadata ptr %5, metadata !1911, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %1, metadata !1912, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2, metadata !1913, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %5, metadata !1911, metadata !DIExpression()), !dbg !2991
  store i32 10, ptr %5, align 8, !dbg !2993, !tbaa !1854
  %6 = icmp ne ptr %1, null, !dbg !2994
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2995
  br i1 %8, label %10, label %9, !dbg !2995

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2996
  unreachable, !dbg !2996

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2997
  store ptr %1, ptr %11, align 8, !dbg !2998, !tbaa !1925
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2999
  store ptr %2, ptr %12, align 8, !dbg !3000, !tbaa !1928
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3001
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3002
  ret ptr %13, !dbg !3003
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2977 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2976, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata ptr %1, metadata !2981, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata ptr %2, metadata !2982, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata ptr %3, metadata !2983, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i64 %4, metadata !2984, metadata !DIExpression()), !dbg !3004
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !3005
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2985, metadata !DIExpression()), !dbg !3006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3007, !tbaa.struct !2862
  call void @llvm.dbg.value(metadata ptr %6, metadata !1911, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %1, metadata !1912, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %2, metadata !1913, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata ptr %6, metadata !1911, metadata !DIExpression()), !dbg !3008
  store i32 10, ptr %6, align 8, !dbg !3010, !tbaa !1854
  %7 = icmp ne ptr %1, null, !dbg !3011
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3012
  br i1 %9, label %11, label %10, !dbg !3012

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !3013
  unreachable, !dbg !3013

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3014
  store ptr %1, ptr %12, align 8, !dbg !3015, !tbaa !1925
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3016
  store ptr %2, ptr %13, align 8, !dbg !3017, !tbaa !1928
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3018
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !3019
  ret ptr %14, !dbg !3020
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3021 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3025, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %1, metadata !3026, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %2, metadata !3027, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 0, metadata !2971, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %0, metadata !2972, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %1, metadata !2973, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata ptr %2, metadata !2974, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 0, metadata !2976, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata ptr %0, metadata !2981, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata ptr %1, metadata !2982, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata ptr %2, metadata !2983, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 -1, metadata !2984, metadata !DIExpression()), !dbg !3031
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3033
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2985, metadata !DIExpression()), !dbg !3034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3035, !tbaa.struct !2862
  call void @llvm.dbg.value(metadata ptr %4, metadata !1911, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata ptr %0, metadata !1912, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata ptr %1, metadata !1913, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata ptr %4, metadata !1911, metadata !DIExpression()), !dbg !3036
  store i32 10, ptr %4, align 8, !dbg !3038, !tbaa !1854
  %5 = icmp ne ptr %0, null, !dbg !3039
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3040
  br i1 %7, label %9, label %8, !dbg !3040

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3041
  unreachable, !dbg !3041

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3042
  store ptr %0, ptr %10, align 8, !dbg !3043, !tbaa !1925
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3044
  store ptr %1, ptr %11, align 8, !dbg !3045, !tbaa !1928
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3046
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3047
  ret ptr %12, !dbg !3048
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3049 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3053, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata ptr %1, metadata !3054, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata ptr %2, metadata !3055, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i64 %3, metadata !3056, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i32 0, metadata !2976, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %0, metadata !2981, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %1, metadata !2982, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %2, metadata !2983, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i64 %3, metadata !2984, metadata !DIExpression()), !dbg !3058
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3060
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2985, metadata !DIExpression()), !dbg !3061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3062, !tbaa.struct !2862
  call void @llvm.dbg.value(metadata ptr %5, metadata !1911, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %0, metadata !1912, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %1, metadata !1913, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %5, metadata !1911, metadata !DIExpression()), !dbg !3063
  store i32 10, ptr %5, align 8, !dbg !3065, !tbaa !1854
  %6 = icmp ne ptr %0, null, !dbg !3066
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3067
  br i1 %8, label %10, label %9, !dbg !3067

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3068
  unreachable, !dbg !3068

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3069
  store ptr %0, ptr %11, align 8, !dbg !3070, !tbaa !1925
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3071
  store ptr %1, ptr %12, align 8, !dbg !3072, !tbaa !1928
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3073
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3074
  ret ptr %13, !dbg !3075
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3076 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3080, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata ptr %1, metadata !3081, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %2, metadata !3082, metadata !DIExpression()), !dbg !3083
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3084
  ret ptr %4, !dbg !3085
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3086 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3090, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %1, metadata !3091, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i32 0, metadata !3080, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %0, metadata !3081, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %1, metadata !3082, metadata !DIExpression()), !dbg !3093
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3095
  ret ptr %3, !dbg !3096
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3097 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3101, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %1, metadata !3102, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i32 %0, metadata !3080, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata ptr %1, metadata !3081, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata i64 -1, metadata !3082, metadata !DIExpression()), !dbg !3104
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3106
  ret ptr %3, !dbg !3107
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3108 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3112, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i32 0, metadata !3101, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata ptr %0, metadata !3102, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i32 0, metadata !3080, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %0, metadata !3081, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 -1, metadata !3082, metadata !DIExpression()), !dbg !3116
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3118
  ret ptr %2, !dbg !3119
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3120 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3159, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata ptr %1, metadata !3160, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata ptr %2, metadata !3161, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata ptr %3, metadata !3162, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata ptr %4, metadata !3163, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %5, metadata !3164, metadata !DIExpression()), !dbg !3165
  %7 = icmp eq ptr %1, null, !dbg !3166
  br i1 %7, label %10, label %8, !dbg !3168

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3169
  br label %12, !dbg !3169

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.84, ptr noundef %2, ptr noundef %3) #38, !dbg !3170
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.3.86, i32 noundef 5) #38, !dbg !3171
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3171
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.87, ptr noundef %0), !dbg !3172
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.5.88, i32 noundef 5) #38, !dbg !3173
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.89) #38, !dbg !3173
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.87, ptr noundef %0), !dbg !3174
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
  ], !dbg !3175

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.7.90, i32 noundef 5) #38, !dbg !3176
  %21 = load ptr, ptr %4, align 8, !dbg !3176, !tbaa !811
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3176
  br label %147, !dbg !3178

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.8.91, i32 noundef 5) #38, !dbg !3179
  %25 = load ptr, ptr %4, align 8, !dbg !3179, !tbaa !811
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3179
  %27 = load ptr, ptr %26, align 8, !dbg !3179, !tbaa !811
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3179
  br label %147, !dbg !3180

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.9.92, i32 noundef 5) #38, !dbg !3181
  %31 = load ptr, ptr %4, align 8, !dbg !3181, !tbaa !811
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3181
  %33 = load ptr, ptr %32, align 8, !dbg !3181, !tbaa !811
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3181
  %35 = load ptr, ptr %34, align 8, !dbg !3181, !tbaa !811
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3181
  br label %147, !dbg !3182

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.10.93, i32 noundef 5) #38, !dbg !3183
  %39 = load ptr, ptr %4, align 8, !dbg !3183, !tbaa !811
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3183
  %41 = load ptr, ptr %40, align 8, !dbg !3183, !tbaa !811
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3183
  %43 = load ptr, ptr %42, align 8, !dbg !3183, !tbaa !811
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3183
  %45 = load ptr, ptr %44, align 8, !dbg !3183, !tbaa !811
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3183
  br label %147, !dbg !3184

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.11.94, i32 noundef 5) #38, !dbg !3185
  %49 = load ptr, ptr %4, align 8, !dbg !3185, !tbaa !811
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3185
  %51 = load ptr, ptr %50, align 8, !dbg !3185, !tbaa !811
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3185
  %53 = load ptr, ptr %52, align 8, !dbg !3185, !tbaa !811
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3185
  %55 = load ptr, ptr %54, align 8, !dbg !3185, !tbaa !811
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3185
  %57 = load ptr, ptr %56, align 8, !dbg !3185, !tbaa !811
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3185
  br label %147, !dbg !3186

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.12.95, i32 noundef 5) #38, !dbg !3187
  %61 = load ptr, ptr %4, align 8, !dbg !3187, !tbaa !811
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3187
  %63 = load ptr, ptr %62, align 8, !dbg !3187, !tbaa !811
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3187
  %65 = load ptr, ptr %64, align 8, !dbg !3187, !tbaa !811
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3187
  %67 = load ptr, ptr %66, align 8, !dbg !3187, !tbaa !811
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3187
  %69 = load ptr, ptr %68, align 8, !dbg !3187, !tbaa !811
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3187
  %71 = load ptr, ptr %70, align 8, !dbg !3187, !tbaa !811
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3187
  br label %147, !dbg !3188

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.13.96, i32 noundef 5) #38, !dbg !3189
  %75 = load ptr, ptr %4, align 8, !dbg !3189, !tbaa !811
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3189
  %77 = load ptr, ptr %76, align 8, !dbg !3189, !tbaa !811
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3189
  %79 = load ptr, ptr %78, align 8, !dbg !3189, !tbaa !811
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3189
  %81 = load ptr, ptr %80, align 8, !dbg !3189, !tbaa !811
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3189
  %83 = load ptr, ptr %82, align 8, !dbg !3189, !tbaa !811
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3189
  %85 = load ptr, ptr %84, align 8, !dbg !3189, !tbaa !811
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3189
  %87 = load ptr, ptr %86, align 8, !dbg !3189, !tbaa !811
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3189
  br label %147, !dbg !3190

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.14.97, i32 noundef 5) #38, !dbg !3191
  %91 = load ptr, ptr %4, align 8, !dbg !3191, !tbaa !811
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3191
  %93 = load ptr, ptr %92, align 8, !dbg !3191, !tbaa !811
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3191
  %95 = load ptr, ptr %94, align 8, !dbg !3191, !tbaa !811
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3191
  %97 = load ptr, ptr %96, align 8, !dbg !3191, !tbaa !811
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3191
  %99 = load ptr, ptr %98, align 8, !dbg !3191, !tbaa !811
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3191
  %101 = load ptr, ptr %100, align 8, !dbg !3191, !tbaa !811
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3191
  %103 = load ptr, ptr %102, align 8, !dbg !3191, !tbaa !811
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3191
  %105 = load ptr, ptr %104, align 8, !dbg !3191, !tbaa !811
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3191
  br label %147, !dbg !3192

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.15.98, i32 noundef 5) #38, !dbg !3193
  %109 = load ptr, ptr %4, align 8, !dbg !3193, !tbaa !811
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3193
  %111 = load ptr, ptr %110, align 8, !dbg !3193, !tbaa !811
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3193
  %113 = load ptr, ptr %112, align 8, !dbg !3193, !tbaa !811
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3193
  %115 = load ptr, ptr %114, align 8, !dbg !3193, !tbaa !811
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3193
  %117 = load ptr, ptr %116, align 8, !dbg !3193, !tbaa !811
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3193
  %119 = load ptr, ptr %118, align 8, !dbg !3193, !tbaa !811
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3193
  %121 = load ptr, ptr %120, align 8, !dbg !3193, !tbaa !811
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3193
  %123 = load ptr, ptr %122, align 8, !dbg !3193, !tbaa !811
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3193
  %125 = load ptr, ptr %124, align 8, !dbg !3193, !tbaa !811
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3193
  br label %147, !dbg !3194

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.16.99, i32 noundef 5) #38, !dbg !3195
  %129 = load ptr, ptr %4, align 8, !dbg !3195, !tbaa !811
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3195
  %131 = load ptr, ptr %130, align 8, !dbg !3195, !tbaa !811
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3195
  %133 = load ptr, ptr %132, align 8, !dbg !3195, !tbaa !811
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3195
  %135 = load ptr, ptr %134, align 8, !dbg !3195, !tbaa !811
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3195
  %137 = load ptr, ptr %136, align 8, !dbg !3195, !tbaa !811
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3195
  %139 = load ptr, ptr %138, align 8, !dbg !3195, !tbaa !811
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3195
  %141 = load ptr, ptr %140, align 8, !dbg !3195, !tbaa !811
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3195
  %143 = load ptr, ptr %142, align 8, !dbg !3195, !tbaa !811
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3195
  %145 = load ptr, ptr %144, align 8, !dbg !3195, !tbaa !811
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3195
  br label %147, !dbg !3196

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3197
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3198 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3202, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata ptr %1, metadata !3203, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata ptr %2, metadata !3204, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata ptr %3, metadata !3205, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata ptr %4, metadata !3206, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i64 0, metadata !3207, metadata !DIExpression()), !dbg !3208
  br label %6, !dbg !3209

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3211
  call void @llvm.dbg.value(metadata i64 %7, metadata !3207, metadata !DIExpression()), !dbg !3208
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3212
  %9 = load ptr, ptr %8, align 8, !dbg !3212, !tbaa !811
  %10 = icmp eq ptr %9, null, !dbg !3214
  %11 = add i64 %7, 1, !dbg !3215
  call void @llvm.dbg.value(metadata i64 %11, metadata !3207, metadata !DIExpression()), !dbg !3208
  br i1 %10, label %12, label %6, !dbg !3214, !llvm.loop !3216

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3218
  ret void, !dbg !3219
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3220 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3235, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata ptr %1, metadata !3236, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata ptr %2, metadata !3237, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata ptr %3, metadata !3238, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3239, metadata !DIExpression()), !dbg !3244
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3245
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3241, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 0, metadata !3240, metadata !DIExpression()), !dbg !3243
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3240, metadata !DIExpression()), !dbg !3243
  %10 = icmp sgt i32 %9, -1, !dbg !3247
  br i1 %10, label %18, label %11, !dbg !3247

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3247
  store i32 %12, ptr %7, align 8, !dbg !3247
  %13 = icmp ult i32 %9, -7, !dbg !3247
  br i1 %13, label %14, label %18, !dbg !3247

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3247
  %16 = sext i32 %9 to i64, !dbg !3247
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3247
  br label %22, !dbg !3247

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3247
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3247
  store ptr %21, ptr %4, align 8, !dbg !3247
  br label %22, !dbg !3247

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3247
  %25 = load ptr, ptr %24, align 8, !dbg !3247
  store ptr %25, ptr %6, align 8, !dbg !3250, !tbaa !811
  %26 = icmp eq ptr %25, null, !dbg !3251
  br i1 %26, label %197, label %27, !dbg !3252

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3240, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 1, metadata !3240, metadata !DIExpression()), !dbg !3243
  %28 = icmp sgt i32 %23, -1, !dbg !3247
  br i1 %28, label %36, label %29, !dbg !3247

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3247
  store i32 %30, ptr %7, align 8, !dbg !3247
  %31 = icmp ult i32 %23, -7, !dbg !3247
  br i1 %31, label %32, label %36, !dbg !3247

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3247
  %34 = sext i32 %23 to i64, !dbg !3247
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3247
  br label %40, !dbg !3247

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3247
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3247
  store ptr %39, ptr %4, align 8, !dbg !3247
  br label %40, !dbg !3247

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3247
  %43 = load ptr, ptr %42, align 8, !dbg !3247
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3253
  store ptr %43, ptr %44, align 8, !dbg !3250, !tbaa !811
  %45 = icmp eq ptr %43, null, !dbg !3251
  br i1 %45, label %197, label %46, !dbg !3252

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3240, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 2, metadata !3240, metadata !DIExpression()), !dbg !3243
  %47 = icmp sgt i32 %41, -1, !dbg !3247
  br i1 %47, label %55, label %48, !dbg !3247

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3247
  store i32 %49, ptr %7, align 8, !dbg !3247
  %50 = icmp ult i32 %41, -7, !dbg !3247
  br i1 %50, label %51, label %55, !dbg !3247

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3247
  %53 = sext i32 %41 to i64, !dbg !3247
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3247
  br label %59, !dbg !3247

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3247
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3247
  store ptr %58, ptr %4, align 8, !dbg !3247
  br label %59, !dbg !3247

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3247
  %62 = load ptr, ptr %61, align 8, !dbg !3247
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3253
  store ptr %62, ptr %63, align 8, !dbg !3250, !tbaa !811
  %64 = icmp eq ptr %62, null, !dbg !3251
  br i1 %64, label %197, label %65, !dbg !3252

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3240, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 3, metadata !3240, metadata !DIExpression()), !dbg !3243
  %66 = icmp sgt i32 %60, -1, !dbg !3247
  br i1 %66, label %74, label %67, !dbg !3247

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3247
  store i32 %68, ptr %7, align 8, !dbg !3247
  %69 = icmp ult i32 %60, -7, !dbg !3247
  br i1 %69, label %70, label %74, !dbg !3247

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3247
  %72 = sext i32 %60 to i64, !dbg !3247
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3247
  br label %78, !dbg !3247

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3247
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3247
  store ptr %77, ptr %4, align 8, !dbg !3247
  br label %78, !dbg !3247

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3247
  %81 = load ptr, ptr %80, align 8, !dbg !3247
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3253
  store ptr %81, ptr %82, align 8, !dbg !3250, !tbaa !811
  %83 = icmp eq ptr %81, null, !dbg !3251
  br i1 %83, label %197, label %84, !dbg !3252

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3240, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 4, metadata !3240, metadata !DIExpression()), !dbg !3243
  %85 = icmp sgt i32 %79, -1, !dbg !3247
  br i1 %85, label %93, label %86, !dbg !3247

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3247
  store i32 %87, ptr %7, align 8, !dbg !3247
  %88 = icmp ult i32 %79, -7, !dbg !3247
  br i1 %88, label %89, label %93, !dbg !3247

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3247
  %91 = sext i32 %79 to i64, !dbg !3247
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3247
  br label %97, !dbg !3247

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3247
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3247
  store ptr %96, ptr %4, align 8, !dbg !3247
  br label %97, !dbg !3247

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3247
  %100 = load ptr, ptr %99, align 8, !dbg !3247
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3253
  store ptr %100, ptr %101, align 8, !dbg !3250, !tbaa !811
  %102 = icmp eq ptr %100, null, !dbg !3251
  br i1 %102, label %197, label %103, !dbg !3252

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3240, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 5, metadata !3240, metadata !DIExpression()), !dbg !3243
  %104 = icmp sgt i32 %98, -1, !dbg !3247
  br i1 %104, label %112, label %105, !dbg !3247

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3247
  store i32 %106, ptr %7, align 8, !dbg !3247
  %107 = icmp ult i32 %98, -7, !dbg !3247
  br i1 %107, label %108, label %112, !dbg !3247

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3247
  %110 = sext i32 %98 to i64, !dbg !3247
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3247
  br label %116, !dbg !3247

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3247
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3247
  store ptr %115, ptr %4, align 8, !dbg !3247
  br label %116, !dbg !3247

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3247
  %119 = load ptr, ptr %118, align 8, !dbg !3247
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3253
  store ptr %119, ptr %120, align 8, !dbg !3250, !tbaa !811
  %121 = icmp eq ptr %119, null, !dbg !3251
  br i1 %121, label %197, label %122, !dbg !3252

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3240, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 6, metadata !3240, metadata !DIExpression()), !dbg !3243
  %123 = icmp sgt i32 %117, -1, !dbg !3247
  br i1 %123, label %131, label %124, !dbg !3247

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3247
  store i32 %125, ptr %7, align 8, !dbg !3247
  %126 = icmp ult i32 %117, -7, !dbg !3247
  br i1 %126, label %127, label %131, !dbg !3247

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3247
  %129 = sext i32 %117 to i64, !dbg !3247
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3247
  br label %135, !dbg !3247

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3247
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3247
  store ptr %134, ptr %4, align 8, !dbg !3247
  br label %135, !dbg !3247

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3247
  %138 = load ptr, ptr %137, align 8, !dbg !3247
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3253
  store ptr %138, ptr %139, align 8, !dbg !3250, !tbaa !811
  %140 = icmp eq ptr %138, null, !dbg !3251
  br i1 %140, label %197, label %141, !dbg !3252

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3240, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 7, metadata !3240, metadata !DIExpression()), !dbg !3243
  %142 = icmp sgt i32 %136, -1, !dbg !3247
  br i1 %142, label %150, label %143, !dbg !3247

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3247
  store i32 %144, ptr %7, align 8, !dbg !3247
  %145 = icmp ult i32 %136, -7, !dbg !3247
  br i1 %145, label %146, label %150, !dbg !3247

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3247
  %148 = sext i32 %136 to i64, !dbg !3247
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3247
  br label %154, !dbg !3247

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3247
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3247
  store ptr %153, ptr %4, align 8, !dbg !3247
  br label %154, !dbg !3247

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3247
  %157 = load ptr, ptr %156, align 8, !dbg !3247
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3253
  store ptr %157, ptr %158, align 8, !dbg !3250, !tbaa !811
  %159 = icmp eq ptr %157, null, !dbg !3251
  br i1 %159, label %197, label %160, !dbg !3252

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3240, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 8, metadata !3240, metadata !DIExpression()), !dbg !3243
  %161 = icmp sgt i32 %155, -1, !dbg !3247
  br i1 %161, label %169, label %162, !dbg !3247

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3247
  store i32 %163, ptr %7, align 8, !dbg !3247
  %164 = icmp ult i32 %155, -7, !dbg !3247
  br i1 %164, label %165, label %169, !dbg !3247

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3247
  %167 = sext i32 %155 to i64, !dbg !3247
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3247
  br label %173, !dbg !3247

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3247
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3247
  store ptr %172, ptr %4, align 8, !dbg !3247
  br label %173, !dbg !3247

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3247
  %176 = load ptr, ptr %175, align 8, !dbg !3247
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3253
  store ptr %176, ptr %177, align 8, !dbg !3250, !tbaa !811
  %178 = icmp eq ptr %176, null, !dbg !3251
  br i1 %178, label %197, label %179, !dbg !3252

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3240, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 9, metadata !3240, metadata !DIExpression()), !dbg !3243
  %180 = icmp sgt i32 %174, -1, !dbg !3247
  br i1 %180, label %188, label %181, !dbg !3247

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3247
  store i32 %182, ptr %7, align 8, !dbg !3247
  %183 = icmp ult i32 %174, -7, !dbg !3247
  br i1 %183, label %184, label %188, !dbg !3247

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3247
  %186 = sext i32 %174 to i64, !dbg !3247
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3247
  br label %191, !dbg !3247

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3247
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3247
  store ptr %190, ptr %4, align 8, !dbg !3247
  br label %191, !dbg !3247

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3247
  %193 = load ptr, ptr %192, align 8, !dbg !3247
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3253
  store ptr %193, ptr %194, align 8, !dbg !3250, !tbaa !811
  %195 = icmp eq ptr %193, null, !dbg !3251
  %196 = select i1 %195, i64 9, i64 10, !dbg !3252
  br label %197, !dbg !3252

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3254
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3255
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3256
  ret void, !dbg !3256
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3257 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3261, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata ptr %1, metadata !3262, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata ptr %2, metadata !3263, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata ptr %3, metadata !3264, metadata !DIExpression()), !dbg !3266
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !3267
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3265, metadata !DIExpression()), !dbg !3268
  call void @llvm.va_start(ptr nonnull %5), !dbg !3269
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !3270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3270, !tbaa.struct !1562
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3270
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !3270
  call void @llvm.va_end(ptr nonnull %5), !dbg !3271
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !3272
  ret void, !dbg !3272
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3273 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3274, !tbaa !811
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.87, ptr noundef %1), !dbg !3274
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.17.104, i32 noundef 5) #38, !dbg !3275
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.105) #38, !dbg !3275
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.19.106, i32 noundef 5) #38, !dbg !3276
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.107, ptr noundef nonnull @.str.21.108) #38, !dbg !3276
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.22.109, i32 noundef 5) #38, !dbg !3277
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.110) #38, !dbg !3277
  ret void, !dbg !3278
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3279 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3284, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %1, metadata !3285, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %2, metadata !3286, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %1, metadata !3291, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %2, metadata !3292, metadata !DIExpression()), !dbg !3293
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3295
  call void @llvm.dbg.value(metadata ptr %4, metadata !3296, metadata !DIExpression()), !dbg !3301
  %5 = icmp eq ptr %4, null, !dbg !3303
  br i1 %5, label %6, label %7, !dbg !3305

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3306
  unreachable, !dbg !3306

7:                                                ; preds = %3
  ret ptr %4, !dbg !3307
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3289 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %1, metadata !3291, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %2, metadata !3292, metadata !DIExpression()), !dbg !3308
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3309
  call void @llvm.dbg.value(metadata ptr %4, metadata !3296, metadata !DIExpression()), !dbg !3310
  %5 = icmp eq ptr %4, null, !dbg !3312
  br i1 %5, label %6, label %7, !dbg !3313

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3314
  unreachable, !dbg !3314

7:                                                ; preds = %3
  ret ptr %4, !dbg !3315
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3316 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3320, metadata !DIExpression()), !dbg !3321
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3322
  call void @llvm.dbg.value(metadata ptr %2, metadata !3296, metadata !DIExpression()), !dbg !3323
  %3 = icmp eq ptr %2, null, !dbg !3325
  br i1 %3, label %4, label %5, !dbg !3326

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3327
  unreachable, !dbg !3327

5:                                                ; preds = %1
  ret ptr %2, !dbg !3328
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3329 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3330 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3334, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %0, metadata !3336, metadata !DIExpression()), !dbg !3340
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3342
  call void @llvm.dbg.value(metadata ptr %2, metadata !3296, metadata !DIExpression()), !dbg !3343
  %3 = icmp eq ptr %2, null, !dbg !3345
  br i1 %3, label %4, label %5, !dbg !3346

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3347
  unreachable, !dbg !3347

5:                                                ; preds = %1
  ret ptr %2, !dbg !3348
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3349 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %0, metadata !3320, metadata !DIExpression()), !dbg !3355
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3357
  call void @llvm.dbg.value(metadata ptr %2, metadata !3296, metadata !DIExpression()), !dbg !3358
  %3 = icmp eq ptr %2, null, !dbg !3360
  br i1 %3, label %4, label %5, !dbg !3361

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3362
  unreachable, !dbg !3362

5:                                                ; preds = %1
  ret ptr %2, !dbg !3363
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3364 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3368, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i64 %1, metadata !3369, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata ptr %0, metadata !3371, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %1, metadata !3375, metadata !DIExpression()), !dbg !3376
  %3 = icmp eq i64 %1, 0, !dbg !3378
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3378
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3379
  call void @llvm.dbg.value(metadata ptr %5, metadata !3296, metadata !DIExpression()), !dbg !3380
  %6 = icmp eq ptr %5, null, !dbg !3382
  br i1 %6, label %7, label %8, !dbg !3383

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3384
  unreachable, !dbg !3384

8:                                                ; preds = %2
  ret ptr %5, !dbg !3385
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3386 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3387 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3391, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 %1, metadata !3392, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata ptr %0, metadata !3394, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %1, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %0, metadata !3371, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %1, metadata !3375, metadata !DIExpression()), !dbg !3400
  %3 = icmp eq i64 %1, 0, !dbg !3402
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3402
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3403
  call void @llvm.dbg.value(metadata ptr %5, metadata !3296, metadata !DIExpression()), !dbg !3404
  %6 = icmp eq ptr %5, null, !dbg !3406
  br i1 %6, label %7, label %8, !dbg !3407

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3408
  unreachable, !dbg !3408

8:                                                ; preds = %2
  ret ptr %5, !dbg !3409
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3410 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3414, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %1, metadata !3415, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %2, metadata !3416, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata ptr %0, metadata !3418, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %1, metadata !3421, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %2, metadata !3422, metadata !DIExpression()), !dbg !3423
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3425
  call void @llvm.dbg.value(metadata ptr %4, metadata !3296, metadata !DIExpression()), !dbg !3426
  %5 = icmp eq ptr %4, null, !dbg !3428
  br i1 %5, label %6, label %7, !dbg !3429

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3430
  unreachable, !dbg !3430

7:                                                ; preds = %3
  ret ptr %4, !dbg !3431
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3432 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3436, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i64 %1, metadata !3437, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata ptr null, metadata !3288, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 %0, metadata !3291, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 %1, metadata !3292, metadata !DIExpression()), !dbg !3439
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3441
  call void @llvm.dbg.value(metadata ptr %3, metadata !3296, metadata !DIExpression()), !dbg !3442
  %4 = icmp eq ptr %3, null, !dbg !3444
  br i1 %4, label %5, label %6, !dbg !3445

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3446
  unreachable, !dbg !3446

6:                                                ; preds = %2
  ret ptr %3, !dbg !3447
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3448 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3452, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %1, metadata !3453, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata ptr null, metadata !3414, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 %0, metadata !3415, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 %1, metadata !3416, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata ptr null, metadata !3418, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %0, metadata !3421, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %1, metadata !3422, metadata !DIExpression()), !dbg !3457
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %3, metadata !3296, metadata !DIExpression()), !dbg !3460
  %4 = icmp eq ptr %3, null, !dbg !3462
  br i1 %4, label %5, label %6, !dbg !3463

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3464
  unreachable, !dbg !3464

6:                                                ; preds = %2
  ret ptr %3, !dbg !3465
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3466 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3470, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata ptr %1, metadata !3471, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata ptr %0, metadata !746, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata ptr %1, metadata !747, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 1, metadata !748, metadata !DIExpression()), !dbg !3473
  %3 = load i64, ptr %1, align 8, !dbg !3475, !tbaa !2578
  call void @llvm.dbg.value(metadata i64 %3, metadata !749, metadata !DIExpression()), !dbg !3473
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
  call void @llvm.dbg.value(metadata i64 %13, metadata !749, metadata !DIExpression()), !dbg !3473
  br i1 %12, label %14, label %15, !dbg !3486

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !3487
  unreachable, !dbg !3487

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3473
  call void @llvm.dbg.value(metadata i64 %16, metadata !749, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i64 %16, metadata !3291, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i64 1, metadata !3292, metadata !DIExpression()), !dbg !3488
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3490
  call void @llvm.dbg.value(metadata ptr %17, metadata !3296, metadata !DIExpression()), !dbg !3491
  %18 = icmp eq ptr %17, null, !dbg !3493
  br i1 %18, label %19, label %20, !dbg !3494

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !3495
  unreachable, !dbg !3495

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !746, metadata !DIExpression()), !dbg !3473
  store i64 %16, ptr %1, align 8, !dbg !3496, !tbaa !2578
  ret ptr %17, !dbg !3497
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !741 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !746, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata ptr %1, metadata !747, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata i64 %2, metadata !748, metadata !DIExpression()), !dbg !3498
  %4 = load i64, ptr %1, align 8, !dbg !3499, !tbaa !2578
  call void @llvm.dbg.value(metadata i64 %4, metadata !749, metadata !DIExpression()), !dbg !3498
  %5 = icmp eq ptr %0, null, !dbg !3500
  br i1 %5, label %6, label %13, !dbg !3501

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3502
  br i1 %7, label %8, label %20, !dbg !3503

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3504
  call void @llvm.dbg.value(metadata i64 %9, metadata !749, metadata !DIExpression()), !dbg !3498
  %10 = icmp ugt i64 %2, 128, !dbg !3506
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3507
  call void @llvm.dbg.value(metadata i64 %12, metadata !749, metadata !DIExpression()), !dbg !3498
  br label %20, !dbg !3508

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3509
  %15 = add nuw i64 %14, 1, !dbg !3509
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3509
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3509
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3509
  call void @llvm.dbg.value(metadata i64 %18, metadata !749, metadata !DIExpression()), !dbg !3498
  br i1 %17, label %19, label %20, !dbg !3510

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !3511
  unreachable, !dbg !3511

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3498
  call void @llvm.dbg.value(metadata i64 %21, metadata !749, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i64 %21, metadata !3291, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i64 %2, metadata !3292, metadata !DIExpression()), !dbg !3512
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3514
  call void @llvm.dbg.value(metadata ptr %22, metadata !3296, metadata !DIExpression()), !dbg !3515
  %23 = icmp eq ptr %22, null, !dbg !3517
  br i1 %23, label %24, label %25, !dbg !3518

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !3519
  unreachable, !dbg !3519

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !746, metadata !DIExpression()), !dbg !3498
  store i64 %21, ptr %1, align 8, !dbg !3520, !tbaa !2578
  ret ptr %22, !dbg !3521
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !753 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !761, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata ptr %1, metadata !762, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %2, metadata !763, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %3, metadata !764, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %4, metadata !765, metadata !DIExpression()), !dbg !3522
  %6 = load i64, ptr %1, align 8, !dbg !3523, !tbaa !2578
  call void @llvm.dbg.value(metadata i64 %6, metadata !766, metadata !DIExpression()), !dbg !3522
  %7 = ashr i64 %6, 1, !dbg !3524
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3524
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3524
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3524
  call void @llvm.dbg.value(metadata i64 %10, metadata !767, metadata !DIExpression()), !dbg !3522
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3526
  call void @llvm.dbg.value(metadata i64 %11, metadata !767, metadata !DIExpression()), !dbg !3522
  %12 = icmp sgt i64 %3, -1, !dbg !3527
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3529
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3529
  call void @llvm.dbg.value(metadata i64 %15, metadata !767, metadata !DIExpression()), !dbg !3522
  %16 = icmp slt i64 %4, 0, !dbg !3530
  br i1 %16, label %17, label %30, !dbg !3530

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3530
  br i1 %18, label %19, label %24, !dbg !3530

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3530
  %21 = udiv i64 9223372036854775807, %20, !dbg !3530
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3530
  br i1 %23, label %46, label %43, !dbg !3530

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3530
  br i1 %25, label %43, label %26, !dbg !3530

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3530
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3530
  %29 = icmp ult i64 %28, %15, !dbg !3530
  br i1 %29, label %46, label %43, !dbg !3530

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3530
  br i1 %31, label %43, label %32, !dbg !3530

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3530
  br i1 %33, label %34, label %40, !dbg !3530

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3530
  br i1 %35, label %43, label %36, !dbg !3530

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3530
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3530
  %39 = icmp ult i64 %38, %4, !dbg !3530
  br i1 %39, label %46, label %43, !dbg !3530

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3530
  br i1 %42, label %46, label %43, !dbg !3530

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !768, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3522
  %44 = mul i64 %15, %4, !dbg !3530
  call void @llvm.dbg.value(metadata i64 %44, metadata !768, metadata !DIExpression()), !dbg !3522
  %45 = icmp slt i64 %44, 128, !dbg !3530
  br i1 %45, label %46, label %52, !dbg !3530

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !769, metadata !DIExpression()), !dbg !3522
  %48 = sdiv i64 %47, %4, !dbg !3531
  call void @llvm.dbg.value(metadata i64 %48, metadata !767, metadata !DIExpression()), !dbg !3522
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3534
  call void @llvm.dbg.value(metadata i64 %51, metadata !768, metadata !DIExpression()), !dbg !3522
  br label %52, !dbg !3535

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3522
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3522
  call void @llvm.dbg.value(metadata i64 %54, metadata !768, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %53, metadata !767, metadata !DIExpression()), !dbg !3522
  %55 = icmp eq ptr %0, null, !dbg !3536
  br i1 %55, label %56, label %57, !dbg !3538

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3539, !tbaa !2578
  br label %57, !dbg !3540

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3541
  %59 = icmp slt i64 %58, %2, !dbg !3543
  br i1 %59, label %60, label %97, !dbg !3544

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3545
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3545
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3545
  call void @llvm.dbg.value(metadata i64 %63, metadata !767, metadata !DIExpression()), !dbg !3522
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3546
  br i1 %66, label %96, label %67, !dbg !3546

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3547

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3547
  br i1 %69, label %70, label %75, !dbg !3547

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3547
  %72 = udiv i64 9223372036854775807, %71, !dbg !3547
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3547
  br i1 %74, label %96, label %94, !dbg !3547

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3547
  br i1 %76, label %94, label %77, !dbg !3547

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3547
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3547
  %80 = icmp ult i64 %79, %63, !dbg !3547
  br i1 %80, label %96, label %94, !dbg !3547

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3547
  br i1 %82, label %94, label %83, !dbg !3547

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3547
  br i1 %84, label %85, label %91, !dbg !3547

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3547
  br i1 %86, label %94, label %87, !dbg !3547

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3547
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3547
  %90 = icmp ult i64 %89, %4, !dbg !3547
  br i1 %90, label %96, label %94, !dbg !3547

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3547
  br i1 %93, label %96, label %94, !dbg !3547

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !768, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3522
  %95 = mul i64 %63, %4, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %95, metadata !768, metadata !DIExpression()), !dbg !3522
  br label %97, !dbg !3548

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #40, !dbg !3549
  unreachable, !dbg !3549

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3522
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3522
  call void @llvm.dbg.value(metadata i64 %99, metadata !768, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %98, metadata !767, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata ptr %0, metadata !3368, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i64 %99, metadata !3369, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata ptr %0, metadata !3371, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 %99, metadata !3375, metadata !DIExpression()), !dbg !3552
  %100 = icmp eq i64 %99, 0, !dbg !3554
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3554
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #44, !dbg !3555
  call void @llvm.dbg.value(metadata ptr %102, metadata !3296, metadata !DIExpression()), !dbg !3556
  %103 = icmp eq ptr %102, null, !dbg !3558
  br i1 %103, label %104, label %105, !dbg !3559

104:                                              ; preds = %97
  tail call void @xalloc_die() #40, !dbg !3560
  unreachable, !dbg !3560

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !761, metadata !DIExpression()), !dbg !3522
  store i64 %98, ptr %1, align 8, !dbg !3561, !tbaa !2578
  ret ptr %102, !dbg !3562
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3563 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3565, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 %0, metadata !3567, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i64 1, metadata !3570, metadata !DIExpression()), !dbg !3571
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3573
  call void @llvm.dbg.value(metadata ptr %2, metadata !3296, metadata !DIExpression()), !dbg !3574
  %3 = icmp eq ptr %2, null, !dbg !3576
  br i1 %3, label %4, label %5, !dbg !3577

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3578
  unreachable, !dbg !3578

5:                                                ; preds = %1
  ret ptr %2, !dbg !3579
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3580 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3568 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3567, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i64 %1, metadata !3570, metadata !DIExpression()), !dbg !3581
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3582
  call void @llvm.dbg.value(metadata ptr %3, metadata !3296, metadata !DIExpression()), !dbg !3583
  %4 = icmp eq ptr %3, null, !dbg !3585
  br i1 %4, label %5, label %6, !dbg !3586

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3587
  unreachable, !dbg !3587

6:                                                ; preds = %2
  ret ptr %3, !dbg !3588
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3589 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3591, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i64 %0, metadata !3593, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 1, metadata !3596, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %0, metadata !3599, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i64 1, metadata !3602, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i64 %0, metadata !3599, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i64 1, metadata !3602, metadata !DIExpression()), !dbg !3603
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3605
  call void @llvm.dbg.value(metadata ptr %2, metadata !3296, metadata !DIExpression()), !dbg !3606
  %3 = icmp eq ptr %2, null, !dbg !3608
  br i1 %3, label %4, label %5, !dbg !3609

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3610
  unreachable, !dbg !3610

5:                                                ; preds = %1
  ret ptr %2, !dbg !3611
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3594 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3593, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i64 %1, metadata !3596, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i64 %0, metadata !3599, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i64 %1, metadata !3602, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i64 %0, metadata !3599, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i64 %1, metadata !3602, metadata !DIExpression()), !dbg !3613
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3615
  call void @llvm.dbg.value(metadata ptr %3, metadata !3296, metadata !DIExpression()), !dbg !3616
  %4 = icmp eq ptr %3, null, !dbg !3618
  br i1 %4, label %5, label %6, !dbg !3619

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3620
  unreachable, !dbg !3620

6:                                                ; preds = %2
  ret ptr %3, !dbg !3621
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3622 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3626, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i64 %1, metadata !3627, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i64 %1, metadata !3320, metadata !DIExpression()), !dbg !3629
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3631
  call void @llvm.dbg.value(metadata ptr %3, metadata !3296, metadata !DIExpression()), !dbg !3632
  %4 = icmp eq ptr %3, null, !dbg !3634
  br i1 %4, label %5, label %6, !dbg !3635

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3636
  unreachable, !dbg !3636

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3637, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %0, metadata !3643, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i64 %1, metadata !3644, metadata !DIExpression()), !dbg !3645
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3647
  ret ptr %3, !dbg !3648
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3649 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3653, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 %1, metadata !3654, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 %1, metadata !3334, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %1, metadata !3336, metadata !DIExpression()), !dbg !3658
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3660
  call void @llvm.dbg.value(metadata ptr %3, metadata !3296, metadata !DIExpression()), !dbg !3661
  %4 = icmp eq ptr %3, null, !dbg !3663
  br i1 %4, label %5, label %6, !dbg !3664

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3665
  unreachable, !dbg !3665

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3637, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata ptr %0, metadata !3643, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i64 %1, metadata !3644, metadata !DIExpression()), !dbg !3666
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3668
  ret ptr %3, !dbg !3669
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3670 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3674, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i64 %1, metadata !3675, metadata !DIExpression()), !dbg !3677
  %3 = add nsw i64 %1, 1, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %3, metadata !3334, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i64 %3, metadata !3336, metadata !DIExpression()), !dbg !3681
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3683
  call void @llvm.dbg.value(metadata ptr %4, metadata !3296, metadata !DIExpression()), !dbg !3684
  %5 = icmp eq ptr %4, null, !dbg !3686
  br i1 %5, label %6, label %7, !dbg !3687

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3688
  unreachable, !dbg !3688

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3676, metadata !DIExpression()), !dbg !3677
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3689
  store i8 0, ptr %8, align 1, !dbg !3690, !tbaa !883
  call void @llvm.dbg.value(metadata ptr %4, metadata !3637, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata ptr %0, metadata !3643, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.value(metadata i64 %1, metadata !3644, metadata !DIExpression()), !dbg !3691
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3693
  ret ptr %4, !dbg !3694
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3695 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3697, metadata !DIExpression()), !dbg !3698
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3699
  %3 = add i64 %2, 1, !dbg !3700
  call void @llvm.dbg.value(metadata ptr %0, metadata !3626, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %3, metadata !3627, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %3, metadata !3320, metadata !DIExpression()), !dbg !3703
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3705
  call void @llvm.dbg.value(metadata ptr %4, metadata !3296, metadata !DIExpression()), !dbg !3706
  %5 = icmp eq ptr %4, null, !dbg !3708
  br i1 %5, label %6, label %7, !dbg !3709

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3710
  unreachable, !dbg !3710

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3637, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr %0, metadata !3643, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i64 %3, metadata !3644, metadata !DIExpression()), !dbg !3711
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3713
  ret ptr %4, !dbg !3714
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3715 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3720, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %1, metadata !3717, metadata !DIExpression()), !dbg !3721
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.123, ptr noundef nonnull @.str.2.124, i32 noundef 5) #38, !dbg !3720
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.125, ptr noundef %2) #38, !dbg !3720
  %3 = icmp eq i32 %1, 0, !dbg !3720
  tail call void @llvm.assume(i1 %3), !dbg !3720
  tail call void @abort() #40, !dbg !3722
  unreachable, !dbg !3722
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !3723 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3725, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %0, metadata !3726, metadata !DIExpression()), !dbg !3730
  br label %2, !dbg !3731

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3730
  call void @llvm.dbg.value(metadata ptr %3, metadata !3726, metadata !DIExpression()), !dbg !3730
  %4 = load i8, ptr %3, align 1, !dbg !3732, !tbaa !883
  %5 = icmp eq i8 %4, 47, !dbg !3732
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3733
  call void @llvm.dbg.value(metadata ptr %6, metadata !3726, metadata !DIExpression()), !dbg !3730
  br i1 %5, label %2, label %7, !dbg !3731, !llvm.loop !3734

7:                                                ; preds = %2, %15
  %8 = phi i8 [ %19, %15 ], [ %4, %2 ], !dbg !3735
  %9 = phi ptr [ %16, %15 ], [ %3, %2 ], !dbg !3737
  %10 = phi i1 [ %17, %15 ], [ false, %2 ]
  %11 = phi ptr [ %18, %15 ], [ %3, %2 ], !dbg !3738
  call void @llvm.dbg.value(metadata ptr %11, metadata !3728, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i8 poison, metadata !3727, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %9, metadata !3726, metadata !DIExpression()), !dbg !3730
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !3740

12:                                               ; preds = %7
  ret ptr %9, !dbg !3741

13:                                               ; preds = %7
  %14 = select i1 %10, ptr %11, ptr %9, !dbg !3742
  br label %15, !dbg !3742

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %9, %7 ], [ %14, %13 ], !dbg !3730
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3727, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %16, metadata !3726, metadata !DIExpression()), !dbg !3730
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3745
  call void @llvm.dbg.value(metadata ptr %18, metadata !3728, metadata !DIExpression()), !dbg !3739
  %19 = load i8, ptr %18, align 1, !dbg !3735, !tbaa !883
  br label %7, !dbg !3746, !llvm.loop !3747
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #35 !dbg !3749 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3753, metadata !DIExpression()), !dbg !3756
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3757
  call void @llvm.dbg.value(metadata i64 %2, metadata !3754, metadata !DIExpression()), !dbg !3756
  %3 = icmp ne i64 %2, 0, !dbg !3759
  %4 = zext i1 %3 to i64, !dbg !3759
  br label %5, !dbg !3759

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !3760
  call void @llvm.dbg.value(metadata i64 %6, metadata !3754, metadata !DIExpression()), !dbg !3756
  %7 = icmp ugt i64 %6, 1, !dbg !3761
  br i1 %7, label %8, label %13, !dbg !3763

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !3764
  %10 = getelementptr inbounds i8, ptr %0, i64 %9, !dbg !3764
  %11 = load i8, ptr %10, align 1, !dbg !3764, !tbaa !883
  %12 = icmp eq i8 %11, 47, !dbg !3764
  br i1 %12, label %5, label %13, !dbg !3765, !llvm.loop !3766

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !3760
  call void @llvm.dbg.value(metadata i64 0, metadata !3755, metadata !DIExpression()), !dbg !3756
  ret i64 %14, !dbg !3768
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3769 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3807, metadata !DIExpression()), !dbg !3812
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !3813
  call void @llvm.dbg.value(metadata i1 poison, metadata !3808, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3812
  call void @llvm.dbg.value(metadata ptr %0, metadata !3814, metadata !DIExpression()), !dbg !3817
  %3 = load i32, ptr %0, align 8, !dbg !3819, !tbaa !3820
  %4 = and i32 %3, 32, !dbg !3821
  %5 = icmp eq i32 %4, 0, !dbg !3821
  call void @llvm.dbg.value(metadata i1 %5, metadata !3810, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3812
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !3822
  %7 = icmp eq i32 %6, 0, !dbg !3823
  call void @llvm.dbg.value(metadata i1 %7, metadata !3811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3812
  br i1 %5, label %8, label %18, !dbg !3824

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3826
  call void @llvm.dbg.value(metadata i1 %9, metadata !3808, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3812
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3827
  %11 = xor i1 %7, true, !dbg !3827
  %12 = sext i1 %11 to i32, !dbg !3827
  br i1 %10, label %21, label %13, !dbg !3827

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !3828
  %15 = load i32, ptr %14, align 4, !dbg !3828, !tbaa !874
  %16 = icmp ne i32 %15, 9, !dbg !3829
  %17 = sext i1 %16 to i32, !dbg !3830
  br label %21, !dbg !3830

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3831

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !3833
  store i32 0, ptr %20, align 4, !dbg !3835, !tbaa !874
  br label %21, !dbg !3833

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3812
  ret i32 %22, !dbg !3836
}

; Function Attrs: nounwind
declare !dbg !3837 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3841 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3879, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression()), !dbg !3883
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3884
  call void @llvm.dbg.value(metadata i32 %2, metadata !3881, metadata !DIExpression()), !dbg !3883
  %3 = icmp slt i32 %2, 0, !dbg !3885
  br i1 %3, label %4, label %6, !dbg !3887

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3888
  br label %24, !dbg !3889

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3890
  %8 = icmp eq i32 %7, 0, !dbg !3890
  br i1 %8, label %13, label %9, !dbg !3892

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3893
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !3894
  %12 = icmp eq i64 %11, -1, !dbg !3895
  br i1 %12, label %16, label %13, !dbg !3896

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !3897
  %15 = icmp eq i32 %14, 0, !dbg !3897
  br i1 %15, label %16, label %18, !dbg !3898

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3880, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i32 0, metadata !3882, metadata !DIExpression()), !dbg !3883
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3899
  call void @llvm.dbg.value(metadata i32 %17, metadata !3882, metadata !DIExpression()), !dbg !3883
  br label %24, !dbg !3900

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !3901
  %20 = load i32, ptr %19, align 4, !dbg !3901, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %20, metadata !3880, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i32 0, metadata !3882, metadata !DIExpression()), !dbg !3883
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3899
  call void @llvm.dbg.value(metadata i32 %21, metadata !3882, metadata !DIExpression()), !dbg !3883
  %22 = icmp eq i32 %20, 0, !dbg !3902
  br i1 %22, label %24, label %23, !dbg !3900

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3904, !tbaa !874
  call void @llvm.dbg.value(metadata i32 -1, metadata !3882, metadata !DIExpression()), !dbg !3883
  br label %24, !dbg !3906

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3883
  ret i32 %25, !dbg !3907
}

; Function Attrs: nofree nounwind
declare !dbg !3908 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3909 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3910 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3911 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3914 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3952, metadata !DIExpression()), !dbg !3953
  %2 = icmp eq ptr %0, null, !dbg !3954
  br i1 %2, label %6, label %3, !dbg !3956

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3957
  %5 = icmp eq i32 %4, 0, !dbg !3957
  br i1 %5, label %6, label %8, !dbg !3958

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3959
  br label %16, !dbg !3960

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3961, metadata !DIExpression()), !dbg !3966
  %9 = load i32, ptr %0, align 8, !dbg !3968, !tbaa !3820
  %10 = and i32 %9, 256, !dbg !3970
  %11 = icmp eq i32 %10, 0, !dbg !3970
  br i1 %11, label %14, label %12, !dbg !3971

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !3972
  br label %14, !dbg !3972

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3973
  br label %16, !dbg !3974

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3953
  ret i32 %17, !dbg !3975
}

; Function Attrs: nofree nounwind
declare !dbg !3976 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3977 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4016, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i64 %1, metadata !4017, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i32 %2, metadata !4018, metadata !DIExpression()), !dbg !4022
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4023
  %5 = load ptr, ptr %4, align 8, !dbg !4023, !tbaa !4024
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4025
  %7 = load ptr, ptr %6, align 8, !dbg !4025, !tbaa !4026
  %8 = icmp eq ptr %5, %7, !dbg !4027
  br i1 %8, label %9, label %27, !dbg !4028

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4029
  %11 = load ptr, ptr %10, align 8, !dbg !4029, !tbaa !1466
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4030
  %13 = load ptr, ptr %12, align 8, !dbg !4030, !tbaa !4031
  %14 = icmp eq ptr %11, %13, !dbg !4032
  br i1 %14, label %15, label %27, !dbg !4033

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4034
  %17 = load ptr, ptr %16, align 8, !dbg !4034, !tbaa !4035
  %18 = icmp eq ptr %17, null, !dbg !4036
  br i1 %18, label %19, label %27, !dbg !4037

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4038
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !4039
  call void @llvm.dbg.value(metadata i64 %21, metadata !4019, metadata !DIExpression()), !dbg !4040
  %22 = icmp eq i64 %21, -1, !dbg !4041
  br i1 %22, label %29, label %23, !dbg !4043

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4044, !tbaa !3820
  %25 = and i32 %24, -17, !dbg !4044
  store i32 %25, ptr %0, align 8, !dbg !4044, !tbaa !3820
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4045
  store i64 %21, ptr %26, align 8, !dbg !4046, !tbaa !4047
  br label %29, !dbg !4048

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4049
  br label %29, !dbg !4050

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4022
  ret i32 %30, !dbg !4051
}

; Function Attrs: nofree nounwind
declare !dbg !4052 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4055 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4060, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %1, metadata !4061, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i64 %2, metadata !4062, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %3, metadata !4063, metadata !DIExpression()), !dbg !4065
  %5 = icmp eq ptr %1, null, !dbg !4066
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4068
  %7 = select i1 %5, ptr @.str.140, ptr %1, !dbg !4068
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4068
  call void @llvm.dbg.value(metadata i64 %8, metadata !4062, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %7, metadata !4061, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata ptr %6, metadata !4060, metadata !DIExpression()), !dbg !4065
  %9 = icmp eq ptr %3, null, !dbg !4069
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4071
  call void @llvm.dbg.value(metadata ptr %10, metadata !4063, metadata !DIExpression()), !dbg !4065
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !4072
  call void @llvm.dbg.value(metadata i64 %11, metadata !4064, metadata !DIExpression()), !dbg !4065
  %12 = icmp ult i64 %11, -3, !dbg !4073
  br i1 %12, label %13, label %17, !dbg !4075

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !4076
  %15 = icmp eq i32 %14, 0, !dbg !4076
  br i1 %15, label %16, label %29, !dbg !4077

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4078, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata ptr %10, metadata !4085, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i32 0, metadata !4088, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 8, metadata !4089, metadata !DIExpression()), !dbg !4090
  store i64 0, ptr %10, align 1, !dbg !4092
  br label %29, !dbg !4093

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4094
  br i1 %18, label %19, label %20, !dbg !4096

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !4097
  unreachable, !dbg !4097

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4098

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !4100
  br i1 %23, label %29, label %24, !dbg !4101

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4102
  br i1 %25, label %29, label %26, !dbg !4105

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4106, !tbaa !883
  %28 = zext i8 %27 to i32, !dbg !4107
  store i32 %28, ptr %6, align 4, !dbg !4108, !tbaa !874
  br label %29, !dbg !4109

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4065
  ret i64 %30, !dbg !4110
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4111 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4117 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4119, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i64 %1, metadata !4120, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i64 %2, metadata !4121, metadata !DIExpression()), !dbg !4123
  %4 = icmp eq i64 %2, 0, !dbg !4124
  br i1 %4, label %8, label %5, !dbg !4124

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4124
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4124
  br i1 %7, label %13, label %8, !dbg !4124

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4122, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4123
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4122, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4123
  %9 = mul i64 %2, %1, !dbg !4124
  call void @llvm.dbg.value(metadata i64 %9, metadata !4122, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata ptr %0, metadata !4126, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i64 %9, metadata !4129, metadata !DIExpression()), !dbg !4130
  %10 = icmp eq i64 %9, 0, !dbg !4132
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4132
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4133
  br label %15, !dbg !4134

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4122, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4123
  %14 = tail call ptr @__errno_location() #41, !dbg !4135
  store i32 12, ptr %14, align 4, !dbg !4137, !tbaa !874
  br label %15, !dbg !4138

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4123
  ret ptr %16, !dbg !4139
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4140 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4144, metadata !DIExpression()), !dbg !4149
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4150
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4145, metadata !DIExpression()), !dbg !4151
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4152
  %4 = icmp eq i32 %3, 0, !dbg !4152
  br i1 %4, label %5, label %12, !dbg !4154

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4155, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata ptr @.str.145, metadata !4158, metadata !DIExpression()), !dbg !4159
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.145, i64 2), !dbg !4162
  %7 = icmp eq i32 %6, 0, !dbg !4163
  br i1 %7, label %11, label %8, !dbg !4164

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4155, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata ptr @.str.1.146, metadata !4158, metadata !DIExpression()), !dbg !4165
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.146, i64 6), !dbg !4167
  %10 = icmp eq i32 %9, 0, !dbg !4168
  br i1 %10, label %11, label %12, !dbg !4169

11:                                               ; preds = %8, %5
  br label %12, !dbg !4170

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4149
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4171
  ret i1 %13, !dbg !4171
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4172 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4176, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata ptr %1, metadata !4177, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i64 %2, metadata !4178, metadata !DIExpression()), !dbg !4179
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4180
  ret i32 %4, !dbg !4181
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4182 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4186, metadata !DIExpression()), !dbg !4187
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4188
  ret ptr %2, !dbg !4189
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4190 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4192, metadata !DIExpression()), !dbg !4194
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4195
  call void @llvm.dbg.value(metadata ptr %2, metadata !4193, metadata !DIExpression()), !dbg !4194
  ret ptr %2, !dbg !4196
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4197 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4199, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata ptr %1, metadata !4200, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i64 %2, metadata !4201, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i32 %0, metadata !4192, metadata !DIExpression()), !dbg !4207
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4209
  call void @llvm.dbg.value(metadata ptr %4, metadata !4193, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata ptr %4, metadata !4202, metadata !DIExpression()), !dbg !4206
  %5 = icmp eq ptr %4, null, !dbg !4210
  br i1 %5, label %6, label %9, !dbg !4211

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4212
  br i1 %7, label %19, label %8, !dbg !4215

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4216, !tbaa !883
  br label %19, !dbg !4217

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4218
  call void @llvm.dbg.value(metadata i64 %10, metadata !4203, metadata !DIExpression()), !dbg !4219
  %11 = icmp ult i64 %10, %2, !dbg !4220
  br i1 %11, label %12, label %14, !dbg !4222

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4223
  call void @llvm.dbg.value(metadata ptr %1, metadata !4225, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata ptr %4, metadata !4228, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i64 %13, metadata !4229, metadata !DIExpression()), !dbg !4230
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !4232
  br label %19, !dbg !4233

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4234
  br i1 %15, label %19, label %16, !dbg !4237

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4238
  call void @llvm.dbg.value(metadata ptr %1, metadata !4225, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata ptr %4, metadata !4228, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i64 %17, metadata !4229, metadata !DIExpression()), !dbg !4240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4242
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4243
  store i8 0, ptr %18, align 1, !dbg !4244, !tbaa !883
  br label %19, !dbg !4245

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4246
  ret i32 %20, !dbg !4247
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
attributes #35 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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

!llvm.dbg.cu = !{!69, !723, !389, !393, !726, !408, !689, !728, !465, !479, !530, !730, !681, !737, !771, !773, !775, !777, !779, !781, !705, !783, !786, !788, !790}
!llvm.ident = !{!792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792, !792}
!llvm.module.flags = !{!793, !794, !795, !796, !797, !798, !799}

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
!69 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !115, globals: !125, splitDebugInlining: false, nameTableKind: None)
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
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!389 = distinct !DICompileUnit(language: DW_LANG_C11, file: !386, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !390, splitDebugInlining: false, nameTableKind: None)
!390 = !{!384, !387}
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "file_name", scope: !393, file: !394, line: 45, type: !122, isLocal: true, isDefinition: true)
!393 = distinct !DICompileUnit(language: DW_LANG_C11, file: !394, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !395, splitDebugInlining: false, nameTableKind: None)
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
!407 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !408, file: !409, line: 66, type: !460, isLocal: false, isDefinition: true)
!408 = distinct !DICompileUnit(language: DW_LANG_C11, file: !409, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !410, globals: !411, splitDebugInlining: false, nameTableKind: None)
!409 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!410 = !{!117, !124}
!411 = !{!412, !414, !439, !441, !443, !445, !406, !447, !449, !451, !453, !458}
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !409, line: 272, type: !238, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "old_file_name", scope: !416, file: !409, line: 304, type: !122, isLocal: true, isDefinition: true)
!416 = distinct !DISubprogram(name: "verror_at_line", scope: !409, file: !409, line: 298, type: !417, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !432)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !77, !77, !122, !72, !122, !419}
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !420, line: 52, baseType: !421)
!420 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !422, line: 14, baseType: !423)
!422 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !424, baseType: !425)
!424 = !DIFile(filename: "lib/error.c", directory: "/src")
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !426)
!426 = !{!427, !428, !429, !430, !431}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !425, file: !424, baseType: !117, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !425, file: !424, baseType: !117, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !425, file: !424, baseType: !117, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !425, file: !424, baseType: !77, size: 32, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !425, file: !424, baseType: !77, size: 32, offset: 224)
!432 = !{!433, !434, !435, !436, !437, !438}
!433 = !DILocalVariable(name: "status", arg: 1, scope: !416, file: !409, line: 298, type: !77)
!434 = !DILocalVariable(name: "errnum", arg: 2, scope: !416, file: !409, line: 298, type: !77)
!435 = !DILocalVariable(name: "file_name", arg: 3, scope: !416, file: !409, line: 298, type: !122)
!436 = !DILocalVariable(name: "line_number", arg: 4, scope: !416, file: !409, line: 298, type: !72)
!437 = !DILocalVariable(name: "message", arg: 5, scope: !416, file: !409, line: 298, type: !122)
!438 = !DILocalVariable(name: "args", arg: 6, scope: !416, file: !409, line: 298, type: !419)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "old_line_number", scope: !416, file: !409, line: 305, type: !72, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !409, line: 338, type: !245, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !409, line: 346, type: !274, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !409, line: 346, type: !252, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(name: "error_message_count", scope: !408, file: !409, line: 69, type: !72, isLocal: false, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !408, file: !409, line: 295, type: !77, isLocal: false, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !409, line: 208, type: !269, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !409, line: 208, type: !455, isLocal: true, isDefinition: true)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 21)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !409, line: 214, type: !238, isLocal: true, isDefinition: true)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null}
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "program_name", scope: !465, file: !466, line: 31, type: !122, isLocal: false, isDefinition: true)
!465 = distinct !DICompileUnit(language: DW_LANG_C11, file: !466, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !467, globals: !468, splitDebugInlining: false, nameTableKind: None)
!466 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!467 = !{!116}
!468 = !{!463, !469, !471}
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !466, line: 46, type: !274, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !466, line: 49, type: !245, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "utf07FF", scope: !475, file: !476, line: 46, type: !503, isLocal: true, isDefinition: true)
!475 = distinct !DISubprogram(name: "proper_name_lite", scope: !476, file: !476, line: 38, type: !477, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !481)
!476 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!477 = !DISubroutineType(types: !478)
!478 = !{!122, !122, !122}
!479 = distinct !DICompileUnit(language: DW_LANG_C11, file: !476, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !480, splitDebugInlining: false, nameTableKind: None)
!480 = !{!473}
!481 = !{!482, !483, !484, !485, !490}
!482 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !475, file: !476, line: 38, type: !122)
!483 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !475, file: !476, line: 38, type: !122)
!484 = !DILocalVariable(name: "translation", scope: !475, file: !476, line: 40, type: !122)
!485 = !DILocalVariable(name: "w", scope: !475, file: !476, line: 47, type: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !487, line: 37, baseType: !488)
!487 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !208, line: 57, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !208, line: 42, baseType: !72)
!490 = !DILocalVariable(name: "mbs", scope: !475, file: !476, line: 48, type: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !492, line: 6, baseType: !493)
!492 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !494, line: 21, baseType: !495)
!494 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 13, size: 64, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !495, file: !494, line: 15, baseType: !77, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !495, file: !494, line: 20, baseType: !499, size: 32, offset: 32)
!499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !495, file: !494, line: 16, size: 32, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !499, file: !494, line: 18, baseType: !72, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !499, file: !494, line: 19, baseType: !245, size: 32)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 16, elements: !253)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !506, line: 78, type: !274, isLocal: true, isDefinition: true)
!506 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !506, line: 79, type: !19, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !506, line: 80, type: !511, isLocal: true, isDefinition: true)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 13)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !506, line: 81, type: !511, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !506, line: 82, type: !147, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !506, line: 83, type: !252, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !506, line: 84, type: !274, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !506, line: 85, type: !269, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !506, line: 86, type: !269, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !506, line: 87, type: !274, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !530, file: !506, line: 76, type: !602, isLocal: false, isDefinition: true)
!530 = distinct !DICompileUnit(language: DW_LANG_C11, file: !506, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !531, retainedTypes: !537, globals: !538, splitDebugInlining: false, nameTableKind: None)
!531 = !{!81, !532, !95}
!532 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !82, line: 254, baseType: !72, size: 32, elements: !533)
!533 = !{!534, !535, !536}
!534 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!535 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!536 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!537 = !{!77, !118, !119}
!538 = !{!504, !507, !509, !514, !516, !518, !520, !522, !524, !526, !528, !539, !543, !553, !555, !560, !562, !564, !566, !568, !591, !598, !600}
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !530, file: !506, line: 92, type: !541, isLocal: false, isDefinition: true)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 320, elements: !55)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !530, file: !506, line: 1040, type: !545, isLocal: false, isDefinition: true)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !506, line: 56, size: 448, elements: !546)
!546 = !{!547, !548, !549, !551, !552}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !545, file: !506, line: 59, baseType: !81, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !545, file: !506, line: 62, baseType: !77, size: 32, offset: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !545, file: !506, line: 66, baseType: !550, size: 256, offset: 64)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !275)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !545, file: !506, line: 69, baseType: !122, size: 64, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !545, file: !506, line: 72, baseType: !122, size: 64, offset: 384)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !530, file: !506, line: 107, type: !545, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "slot0", scope: !530, file: !506, line: 831, type: !557, isLocal: true, isDefinition: true)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 256)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !506, line: 321, type: !252, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !506, line: 357, type: !252, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !506, line: 358, type: !252, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !506, line: 199, type: !269, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "quote", scope: !570, file: !506, line: 228, type: !589, isLocal: true, isDefinition: true)
!570 = distinct !DISubprogram(name: "gettext_quote", scope: !506, file: !506, line: 197, type: !571, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{!122, !122, !81}
!573 = !{!574, !575, !576, !577, !578}
!574 = !DILocalVariable(name: "msgid", arg: 1, scope: !570, file: !506, line: 197, type: !122)
!575 = !DILocalVariable(name: "s", arg: 2, scope: !570, file: !506, line: 197, type: !81)
!576 = !DILocalVariable(name: "translation", scope: !570, file: !506, line: 199, type: !122)
!577 = !DILocalVariable(name: "w", scope: !570, file: !506, line: 229, type: !486)
!578 = !DILocalVariable(name: "mbs", scope: !570, file: !506, line: 230, type: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !492, line: 6, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !494, line: 21, baseType: !581)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 13, size: 64, elements: !582)
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !581, file: !494, line: 15, baseType: !77, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !581, file: !494, line: 20, baseType: !585, size: 32, offset: 32)
!585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !581, file: !494, line: 16, size: 32, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !585, file: !494, line: 18, baseType: !72, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !585, file: !494, line: 19, baseType: !245, size: 32)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !590)
!590 = !{!254, !247}
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "slotvec", scope: !530, file: !506, line: 834, type: !593, isLocal: true, isDefinition: true)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !506, line: 823, size: 128, elements: !595)
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !594, file: !506, line: 825, baseType: !119, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !594, file: !506, line: 826, baseType: !116, size: 64, offset: 64)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(name: "nslots", scope: !530, file: !506, line: 832, type: !77, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(name: "slotvec0", scope: !530, file: !506, line: 833, type: !594, isLocal: true, isDefinition: true)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 704, elements: !604)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!604 = !{!605}
!605 = !DISubrange(count: 11)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !608, line: 67, type: !345, isLocal: true, isDefinition: true)
!608 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !608, line: 69, type: !269, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !608, line: 83, type: !269, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !608, line: 83, type: !245, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !608, line: 85, type: !252, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !608, line: 88, type: !619, isLocal: true, isDefinition: true)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 171)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !608, line: 88, type: !624, isLocal: true, isDefinition: true)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !625)
!625 = !{!626}
!626 = !DISubrange(count: 34)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !608, line: 105, type: !133, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !608, line: 109, type: !140, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !608, line: 113, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 28)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !608, line: 120, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 32)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !608, line: 127, type: !9, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !608, line: 134, type: !296, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !608, line: 142, type: !647, isLocal: true, isDefinition: true)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 44)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !608, line: 150, type: !14, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !608, line: 159, type: !654, isLocal: true, isDefinition: true)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 52)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !608, line: 170, type: !659, isLocal: true, isDefinition: true)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: 60)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !608, line: 248, type: !147, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !608, line: 248, type: !321, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !608, line: 254, type: !147, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !608, line: 254, type: !128, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !608, line: 254, type: !296, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !608, line: 259, type: !3, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !608, line: 259, type: !676, isLocal: true, isDefinition: true)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 29)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !681, file: !682, line: 26, type: !684, isLocal: false, isDefinition: true)
!681 = distinct !DICompileUnit(language: DW_LANG_C11, file: !682, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !683, splitDebugInlining: false, nameTableKind: None)
!682 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!683 = !{!679}
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 376, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 47)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(name: "exit_failure", scope: !689, file: !690, line: 24, type: !692, isLocal: false, isDefinition: true)
!689 = distinct !DICompileUnit(language: DW_LANG_C11, file: !690, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !691, splitDebugInlining: false, nameTableKind: None)
!690 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!691 = !{!687}
!692 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !695, line: 34, type: !64, isLocal: true, isDefinition: true)
!695 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !695, line: 34, type: !269, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !695, line: 34, type: !291, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !702, line: 108, type: !49, isLocal: true, isDefinition: true)
!702 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(name: "internal_state", scope: !705, file: !702, line: 97, type: !708, isLocal: true, isDefinition: true)
!705 = distinct !DICompileUnit(language: DW_LANG_C11, file: !702, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !706, globals: !707, splitDebugInlining: false, nameTableKind: None)
!706 = !{!117, !119, !124}
!707 = !{!700, !703}
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !492, line: 6, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !494, line: 21, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 13, size: 64, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !710, file: !494, line: 15, baseType: !77, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !710, file: !494, line: 20, baseType: !714, size: 32, offset: 32)
!714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !710, file: !494, line: 16, size: 32, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !714, file: !494, line: 18, baseType: !72, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !714, file: !494, line: 19, baseType: !245, size: 32)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !720, line: 35, type: !252, isLocal: true, isDefinition: true)
!720 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !720, line: 35, type: !19, isLocal: true, isDefinition: true)
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !383, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !724, globals: !725, splitDebugInlining: false, nameTableKind: None)
!724 = !{!124}
!725 = !{!381}
!726 = distinct !DICompileUnit(language: DW_LANG_C11, file: !727, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!727 = !DIFile(filename: "lib/stripslash.c", directory: "/src", checksumkind: CSK_MD5, checksum: "128a5f12cafc5019074f64cf3b3d799b")
!728 = distinct !DICompileUnit(language: DW_LANG_C11, file: !729, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !608, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !731, retainedTypes: !735, globals: !736, splitDebugInlining: false, nameTableKind: None)
!731 = !{!732}
!732 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !608, line: 40, baseType: !72, size: 32, elements: !733)
!733 = !{!734}
!734 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!735 = !{!117}
!736 = !{!606, !609, !611, !613, !615, !617, !622, !627, !629, !631, !636, !641, !643, !645, !650, !652, !657, !662, !664, !666, !668, !670, !672, !674}
!737 = distinct !DICompileUnit(language: DW_LANG_C11, file: !738, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !739, retainedTypes: !770, splitDebugInlining: false, nameTableKind: None)
!738 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!739 = !{!740, !752}
!740 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !741, file: !738, line: 188, baseType: !72, size: 32, elements: !750)
!741 = distinct !DISubprogram(name: "x2nrealloc", scope: !738, file: !738, line: 176, type: !742, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !745)
!742 = !DISubroutineType(types: !743)
!743 = !{!117, !117, !744, !119}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!745 = !{!746, !747, !748, !749}
!746 = !DILocalVariable(name: "p", arg: 1, scope: !741, file: !738, line: 176, type: !117)
!747 = !DILocalVariable(name: "pn", arg: 2, scope: !741, file: !738, line: 176, type: !744)
!748 = !DILocalVariable(name: "s", arg: 3, scope: !741, file: !738, line: 176, type: !119)
!749 = !DILocalVariable(name: "n", scope: !741, file: !738, line: 178, type: !119)
!750 = !{!751}
!751 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!752 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !753, file: !738, line: 228, baseType: !72, size: 32, elements: !750)
!753 = distinct !DISubprogram(name: "xpalloc", scope: !738, file: !738, line: 223, type: !754, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !760)
!754 = !DISubroutineType(types: !755)
!755 = !{!117, !117, !756, !757, !759, !757}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !758, line: 130, baseType: !759)
!758 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !120, line: 35, baseType: !209)
!760 = !{!761, !762, !763, !764, !765, !766, !767, !768, !769}
!761 = !DILocalVariable(name: "pa", arg: 1, scope: !753, file: !738, line: 223, type: !117)
!762 = !DILocalVariable(name: "pn", arg: 2, scope: !753, file: !738, line: 223, type: !756)
!763 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !753, file: !738, line: 223, type: !757)
!764 = !DILocalVariable(name: "n_max", arg: 4, scope: !753, file: !738, line: 223, type: !759)
!765 = !DILocalVariable(name: "s", arg: 5, scope: !753, file: !738, line: 223, type: !757)
!766 = !DILocalVariable(name: "n0", scope: !753, file: !738, line: 230, type: !757)
!767 = !DILocalVariable(name: "n", scope: !753, file: !738, line: 237, type: !757)
!768 = !DILocalVariable(name: "nbytes", scope: !753, file: !738, line: 248, type: !757)
!769 = !DILocalVariable(name: "adjusted_nbytes", scope: !753, file: !738, line: 252, type: !757)
!770 = !{!116, !117, !152, !209, !121}
!771 = distinct !DICompileUnit(language: DW_LANG_C11, file: !695, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !772, splitDebugInlining: false, nameTableKind: None)
!772 = !{!693, !696, !698}
!773 = distinct !DICompileUnit(language: DW_LANG_C11, file: !774, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !467, splitDebugInlining: false, nameTableKind: None)
!774 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!775 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!776 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!777 = distinct !DICompileUnit(language: DW_LANG_C11, file: !778, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!778 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !780, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !735, splitDebugInlining: false, nameTableKind: None)
!780 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!781 = distinct !DICompileUnit(language: DW_LANG_C11, file: !782, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !735, splitDebugInlining: false, nameTableKind: None)
!782 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!783 = distinct !DICompileUnit(language: DW_LANG_C11, file: !784, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !785, splitDebugInlining: false, nameTableKind: None)
!784 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!785 = !{!152, !121, !117}
!786 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !787, splitDebugInlining: false, nameTableKind: None)
!787 = !{!718, !721}
!788 = distinct !DICompileUnit(language: DW_LANG_C11, file: !789, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!789 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!790 = distinct !DICompileUnit(language: DW_LANG_C11, file: !791, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !735, splitDebugInlining: false, nameTableKind: None)
!791 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!792 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!793 = !{i32 7, !"Dwarf Version", i32 5}
!794 = !{i32 2, !"Debug Info Version", i32 3}
!795 = !{i32 1, !"wchar_size", i32 4}
!796 = !{i32 8, !"PIC Level", i32 2}
!797 = !{i32 7, !"PIE Level", i32 2}
!798 = !{i32 7, !"uwtable", i32 2}
!799 = !{i32 7, !"frame-pointer", i32 1}
!800 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 166, type: !801, scopeLine: 167, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !77}
!803 = !{!804}
!804 = !DILocalVariable(name: "status", arg: 1, scope: !800, file: !2, line: 166, type: !77)
!805 = !DILocation(line: 0, scope: !800)
!806 = !DILocation(line: 168, column: 14, scope: !807)
!807 = distinct !DILexicalBlock(scope: !800, file: !2, line: 168, column: 7)
!808 = !DILocation(line: 168, column: 7, scope: !800)
!809 = !DILocation(line: 169, column: 5, scope: !810)
!810 = distinct !DILexicalBlock(scope: !807, file: !2, line: 169, column: 5)
!811 = !{!812, !812, i64 0}
!812 = !{!"any pointer", !813, i64 0}
!813 = !{!"omnipotent char", !814, i64 0}
!814 = !{!"Simple C/C++ TBAA"}
!815 = !DILocation(line: 172, column: 7, scope: !816)
!816 = distinct !DILexicalBlock(scope: !807, file: !2, line: 171, column: 5)
!817 = !DILocation(line: 173, column: 7, scope: !816)
!818 = !DILocation(line: 177, column: 7, scope: !816)
!819 = !DILocation(line: 181, column: 7, scope: !816)
!820 = !DILocation(line: 186, column: 7, scope: !816)
!821 = !DILocation(line: 190, column: 7, scope: !816)
!822 = !DILocation(line: 191, column: 7, scope: !816)
!823 = !DILocalVariable(name: "program", arg: 1, scope: !824, file: !76, line: 836, type: !122)
!824 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !76, file: !76, line: 836, type: !825, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !827)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !122}
!827 = !{!823, !828, !835, !836, !838, !839}
!828 = !DILocalVariable(name: "infomap", scope: !824, file: !76, line: 838, type: !829)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 896, elements: !270)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !824, file: !76, line: 838, size: 128, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !831, file: !76, line: 838, baseType: !122, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !831, file: !76, line: 838, baseType: !122, size: 64, offset: 64)
!835 = !DILocalVariable(name: "node", scope: !824, file: !76, line: 848, type: !122)
!836 = !DILocalVariable(name: "map_prog", scope: !824, file: !76, line: 849, type: !837)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!838 = !DILocalVariable(name: "lc_messages", scope: !824, file: !76, line: 861, type: !122)
!839 = !DILocalVariable(name: "url_program", scope: !824, file: !76, line: 874, type: !122)
!840 = !DILocation(line: 0, scope: !824, inlinedAt: !841)
!841 = distinct !DILocation(line: 192, column: 7, scope: !816)
!842 = !DILocation(line: 857, column: 3, scope: !824, inlinedAt: !841)
!843 = !DILocation(line: 861, column: 29, scope: !824, inlinedAt: !841)
!844 = !DILocation(line: 862, column: 7, scope: !845, inlinedAt: !841)
!845 = distinct !DILexicalBlock(scope: !824, file: !76, line: 862, column: 7)
!846 = !DILocation(line: 862, column: 19, scope: !845, inlinedAt: !841)
!847 = !DILocation(line: 862, column: 22, scope: !845, inlinedAt: !841)
!848 = !DILocation(line: 862, column: 7, scope: !824, inlinedAt: !841)
!849 = !DILocation(line: 868, column: 7, scope: !850, inlinedAt: !841)
!850 = distinct !DILexicalBlock(scope: !845, file: !76, line: 863, column: 5)
!851 = !DILocation(line: 870, column: 5, scope: !850, inlinedAt: !841)
!852 = !DILocation(line: 875, column: 3, scope: !824, inlinedAt: !841)
!853 = !DILocation(line: 877, column: 3, scope: !824, inlinedAt: !841)
!854 = !DILocation(line: 194, column: 3, scope: !800)
!855 = !DISubprogram(name: "dcgettext", scope: !856, file: !856, line: 51, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!856 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!857 = !DISubroutineType(types: !858)
!858 = !{!116, !122, !122, !77}
!859 = !{}
!860 = !DISubprogram(name: "__fprintf_chk", scope: !861, file: !861, line: 93, type: !862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!861 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!862 = !DISubroutineType(types: !863)
!863 = !{!77, !864, !77, !865, null}
!864 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !181)
!865 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!866 = !DISubprogram(name: "__printf_chk", scope: !861, file: !861, line: 95, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!867 = !DISubroutineType(types: !868)
!868 = !{!77, !77, !865, null}
!869 = !DISubprogram(name: "fputs_unlocked", scope: !420, file: !420, line: 691, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!870 = !DISubroutineType(types: !871)
!871 = !{!77, !865, !864}
!872 = !DILocation(line: 0, scope: !159)
!873 = !DILocation(line: 581, column: 7, scope: !167)
!874 = !{!875, !875, i64 0}
!875 = !{!"int", !813, i64 0}
!876 = !DILocation(line: 581, column: 19, scope: !167)
!877 = !DILocation(line: 581, column: 7, scope: !159)
!878 = !DILocation(line: 585, column: 26, scope: !166)
!879 = !DILocation(line: 0, scope: !166)
!880 = !DILocation(line: 586, column: 23, scope: !166)
!881 = !DILocation(line: 586, column: 28, scope: !166)
!882 = !DILocation(line: 586, column: 32, scope: !166)
!883 = !{!813, !813, i64 0}
!884 = !DILocation(line: 586, column: 38, scope: !166)
!885 = !DILocalVariable(name: "__s1", arg: 1, scope: !886, file: !887, line: 1359, type: !122)
!886 = distinct !DISubprogram(name: "streq", scope: !887, file: !887, line: 1359, type: !888, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !890)
!887 = !DIFile(filename: "./lib/string.h", directory: "/src")
!888 = !DISubroutineType(types: !889)
!889 = !{!152, !122, !122}
!890 = !{!885, !891}
!891 = !DILocalVariable(name: "__s2", arg: 2, scope: !886, file: !887, line: 1359, type: !122)
!892 = !DILocation(line: 0, scope: !886, inlinedAt: !893)
!893 = distinct !DILocation(line: 586, column: 41, scope: !166)
!894 = !DILocation(line: 1361, column: 11, scope: !886, inlinedAt: !893)
!895 = !DILocation(line: 1361, column: 10, scope: !886, inlinedAt: !893)
!896 = !DILocation(line: 586, column: 19, scope: !166)
!897 = !DILocation(line: 587, column: 5, scope: !166)
!898 = !DILocation(line: 588, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !159, file: !76, line: 588, column: 7)
!900 = !DILocation(line: 588, column: 7, scope: !159)
!901 = !DILocation(line: 590, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !76, line: 589, column: 5)
!903 = !DILocation(line: 591, column: 7, scope: !902)
!904 = !DILocation(line: 595, column: 37, scope: !159)
!905 = !DILocation(line: 595, column: 35, scope: !159)
!906 = !DILocation(line: 596, column: 29, scope: !159)
!907 = !DILocation(line: 597, column: 8, scope: !174)
!908 = !DILocation(line: 597, column: 7, scope: !159)
!909 = !DILocation(line: 604, column: 24, scope: !173)
!910 = !DILocation(line: 604, column: 12, scope: !174)
!911 = !DILocation(line: 0, scope: !172)
!912 = !DILocation(line: 610, column: 16, scope: !172)
!913 = !DILocation(line: 610, column: 7, scope: !172)
!914 = !DILocation(line: 611, column: 21, scope: !172)
!915 = !{!916, !916, i64 0}
!916 = !{!"short", !813, i64 0}
!917 = !DILocation(line: 611, column: 19, scope: !172)
!918 = !DILocation(line: 611, column: 16, scope: !172)
!919 = !DILocation(line: 610, column: 30, scope: !172)
!920 = distinct !{!920, !913, !914, !921}
!921 = !{!"llvm.loop.mustprogress"}
!922 = !DILocation(line: 612, column: 18, scope: !923)
!923 = distinct !DILexicalBlock(scope: !172, file: !76, line: 612, column: 11)
!924 = !DILocation(line: 612, column: 11, scope: !172)
!925 = !DILocation(line: 620, column: 23, scope: !159)
!926 = !DILocation(line: 625, column: 39, scope: !159)
!927 = !DILocation(line: 626, column: 3, scope: !159)
!928 = !DILocation(line: 626, column: 10, scope: !159)
!929 = !DILocation(line: 626, column: 21, scope: !159)
!930 = !DILocation(line: 628, column: 44, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !76, line: 628, column: 11)
!932 = distinct !DILexicalBlock(scope: !159, file: !76, line: 627, column: 5)
!933 = !DILocation(line: 628, column: 32, scope: !931)
!934 = !DILocation(line: 628, column: 49, scope: !931)
!935 = !DILocation(line: 628, column: 11, scope: !932)
!936 = !DILocation(line: 630, column: 11, scope: !937)
!937 = distinct !DILexicalBlock(scope: !932, file: !76, line: 630, column: 11)
!938 = !DILocation(line: 630, column: 11, scope: !932)
!939 = !DILocation(line: 632, column: 26, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !76, line: 632, column: 15)
!941 = distinct !DILexicalBlock(scope: !937, file: !76, line: 631, column: 9)
!942 = !DILocation(line: 632, column: 34, scope: !940)
!943 = !DILocation(line: 632, column: 37, scope: !940)
!944 = !DILocation(line: 632, column: 15, scope: !941)
!945 = !DILocation(line: 640, column: 16, scope: !932)
!946 = distinct !{!946, !927, !947, !921}
!947 = !DILocation(line: 641, column: 5, scope: !159)
!948 = !DILocation(line: 644, column: 3, scope: !159)
!949 = !DILocation(line: 0, scope: !886, inlinedAt: !950)
!950 = distinct !DILocation(line: 648, column: 31, scope: !159)
!951 = !DILocation(line: 0, scope: !886, inlinedAt: !952)
!952 = distinct !DILocation(line: 649, column: 31, scope: !159)
!953 = !DILocation(line: 0, scope: !886, inlinedAt: !954)
!954 = distinct !DILocation(line: 650, column: 31, scope: !159)
!955 = !DILocation(line: 0, scope: !886, inlinedAt: !956)
!956 = distinct !DILocation(line: 651, column: 31, scope: !159)
!957 = !DILocation(line: 0, scope: !886, inlinedAt: !958)
!958 = distinct !DILocation(line: 652, column: 31, scope: !159)
!959 = !DILocation(line: 0, scope: !886, inlinedAt: !960)
!960 = distinct !DILocation(line: 653, column: 31, scope: !159)
!961 = !DILocation(line: 0, scope: !886, inlinedAt: !962)
!962 = distinct !DILocation(line: 654, column: 31, scope: !159)
!963 = !DILocation(line: 0, scope: !886, inlinedAt: !964)
!964 = distinct !DILocation(line: 655, column: 31, scope: !159)
!965 = !DILocation(line: 0, scope: !886, inlinedAt: !966)
!966 = distinct !DILocation(line: 656, column: 31, scope: !159)
!967 = !DILocation(line: 0, scope: !886, inlinedAt: !968)
!968 = distinct !DILocation(line: 657, column: 31, scope: !159)
!969 = !DILocation(line: 663, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !159, file: !76, line: 663, column: 7)
!971 = !DILocation(line: 664, column: 7, scope: !970)
!972 = !DILocation(line: 664, column: 10, scope: !970)
!973 = !DILocation(line: 663, column: 7, scope: !159)
!974 = !DILocation(line: 669, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !970, file: !76, line: 665, column: 5)
!976 = !DILocation(line: 671, column: 5, scope: !975)
!977 = !DILocation(line: 676, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !970, file: !76, line: 673, column: 5)
!979 = !DILocation(line: 679, column: 3, scope: !159)
!980 = !DILocation(line: 683, column: 3, scope: !159)
!981 = !DILocation(line: 686, column: 3, scope: !159)
!982 = !DILocation(line: 688, column: 3, scope: !159)
!983 = !DILocation(line: 691, column: 3, scope: !159)
!984 = !DILocation(line: 695, column: 3, scope: !159)
!985 = !DILocation(line: 696, column: 1, scope: !159)
!986 = !DISubprogram(name: "setlocale", scope: !987, file: !987, line: 122, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!987 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!988 = !DISubroutineType(types: !989)
!989 = !{!116, !77, !122}
!990 = !DISubprogram(name: "strncmp", scope: !991, file: !991, line: 159, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!991 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!992 = !DISubroutineType(types: !993)
!993 = !{!77, !122, !122, !119}
!994 = !DISubprogram(name: "exit", scope: !995, file: !995, line: 624, type: !801, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !859)
!995 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!996 = !DISubprogram(name: "getenv", scope: !995, file: !995, line: 641, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!997 = !DISubroutineType(types: !998)
!998 = !{!116, !122}
!999 = !DISubprogram(name: "strcmp", scope: !991, file: !991, line: 156, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!77, !122, !122}
!1002 = !DISubprogram(name: "strspn", scope: !991, file: !991, line: 297, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!121, !122, !122}
!1005 = !DISubprogram(name: "strchr", scope: !991, file: !991, line: 246, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!116, !122, !77}
!1008 = !DISubprogram(name: "__ctype_b_loc", scope: !96, file: !96, line: 79, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1014 = !DISubprogram(name: "strcspn", scope: !991, file: !991, line: 293, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1015 = !DISubprogram(name: "fwrite_unlocked", scope: !420, file: !420, line: 704, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!119, !1018, !119, !119, !864}
!1018 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1021 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 198, type: !1022, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1025)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!77, !77, !1024}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1034, !1037, !1038, !1041, !1079, !1080}
!1026 = !DILocalVariable(name: "argc", arg: 1, scope: !1021, file: !2, line: 198, type: !77)
!1027 = !DILocalVariable(name: "argv", arg: 2, scope: !1021, file: !2, line: 198, type: !1024)
!1028 = !DILocalVariable(name: "optc", scope: !1021, file: !2, line: 208, type: !77)
!1029 = !DILocalVariable(name: "ok", scope: !1021, file: !2, line: 235, type: !152)
!1030 = !DILocalVariable(name: "dir", scope: !1031, file: !2, line: 238, type: !116)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 237, column: 5)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !2, line: 236, column: 3)
!1033 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 236, column: 3)
!1034 = !DILocalVariable(name: "rmdir_errno", scope: !1035, file: !2, line: 246, type: !77)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 245, column: 9)
!1036 = distinct !DILexicalBlock(scope: !1031, file: !2, line: 244, column: 11)
!1037 = !DILocalVariable(name: "custom_error", scope: !1035, file: !2, line: 255, type: !152)
!1038 = !DILocalVariable(name: "last_unix_slash", scope: !1039, file: !2, line: 258, type: !122)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 257, column: 13)
!1040 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 256, column: 15)
!1041 = !DILocalVariable(name: "st", scope: !1042, file: !2, line: 261, type: !1044)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 260, column: 17)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 259, column: 19)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1045, line: 44, size: 1024, elements: !1046)
!1045 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1046 = !{!1047, !1049, !1051, !1053, !1055, !1057, !1059, !1060, !1061, !1062, !1064, !1065, !1067, !1075, !1076, !1077}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1044, file: !1045, line: 46, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !208, line: 145, baseType: !121)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1044, file: !1045, line: 47, baseType: !1050, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !208, line: 148, baseType: !121)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1044, file: !1045, line: 48, baseType: !1052, size: 32, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !208, line: 150, baseType: !72)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1044, file: !1045, line: 49, baseType: !1054, size: 32, offset: 160)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !208, line: 151, baseType: !72)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1044, file: !1045, line: 50, baseType: !1056, size: 32, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !208, line: 146, baseType: !72)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1044, file: !1045, line: 51, baseType: !1058, size: 32, offset: 224)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !208, line: 147, baseType: !72)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1044, file: !1045, line: 52, baseType: !1048, size: 64, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1044, file: !1045, line: 53, baseType: !1048, size: 64, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1044, file: !1045, line: 54, baseType: !207, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1044, file: !1045, line: 55, baseType: !1063, size: 32, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !208, line: 175, baseType: !77)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1044, file: !1045, line: 56, baseType: !77, size: 32, offset: 480)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1044, file: !1045, line: 57, baseType: !1066, size: 64, offset: 512)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !208, line: 180, baseType: !209)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1044, file: !1045, line: 65, baseType: !1068, size: 128, offset: 576)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1069, line: 11, size: 128, elements: !1070)
!1069 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1070 = !{!1071, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1068, file: !1069, line: 16, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !208, line: 160, baseType: !209)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1068, file: !1069, line: 21, baseType: !1074, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !208, line: 197, baseType: !209)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1044, file: !1045, line: 66, baseType: !1068, size: 128, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1044, file: !1045, line: 67, baseType: !1068, size: 128, offset: 832)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1044, file: !1045, line: 79, baseType: !1078, size: 64, offset: 960)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, elements: !253)
!1079 = !DILocalVariable(name: "ret", scope: !1042, file: !2, line: 262, type: !77)
!1080 = !DILocalVariable(name: "dir_arg", scope: !1081, file: !2, line: 268, type: !116)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 266, column: 21)
!1082 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 264, column: 23)
!1083 = !DILocation(line: 0, scope: !1021)
!1084 = !DILocation(line: 201, column: 21, scope: !1021)
!1085 = !DILocation(line: 201, column: 3, scope: !1021)
!1086 = !DILocation(line: 202, column: 3, scope: !1021)
!1087 = !DILocation(line: 203, column: 3, scope: !1021)
!1088 = !DILocation(line: 204, column: 3, scope: !1021)
!1089 = !DILocation(line: 206, column: 3, scope: !1021)
!1090 = !DILocation(line: 209, column: 3, scope: !1021)
!1091 = !DILocation(line: 209, column: 18, scope: !1021)
!1092 = !DILocation(line: 218, column: 11, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 212, column: 9)
!1094 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 210, column: 5)
!1095 = !DILocation(line: 221, column: 11, scope: !1093)
!1096 = !DILocation(line: 222, column: 9, scope: !1093)
!1097 = !DILocation(line: 223, column: 9, scope: !1093)
!1098 = !DILocation(line: 225, column: 11, scope: !1093)
!1099 = !DILocation(line: 0, scope: !1093)
!1100 = distinct !{!1100, !1090, !1101, !921}
!1101 = !DILocation(line: 227, column: 5, scope: !1021)
!1102 = !DILocation(line: 229, column: 7, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 229, column: 7)
!1104 = !DILocation(line: 229, column: 14, scope: !1103)
!1105 = !DILocation(line: 229, column: 7, scope: !1021)
!1106 = !DILocation(line: 236, column: 17, scope: !1032)
!1107 = !DILocation(line: 236, column: 3, scope: !1033)
!1108 = !DILocation(line: 231, column: 7, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 230, column: 5)
!1110 = !DILocation(line: 232, column: 7, scope: !1109)
!1111 = !DILocation(line: 238, column: 19, scope: !1031)
!1112 = !DILocation(line: 0, scope: !1031)
!1113 = !DILocation(line: 241, column: 11, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1031, file: !2, line: 241, column: 11)
!1115 = !DILocation(line: 241, column: 11, scope: !1031)
!1116 = !DILocation(line: 242, column: 23, scope: !1114)
!1117 = !DILocation(line: 242, column: 31, scope: !1114)
!1118 = !DILocation(line: 242, column: 60, scope: !1114)
!1119 = !DILocation(line: 242, column: 9, scope: !1114)
!1120 = !DILocation(line: 244, column: 11, scope: !1036)
!1121 = !DILocation(line: 244, column: 23, scope: !1036)
!1122 = !DILocation(line: 244, column: 11, scope: !1031)
!1123 = !DILocation(line: 246, column: 29, scope: !1035)
!1124 = !DILocation(line: 0, scope: !1035)
!1125 = !DILocation(line: 247, column: 15, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 247, column: 15)
!1127 = !DILocation(line: 247, column: 15, scope: !1035)
!1128 = !DILocation(line: 256, column: 27, scope: !1040)
!1129 = !DILocation(line: 256, column: 15, scope: !1035)
!1130 = !DILocation(line: 258, column: 45, scope: !1039)
!1131 = !DILocation(line: 0, scope: !1039)
!1132 = !DILocation(line: 259, column: 19, scope: !1043)
!1133 = !DILocation(line: 259, column: 35, scope: !1043)
!1134 = !DILocation(line: 259, column: 57, scope: !1043)
!1135 = !DILocation(line: 259, column: 39, scope: !1043)
!1136 = !DILocation(line: 259, column: 62, scope: !1043)
!1137 = !DILocation(line: 259, column: 19, scope: !1039)
!1138 = !DILocation(line: 261, column: 19, scope: !1042)
!1139 = !DILocation(line: 261, column: 31, scope: !1042)
!1140 = !DILocation(line: 262, column: 29, scope: !1042)
!1141 = !DILocation(line: 0, scope: !1042)
!1142 = !DILocation(line: 264, column: 33, scope: !1082)
!1143 = !DILocation(line: 264, column: 36, scope: !1082)
!1144 = !DILocation(line: 264, column: 42, scope: !1082)
!1145 = !DILocation(line: 265, column: 23, scope: !1082)
!1146 = !DILocation(line: 265, column: 39, scope: !1082)
!1147 = !{!1148, !875, i64 16}
!1148 = !{!"stat", !1149, i64 0, !1149, i64 8, !875, i64 16, !875, i64 20, !875, i64 24, !875, i64 28, !1149, i64 32, !1149, i64 40, !1149, i64 48, !875, i64 56, !875, i64 60, !1149, i64 64, !1150, i64 72, !1150, i64 88, !1150, i64 104, !813, i64 120}
!1149 = !{!"long", !813, i64 0}
!1150 = !{!"timespec", !1149, i64 0, !1149, i64 8}
!1151 = !DILocation(line: 264, column: 23, scope: !1042)
!1152 = !DILocation(line: 268, column: 39, scope: !1081)
!1153 = !DILocation(line: 0, scope: !1081)
!1154 = !DILocation(line: 269, column: 23, scope: !1081)
!1155 = !DILocalVariable(name: "filename", arg: 1, scope: !1156, file: !1157, line: 49, type: !122)
!1156 = distinct !DISubprogram(name: "issymlink", scope: !1157, file: !1157, line: 49, type: !1158, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1160)
!1157 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!77, !122}
!1160 = !{!1155, !1161}
!1161 = !DILocalVariable(name: "linkbuf", scope: !1156, file: !1157, line: 51, type: !49)
!1162 = !DILocation(line: 0, scope: !1156, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 270, column: 27, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 270, column: 27)
!1165 = !DILocation(line: 51, column: 3, scope: !1156, inlinedAt: !1163)
!1166 = !DILocation(line: 51, column: 8, scope: !1156, inlinedAt: !1163)
!1167 = !DILocation(line: 52, column: 7, scope: !1168, inlinedAt: !1163)
!1168 = distinct !DILexicalBlock(scope: !1156, file: !1157, line: 52, column: 7)
!1169 = !DILocation(line: 52, column: 54, scope: !1168, inlinedAt: !1163)
!1170 = !DILocation(line: 58, column: 1, scope: !1156, inlinedAt: !1163)
!1171 = !DILocation(line: 52, column: 7, scope: !1156, inlinedAt: !1163)
!1172 = !DILocation(line: 272, column: 27, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 271, column: 25)
!1174 = !DILocation(line: 278, column: 23, scope: !1081)
!1175 = !DILocation(line: 280, column: 17, scope: !1043)
!1176 = !DILocation(line: 283, column: 15, scope: !1035)
!1177 = !DILocation(line: 284, column: 13, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 283, column: 15)
!1179 = !DILocation(line: 288, column: 16, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 288, column: 16)
!1181 = !DILocation(line: 288, column: 16, scope: !1036)
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
!1202 = !DILocation(line: 0, scope: !1189, inlinedAt: !1197)
!1203 = !DILocation(line: 121, column: 17, scope: !1204, inlinedAt: !1197)
!1204 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 121, column: 11)
!1205 = !DILocation(line: 121, column: 11, scope: !1189, inlinedAt: !1197)
!1206 = !DILocation(line: 125, column: 20, scope: !1189, inlinedAt: !1197)
!1207 = !DILocation(line: 125, column: 26, scope: !1189, inlinedAt: !1197)
!1208 = !DILocation(line: 125, column: 7, scope: !1189, inlinedAt: !1197)
!1209 = !DILocation(line: 125, column: 29, scope: !1189, inlinedAt: !1197)
!1210 = !DILocation(line: 125, column: 36, scope: !1189, inlinedAt: !1197)
!1211 = !DILocation(line: 126, column: 9, scope: !1189, inlinedAt: !1197)
!1212 = distinct !{!1212, !1208, !1213, !921}
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
!1235 = !DILocation(line: 236, column: 25, scope: !1032)
!1236 = distinct !{!1236, !1107, !1237, !921}
!1237 = !DILocation(line: 292, column: 5, scope: !1033)
!1238 = !DILocation(line: 294, column: 10, scope: !1021)
!1239 = !DILocation(line: 295, column: 1, scope: !1021)
!1240 = !DISubprogram(name: "bindtextdomain", scope: !856, file: !856, line: 86, type: !1241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!116, !122, !122}
!1243 = !DISubprogram(name: "textdomain", scope: !856, file: !856, line: 82, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1244 = !DISubprogram(name: "atexit", scope: !995, file: !995, line: 602, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!77, !460}
!1247 = !DISubprogram(name: "getopt_long", scope: !371, file: !371, line: 66, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!77, !77, !1250, !122, !1252, !376}
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!1253 = !DISubprogram(name: "rmdir", scope: !1254, file: !1254, line: 867, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1254 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1255 = !DISubprogram(name: "__errno_location", scope: !1256, file: !1256, line: 37, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1256 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!376}
!1259 = distinct !DISubprogram(name: "ignorable_failure", scope: !2, file: !2, line: 99, type: !1260, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1262)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!152, !77, !122}
!1262 = !{!1263, !1264}
!1263 = !DILocalVariable(name: "error_number", arg: 1, scope: !1259, file: !2, line: 99, type: !77)
!1264 = !DILocalVariable(name: "dir", arg: 2, scope: !1259, file: !2, line: 99, type: !122)
!1265 = !DILocation(line: 0, scope: !1259)
!1266 = !DILocation(line: 101, column: 11, scope: !1259)
!1267 = !DILocation(line: 102, column: 11, scope: !1259)
!1268 = !DILocation(line: 103, column: 15, scope: !1259)
!1269 = !DILocalVariable(name: "fd_cwd", arg: 1, scope: !1270, file: !76, line: 305, type: !77)
!1270 = distinct !DISubprogram(name: "directory_status", scope: !76, file: !76, line: 305, type: !1271, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1273)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!77, !77, !122}
!1273 = !{!1269, !1274, !1275, !1280, !1281, !1282}
!1274 = !DILocalVariable(name: "dir", arg: 2, scope: !1270, file: !76, line: 305, type: !122)
!1275 = !DILocalVariable(name: "dirp", scope: !1270, file: !76, line: 307, type: !1276)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !1278, line: 127, baseType: !1279)
!1278 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !1278, line: 127, flags: DIFlagFwdDecl)
!1280 = !DILocalVariable(name: "no_direntries", scope: !1270, file: !76, line: 308, type: !152)
!1281 = !DILocalVariable(name: "saved_errno", scope: !1270, file: !76, line: 309, type: !77)
!1282 = !DILocalVariable(name: "fd", scope: !1270, file: !76, line: 310, type: !77)
!1283 = !DILocation(line: 0, scope: !1270, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 104, column: 22, scope: !1259)
!1285 = !DILocation(line: 310, column: 12, scope: !1270, inlinedAt: !1284)
!1286 = !DILocation(line: 314, column: 10, scope: !1287, inlinedAt: !1284)
!1287 = distinct !DILexicalBlock(scope: !1270, file: !76, line: 314, column: 7)
!1288 = !DILocation(line: 314, column: 7, scope: !1270, inlinedAt: !1284)
!1289 = !DILocation(line: 315, column: 12, scope: !1287, inlinedAt: !1284)
!1290 = !DILocation(line: 315, column: 5, scope: !1287, inlinedAt: !1284)
!1291 = !DILocation(line: 317, column: 10, scope: !1270, inlinedAt: !1284)
!1292 = !DILocation(line: 318, column: 12, scope: !1293, inlinedAt: !1284)
!1293 = distinct !DILexicalBlock(scope: !1270, file: !76, line: 318, column: 7)
!1294 = !DILocation(line: 318, column: 7, scope: !1270, inlinedAt: !1284)
!1295 = !DILocation(line: 320, column: 21, scope: !1296, inlinedAt: !1284)
!1296 = distinct !DILexicalBlock(scope: !1293, file: !76, line: 319, column: 5)
!1297 = !DILocation(line: 321, column: 7, scope: !1296, inlinedAt: !1284)
!1298 = !DILocation(line: 322, column: 7, scope: !1296, inlinedAt: !1284)
!1299 = !DILocation(line: 325, column: 9, scope: !1270, inlinedAt: !1284)
!1300 = !DILocalVariable(name: "dirp", arg: 1, scope: !1301, file: !76, line: 285, type: !1276)
!1301 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !76, file: !76, line: 285, type: !1302, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1314)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!1304, !1276}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !1307, line: 22, size: 2240, elements: !1308)
!1307 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!1308 = !{!1309, !1310, !1311, !1312, !1313}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !1306, file: !1307, line: 25, baseType: !1050, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !1306, file: !1307, line: 26, baseType: !207, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !1306, file: !1307, line: 31, baseType: !118, size: 16, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !1306, file: !1307, line: 32, baseType: !124, size: 8, offset: 144)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1306, file: !1307, line: 33, baseType: !557, size: 2048, offset: 152)
!1314 = !{!1300, !1315}
!1315 = !DILocalVariable(name: "dp", scope: !1316, file: !76, line: 289, type: !1304)
!1316 = distinct !DILexicalBlock(scope: !1301, file: !76, line: 288, column: 5)
!1317 = !DILocation(line: 0, scope: !1301, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 326, column: 20, scope: !1270, inlinedAt: !1284)
!1319 = !DILocation(line: 287, column: 3, scope: !1301, inlinedAt: !1318)
!1320 = !DILocation(line: 289, column: 33, scope: !1316, inlinedAt: !1318)
!1321 = !DILocation(line: 0, scope: !1316, inlinedAt: !1318)
!1322 = !DILocation(line: 290, column: 14, scope: !1323, inlinedAt: !1318)
!1323 = distinct !DILexicalBlock(scope: !1316, file: !76, line: 290, column: 11)
!1324 = !DILocation(line: 290, column: 22, scope: !1323, inlinedAt: !1318)
!1325 = !DILocation(line: 290, column: 46, scope: !1323, inlinedAt: !1318)
!1326 = !DILocalVariable(name: "file_name", arg: 1, scope: !1327, file: !76, line: 272, type: !122)
!1327 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !76, file: !76, line: 272, type: !1328, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1330)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!152, !122}
!1330 = !{!1326, !1331}
!1331 = !DILocalVariable(name: "sep", scope: !1332, file: !76, line: 276, type: !4)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !76, line: 275, column: 5)
!1333 = distinct !DILexicalBlock(scope: !1327, file: !76, line: 274, column: 7)
!1334 = !DILocation(line: 0, scope: !1327, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 290, column: 27, scope: !1323, inlinedAt: !1318)
!1336 = !DILocation(line: 274, column: 7, scope: !1333, inlinedAt: !1335)
!1337 = !DILocation(line: 274, column: 20, scope: !1333, inlinedAt: !1335)
!1338 = !DILocation(line: 274, column: 7, scope: !1327, inlinedAt: !1335)
!1339 = !DILocation(line: 276, column: 29, scope: !1332, inlinedAt: !1335)
!1340 = !DILocation(line: 276, column: 42, scope: !1332, inlinedAt: !1335)
!1341 = !DILocation(line: 276, column: 50, scope: !1332, inlinedAt: !1335)
!1342 = !DILocation(line: 276, column: 18, scope: !1332, inlinedAt: !1335)
!1343 = !DILocation(line: 0, scope: !1332, inlinedAt: !1335)
!1344 = !DILocation(line: 277, column: 17, scope: !1332, inlinedAt: !1335)
!1345 = !DILocation(line: 277, column: 21, scope: !1332, inlinedAt: !1335)
!1346 = !DILocation(line: 290, column: 11, scope: !1316, inlinedAt: !1318)
!1347 = !DILocation(line: 327, column: 17, scope: !1270, inlinedAt: !1284)
!1348 = !DILocation(line: 328, column: 3, scope: !1270, inlinedAt: !1284)
!1349 = !DILocation(line: 329, column: 24, scope: !1270, inlinedAt: !1284)
!1350 = !DILocation(line: 329, column: 3, scope: !1270, inlinedAt: !1284)
!1351 = !DILocation(line: 104, column: 55, scope: !1259)
!1352 = !DILocation(line: 101, column: 3, scope: !1259)
!1353 = !DISubprogram(name: "strrchr", scope: !991, file: !991, line: 273, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1354 = !DISubprogram(name: "stat", scope: !1355, file: !1355, line: 205, type: !1356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1355 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!77, !865, !1358}
!1358 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1360 = !DISubprogram(name: "free", scope: !995, file: !995, line: 555, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !117}
!1363 = !DISubprogram(name: "openat", scope: !1364, file: !1364, line: 205, type: !1365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1364 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!77, !77, !122, !77, null}
!1367 = !DISubprogram(name: "fdopendir", scope: !1278, file: !1278, line: 141, type: !1368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!1276, !77}
!1370 = !DISubprogram(name: "close", scope: !1254, file: !1254, line: 358, type: !1371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!77, !77}
!1373 = !DISubprogram(name: "readdir", scope: !1278, file: !1278, line: 162, type: !1374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!1376, !1276}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1377 = !DISubprogram(name: "closedir", scope: !1278, file: !1278, line: 149, type: !1378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!77, !1276}
!1380 = distinct !DISubprogram(name: "prog_fprintf", scope: !383, file: !383, line: 28, type: !1381, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !1417)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !1383, !122, null}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !1385)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1385, file: !185, line: 51, baseType: !77, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1385, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1385, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1385, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1385, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1385, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1385, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1385, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1385, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1385, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1385, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1385, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1385, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1385, file: !185, line: 70, baseType: !1401, size: 64, offset: 832)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1385, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1385, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1385, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1385, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1385, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1385, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1385, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1385, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1385, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1385, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1385, file: !185, line: 93, baseType: !1401, size: 64, offset: 1344)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1385, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1385, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1385, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1385, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!1417 = !{!1418, !1419, !1420}
!1418 = !DILocalVariable(name: "fp", arg: 1, scope: !1380, file: !383, line: 28, type: !1383)
!1419 = !DILocalVariable(name: "fmt", arg: 2, scope: !1380, file: !383, line: 28, type: !122)
!1420 = !DILocalVariable(name: "ap", scope: !1380, file: !383, line: 30, type: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !420, line: 52, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !422, line: 14, baseType: !1423)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1424, baseType: !1425)
!1424 = !DIFile(filename: "src/prog-fprintf.c", directory: "/src")
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430, !1431}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1425, file: !1424, line: 30, baseType: !117, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1425, file: !1424, line: 30, baseType: !117, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1425, file: !1424, line: 30, baseType: !117, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1425, file: !1424, line: 30, baseType: !77, size: 32, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1425, file: !1424, line: 30, baseType: !77, size: 32, offset: 224)
!1432 = !DILocation(line: 0, scope: !1380)
!1433 = !DILocation(line: 30, column: 3, scope: !1380)
!1434 = !DILocation(line: 30, column: 11, scope: !1380)
!1435 = !DILocation(line: 31, column: 3, scope: !1380)
!1436 = !DILocation(line: 32, column: 3, scope: !1380)
!1437 = !DILocation(line: 33, column: 3, scope: !1380)
!1438 = !DILocation(line: 135, column: 10, scope: !1439, inlinedAt: !1447)
!1439 = distinct !DISubprogram(name: "vfprintf", scope: !861, file: !861, line: 132, type: !1440, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !1443)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!77, !1442, !865, !1422}
!1442 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1383)
!1443 = !{!1444, !1445, !1446}
!1444 = !DILocalVariable(name: "__stream", arg: 1, scope: !1439, file: !861, line: 132, type: !1442)
!1445 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1439, file: !861, line: 133, type: !865)
!1446 = !DILocalVariable(name: "__ap", arg: 3, scope: !1439, file: !861, line: 133, type: !1422)
!1447 = distinct !DILocation(line: 34, column: 3, scope: !1380)
!1448 = !{!1449, !1451}
!1449 = distinct !{!1449, !1450, !"vfprintf.inline: argument 0"}
!1450 = distinct !{!1450, !"vfprintf.inline"}
!1451 = distinct !{!1451, !1450, !"vfprintf.inline: argument 1"}
!1452 = !DILocation(line: 34, column: 3, scope: !1380)
!1453 = !DILocation(line: 0, scope: !1439, inlinedAt: !1447)
!1454 = !DILocation(line: 133, column: 49, scope: !1439, inlinedAt: !1447)
!1455 = !DILocation(line: 35, column: 3, scope: !1380)
!1456 = !DILocalVariable(name: "__c", arg: 1, scope: !1457, file: !1458, line: 91, type: !77)
!1457 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1458, file: !1458, line: 91, type: !1459, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !1461)
!1458 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!77, !77, !1383}
!1461 = !{!1456, !1462}
!1462 = !DILocalVariable(name: "__stream", arg: 2, scope: !1457, file: !1458, line: 91, type: !1383)
!1463 = !DILocation(line: 0, scope: !1457, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 36, column: 3, scope: !1380)
!1465 = !DILocation(line: 93, column: 10, scope: !1457, inlinedAt: !1464)
!1466 = !{!1467, !812, i64 40}
!1467 = !{!"_IO_FILE", !875, i64 0, !812, i64 8, !812, i64 16, !812, i64 24, !812, i64 32, !812, i64 40, !812, i64 48, !812, i64 56, !812, i64 64, !812, i64 72, !812, i64 80, !812, i64 88, !812, i64 96, !812, i64 104, !875, i64 112, !875, i64 116, !1149, i64 120, !916, i64 128, !813, i64 130, !813, i64 131, !812, i64 136, !1149, i64 144, !812, i64 152, !812, i64 160, !812, i64 168, !812, i64 176, !1149, i64 184, !875, i64 192, !813, i64 196}
!1468 = !{!1467, !812, i64 48}
!1469 = !{!"branch_weights", i32 2000, i32 1}
!1470 = !DILocation(line: 37, column: 1, scope: !1380)
!1471 = !DISubprogram(name: "__vfprintf_chk", scope: !861, file: !861, line: 96, type: !1472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!77, !1442, !77, !865, !1422}
!1474 = !DISubprogram(name: "__overflow", scope: !420, file: !420, line: 886, type: !1475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!77, !1383, !77}
!1477 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !394, file: !394, line: 50, type: !825, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1478)
!1478 = !{!1479}
!1479 = !DILocalVariable(name: "file", arg: 1, scope: !1477, file: !394, line: 50, type: !122)
!1480 = !DILocation(line: 0, scope: !1477)
!1481 = !DILocation(line: 52, column: 13, scope: !1477)
!1482 = !DILocation(line: 53, column: 1, scope: !1477)
!1483 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !394, file: !394, line: 87, type: !1484, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1486)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{null, !152}
!1486 = !{!1487}
!1487 = !DILocalVariable(name: "ignore", arg: 1, scope: !1483, file: !394, line: 87, type: !152)
!1488 = !DILocation(line: 0, scope: !1483)
!1489 = !DILocation(line: 89, column: 16, scope: !1483)
!1490 = !{!1491, !1491, i64 0}
!1491 = !{!"_Bool", !813, i64 0}
!1492 = !DILocation(line: 90, column: 1, scope: !1483)
!1493 = distinct !DISubprogram(name: "close_stdout", scope: !394, file: !394, line: 116, type: !461, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1494)
!1494 = !{!1495}
!1495 = !DILocalVariable(name: "write_error", scope: !1496, file: !394, line: 121, type: !122)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !394, line: 120, column: 5)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !394, line: 118, column: 7)
!1498 = !DILocation(line: 118, column: 21, scope: !1497)
!1499 = !DILocation(line: 118, column: 7, scope: !1497)
!1500 = !DILocation(line: 118, column: 29, scope: !1497)
!1501 = !DILocation(line: 119, column: 7, scope: !1497)
!1502 = !DILocation(line: 119, column: 12, scope: !1497)
!1503 = !{i8 0, i8 2}
!1504 = !DILocation(line: 119, column: 25, scope: !1497)
!1505 = !DILocation(line: 119, column: 28, scope: !1497)
!1506 = !DILocation(line: 119, column: 34, scope: !1497)
!1507 = !DILocation(line: 118, column: 7, scope: !1493)
!1508 = !DILocation(line: 121, column: 33, scope: !1496)
!1509 = !DILocation(line: 0, scope: !1496)
!1510 = !DILocation(line: 122, column: 11, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1496, file: !394, line: 122, column: 11)
!1512 = !DILocation(line: 0, scope: !1511)
!1513 = !DILocation(line: 122, column: 11, scope: !1496)
!1514 = !DILocation(line: 123, column: 9, scope: !1511)
!1515 = !DILocation(line: 126, column: 9, scope: !1511)
!1516 = !DILocation(line: 128, column: 14, scope: !1496)
!1517 = !DILocation(line: 128, column: 7, scope: !1496)
!1518 = !DILocation(line: 133, column: 42, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1493, file: !394, line: 133, column: 7)
!1520 = !DILocation(line: 133, column: 28, scope: !1519)
!1521 = !DILocation(line: 133, column: 50, scope: !1519)
!1522 = !DILocation(line: 133, column: 7, scope: !1493)
!1523 = !DILocation(line: 134, column: 12, scope: !1519)
!1524 = !DILocation(line: 134, column: 5, scope: !1519)
!1525 = !DILocation(line: 135, column: 1, scope: !1493)
!1526 = !DISubprogram(name: "_exit", scope: !1254, file: !1254, line: 624, type: !801, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1527 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !727, file: !727, line: 31, type: !1184, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !1528)
!1528 = !{!1529, !1530, !1531, !1532}
!1529 = !DILocalVariable(name: "file", arg: 1, scope: !1527, file: !727, line: 31, type: !116)
!1530 = !DILocalVariable(name: "base", scope: !1527, file: !727, line: 33, type: !116)
!1531 = !DILocalVariable(name: "base_lim", scope: !1527, file: !727, line: 39, type: !116)
!1532 = !DILocalVariable(name: "had_slash", scope: !1527, file: !727, line: 40, type: !152)
!1533 = !DILocation(line: 0, scope: !1527)
!1534 = !DILocation(line: 33, column: 16, scope: !1527)
!1535 = !DILocation(line: 37, column: 9, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1527, file: !727, line: 37, column: 7)
!1537 = !DILocation(line: 37, column: 7, scope: !1527)
!1538 = !DILocation(line: 39, column: 27, scope: !1527)
!1539 = !DILocation(line: 39, column: 25, scope: !1527)
!1540 = !DILocation(line: 40, column: 21, scope: !1527)
!1541 = !DILocation(line: 40, column: 31, scope: !1527)
!1542 = !DILocation(line: 41, column: 13, scope: !1527)
!1543 = !DILocation(line: 42, column: 3, scope: !1527)
!1544 = distinct !DISubprogram(name: "verror", scope: !409, file: !409, line: 251, type: !1545, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1547)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !77, !77, !122, !419}
!1547 = !{!1548, !1549, !1550, !1551}
!1548 = !DILocalVariable(name: "status", arg: 1, scope: !1544, file: !409, line: 251, type: !77)
!1549 = !DILocalVariable(name: "errnum", arg: 2, scope: !1544, file: !409, line: 251, type: !77)
!1550 = !DILocalVariable(name: "message", arg: 3, scope: !1544, file: !409, line: 251, type: !122)
!1551 = !DILocalVariable(name: "args", arg: 4, scope: !1544, file: !409, line: 251, type: !419)
!1552 = !DILocation(line: 0, scope: !1544)
!1553 = !DILocation(line: 251, column: 1, scope: !1544)
!1554 = !DILocation(line: 261, column: 3, scope: !1544)
!1555 = !DILocation(line: 265, column: 7, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1544, file: !409, line: 265, column: 7)
!1557 = !DILocation(line: 265, column: 7, scope: !1544)
!1558 = !DILocation(line: 266, column: 5, scope: !1556)
!1559 = !DILocation(line: 272, column: 7, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !409, line: 268, column: 5)
!1561 = !DILocation(line: 276, column: 3, scope: !1544)
!1562 = !{i64 0, i64 8, !811, i64 8, i64 8, !811, i64 16, i64 8, !811, i64 24, i64 4, !874, i64 28, i64 4, !874}
!1563 = !DILocation(line: 282, column: 1, scope: !1544)
!1564 = distinct !DISubprogram(name: "flush_stdout", scope: !409, file: !409, line: 163, type: !461, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1565)
!1565 = !{!1566}
!1566 = !DILocalVariable(name: "stdout_fd", scope: !1564, file: !409, line: 166, type: !77)
!1567 = !DILocation(line: 0, scope: !1564)
!1568 = !DILocalVariable(name: "fd", arg: 1, scope: !1569, file: !409, line: 145, type: !77)
!1569 = distinct !DISubprogram(name: "is_open", scope: !409, file: !409, line: 145, type: !1371, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1570)
!1570 = !{!1568}
!1571 = !DILocation(line: 0, scope: !1569, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 182, column: 25, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1564, file: !409, line: 182, column: 7)
!1574 = !DILocation(line: 157, column: 15, scope: !1569, inlinedAt: !1572)
!1575 = !DILocation(line: 157, column: 12, scope: !1569, inlinedAt: !1572)
!1576 = !DILocation(line: 182, column: 7, scope: !1564)
!1577 = !DILocation(line: 184, column: 5, scope: !1573)
!1578 = !DILocation(line: 185, column: 1, scope: !1564)
!1579 = distinct !DISubprogram(name: "error_tail", scope: !409, file: !409, line: 219, type: !1545, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1580)
!1580 = !{!1581, !1582, !1583, !1584}
!1581 = !DILocalVariable(name: "status", arg: 1, scope: !1579, file: !409, line: 219, type: !77)
!1582 = !DILocalVariable(name: "errnum", arg: 2, scope: !1579, file: !409, line: 219, type: !77)
!1583 = !DILocalVariable(name: "message", arg: 3, scope: !1579, file: !409, line: 219, type: !122)
!1584 = !DILocalVariable(name: "args", arg: 4, scope: !1579, file: !409, line: 219, type: !419)
!1585 = !DILocation(line: 0, scope: !1579)
!1586 = !DILocation(line: 219, column: 1, scope: !1579)
!1587 = !DILocation(line: 229, column: 13, scope: !1579)
!1588 = !DILocation(line: 135, column: 10, scope: !1589, inlinedAt: !1631)
!1589 = distinct !DISubprogram(name: "vfprintf", scope: !861, file: !861, line: 132, type: !1590, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1627)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!77, !1592, !865, !421}
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
!1628 = !DILocalVariable(name: "__stream", arg: 1, scope: !1589, file: !861, line: 132, type: !1592)
!1629 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1589, file: !861, line: 133, type: !865)
!1630 = !DILocalVariable(name: "__ap", arg: 3, scope: !1589, file: !861, line: 133, type: !421)
!1631 = distinct !DILocation(line: 229, column: 3, scope: !1579)
!1632 = !{!1633, !1635}
!1633 = distinct !{!1633, !1634, !"vfprintf.inline: argument 0"}
!1634 = distinct !{!1634, !"vfprintf.inline"}
!1635 = distinct !{!1635, !1634, !"vfprintf.inline: argument 1"}
!1636 = !DILocation(line: 229, column: 3, scope: !1579)
!1637 = !DILocation(line: 0, scope: !1589, inlinedAt: !1631)
!1638 = !DILocation(line: 133, column: 49, scope: !1589, inlinedAt: !1631)
!1639 = !DILocation(line: 232, column: 3, scope: !1579)
!1640 = !DILocation(line: 233, column: 7, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1579, file: !409, line: 233, column: 7)
!1642 = !DILocation(line: 233, column: 7, scope: !1579)
!1643 = !DILocalVariable(name: "errnum", arg: 1, scope: !1644, file: !409, line: 188, type: !77)
!1644 = distinct !DISubprogram(name: "print_errno_message", scope: !409, file: !409, line: 188, type: !801, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1645)
!1645 = !{!1643, !1646, !1647}
!1646 = !DILocalVariable(name: "s", scope: !1644, file: !409, line: 190, type: !122)
!1647 = !DILocalVariable(name: "errbuf", scope: !1644, file: !409, line: 193, type: !1648)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1649)
!1649 = !{!1650}
!1650 = !DISubrange(count: 1024)
!1651 = !DILocation(line: 0, scope: !1644, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 234, column: 5, scope: !1641)
!1653 = !DILocation(line: 193, column: 3, scope: !1644, inlinedAt: !1652)
!1654 = !DILocation(line: 193, column: 8, scope: !1644, inlinedAt: !1652)
!1655 = !DILocation(line: 195, column: 7, scope: !1644, inlinedAt: !1652)
!1656 = !DILocation(line: 207, column: 9, scope: !1657, inlinedAt: !1652)
!1657 = distinct !DILexicalBlock(scope: !1644, file: !409, line: 207, column: 7)
!1658 = !DILocation(line: 207, column: 7, scope: !1644, inlinedAt: !1652)
!1659 = !DILocation(line: 208, column: 9, scope: !1657, inlinedAt: !1652)
!1660 = !DILocation(line: 208, column: 5, scope: !1657, inlinedAt: !1652)
!1661 = !DILocation(line: 214, column: 3, scope: !1644, inlinedAt: !1652)
!1662 = !DILocation(line: 216, column: 1, scope: !1644, inlinedAt: !1652)
!1663 = !DILocation(line: 234, column: 5, scope: !1641)
!1664 = !DILocation(line: 238, column: 3, scope: !1579)
!1665 = !DILocalVariable(name: "__c", arg: 1, scope: !1666, file: !1458, line: 101, type: !77)
!1666 = distinct !DISubprogram(name: "putc_unlocked", scope: !1458, file: !1458, line: 101, type: !1667, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!77, !77, !1593}
!1669 = !{!1665, !1670}
!1670 = !DILocalVariable(name: "__stream", arg: 2, scope: !1666, file: !1458, line: 101, type: !1593)
!1671 = !DILocation(line: 0, scope: !1666, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 238, column: 3, scope: !1579)
!1673 = !DILocation(line: 103, column: 10, scope: !1666, inlinedAt: !1672)
!1674 = !DILocation(line: 240, column: 3, scope: !1579)
!1675 = !DILocation(line: 241, column: 7, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1579, file: !409, line: 241, column: 7)
!1677 = !DILocation(line: 241, column: 7, scope: !1579)
!1678 = !DILocation(line: 242, column: 5, scope: !1676)
!1679 = !DILocation(line: 243, column: 1, scope: !1579)
!1680 = !DISubprogram(name: "strerror_r", scope: !991, file: !991, line: 444, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!116, !77, !116, !119}
!1683 = !DISubprogram(name: "fflush_unlocked", scope: !420, file: !420, line: 239, type: !1684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!77, !1593}
!1686 = !DISubprogram(name: "fcntl", scope: !1364, file: !1364, line: 149, type: !1687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!77, !77, !77, null}
!1689 = distinct !DISubprogram(name: "error", scope: !409, file: !409, line: 285, type: !1690, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1692)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{null, !77, !77, !122, null}
!1692 = !{!1693, !1694, !1695, !1696}
!1693 = !DILocalVariable(name: "status", arg: 1, scope: !1689, file: !409, line: 285, type: !77)
!1694 = !DILocalVariable(name: "errnum", arg: 2, scope: !1689, file: !409, line: 285, type: !77)
!1695 = !DILocalVariable(name: "message", arg: 3, scope: !1689, file: !409, line: 285, type: !122)
!1696 = !DILocalVariable(name: "ap", scope: !1689, file: !409, line: 287, type: !419)
!1697 = !DILocation(line: 0, scope: !1689)
!1698 = !DILocation(line: 287, column: 3, scope: !1689)
!1699 = !DILocation(line: 287, column: 11, scope: !1689)
!1700 = !DILocation(line: 288, column: 3, scope: !1689)
!1701 = !DILocation(line: 289, column: 3, scope: !1689)
!1702 = !DILocation(line: 290, column: 3, scope: !1689)
!1703 = !DILocation(line: 291, column: 1, scope: !1689)
!1704 = !DILocation(line: 0, scope: !416)
!1705 = !DILocation(line: 298, column: 1, scope: !416)
!1706 = !DILocation(line: 302, column: 7, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !416, file: !409, line: 302, column: 7)
!1708 = !DILocation(line: 302, column: 7, scope: !416)
!1709 = !DILocation(line: 307, column: 11, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !409, line: 307, column: 11)
!1711 = distinct !DILexicalBlock(scope: !1707, file: !409, line: 303, column: 5)
!1712 = !DILocation(line: 307, column: 27, scope: !1710)
!1713 = !DILocation(line: 308, column: 11, scope: !1710)
!1714 = !DILocation(line: 308, column: 28, scope: !1710)
!1715 = !DILocation(line: 308, column: 25, scope: !1710)
!1716 = !DILocation(line: 309, column: 15, scope: !1710)
!1717 = !DILocation(line: 309, column: 33, scope: !1710)
!1718 = !DILocation(line: 310, column: 19, scope: !1710)
!1719 = !DILocation(line: 311, column: 22, scope: !1710)
!1720 = !DILocation(line: 311, column: 56, scope: !1710)
!1721 = !DILocation(line: 307, column: 11, scope: !1711)
!1722 = !DILocation(line: 316, column: 21, scope: !1711)
!1723 = !DILocation(line: 317, column: 23, scope: !1711)
!1724 = !DILocation(line: 318, column: 5, scope: !1711)
!1725 = !DILocation(line: 327, column: 3, scope: !416)
!1726 = !DILocation(line: 331, column: 7, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !416, file: !409, line: 331, column: 7)
!1728 = !DILocation(line: 331, column: 7, scope: !416)
!1729 = !DILocation(line: 332, column: 5, scope: !1727)
!1730 = !DILocation(line: 338, column: 7, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !409, line: 334, column: 5)
!1732 = !DILocation(line: 346, column: 3, scope: !416)
!1733 = !DILocation(line: 350, column: 3, scope: !416)
!1734 = !DILocation(line: 356, column: 1, scope: !416)
!1735 = distinct !DISubprogram(name: "error_at_line", scope: !409, file: !409, line: 359, type: !1736, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1738)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !77, !77, !122, !72, !122, null}
!1738 = !{!1739, !1740, !1741, !1742, !1743, !1744}
!1739 = !DILocalVariable(name: "status", arg: 1, scope: !1735, file: !409, line: 359, type: !77)
!1740 = !DILocalVariable(name: "errnum", arg: 2, scope: !1735, file: !409, line: 359, type: !77)
!1741 = !DILocalVariable(name: "file_name", arg: 3, scope: !1735, file: !409, line: 359, type: !122)
!1742 = !DILocalVariable(name: "line_number", arg: 4, scope: !1735, file: !409, line: 360, type: !72)
!1743 = !DILocalVariable(name: "message", arg: 5, scope: !1735, file: !409, line: 360, type: !122)
!1744 = !DILocalVariable(name: "ap", scope: !1735, file: !409, line: 362, type: !419)
!1745 = !DILocation(line: 0, scope: !1735)
!1746 = !DILocation(line: 362, column: 3, scope: !1735)
!1747 = !DILocation(line: 362, column: 11, scope: !1735)
!1748 = !DILocation(line: 363, column: 3, scope: !1735)
!1749 = !DILocation(line: 364, column: 3, scope: !1735)
!1750 = !DILocation(line: 366, column: 3, scope: !1735)
!1751 = !DILocation(line: 367, column: 1, scope: !1735)
!1752 = distinct !DISubprogram(name: "getprogname", scope: !729, file: !729, line: 54, type: !1753, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !859)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!122}
!1755 = !DILocation(line: 58, column: 10, scope: !1752)
!1756 = !DILocation(line: 58, column: 3, scope: !1752)
!1757 = distinct !DISubprogram(name: "set_program_name", scope: !466, file: !466, line: 37, type: !825, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1758)
!1758 = !{!1759, !1760, !1761}
!1759 = !DILocalVariable(name: "argv0", arg: 1, scope: !1757, file: !466, line: 37, type: !122)
!1760 = !DILocalVariable(name: "slash", scope: !1757, file: !466, line: 44, type: !122)
!1761 = !DILocalVariable(name: "base", scope: !1757, file: !466, line: 45, type: !122)
!1762 = !DILocation(line: 0, scope: !1757)
!1763 = !DILocation(line: 44, column: 23, scope: !1757)
!1764 = !DILocation(line: 45, column: 22, scope: !1757)
!1765 = !DILocation(line: 46, column: 17, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1757, file: !466, line: 46, column: 7)
!1767 = !DILocation(line: 46, column: 9, scope: !1766)
!1768 = !DILocation(line: 46, column: 25, scope: !1766)
!1769 = !DILocation(line: 46, column: 40, scope: !1766)
!1770 = !DILocalVariable(name: "__s1", arg: 1, scope: !1771, file: !887, line: 974, type: !1019)
!1771 = distinct !DISubprogram(name: "memeq", scope: !887, file: !887, line: 974, type: !1772, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1774)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!152, !1019, !1019, !119}
!1774 = !{!1770, !1775, !1776}
!1775 = !DILocalVariable(name: "__s2", arg: 2, scope: !1771, file: !887, line: 974, type: !1019)
!1776 = !DILocalVariable(name: "__n", arg: 3, scope: !1771, file: !887, line: 974, type: !119)
!1777 = !DILocation(line: 0, scope: !1771, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 46, column: 28, scope: !1766)
!1779 = !DILocation(line: 976, column: 11, scope: !1771, inlinedAt: !1778)
!1780 = !DILocation(line: 976, column: 10, scope: !1771, inlinedAt: !1778)
!1781 = !DILocation(line: 46, column: 7, scope: !1757)
!1782 = !DILocation(line: 49, column: 11, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !466, line: 49, column: 11)
!1784 = distinct !DILexicalBlock(scope: !1766, file: !466, line: 47, column: 5)
!1785 = !DILocation(line: 49, column: 36, scope: !1783)
!1786 = !DILocation(line: 49, column: 11, scope: !1784)
!1787 = !DILocation(line: 65, column: 16, scope: !1757)
!1788 = !DILocation(line: 71, column: 27, scope: !1757)
!1789 = !DILocation(line: 74, column: 33, scope: !1757)
!1790 = !DILocation(line: 76, column: 1, scope: !1757)
!1791 = !DILocation(line: 0, scope: !475)
!1792 = !DILocation(line: 40, column: 29, scope: !475)
!1793 = !DILocation(line: 41, column: 19, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !475, file: !476, line: 41, column: 7)
!1795 = !DILocation(line: 41, column: 7, scope: !475)
!1796 = !DILocation(line: 47, column: 3, scope: !475)
!1797 = !DILocation(line: 48, column: 3, scope: !475)
!1798 = !DILocation(line: 48, column: 13, scope: !475)
!1799 = !DILocalVariable(name: "ps", arg: 1, scope: !1800, file: !1801, line: 1135, type: !1804)
!1800 = distinct !DISubprogram(name: "mbszero", scope: !1801, file: !1801, line: 1135, type: !1802, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1805)
!1801 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1802 = !DISubroutineType(types: !1803)
!1803 = !{null, !1804}
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!1805 = !{!1799}
!1806 = !DILocation(line: 0, scope: !1800, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 48, column: 18, scope: !475)
!1808 = !DILocalVariable(name: "__dest", arg: 1, scope: !1809, file: !1810, line: 57, type: !117)
!1809 = distinct !DISubprogram(name: "memset", scope: !1810, file: !1810, line: 57, type: !1811, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1813)
!1810 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!117, !117, !77, !119}
!1813 = !{!1808, !1814, !1815}
!1814 = !DILocalVariable(name: "__ch", arg: 2, scope: !1809, file: !1810, line: 57, type: !77)
!1815 = !DILocalVariable(name: "__len", arg: 3, scope: !1809, file: !1810, line: 57, type: !119)
!1816 = !DILocation(line: 0, scope: !1809, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 1137, column: 3, scope: !1800, inlinedAt: !1807)
!1818 = !DILocation(line: 59, column: 10, scope: !1809, inlinedAt: !1817)
!1819 = !DILocation(line: 49, column: 7, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !475, file: !476, line: 49, column: 7)
!1821 = !DILocation(line: 49, column: 39, scope: !1820)
!1822 = !DILocation(line: 49, column: 44, scope: !1820)
!1823 = !DILocation(line: 54, column: 1, scope: !475)
!1824 = !DISubprogram(name: "mbrtoc32", scope: !487, file: !487, line: 57, type: !1825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!119, !1827, !865, !119, !1829}
!1827 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1828)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1804)
!1830 = distinct !DISubprogram(name: "clone_quoting_options", scope: !506, file: !506, line: 113, type: !1831, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1834)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!1833, !1833}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!1834 = !{!1835, !1836, !1837}
!1835 = !DILocalVariable(name: "o", arg: 1, scope: !1830, file: !506, line: 113, type: !1833)
!1836 = !DILocalVariable(name: "saved_errno", scope: !1830, file: !506, line: 115, type: !77)
!1837 = !DILocalVariable(name: "p", scope: !1830, file: !506, line: 116, type: !1833)
!1838 = !DILocation(line: 0, scope: !1830)
!1839 = !DILocation(line: 115, column: 21, scope: !1830)
!1840 = !DILocation(line: 116, column: 40, scope: !1830)
!1841 = !DILocation(line: 116, column: 31, scope: !1830)
!1842 = !DILocation(line: 118, column: 9, scope: !1830)
!1843 = !DILocation(line: 119, column: 3, scope: !1830)
!1844 = distinct !DISubprogram(name: "get_quoting_style", scope: !506, file: !506, line: 124, type: !1845, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1849)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!81, !1847}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!1849 = !{!1850}
!1850 = !DILocalVariable(name: "o", arg: 1, scope: !1844, file: !506, line: 124, type: !1847)
!1851 = !DILocation(line: 0, scope: !1844)
!1852 = !DILocation(line: 126, column: 11, scope: !1844)
!1853 = !DILocation(line: 126, column: 46, scope: !1844)
!1854 = !{!1855, !813, i64 0}
!1855 = !{!"quoting_options", !813, i64 0, !875, i64 4, !813, i64 8, !812, i64 40, !812, i64 48}
!1856 = !DILocation(line: 126, column: 3, scope: !1844)
!1857 = distinct !DISubprogram(name: "set_quoting_style", scope: !506, file: !506, line: 132, type: !1858, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1860)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !1833, !81}
!1860 = !{!1861, !1862}
!1861 = !DILocalVariable(name: "o", arg: 1, scope: !1857, file: !506, line: 132, type: !1833)
!1862 = !DILocalVariable(name: "s", arg: 2, scope: !1857, file: !506, line: 132, type: !81)
!1863 = !DILocation(line: 0, scope: !1857)
!1864 = !DILocation(line: 134, column: 4, scope: !1857)
!1865 = !DILocation(line: 134, column: 45, scope: !1857)
!1866 = !DILocation(line: 135, column: 1, scope: !1857)
!1867 = distinct !DISubprogram(name: "set_char_quoting", scope: !506, file: !506, line: 143, type: !1868, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1870)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!77, !1833, !4, !77}
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1877, !1878}
!1871 = !DILocalVariable(name: "o", arg: 1, scope: !1867, file: !506, line: 143, type: !1833)
!1872 = !DILocalVariable(name: "c", arg: 2, scope: !1867, file: !506, line: 143, type: !4)
!1873 = !DILocalVariable(name: "i", arg: 3, scope: !1867, file: !506, line: 143, type: !77)
!1874 = !DILocalVariable(name: "uc", scope: !1867, file: !506, line: 145, type: !124)
!1875 = !DILocalVariable(name: "p", scope: !1867, file: !506, line: 146, type: !1876)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!1877 = !DILocalVariable(name: "shift", scope: !1867, file: !506, line: 148, type: !77)
!1878 = !DILocalVariable(name: "r", scope: !1867, file: !506, line: 149, type: !72)
!1879 = !DILocation(line: 0, scope: !1867)
!1880 = !DILocation(line: 147, column: 6, scope: !1867)
!1881 = !DILocation(line: 147, column: 41, scope: !1867)
!1882 = !DILocation(line: 147, column: 62, scope: !1867)
!1883 = !DILocation(line: 147, column: 57, scope: !1867)
!1884 = !DILocation(line: 148, column: 15, scope: !1867)
!1885 = !DILocation(line: 149, column: 21, scope: !1867)
!1886 = !DILocation(line: 149, column: 24, scope: !1867)
!1887 = !DILocation(line: 149, column: 34, scope: !1867)
!1888 = !DILocation(line: 150, column: 19, scope: !1867)
!1889 = !DILocation(line: 150, column: 24, scope: !1867)
!1890 = !DILocation(line: 150, column: 6, scope: !1867)
!1891 = !DILocation(line: 151, column: 3, scope: !1867)
!1892 = distinct !DISubprogram(name: "set_quoting_flags", scope: !506, file: !506, line: 159, type: !1893, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1895)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!77, !1833, !77}
!1895 = !{!1896, !1897, !1898}
!1896 = !DILocalVariable(name: "o", arg: 1, scope: !1892, file: !506, line: 159, type: !1833)
!1897 = !DILocalVariable(name: "i", arg: 2, scope: !1892, file: !506, line: 159, type: !77)
!1898 = !DILocalVariable(name: "r", scope: !1892, file: !506, line: 163, type: !77)
!1899 = !DILocation(line: 0, scope: !1892)
!1900 = !DILocation(line: 161, column: 8, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1892, file: !506, line: 161, column: 7)
!1902 = !DILocation(line: 161, column: 7, scope: !1892)
!1903 = !DILocation(line: 163, column: 14, scope: !1892)
!1904 = !{!1855, !875, i64 4}
!1905 = !DILocation(line: 164, column: 12, scope: !1892)
!1906 = !DILocation(line: 165, column: 3, scope: !1892)
!1907 = distinct !DISubprogram(name: "set_custom_quoting", scope: !506, file: !506, line: 169, type: !1908, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !1833, !122, !122}
!1910 = !{!1911, !1912, !1913}
!1911 = !DILocalVariable(name: "o", arg: 1, scope: !1907, file: !506, line: 169, type: !1833)
!1912 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1907, file: !506, line: 170, type: !122)
!1913 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1907, file: !506, line: 170, type: !122)
!1914 = !DILocation(line: 0, scope: !1907)
!1915 = !DILocation(line: 172, column: 8, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1907, file: !506, line: 172, column: 7)
!1917 = !DILocation(line: 172, column: 7, scope: !1907)
!1918 = !DILocation(line: 174, column: 12, scope: !1907)
!1919 = !DILocation(line: 175, column: 8, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1907, file: !506, line: 175, column: 7)
!1921 = !DILocation(line: 175, column: 19, scope: !1920)
!1922 = !DILocation(line: 176, column: 5, scope: !1920)
!1923 = !DILocation(line: 177, column: 6, scope: !1907)
!1924 = !DILocation(line: 177, column: 17, scope: !1907)
!1925 = !{!1855, !812, i64 40}
!1926 = !DILocation(line: 178, column: 6, scope: !1907)
!1927 = !DILocation(line: 178, column: 18, scope: !1907)
!1928 = !{!1855, !812, i64 48}
!1929 = !DILocation(line: 179, column: 1, scope: !1907)
!1930 = !DISubprogram(name: "abort", scope: !995, file: !995, line: 598, type: !461, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1931 = distinct !DISubprogram(name: "quotearg_buffer", scope: !506, file: !506, line: 774, type: !1932, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1934)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!119, !116, !119, !122, !119, !1847}
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942}
!1935 = !DILocalVariable(name: "buffer", arg: 1, scope: !1931, file: !506, line: 774, type: !116)
!1936 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1931, file: !506, line: 774, type: !119)
!1937 = !DILocalVariable(name: "arg", arg: 3, scope: !1931, file: !506, line: 775, type: !122)
!1938 = !DILocalVariable(name: "argsize", arg: 4, scope: !1931, file: !506, line: 775, type: !119)
!1939 = !DILocalVariable(name: "o", arg: 5, scope: !1931, file: !506, line: 776, type: !1847)
!1940 = !DILocalVariable(name: "p", scope: !1931, file: !506, line: 778, type: !1847)
!1941 = !DILocalVariable(name: "saved_errno", scope: !1931, file: !506, line: 779, type: !77)
!1942 = !DILocalVariable(name: "r", scope: !1931, file: !506, line: 780, type: !119)
!1943 = !DILocation(line: 0, scope: !1931)
!1944 = !DILocation(line: 778, column: 37, scope: !1931)
!1945 = !DILocation(line: 779, column: 21, scope: !1931)
!1946 = !DILocation(line: 781, column: 43, scope: !1931)
!1947 = !DILocation(line: 781, column: 53, scope: !1931)
!1948 = !DILocation(line: 781, column: 63, scope: !1931)
!1949 = !DILocation(line: 782, column: 43, scope: !1931)
!1950 = !DILocation(line: 782, column: 58, scope: !1931)
!1951 = !DILocation(line: 780, column: 14, scope: !1931)
!1952 = !DILocation(line: 783, column: 9, scope: !1931)
!1953 = !DILocation(line: 784, column: 3, scope: !1931)
!1954 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !506, file: !506, line: 251, type: !1955, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1959)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!119, !116, !119, !122, !119, !81, !77, !1957, !122, !122}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!1959 = !{!1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1984, !1986, !1989, !1990, !1991, !1992, !1995, !1996, !1999, !2003, !2004, !2012, !2015, !2016, !2018, !2019, !2020, !2021}
!1960 = !DILocalVariable(name: "buffer", arg: 1, scope: !1954, file: !506, line: 251, type: !116)
!1961 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1954, file: !506, line: 251, type: !119)
!1962 = !DILocalVariable(name: "arg", arg: 3, scope: !1954, file: !506, line: 252, type: !122)
!1963 = !DILocalVariable(name: "argsize", arg: 4, scope: !1954, file: !506, line: 252, type: !119)
!1964 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1954, file: !506, line: 253, type: !81)
!1965 = !DILocalVariable(name: "flags", arg: 6, scope: !1954, file: !506, line: 253, type: !77)
!1966 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1954, file: !506, line: 254, type: !1957)
!1967 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1954, file: !506, line: 255, type: !122)
!1968 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1954, file: !506, line: 256, type: !122)
!1969 = !DILocalVariable(name: "unibyte_locale", scope: !1954, file: !506, line: 258, type: !152)
!1970 = !DILocalVariable(name: "len", scope: !1954, file: !506, line: 260, type: !119)
!1971 = !DILocalVariable(name: "orig_buffersize", scope: !1954, file: !506, line: 261, type: !119)
!1972 = !DILocalVariable(name: "quote_string", scope: !1954, file: !506, line: 262, type: !122)
!1973 = !DILocalVariable(name: "quote_string_len", scope: !1954, file: !506, line: 263, type: !119)
!1974 = !DILocalVariable(name: "backslash_escapes", scope: !1954, file: !506, line: 264, type: !152)
!1975 = !DILocalVariable(name: "elide_outer_quotes", scope: !1954, file: !506, line: 265, type: !152)
!1976 = !DILocalVariable(name: "encountered_single_quote", scope: !1954, file: !506, line: 266, type: !152)
!1977 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1954, file: !506, line: 267, type: !152)
!1978 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1954, file: !506, line: 309, type: !152)
!1979 = !DILocalVariable(name: "lq", scope: !1980, file: !506, line: 361, type: !122)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !506, line: 361, column: 11)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !506, line: 360, column: 13)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !506, line: 333, column: 7)
!1983 = distinct !DILexicalBlock(scope: !1954, file: !506, line: 312, column: 5)
!1984 = !DILocalVariable(name: "i", scope: !1985, file: !506, line: 395, type: !119)
!1985 = distinct !DILexicalBlock(scope: !1954, file: !506, line: 395, column: 3)
!1986 = !DILocalVariable(name: "is_right_quote", scope: !1987, file: !506, line: 397, type: !152)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !506, line: 396, column: 5)
!1988 = distinct !DILexicalBlock(scope: !1985, file: !506, line: 395, column: 3)
!1989 = !DILocalVariable(name: "escaping", scope: !1987, file: !506, line: 398, type: !152)
!1990 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1987, file: !506, line: 399, type: !152)
!1991 = !DILocalVariable(name: "c", scope: !1987, file: !506, line: 417, type: !124)
!1992 = !DILocalVariable(name: "m", scope: !1993, file: !506, line: 598, type: !119)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !506, line: 596, column: 11)
!1994 = distinct !DILexicalBlock(scope: !1987, file: !506, line: 419, column: 9)
!1995 = !DILocalVariable(name: "printable", scope: !1993, file: !506, line: 600, type: !152)
!1996 = !DILocalVariable(name: "mbs", scope: !1997, file: !506, line: 609, type: !579)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !506, line: 608, column: 15)
!1998 = distinct !DILexicalBlock(scope: !1993, file: !506, line: 602, column: 17)
!1999 = !DILocalVariable(name: "w", scope: !2000, file: !506, line: 618, type: !486)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !506, line: 617, column: 19)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !506, line: 616, column: 17)
!2002 = distinct !DILexicalBlock(scope: !1997, file: !506, line: 616, column: 17)
!2003 = !DILocalVariable(name: "bytes", scope: !2000, file: !506, line: 619, type: !119)
!2004 = !DILocalVariable(name: "j", scope: !2005, file: !506, line: 648, type: !119)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !506, line: 648, column: 29)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !506, line: 647, column: 27)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !506, line: 645, column: 29)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !506, line: 636, column: 23)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !506, line: 628, column: 30)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !506, line: 623, column: 30)
!2011 = distinct !DILexicalBlock(scope: !2000, file: !506, line: 621, column: 25)
!2012 = !DILocalVariable(name: "ilim", scope: !2013, file: !506, line: 674, type: !119)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !506, line: 671, column: 15)
!2014 = distinct !DILexicalBlock(scope: !1993, file: !506, line: 670, column: 17)
!2015 = !DILabel(scope: !1954, name: "process_input", file: !506, line: 308)
!2016 = !DILabel(scope: !2017, name: "c_and_shell_escape", file: !506, line: 502)
!2017 = distinct !DILexicalBlock(scope: !1994, file: !506, line: 478, column: 9)
!2018 = !DILabel(scope: !2017, name: "c_escape", file: !506, line: 507)
!2019 = !DILabel(scope: !1987, name: "store_escape", file: !506, line: 709)
!2020 = !DILabel(scope: !1987, name: "store_c", file: !506, line: 712)
!2021 = !DILabel(scope: !1954, name: "force_outer_quoting_style", file: !506, line: 753)
!2022 = !DILocation(line: 0, scope: !1954)
!2023 = !DILocation(line: 258, column: 25, scope: !1954)
!2024 = !DILocation(line: 258, column: 36, scope: !1954)
!2025 = !DILocation(line: 267, column: 3, scope: !1954)
!2026 = !DILocation(line: 261, column: 10, scope: !1954)
!2027 = !DILocation(line: 262, column: 15, scope: !1954)
!2028 = !DILocation(line: 263, column: 10, scope: !1954)
!2029 = !DILocation(line: 308, column: 2, scope: !1954)
!2030 = !DILocation(line: 311, column: 3, scope: !1954)
!2031 = !DILocation(line: 318, column: 11, scope: !1983)
!2032 = !DILocation(line: 319, column: 9, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !506, line: 319, column: 9)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !506, line: 319, column: 9)
!2035 = distinct !DILexicalBlock(scope: !1983, file: !506, line: 318, column: 11)
!2036 = !DILocation(line: 319, column: 9, scope: !2034)
!2037 = !DILocation(line: 0, scope: !570, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 357, column: 26, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !506, line: 335, column: 11)
!2040 = distinct !DILexicalBlock(scope: !1982, file: !506, line: 334, column: 13)
!2041 = !DILocation(line: 199, column: 29, scope: !570, inlinedAt: !2038)
!2042 = !DILocation(line: 201, column: 19, scope: !2043, inlinedAt: !2038)
!2043 = distinct !DILexicalBlock(scope: !570, file: !506, line: 201, column: 7)
!2044 = !DILocation(line: 201, column: 7, scope: !570, inlinedAt: !2038)
!2045 = !DILocation(line: 229, column: 3, scope: !570, inlinedAt: !2038)
!2046 = !DILocation(line: 230, column: 3, scope: !570, inlinedAt: !2038)
!2047 = !DILocation(line: 230, column: 13, scope: !570, inlinedAt: !2038)
!2048 = !DILocalVariable(name: "ps", arg: 1, scope: !2049, file: !1801, line: 1135, type: !2052)
!2049 = distinct !DISubprogram(name: "mbszero", scope: !1801, file: !1801, line: 1135, type: !2050, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2053)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !2052}
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!2053 = !{!2048}
!2054 = !DILocation(line: 0, scope: !2049, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 230, column: 18, scope: !570, inlinedAt: !2038)
!2056 = !DILocalVariable(name: "__dest", arg: 1, scope: !2057, file: !1810, line: 57, type: !117)
!2057 = distinct !DISubprogram(name: "memset", scope: !1810, file: !1810, line: 57, type: !1811, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2058)
!2058 = !{!2056, !2059, !2060}
!2059 = !DILocalVariable(name: "__ch", arg: 2, scope: !2057, file: !1810, line: 57, type: !77)
!2060 = !DILocalVariable(name: "__len", arg: 3, scope: !2057, file: !1810, line: 57, type: !119)
!2061 = !DILocation(line: 0, scope: !2057, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 1137, column: 3, scope: !2049, inlinedAt: !2055)
!2063 = !DILocation(line: 59, column: 10, scope: !2057, inlinedAt: !2062)
!2064 = !DILocation(line: 231, column: 7, scope: !2065, inlinedAt: !2038)
!2065 = distinct !DILexicalBlock(scope: !570, file: !506, line: 231, column: 7)
!2066 = !DILocation(line: 231, column: 40, scope: !2065, inlinedAt: !2038)
!2067 = !DILocation(line: 231, column: 45, scope: !2065, inlinedAt: !2038)
!2068 = !DILocation(line: 235, column: 1, scope: !570, inlinedAt: !2038)
!2069 = !DILocation(line: 0, scope: !570, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 358, column: 27, scope: !2039)
!2071 = !DILocation(line: 199, column: 29, scope: !570, inlinedAt: !2070)
!2072 = !DILocation(line: 201, column: 19, scope: !2043, inlinedAt: !2070)
!2073 = !DILocation(line: 201, column: 7, scope: !570, inlinedAt: !2070)
!2074 = !DILocation(line: 229, column: 3, scope: !570, inlinedAt: !2070)
!2075 = !DILocation(line: 230, column: 3, scope: !570, inlinedAt: !2070)
!2076 = !DILocation(line: 230, column: 13, scope: !570, inlinedAt: !2070)
!2077 = !DILocation(line: 0, scope: !2049, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 230, column: 18, scope: !570, inlinedAt: !2070)
!2079 = !DILocation(line: 0, scope: !2057, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 1137, column: 3, scope: !2049, inlinedAt: !2078)
!2081 = !DILocation(line: 59, column: 10, scope: !2057, inlinedAt: !2080)
!2082 = !DILocation(line: 231, column: 7, scope: !2065, inlinedAt: !2070)
!2083 = !DILocation(line: 231, column: 40, scope: !2065, inlinedAt: !2070)
!2084 = !DILocation(line: 231, column: 45, scope: !2065, inlinedAt: !2070)
!2085 = !DILocation(line: 235, column: 1, scope: !570, inlinedAt: !2070)
!2086 = !DILocation(line: 360, column: 13, scope: !1982)
!2087 = !DILocation(line: 0, scope: !1980)
!2088 = !DILocation(line: 361, column: 45, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1980, file: !506, line: 361, column: 11)
!2090 = !DILocation(line: 361, column: 11, scope: !1980)
!2091 = !DILocation(line: 362, column: 13, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !506, line: 362, column: 13)
!2093 = distinct !DILexicalBlock(scope: !2089, file: !506, line: 362, column: 13)
!2094 = !DILocation(line: 362, column: 13, scope: !2093)
!2095 = !DILocation(line: 361, column: 52, scope: !2089)
!2096 = distinct !{!2096, !2090, !2097, !921}
!2097 = !DILocation(line: 362, column: 13, scope: !1980)
!2098 = !DILocation(line: 260, column: 10, scope: !1954)
!2099 = !DILocation(line: 365, column: 28, scope: !1982)
!2100 = !DILocation(line: 367, column: 7, scope: !1983)
!2101 = !DILocation(line: 370, column: 7, scope: !1983)
!2102 = !DILocation(line: 376, column: 11, scope: !1983)
!2103 = !DILocation(line: 381, column: 11, scope: !1983)
!2104 = !DILocation(line: 382, column: 9, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !506, line: 382, column: 9)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !506, line: 382, column: 9)
!2107 = distinct !DILexicalBlock(scope: !1983, file: !506, line: 381, column: 11)
!2108 = !DILocation(line: 382, column: 9, scope: !2106)
!2109 = !DILocation(line: 389, column: 7, scope: !1983)
!2110 = !DILocation(line: 392, column: 7, scope: !1983)
!2111 = !DILocation(line: 0, scope: !1985)
!2112 = !DILocation(line: 395, column: 8, scope: !1985)
!2113 = !DILocation(line: 395, scope: !1985)
!2114 = !DILocation(line: 395, column: 34, scope: !1988)
!2115 = !DILocation(line: 395, column: 26, scope: !1988)
!2116 = !DILocation(line: 395, column: 48, scope: !1988)
!2117 = !DILocation(line: 395, column: 55, scope: !1988)
!2118 = !DILocation(line: 395, column: 3, scope: !1985)
!2119 = !DILocation(line: 395, column: 67, scope: !1988)
!2120 = !DILocation(line: 0, scope: !1987)
!2121 = !DILocation(line: 402, column: 11, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1987, file: !506, line: 401, column: 11)
!2123 = !DILocation(line: 404, column: 17, scope: !2122)
!2124 = !DILocation(line: 405, column: 39, scope: !2122)
!2125 = !DILocation(line: 409, column: 32, scope: !2122)
!2126 = !DILocation(line: 405, column: 19, scope: !2122)
!2127 = !DILocation(line: 405, column: 15, scope: !2122)
!2128 = !DILocation(line: 410, column: 11, scope: !2122)
!2129 = !DILocation(line: 410, column: 25, scope: !2122)
!2130 = !DILocalVariable(name: "__s1", arg: 1, scope: !2131, file: !887, line: 974, type: !1019)
!2131 = distinct !DISubprogram(name: "memeq", scope: !887, file: !887, line: 974, type: !1772, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2132)
!2132 = !{!2130, !2133, !2134}
!2133 = !DILocalVariable(name: "__s2", arg: 2, scope: !2131, file: !887, line: 974, type: !1019)
!2134 = !DILocalVariable(name: "__n", arg: 3, scope: !2131, file: !887, line: 974, type: !119)
!2135 = !DILocation(line: 0, scope: !2131, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 410, column: 14, scope: !2122)
!2137 = !DILocation(line: 976, column: 11, scope: !2131, inlinedAt: !2136)
!2138 = !DILocation(line: 976, column: 10, scope: !2131, inlinedAt: !2136)
!2139 = !DILocation(line: 401, column: 11, scope: !1987)
!2140 = !DILocation(line: 417, column: 25, scope: !1987)
!2141 = !DILocation(line: 418, column: 7, scope: !1987)
!2142 = !DILocation(line: 421, column: 15, scope: !1994)
!2143 = !DILocation(line: 423, column: 15, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !506, line: 423, column: 15)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !506, line: 422, column: 13)
!2146 = distinct !DILexicalBlock(scope: !1994, file: !506, line: 421, column: 15)
!2147 = !DILocation(line: 423, column: 15, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2144, file: !506, line: 423, column: 15)
!2149 = !DILocation(line: 423, column: 15, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !506, line: 423, column: 15)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !506, line: 423, column: 15)
!2152 = distinct !DILexicalBlock(scope: !2148, file: !506, line: 423, column: 15)
!2153 = !DILocation(line: 423, column: 15, scope: !2151)
!2154 = !DILocation(line: 423, column: 15, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !506, line: 423, column: 15)
!2156 = distinct !DILexicalBlock(scope: !2152, file: !506, line: 423, column: 15)
!2157 = !DILocation(line: 423, column: 15, scope: !2156)
!2158 = !DILocation(line: 423, column: 15, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !506, line: 423, column: 15)
!2160 = distinct !DILexicalBlock(scope: !2152, file: !506, line: 423, column: 15)
!2161 = !DILocation(line: 423, column: 15, scope: !2160)
!2162 = !DILocation(line: 423, column: 15, scope: !2152)
!2163 = !DILocation(line: 423, column: 15, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !506, line: 423, column: 15)
!2165 = distinct !DILexicalBlock(scope: !2144, file: !506, line: 423, column: 15)
!2166 = !DILocation(line: 423, column: 15, scope: !2165)
!2167 = !DILocation(line: 431, column: 19, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2145, file: !506, line: 430, column: 19)
!2169 = !DILocation(line: 431, column: 24, scope: !2168)
!2170 = !DILocation(line: 431, column: 28, scope: !2168)
!2171 = !DILocation(line: 431, column: 38, scope: !2168)
!2172 = !DILocation(line: 431, column: 48, scope: !2168)
!2173 = !DILocation(line: 431, column: 59, scope: !2168)
!2174 = !DILocation(line: 433, column: 19, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !506, line: 433, column: 19)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !506, line: 433, column: 19)
!2177 = distinct !DILexicalBlock(scope: !2168, file: !506, line: 432, column: 17)
!2178 = !DILocation(line: 433, column: 19, scope: !2176)
!2179 = !DILocation(line: 434, column: 19, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !506, line: 434, column: 19)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !506, line: 434, column: 19)
!2182 = !DILocation(line: 434, column: 19, scope: !2181)
!2183 = !DILocation(line: 435, column: 17, scope: !2177)
!2184 = !DILocation(line: 442, column: 20, scope: !2146)
!2185 = !DILocation(line: 447, column: 11, scope: !1994)
!2186 = !DILocation(line: 450, column: 19, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !1994, file: !506, line: 448, column: 13)
!2188 = !DILocation(line: 456, column: 19, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2187, file: !506, line: 455, column: 19)
!2190 = !DILocation(line: 456, column: 24, scope: !2189)
!2191 = !DILocation(line: 456, column: 28, scope: !2189)
!2192 = !DILocation(line: 456, column: 38, scope: !2189)
!2193 = !DILocation(line: 456, column: 47, scope: !2189)
!2194 = !DILocation(line: 456, column: 41, scope: !2189)
!2195 = !DILocation(line: 456, column: 52, scope: !2189)
!2196 = !DILocation(line: 455, column: 19, scope: !2187)
!2197 = !DILocation(line: 457, column: 25, scope: !2189)
!2198 = !DILocation(line: 457, column: 17, scope: !2189)
!2199 = !DILocation(line: 464, column: 25, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2189, file: !506, line: 458, column: 19)
!2201 = !DILocation(line: 468, column: 21, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !506, line: 468, column: 21)
!2203 = distinct !DILexicalBlock(scope: !2200, file: !506, line: 468, column: 21)
!2204 = !DILocation(line: 468, column: 21, scope: !2203)
!2205 = !DILocation(line: 469, column: 21, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !506, line: 469, column: 21)
!2207 = distinct !DILexicalBlock(scope: !2200, file: !506, line: 469, column: 21)
!2208 = !DILocation(line: 469, column: 21, scope: !2207)
!2209 = !DILocation(line: 470, column: 21, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !506, line: 470, column: 21)
!2211 = distinct !DILexicalBlock(scope: !2200, file: !506, line: 470, column: 21)
!2212 = !DILocation(line: 470, column: 21, scope: !2211)
!2213 = !DILocation(line: 471, column: 21, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !506, line: 471, column: 21)
!2215 = distinct !DILexicalBlock(scope: !2200, file: !506, line: 471, column: 21)
!2216 = !DILocation(line: 471, column: 21, scope: !2215)
!2217 = !DILocation(line: 472, column: 21, scope: !2200)
!2218 = !DILocation(line: 482, column: 33, scope: !2017)
!2219 = !DILocation(line: 483, column: 33, scope: !2017)
!2220 = !DILocation(line: 485, column: 33, scope: !2017)
!2221 = !DILocation(line: 486, column: 33, scope: !2017)
!2222 = !DILocation(line: 487, column: 33, scope: !2017)
!2223 = !DILocation(line: 490, column: 17, scope: !2017)
!2224 = !DILocation(line: 492, column: 21, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !506, line: 491, column: 15)
!2226 = distinct !DILexicalBlock(scope: !2017, file: !506, line: 490, column: 17)
!2227 = !DILocation(line: 499, column: 35, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2017, file: !506, line: 499, column: 17)
!2229 = !DILocation(line: 0, scope: !2017)
!2230 = !DILocation(line: 502, column: 11, scope: !2017)
!2231 = !DILocation(line: 504, column: 17, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2017, file: !506, line: 503, column: 17)
!2233 = !DILocation(line: 507, column: 11, scope: !2017)
!2234 = !DILocation(line: 508, column: 17, scope: !2017)
!2235 = !DILocation(line: 517, column: 15, scope: !1994)
!2236 = !DILocation(line: 517, column: 40, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !1994, file: !506, line: 517, column: 15)
!2238 = !DILocation(line: 517, column: 47, scope: !2237)
!2239 = !DILocation(line: 517, column: 18, scope: !2237)
!2240 = !DILocation(line: 521, column: 17, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !1994, file: !506, line: 521, column: 15)
!2242 = !DILocation(line: 521, column: 15, scope: !1994)
!2243 = !DILocation(line: 525, column: 11, scope: !1994)
!2244 = !DILocation(line: 537, column: 15, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !1994, file: !506, line: 536, column: 15)
!2246 = !DILocation(line: 536, column: 15, scope: !1994)
!2247 = !DILocation(line: 544, column: 15, scope: !1994)
!2248 = !DILocation(line: 546, column: 19, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !506, line: 545, column: 13)
!2250 = distinct !DILexicalBlock(scope: !1994, file: !506, line: 544, column: 15)
!2251 = !DILocation(line: 549, column: 19, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2249, file: !506, line: 549, column: 19)
!2253 = !DILocation(line: 549, column: 30, scope: !2252)
!2254 = !DILocation(line: 558, column: 15, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !506, line: 558, column: 15)
!2256 = distinct !DILexicalBlock(scope: !2249, file: !506, line: 558, column: 15)
!2257 = !DILocation(line: 558, column: 15, scope: !2256)
!2258 = !DILocation(line: 559, column: 15, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !506, line: 559, column: 15)
!2260 = distinct !DILexicalBlock(scope: !2249, file: !506, line: 559, column: 15)
!2261 = !DILocation(line: 559, column: 15, scope: !2260)
!2262 = !DILocation(line: 560, column: 15, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !506, line: 560, column: 15)
!2264 = distinct !DILexicalBlock(scope: !2249, file: !506, line: 560, column: 15)
!2265 = !DILocation(line: 560, column: 15, scope: !2264)
!2266 = !DILocation(line: 562, column: 13, scope: !2249)
!2267 = !DILocation(line: 602, column: 17, scope: !1993)
!2268 = !DILocation(line: 0, scope: !1993)
!2269 = !DILocation(line: 605, column: 29, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !1998, file: !506, line: 603, column: 15)
!2271 = !DILocation(line: 605, column: 41, scope: !2270)
!2272 = !DILocation(line: 606, column: 15, scope: !2270)
!2273 = !DILocation(line: 609, column: 17, scope: !1997)
!2274 = !DILocation(line: 609, column: 27, scope: !1997)
!2275 = !DILocation(line: 0, scope: !2049, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 609, column: 32, scope: !1997)
!2277 = !DILocation(line: 0, scope: !2057, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 1137, column: 3, scope: !2049, inlinedAt: !2276)
!2279 = !DILocation(line: 59, column: 10, scope: !2057, inlinedAt: !2278)
!2280 = !DILocation(line: 613, column: 29, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !1997, file: !506, line: 613, column: 21)
!2282 = !DILocation(line: 613, column: 21, scope: !1997)
!2283 = !DILocation(line: 614, column: 29, scope: !2281)
!2284 = !DILocation(line: 614, column: 19, scope: !2281)
!2285 = !DILocation(line: 618, column: 21, scope: !2000)
!2286 = !DILocation(line: 620, column: 54, scope: !2000)
!2287 = !DILocation(line: 0, scope: !2000)
!2288 = !DILocation(line: 619, column: 36, scope: !2000)
!2289 = !DILocation(line: 621, column: 25, scope: !2000)
!2290 = !DILocation(line: 631, column: 38, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2009, file: !506, line: 629, column: 23)
!2292 = !DILocation(line: 631, column: 48, scope: !2291)
!2293 = !DILocation(line: 626, column: 25, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2010, file: !506, line: 624, column: 23)
!2295 = !DILocation(line: 631, column: 51, scope: !2291)
!2296 = !DILocation(line: 631, column: 25, scope: !2291)
!2297 = !DILocation(line: 632, column: 28, scope: !2291)
!2298 = !DILocation(line: 631, column: 34, scope: !2291)
!2299 = distinct !{!2299, !2296, !2297, !921}
!2300 = !DILocation(line: 646, column: 29, scope: !2007)
!2301 = !DILocation(line: 0, scope: !2005)
!2302 = !DILocation(line: 649, column: 49, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2005, file: !506, line: 648, column: 29)
!2304 = !DILocation(line: 649, column: 39, scope: !2303)
!2305 = !DILocation(line: 649, column: 31, scope: !2303)
!2306 = !DILocation(line: 648, column: 60, scope: !2303)
!2307 = !DILocation(line: 648, column: 50, scope: !2303)
!2308 = !DILocation(line: 648, column: 29, scope: !2005)
!2309 = distinct !{!2309, !2308, !2310, !921}
!2310 = !DILocation(line: 654, column: 33, scope: !2005)
!2311 = !DILocation(line: 657, column: 43, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2008, file: !506, line: 657, column: 29)
!2313 = !DILocalVariable(name: "wc", arg: 1, scope: !2314, file: !2315, line: 865, type: !2318)
!2314 = distinct !DISubprogram(name: "c32isprint", scope: !2315, file: !2315, line: 865, type: !2316, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2320)
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
!2325 = !DILocation(line: 664, column: 23, scope: !2000)
!2326 = !DILocation(line: 665, column: 19, scope: !2001)
!2327 = !DILocation(line: 666, column: 15, scope: !1998)
!2328 = !DILocation(line: 753, column: 2, scope: !1954)
!2329 = !DILocation(line: 756, column: 51, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !1954, file: !506, line: 756, column: 7)
!2331 = !DILocation(line: 0, scope: !1998)
!2332 = !DILocation(line: 670, column: 19, scope: !2014)
!2333 = !DILocation(line: 670, column: 23, scope: !2014)
!2334 = !DILocation(line: 674, column: 33, scope: !2013)
!2335 = !DILocation(line: 0, scope: !2013)
!2336 = !DILocation(line: 676, column: 17, scope: !2013)
!2337 = !DILocation(line: 398, column: 12, scope: !1987)
!2338 = !DILocation(line: 678, column: 43, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !506, line: 678, column: 25)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !506, line: 677, column: 19)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !506, line: 676, column: 17)
!2342 = distinct !DILexicalBlock(scope: !2013, file: !506, line: 676, column: 17)
!2343 = !DILocation(line: 680, column: 25, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !506, line: 680, column: 25)
!2345 = distinct !DILexicalBlock(scope: !2339, file: !506, line: 679, column: 23)
!2346 = !DILocation(line: 680, column: 25, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2344, file: !506, line: 680, column: 25)
!2348 = !DILocation(line: 680, column: 25, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !506, line: 680, column: 25)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !506, line: 680, column: 25)
!2351 = distinct !DILexicalBlock(scope: !2347, file: !506, line: 680, column: 25)
!2352 = !DILocation(line: 680, column: 25, scope: !2350)
!2353 = !DILocation(line: 680, column: 25, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !506, line: 680, column: 25)
!2355 = distinct !DILexicalBlock(scope: !2351, file: !506, line: 680, column: 25)
!2356 = !DILocation(line: 680, column: 25, scope: !2355)
!2357 = !DILocation(line: 680, column: 25, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !506, line: 680, column: 25)
!2359 = distinct !DILexicalBlock(scope: !2351, file: !506, line: 680, column: 25)
!2360 = !DILocation(line: 680, column: 25, scope: !2359)
!2361 = !DILocation(line: 680, column: 25, scope: !2351)
!2362 = !DILocation(line: 680, column: 25, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !506, line: 680, column: 25)
!2364 = distinct !DILexicalBlock(scope: !2344, file: !506, line: 680, column: 25)
!2365 = !DILocation(line: 680, column: 25, scope: !2364)
!2366 = !DILocation(line: 681, column: 25, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !506, line: 681, column: 25)
!2368 = distinct !DILexicalBlock(scope: !2345, file: !506, line: 681, column: 25)
!2369 = !DILocation(line: 681, column: 25, scope: !2368)
!2370 = !DILocation(line: 682, column: 25, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !506, line: 682, column: 25)
!2372 = distinct !DILexicalBlock(scope: !2345, file: !506, line: 682, column: 25)
!2373 = !DILocation(line: 682, column: 25, scope: !2372)
!2374 = !DILocation(line: 683, column: 38, scope: !2345)
!2375 = !DILocation(line: 683, column: 33, scope: !2345)
!2376 = !DILocation(line: 684, column: 23, scope: !2345)
!2377 = !DILocation(line: 685, column: 30, scope: !2339)
!2378 = !DILocation(line: 687, column: 25, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !506, line: 687, column: 25)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !506, line: 687, column: 25)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !506, line: 686, column: 23)
!2382 = distinct !DILexicalBlock(scope: !2339, file: !506, line: 685, column: 30)
!2383 = !DILocation(line: 687, column: 25, scope: !2380)
!2384 = !DILocation(line: 689, column: 23, scope: !2381)
!2385 = !DILocation(line: 690, column: 35, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2340, file: !506, line: 690, column: 25)
!2387 = !DILocation(line: 690, column: 30, scope: !2386)
!2388 = !DILocation(line: 690, column: 25, scope: !2340)
!2389 = !DILocation(line: 692, column: 21, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !506, line: 692, column: 21)
!2391 = distinct !DILexicalBlock(scope: !2340, file: !506, line: 692, column: 21)
!2392 = !DILocation(line: 692, column: 21, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !506, line: 692, column: 21)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !506, line: 692, column: 21)
!2395 = distinct !DILexicalBlock(scope: !2390, file: !506, line: 692, column: 21)
!2396 = !DILocation(line: 692, column: 21, scope: !2394)
!2397 = !DILocation(line: 692, column: 21, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !506, line: 692, column: 21)
!2399 = distinct !DILexicalBlock(scope: !2395, file: !506, line: 692, column: 21)
!2400 = !DILocation(line: 692, column: 21, scope: !2399)
!2401 = !DILocation(line: 692, column: 21, scope: !2395)
!2402 = !DILocation(line: 0, scope: !2340)
!2403 = !DILocation(line: 693, column: 21, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !506, line: 693, column: 21)
!2405 = distinct !DILexicalBlock(scope: !2340, file: !506, line: 693, column: 21)
!2406 = !DILocation(line: 693, column: 21, scope: !2405)
!2407 = !DILocation(line: 694, column: 25, scope: !2340)
!2408 = !DILocation(line: 676, column: 17, scope: !2341)
!2409 = distinct !{!2409, !2410, !2411}
!2410 = !DILocation(line: 676, column: 17, scope: !2342)
!2411 = !DILocation(line: 695, column: 19, scope: !2342)
!2412 = !DILocation(line: 409, column: 30, scope: !2122)
!2413 = !DILocation(line: 702, column: 34, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !1987, file: !506, line: 702, column: 11)
!2415 = !DILocation(line: 704, column: 14, scope: !2414)
!2416 = !DILocation(line: 705, column: 14, scope: !2414)
!2417 = !DILocation(line: 705, column: 35, scope: !2414)
!2418 = !DILocation(line: 705, column: 17, scope: !2414)
!2419 = !DILocation(line: 705, column: 47, scope: !2414)
!2420 = !DILocation(line: 705, column: 65, scope: !2414)
!2421 = !DILocation(line: 706, column: 11, scope: !2414)
!2422 = !DILocation(line: 702, column: 11, scope: !1987)
!2423 = !DILocation(line: 395, column: 15, scope: !1985)
!2424 = !DILocation(line: 709, column: 5, scope: !1987)
!2425 = !DILocation(line: 710, column: 7, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !1987, file: !506, line: 710, column: 7)
!2427 = !DILocation(line: 710, column: 7, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2426, file: !506, line: 710, column: 7)
!2429 = !DILocation(line: 710, column: 7, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !506, line: 710, column: 7)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !506, line: 710, column: 7)
!2432 = distinct !DILexicalBlock(scope: !2428, file: !506, line: 710, column: 7)
!2433 = !DILocation(line: 710, column: 7, scope: !2431)
!2434 = !DILocation(line: 710, column: 7, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !506, line: 710, column: 7)
!2436 = distinct !DILexicalBlock(scope: !2432, file: !506, line: 710, column: 7)
!2437 = !DILocation(line: 710, column: 7, scope: !2436)
!2438 = !DILocation(line: 710, column: 7, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !506, line: 710, column: 7)
!2440 = distinct !DILexicalBlock(scope: !2432, file: !506, line: 710, column: 7)
!2441 = !DILocation(line: 710, column: 7, scope: !2440)
!2442 = !DILocation(line: 710, column: 7, scope: !2432)
!2443 = !DILocation(line: 710, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !506, line: 710, column: 7)
!2445 = distinct !DILexicalBlock(scope: !2426, file: !506, line: 710, column: 7)
!2446 = !DILocation(line: 710, column: 7, scope: !2445)
!2447 = !DILocation(line: 712, column: 5, scope: !1987)
!2448 = !DILocation(line: 713, column: 7, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !506, line: 713, column: 7)
!2450 = distinct !DILexicalBlock(scope: !1987, file: !506, line: 713, column: 7)
!2451 = !DILocation(line: 417, column: 21, scope: !1987)
!2452 = !DILocation(line: 713, column: 7, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !506, line: 713, column: 7)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !506, line: 713, column: 7)
!2455 = distinct !DILexicalBlock(scope: !2449, file: !506, line: 713, column: 7)
!2456 = !DILocation(line: 713, column: 7, scope: !2454)
!2457 = !DILocation(line: 713, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !506, line: 713, column: 7)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !506, line: 713, column: 7)
!2460 = !DILocation(line: 713, column: 7, scope: !2459)
!2461 = !DILocation(line: 713, column: 7, scope: !2455)
!2462 = !DILocation(line: 714, column: 7, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !506, line: 714, column: 7)
!2464 = distinct !DILexicalBlock(scope: !1987, file: !506, line: 714, column: 7)
!2465 = !DILocation(line: 714, column: 7, scope: !2464)
!2466 = !DILocation(line: 716, column: 11, scope: !1987)
!2467 = !DILocation(line: 718, column: 5, scope: !1988)
!2468 = !DILocation(line: 395, column: 82, scope: !1988)
!2469 = !DILocation(line: 395, column: 3, scope: !1988)
!2470 = distinct !{!2470, !2118, !2471, !921}
!2471 = !DILocation(line: 718, column: 5, scope: !1985)
!2472 = !DILocation(line: 720, column: 11, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !1954, file: !506, line: 720, column: 7)
!2474 = !DILocation(line: 720, column: 16, scope: !2473)
!2475 = !DILocation(line: 728, column: 51, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !1954, file: !506, line: 728, column: 7)
!2477 = !DILocation(line: 731, column: 11, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2476, file: !506, line: 730, column: 5)
!2479 = !DILocation(line: 732, column: 16, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2478, file: !506, line: 731, column: 11)
!2481 = !DILocation(line: 732, column: 9, scope: !2480)
!2482 = !DILocation(line: 736, column: 18, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2480, file: !506, line: 736, column: 16)
!2484 = !DILocation(line: 736, column: 29, scope: !2483)
!2485 = !DILocation(line: 745, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !1954, file: !506, line: 745, column: 7)
!2487 = !DILocation(line: 745, column: 20, scope: !2486)
!2488 = !DILocation(line: 746, column: 12, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !506, line: 746, column: 5)
!2490 = distinct !DILexicalBlock(scope: !2486, file: !506, line: 746, column: 5)
!2491 = !DILocation(line: 746, column: 5, scope: !2490)
!2492 = !DILocation(line: 747, column: 7, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !506, line: 747, column: 7)
!2494 = distinct !DILexicalBlock(scope: !2489, file: !506, line: 747, column: 7)
!2495 = !DILocation(line: 747, column: 7, scope: !2494)
!2496 = !DILocation(line: 746, column: 39, scope: !2489)
!2497 = distinct !{!2497, !2491, !2498, !921}
!2498 = !DILocation(line: 747, column: 7, scope: !2490)
!2499 = !DILocation(line: 749, column: 11, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !1954, file: !506, line: 749, column: 7)
!2501 = !DILocation(line: 749, column: 7, scope: !1954)
!2502 = !DILocation(line: 750, column: 5, scope: !2500)
!2503 = !DILocation(line: 750, column: 17, scope: !2500)
!2504 = !DILocation(line: 756, column: 21, scope: !2330)
!2505 = !DILocation(line: 760, column: 42, scope: !1954)
!2506 = !DILocation(line: 758, column: 10, scope: !1954)
!2507 = !DILocation(line: 758, column: 3, scope: !1954)
!2508 = !DILocation(line: 762, column: 1, scope: !1954)
!2509 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !995, file: !995, line: 98, type: !2510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!119}
!2512 = !DISubprogram(name: "strlen", scope: !991, file: !991, line: 407, type: !2513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!121, !122}
!2515 = !DISubprogram(name: "iswprint", scope: !2516, file: !2516, line: 120, type: !2316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2516 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2517 = distinct !DISubprogram(name: "quotearg_alloc", scope: !506, file: !506, line: 788, type: !2518, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!116, !122, !119, !1847}
!2520 = !{!2521, !2522, !2523}
!2521 = !DILocalVariable(name: "arg", arg: 1, scope: !2517, file: !506, line: 788, type: !122)
!2522 = !DILocalVariable(name: "argsize", arg: 2, scope: !2517, file: !506, line: 788, type: !119)
!2523 = !DILocalVariable(name: "o", arg: 3, scope: !2517, file: !506, line: 789, type: !1847)
!2524 = !DILocation(line: 0, scope: !2517)
!2525 = !DILocalVariable(name: "arg", arg: 1, scope: !2526, file: !506, line: 801, type: !122)
!2526 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !506, file: !506, line: 801, type: !2527, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!116, !122, !119, !744, !1847}
!2529 = !{!2525, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537}
!2530 = !DILocalVariable(name: "argsize", arg: 2, scope: !2526, file: !506, line: 801, type: !119)
!2531 = !DILocalVariable(name: "size", arg: 3, scope: !2526, file: !506, line: 801, type: !744)
!2532 = !DILocalVariable(name: "o", arg: 4, scope: !2526, file: !506, line: 802, type: !1847)
!2533 = !DILocalVariable(name: "p", scope: !2526, file: !506, line: 804, type: !1847)
!2534 = !DILocalVariable(name: "saved_errno", scope: !2526, file: !506, line: 805, type: !77)
!2535 = !DILocalVariable(name: "flags", scope: !2526, file: !506, line: 807, type: !77)
!2536 = !DILocalVariable(name: "bufsize", scope: !2526, file: !506, line: 808, type: !119)
!2537 = !DILocalVariable(name: "buf", scope: !2526, file: !506, line: 812, type: !116)
!2538 = !DILocation(line: 0, scope: !2526, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 791, column: 10, scope: !2517)
!2540 = !DILocation(line: 804, column: 37, scope: !2526, inlinedAt: !2539)
!2541 = !DILocation(line: 805, column: 21, scope: !2526, inlinedAt: !2539)
!2542 = !DILocation(line: 807, column: 18, scope: !2526, inlinedAt: !2539)
!2543 = !DILocation(line: 807, column: 24, scope: !2526, inlinedAt: !2539)
!2544 = !DILocation(line: 808, column: 72, scope: !2526, inlinedAt: !2539)
!2545 = !DILocation(line: 809, column: 56, scope: !2526, inlinedAt: !2539)
!2546 = !DILocation(line: 810, column: 49, scope: !2526, inlinedAt: !2539)
!2547 = !DILocation(line: 811, column: 49, scope: !2526, inlinedAt: !2539)
!2548 = !DILocation(line: 808, column: 20, scope: !2526, inlinedAt: !2539)
!2549 = !DILocation(line: 811, column: 62, scope: !2526, inlinedAt: !2539)
!2550 = !DILocation(line: 812, column: 15, scope: !2526, inlinedAt: !2539)
!2551 = !DILocation(line: 813, column: 60, scope: !2526, inlinedAt: !2539)
!2552 = !DILocation(line: 815, column: 32, scope: !2526, inlinedAt: !2539)
!2553 = !DILocation(line: 815, column: 47, scope: !2526, inlinedAt: !2539)
!2554 = !DILocation(line: 813, column: 3, scope: !2526, inlinedAt: !2539)
!2555 = !DILocation(line: 816, column: 9, scope: !2526, inlinedAt: !2539)
!2556 = !DILocation(line: 791, column: 3, scope: !2517)
!2557 = !DILocation(line: 0, scope: !2526)
!2558 = !DILocation(line: 804, column: 37, scope: !2526)
!2559 = !DILocation(line: 805, column: 21, scope: !2526)
!2560 = !DILocation(line: 807, column: 18, scope: !2526)
!2561 = !DILocation(line: 807, column: 27, scope: !2526)
!2562 = !DILocation(line: 807, column: 24, scope: !2526)
!2563 = !DILocation(line: 808, column: 72, scope: !2526)
!2564 = !DILocation(line: 809, column: 56, scope: !2526)
!2565 = !DILocation(line: 810, column: 49, scope: !2526)
!2566 = !DILocation(line: 811, column: 49, scope: !2526)
!2567 = !DILocation(line: 808, column: 20, scope: !2526)
!2568 = !DILocation(line: 811, column: 62, scope: !2526)
!2569 = !DILocation(line: 812, column: 15, scope: !2526)
!2570 = !DILocation(line: 813, column: 60, scope: !2526)
!2571 = !DILocation(line: 815, column: 32, scope: !2526)
!2572 = !DILocation(line: 815, column: 47, scope: !2526)
!2573 = !DILocation(line: 813, column: 3, scope: !2526)
!2574 = !DILocation(line: 816, column: 9, scope: !2526)
!2575 = !DILocation(line: 817, column: 7, scope: !2526)
!2576 = !DILocation(line: 818, column: 11, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2526, file: !506, line: 817, column: 7)
!2578 = !{!1149, !1149, i64 0}
!2579 = !DILocation(line: 818, column: 5, scope: !2577)
!2580 = !DILocation(line: 819, column: 3, scope: !2526)
!2581 = distinct !DISubprogram(name: "quotearg_free", scope: !506, file: !506, line: 837, type: !461, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2582)
!2582 = !{!2583, !2584}
!2583 = !DILocalVariable(name: "sv", scope: !2581, file: !506, line: 839, type: !593)
!2584 = !DILocalVariable(name: "i", scope: !2585, file: !506, line: 840, type: !77)
!2585 = distinct !DILexicalBlock(scope: !2581, file: !506, line: 840, column: 3)
!2586 = !DILocation(line: 839, column: 24, scope: !2581)
!2587 = !DILocation(line: 0, scope: !2581)
!2588 = !DILocation(line: 0, scope: !2585)
!2589 = !DILocation(line: 840, column: 21, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2585, file: !506, line: 840, column: 3)
!2591 = !DILocation(line: 840, column: 3, scope: !2585)
!2592 = !DILocation(line: 842, column: 13, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2581, file: !506, line: 842, column: 7)
!2594 = !{!2595, !812, i64 8}
!2595 = !{!"slotvec", !1149, i64 0, !812, i64 8}
!2596 = !DILocation(line: 842, column: 17, scope: !2593)
!2597 = !DILocation(line: 842, column: 7, scope: !2581)
!2598 = !DILocation(line: 841, column: 17, scope: !2590)
!2599 = !DILocation(line: 841, column: 5, scope: !2590)
!2600 = !DILocation(line: 840, column: 32, scope: !2590)
!2601 = distinct !{!2601, !2591, !2602, !921}
!2602 = !DILocation(line: 841, column: 20, scope: !2585)
!2603 = !DILocation(line: 844, column: 7, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2593, file: !506, line: 843, column: 5)
!2605 = !DILocation(line: 845, column: 21, scope: !2604)
!2606 = !{!2595, !1149, i64 0}
!2607 = !DILocation(line: 846, column: 20, scope: !2604)
!2608 = !DILocation(line: 847, column: 5, scope: !2604)
!2609 = !DILocation(line: 848, column: 10, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2581, file: !506, line: 848, column: 7)
!2611 = !DILocation(line: 848, column: 7, scope: !2581)
!2612 = !DILocation(line: 850, column: 7, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2610, file: !506, line: 849, column: 5)
!2614 = !DILocation(line: 851, column: 15, scope: !2613)
!2615 = !DILocation(line: 852, column: 5, scope: !2613)
!2616 = !DILocation(line: 853, column: 10, scope: !2581)
!2617 = !DILocation(line: 854, column: 1, scope: !2581)
!2618 = distinct !DISubprogram(name: "quotearg_n", scope: !506, file: !506, line: 919, type: !988, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2619)
!2619 = !{!2620, !2621}
!2620 = !DILocalVariable(name: "n", arg: 1, scope: !2618, file: !506, line: 919, type: !77)
!2621 = !DILocalVariable(name: "arg", arg: 2, scope: !2618, file: !506, line: 919, type: !122)
!2622 = !DILocation(line: 0, scope: !2618)
!2623 = !DILocation(line: 921, column: 10, scope: !2618)
!2624 = !DILocation(line: 921, column: 3, scope: !2618)
!2625 = distinct !DISubprogram(name: "quotearg_n_options", scope: !506, file: !506, line: 866, type: !2626, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!116, !77, !122, !119, !1847}
!2628 = !{!2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2639, !2640, !2642, !2643, !2644}
!2629 = !DILocalVariable(name: "n", arg: 1, scope: !2625, file: !506, line: 866, type: !77)
!2630 = !DILocalVariable(name: "arg", arg: 2, scope: !2625, file: !506, line: 866, type: !122)
!2631 = !DILocalVariable(name: "argsize", arg: 3, scope: !2625, file: !506, line: 866, type: !119)
!2632 = !DILocalVariable(name: "options", arg: 4, scope: !2625, file: !506, line: 867, type: !1847)
!2633 = !DILocalVariable(name: "saved_errno", scope: !2625, file: !506, line: 869, type: !77)
!2634 = !DILocalVariable(name: "sv", scope: !2625, file: !506, line: 871, type: !593)
!2635 = !DILocalVariable(name: "nslots_max", scope: !2625, file: !506, line: 873, type: !77)
!2636 = !DILocalVariable(name: "preallocated", scope: !2637, file: !506, line: 879, type: !152)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !506, line: 878, column: 5)
!2638 = distinct !DILexicalBlock(scope: !2625, file: !506, line: 877, column: 7)
!2639 = !DILocalVariable(name: "new_nslots", scope: !2637, file: !506, line: 880, type: !757)
!2640 = !DILocalVariable(name: "size", scope: !2641, file: !506, line: 891, type: !119)
!2641 = distinct !DILexicalBlock(scope: !2625, file: !506, line: 890, column: 3)
!2642 = !DILocalVariable(name: "val", scope: !2641, file: !506, line: 892, type: !116)
!2643 = !DILocalVariable(name: "flags", scope: !2641, file: !506, line: 894, type: !77)
!2644 = !DILocalVariable(name: "qsize", scope: !2641, file: !506, line: 895, type: !119)
!2645 = !DILocation(line: 0, scope: !2625)
!2646 = !DILocation(line: 869, column: 21, scope: !2625)
!2647 = !DILocation(line: 871, column: 24, scope: !2625)
!2648 = !DILocation(line: 874, column: 17, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2625, file: !506, line: 874, column: 7)
!2650 = !DILocation(line: 875, column: 5, scope: !2649)
!2651 = !DILocation(line: 877, column: 7, scope: !2638)
!2652 = !DILocation(line: 877, column: 14, scope: !2638)
!2653 = !DILocation(line: 877, column: 7, scope: !2625)
!2654 = !DILocation(line: 879, column: 31, scope: !2637)
!2655 = !DILocation(line: 0, scope: !2637)
!2656 = !DILocation(line: 880, column: 7, scope: !2637)
!2657 = !DILocation(line: 880, column: 26, scope: !2637)
!2658 = !DILocation(line: 880, column: 13, scope: !2637)
!2659 = !DILocation(line: 882, column: 31, scope: !2637)
!2660 = !DILocation(line: 883, column: 33, scope: !2637)
!2661 = !DILocation(line: 883, column: 42, scope: !2637)
!2662 = !DILocation(line: 883, column: 31, scope: !2637)
!2663 = !DILocation(line: 882, column: 22, scope: !2637)
!2664 = !DILocation(line: 882, column: 15, scope: !2637)
!2665 = !DILocation(line: 884, column: 11, scope: !2637)
!2666 = !DILocation(line: 885, column: 15, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2637, file: !506, line: 884, column: 11)
!2668 = !{i64 0, i64 8, !2578, i64 8, i64 8, !811}
!2669 = !DILocation(line: 885, column: 9, scope: !2667)
!2670 = !DILocation(line: 886, column: 20, scope: !2637)
!2671 = !DILocation(line: 886, column: 18, scope: !2637)
!2672 = !DILocation(line: 886, column: 32, scope: !2637)
!2673 = !DILocation(line: 886, column: 43, scope: !2637)
!2674 = !DILocation(line: 886, column: 53, scope: !2637)
!2675 = !DILocation(line: 0, scope: !2057, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 886, column: 7, scope: !2637)
!2677 = !DILocation(line: 59, column: 10, scope: !2057, inlinedAt: !2676)
!2678 = !DILocation(line: 887, column: 16, scope: !2637)
!2679 = !DILocation(line: 887, column: 14, scope: !2637)
!2680 = !DILocation(line: 888, column: 5, scope: !2638)
!2681 = !DILocation(line: 888, column: 5, scope: !2637)
!2682 = !DILocation(line: 891, column: 19, scope: !2641)
!2683 = !DILocation(line: 891, column: 25, scope: !2641)
!2684 = !DILocation(line: 0, scope: !2641)
!2685 = !DILocation(line: 892, column: 23, scope: !2641)
!2686 = !DILocation(line: 894, column: 26, scope: !2641)
!2687 = !DILocation(line: 894, column: 32, scope: !2641)
!2688 = !DILocation(line: 896, column: 55, scope: !2641)
!2689 = !DILocation(line: 897, column: 55, scope: !2641)
!2690 = !DILocation(line: 898, column: 55, scope: !2641)
!2691 = !DILocation(line: 899, column: 55, scope: !2641)
!2692 = !DILocation(line: 895, column: 20, scope: !2641)
!2693 = !DILocation(line: 901, column: 14, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2641, file: !506, line: 901, column: 9)
!2695 = !DILocation(line: 901, column: 9, scope: !2641)
!2696 = !DILocation(line: 903, column: 35, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2694, file: !506, line: 902, column: 7)
!2698 = !DILocation(line: 903, column: 20, scope: !2697)
!2699 = !DILocation(line: 904, column: 17, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2697, file: !506, line: 904, column: 13)
!2701 = !DILocation(line: 904, column: 13, scope: !2697)
!2702 = !DILocation(line: 905, column: 11, scope: !2700)
!2703 = !DILocation(line: 906, column: 27, scope: !2697)
!2704 = !DILocation(line: 906, column: 19, scope: !2697)
!2705 = !DILocation(line: 907, column: 69, scope: !2697)
!2706 = !DILocation(line: 909, column: 44, scope: !2697)
!2707 = !DILocation(line: 910, column: 44, scope: !2697)
!2708 = !DILocation(line: 907, column: 9, scope: !2697)
!2709 = !DILocation(line: 911, column: 7, scope: !2697)
!2710 = !DILocation(line: 913, column: 11, scope: !2641)
!2711 = !DILocation(line: 914, column: 5, scope: !2641)
!2712 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !506, file: !506, line: 925, type: !2713, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!116, !77, !122, !119}
!2715 = !{!2716, !2717, !2718}
!2716 = !DILocalVariable(name: "n", arg: 1, scope: !2712, file: !506, line: 925, type: !77)
!2717 = !DILocalVariable(name: "arg", arg: 2, scope: !2712, file: !506, line: 925, type: !122)
!2718 = !DILocalVariable(name: "argsize", arg: 3, scope: !2712, file: !506, line: 925, type: !119)
!2719 = !DILocation(line: 0, scope: !2712)
!2720 = !DILocation(line: 927, column: 10, scope: !2712)
!2721 = !DILocation(line: 927, column: 3, scope: !2712)
!2722 = distinct !DISubprogram(name: "quotearg", scope: !506, file: !506, line: 931, type: !997, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2723)
!2723 = !{!2724}
!2724 = !DILocalVariable(name: "arg", arg: 1, scope: !2722, file: !506, line: 931, type: !122)
!2725 = !DILocation(line: 0, scope: !2722)
!2726 = !DILocation(line: 0, scope: !2618, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 933, column: 10, scope: !2722)
!2728 = !DILocation(line: 921, column: 10, scope: !2618, inlinedAt: !2727)
!2729 = !DILocation(line: 933, column: 3, scope: !2722)
!2730 = distinct !DISubprogram(name: "quotearg_mem", scope: !506, file: !506, line: 937, type: !2731, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!116, !122, !119}
!2733 = !{!2734, !2735}
!2734 = !DILocalVariable(name: "arg", arg: 1, scope: !2730, file: !506, line: 937, type: !122)
!2735 = !DILocalVariable(name: "argsize", arg: 2, scope: !2730, file: !506, line: 937, type: !119)
!2736 = !DILocation(line: 0, scope: !2730)
!2737 = !DILocation(line: 0, scope: !2712, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 939, column: 10, scope: !2730)
!2739 = !DILocation(line: 927, column: 10, scope: !2712, inlinedAt: !2738)
!2740 = !DILocation(line: 939, column: 3, scope: !2730)
!2741 = distinct !DISubprogram(name: "quotearg_n_style", scope: !506, file: !506, line: 943, type: !2742, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!116, !77, !81, !122}
!2744 = !{!2745, !2746, !2747, !2748}
!2745 = !DILocalVariable(name: "n", arg: 1, scope: !2741, file: !506, line: 943, type: !77)
!2746 = !DILocalVariable(name: "s", arg: 2, scope: !2741, file: !506, line: 943, type: !81)
!2747 = !DILocalVariable(name: "arg", arg: 3, scope: !2741, file: !506, line: 943, type: !122)
!2748 = !DILocalVariable(name: "o", scope: !2741, file: !506, line: 945, type: !1848)
!2749 = !DILocation(line: 0, scope: !2741)
!2750 = !DILocation(line: 945, column: 3, scope: !2741)
!2751 = !DILocation(line: 945, column: 32, scope: !2741)
!2752 = !{!2753}
!2753 = distinct !{!2753, !2754, !"quoting_options_from_style: argument 0"}
!2754 = distinct !{!2754, !"quoting_options_from_style"}
!2755 = !DILocation(line: 945, column: 36, scope: !2741)
!2756 = !DILocalVariable(name: "style", arg: 1, scope: !2757, file: !506, line: 183, type: !81)
!2757 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !506, file: !506, line: 183, type: !2758, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!545, !81}
!2760 = !{!2756, !2761}
!2761 = !DILocalVariable(name: "o", scope: !2757, file: !506, line: 185, type: !545)
!2762 = !DILocation(line: 0, scope: !2757, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 945, column: 36, scope: !2741)
!2764 = !DILocation(line: 185, column: 26, scope: !2757, inlinedAt: !2763)
!2765 = !DILocation(line: 186, column: 13, scope: !2766, inlinedAt: !2763)
!2766 = distinct !DILexicalBlock(scope: !2757, file: !506, line: 186, column: 7)
!2767 = !DILocation(line: 186, column: 7, scope: !2757, inlinedAt: !2763)
!2768 = !DILocation(line: 187, column: 5, scope: !2766, inlinedAt: !2763)
!2769 = !DILocation(line: 188, column: 11, scope: !2757, inlinedAt: !2763)
!2770 = !DILocation(line: 946, column: 10, scope: !2741)
!2771 = !DILocation(line: 947, column: 1, scope: !2741)
!2772 = !DILocation(line: 946, column: 3, scope: !2741)
!2773 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !506, file: !506, line: 950, type: !2774, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2776)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!116, !77, !81, !122, !119}
!2776 = !{!2777, !2778, !2779, !2780, !2781}
!2777 = !DILocalVariable(name: "n", arg: 1, scope: !2773, file: !506, line: 950, type: !77)
!2778 = !DILocalVariable(name: "s", arg: 2, scope: !2773, file: !506, line: 950, type: !81)
!2779 = !DILocalVariable(name: "arg", arg: 3, scope: !2773, file: !506, line: 951, type: !122)
!2780 = !DILocalVariable(name: "argsize", arg: 4, scope: !2773, file: !506, line: 951, type: !119)
!2781 = !DILocalVariable(name: "o", scope: !2773, file: !506, line: 953, type: !1848)
!2782 = !DILocation(line: 0, scope: !2773)
!2783 = !DILocation(line: 953, column: 3, scope: !2773)
!2784 = !DILocation(line: 953, column: 32, scope: !2773)
!2785 = !{!2786}
!2786 = distinct !{!2786, !2787, !"quoting_options_from_style: argument 0"}
!2787 = distinct !{!2787, !"quoting_options_from_style"}
!2788 = !DILocation(line: 953, column: 36, scope: !2773)
!2789 = !DILocation(line: 0, scope: !2757, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 953, column: 36, scope: !2773)
!2791 = !DILocation(line: 185, column: 26, scope: !2757, inlinedAt: !2790)
!2792 = !DILocation(line: 186, column: 13, scope: !2766, inlinedAt: !2790)
!2793 = !DILocation(line: 186, column: 7, scope: !2757, inlinedAt: !2790)
!2794 = !DILocation(line: 187, column: 5, scope: !2766, inlinedAt: !2790)
!2795 = !DILocation(line: 188, column: 11, scope: !2757, inlinedAt: !2790)
!2796 = !DILocation(line: 954, column: 10, scope: !2773)
!2797 = !DILocation(line: 955, column: 1, scope: !2773)
!2798 = !DILocation(line: 954, column: 3, scope: !2773)
!2799 = distinct !DISubprogram(name: "quotearg_style", scope: !506, file: !506, line: 958, type: !2800, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!116, !81, !122}
!2802 = !{!2803, !2804}
!2803 = !DILocalVariable(name: "s", arg: 1, scope: !2799, file: !506, line: 958, type: !81)
!2804 = !DILocalVariable(name: "arg", arg: 2, scope: !2799, file: !506, line: 958, type: !122)
!2805 = !DILocation(line: 0, scope: !2799)
!2806 = !DILocation(line: 0, scope: !2741, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 960, column: 10, scope: !2799)
!2808 = !DILocation(line: 945, column: 3, scope: !2741, inlinedAt: !2807)
!2809 = !DILocation(line: 945, column: 32, scope: !2741, inlinedAt: !2807)
!2810 = !{!2811}
!2811 = distinct !{!2811, !2812, !"quoting_options_from_style: argument 0"}
!2812 = distinct !{!2812, !"quoting_options_from_style"}
!2813 = !DILocation(line: 945, column: 36, scope: !2741, inlinedAt: !2807)
!2814 = !DILocation(line: 0, scope: !2757, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 945, column: 36, scope: !2741, inlinedAt: !2807)
!2816 = !DILocation(line: 185, column: 26, scope: !2757, inlinedAt: !2815)
!2817 = !DILocation(line: 186, column: 13, scope: !2766, inlinedAt: !2815)
!2818 = !DILocation(line: 186, column: 7, scope: !2757, inlinedAt: !2815)
!2819 = !DILocation(line: 187, column: 5, scope: !2766, inlinedAt: !2815)
!2820 = !DILocation(line: 188, column: 11, scope: !2757, inlinedAt: !2815)
!2821 = !DILocation(line: 946, column: 10, scope: !2741, inlinedAt: !2807)
!2822 = !DILocation(line: 947, column: 1, scope: !2741, inlinedAt: !2807)
!2823 = !DILocation(line: 960, column: 3, scope: !2799)
!2824 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !506, file: !506, line: 964, type: !2825, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!116, !81, !122, !119}
!2827 = !{!2828, !2829, !2830}
!2828 = !DILocalVariable(name: "s", arg: 1, scope: !2824, file: !506, line: 964, type: !81)
!2829 = !DILocalVariable(name: "arg", arg: 2, scope: !2824, file: !506, line: 964, type: !122)
!2830 = !DILocalVariable(name: "argsize", arg: 3, scope: !2824, file: !506, line: 964, type: !119)
!2831 = !DILocation(line: 0, scope: !2824)
!2832 = !DILocation(line: 0, scope: !2773, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 966, column: 10, scope: !2824)
!2834 = !DILocation(line: 953, column: 3, scope: !2773, inlinedAt: !2833)
!2835 = !DILocation(line: 953, column: 32, scope: !2773, inlinedAt: !2833)
!2836 = !{!2837}
!2837 = distinct !{!2837, !2838, !"quoting_options_from_style: argument 0"}
!2838 = distinct !{!2838, !"quoting_options_from_style"}
!2839 = !DILocation(line: 953, column: 36, scope: !2773, inlinedAt: !2833)
!2840 = !DILocation(line: 0, scope: !2757, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 953, column: 36, scope: !2773, inlinedAt: !2833)
!2842 = !DILocation(line: 185, column: 26, scope: !2757, inlinedAt: !2841)
!2843 = !DILocation(line: 186, column: 13, scope: !2766, inlinedAt: !2841)
!2844 = !DILocation(line: 186, column: 7, scope: !2757, inlinedAt: !2841)
!2845 = !DILocation(line: 187, column: 5, scope: !2766, inlinedAt: !2841)
!2846 = !DILocation(line: 188, column: 11, scope: !2757, inlinedAt: !2841)
!2847 = !DILocation(line: 954, column: 10, scope: !2773, inlinedAt: !2833)
!2848 = !DILocation(line: 955, column: 1, scope: !2773, inlinedAt: !2833)
!2849 = !DILocation(line: 966, column: 3, scope: !2824)
!2850 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !506, file: !506, line: 970, type: !2851, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!116, !122, !119, !4}
!2853 = !{!2854, !2855, !2856, !2857}
!2854 = !DILocalVariable(name: "arg", arg: 1, scope: !2850, file: !506, line: 970, type: !122)
!2855 = !DILocalVariable(name: "argsize", arg: 2, scope: !2850, file: !506, line: 970, type: !119)
!2856 = !DILocalVariable(name: "ch", arg: 3, scope: !2850, file: !506, line: 970, type: !4)
!2857 = !DILocalVariable(name: "options", scope: !2850, file: !506, line: 972, type: !545)
!2858 = !DILocation(line: 0, scope: !2850)
!2859 = !DILocation(line: 972, column: 3, scope: !2850)
!2860 = !DILocation(line: 972, column: 26, scope: !2850)
!2861 = !DILocation(line: 973, column: 13, scope: !2850)
!2862 = !{i64 0, i64 4, !883, i64 4, i64 4, !874, i64 8, i64 32, !883, i64 40, i64 8, !811, i64 48, i64 8, !811}
!2863 = !DILocation(line: 0, scope: !1867, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 974, column: 3, scope: !2850)
!2865 = !DILocation(line: 147, column: 41, scope: !1867, inlinedAt: !2864)
!2866 = !DILocation(line: 147, column: 62, scope: !1867, inlinedAt: !2864)
!2867 = !DILocation(line: 147, column: 57, scope: !1867, inlinedAt: !2864)
!2868 = !DILocation(line: 148, column: 15, scope: !1867, inlinedAt: !2864)
!2869 = !DILocation(line: 149, column: 21, scope: !1867, inlinedAt: !2864)
!2870 = !DILocation(line: 149, column: 24, scope: !1867, inlinedAt: !2864)
!2871 = !DILocation(line: 150, column: 19, scope: !1867, inlinedAt: !2864)
!2872 = !DILocation(line: 150, column: 24, scope: !1867, inlinedAt: !2864)
!2873 = !DILocation(line: 150, column: 6, scope: !1867, inlinedAt: !2864)
!2874 = !DILocation(line: 975, column: 10, scope: !2850)
!2875 = !DILocation(line: 976, column: 1, scope: !2850)
!2876 = !DILocation(line: 975, column: 3, scope: !2850)
!2877 = distinct !DISubprogram(name: "quotearg_char", scope: !506, file: !506, line: 979, type: !2878, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!116, !122, !4}
!2880 = !{!2881, !2882}
!2881 = !DILocalVariable(name: "arg", arg: 1, scope: !2877, file: !506, line: 979, type: !122)
!2882 = !DILocalVariable(name: "ch", arg: 2, scope: !2877, file: !506, line: 979, type: !4)
!2883 = !DILocation(line: 0, scope: !2877)
!2884 = !DILocation(line: 0, scope: !2850, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 981, column: 10, scope: !2877)
!2886 = !DILocation(line: 972, column: 3, scope: !2850, inlinedAt: !2885)
!2887 = !DILocation(line: 972, column: 26, scope: !2850, inlinedAt: !2885)
!2888 = !DILocation(line: 973, column: 13, scope: !2850, inlinedAt: !2885)
!2889 = !DILocation(line: 0, scope: !1867, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 974, column: 3, scope: !2850, inlinedAt: !2885)
!2891 = !DILocation(line: 147, column: 41, scope: !1867, inlinedAt: !2890)
!2892 = !DILocation(line: 147, column: 62, scope: !1867, inlinedAt: !2890)
!2893 = !DILocation(line: 147, column: 57, scope: !1867, inlinedAt: !2890)
!2894 = !DILocation(line: 148, column: 15, scope: !1867, inlinedAt: !2890)
!2895 = !DILocation(line: 149, column: 21, scope: !1867, inlinedAt: !2890)
!2896 = !DILocation(line: 149, column: 24, scope: !1867, inlinedAt: !2890)
!2897 = !DILocation(line: 150, column: 19, scope: !1867, inlinedAt: !2890)
!2898 = !DILocation(line: 150, column: 24, scope: !1867, inlinedAt: !2890)
!2899 = !DILocation(line: 150, column: 6, scope: !1867, inlinedAt: !2890)
!2900 = !DILocation(line: 975, column: 10, scope: !2850, inlinedAt: !2885)
!2901 = !DILocation(line: 976, column: 1, scope: !2850, inlinedAt: !2885)
!2902 = !DILocation(line: 981, column: 3, scope: !2877)
!2903 = distinct !DISubprogram(name: "quotearg_colon", scope: !506, file: !506, line: 985, type: !997, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2904)
!2904 = !{!2905}
!2905 = !DILocalVariable(name: "arg", arg: 1, scope: !2903, file: !506, line: 985, type: !122)
!2906 = !DILocation(line: 0, scope: !2903)
!2907 = !DILocation(line: 0, scope: !2877, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 987, column: 10, scope: !2903)
!2909 = !DILocation(line: 0, scope: !2850, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 981, column: 10, scope: !2877, inlinedAt: !2908)
!2911 = !DILocation(line: 972, column: 3, scope: !2850, inlinedAt: !2910)
!2912 = !DILocation(line: 972, column: 26, scope: !2850, inlinedAt: !2910)
!2913 = !DILocation(line: 973, column: 13, scope: !2850, inlinedAt: !2910)
!2914 = !DILocation(line: 0, scope: !1867, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 974, column: 3, scope: !2850, inlinedAt: !2910)
!2916 = !DILocation(line: 147, column: 57, scope: !1867, inlinedAt: !2915)
!2917 = !DILocation(line: 149, column: 21, scope: !1867, inlinedAt: !2915)
!2918 = !DILocation(line: 150, column: 6, scope: !1867, inlinedAt: !2915)
!2919 = !DILocation(line: 975, column: 10, scope: !2850, inlinedAt: !2910)
!2920 = !DILocation(line: 976, column: 1, scope: !2850, inlinedAt: !2910)
!2921 = !DILocation(line: 987, column: 3, scope: !2903)
!2922 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !506, file: !506, line: 991, type: !2731, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2923)
!2923 = !{!2924, !2925}
!2924 = !DILocalVariable(name: "arg", arg: 1, scope: !2922, file: !506, line: 991, type: !122)
!2925 = !DILocalVariable(name: "argsize", arg: 2, scope: !2922, file: !506, line: 991, type: !119)
!2926 = !DILocation(line: 0, scope: !2922)
!2927 = !DILocation(line: 0, scope: !2850, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 993, column: 10, scope: !2922)
!2929 = !DILocation(line: 972, column: 3, scope: !2850, inlinedAt: !2928)
!2930 = !DILocation(line: 972, column: 26, scope: !2850, inlinedAt: !2928)
!2931 = !DILocation(line: 973, column: 13, scope: !2850, inlinedAt: !2928)
!2932 = !DILocation(line: 0, scope: !1867, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 974, column: 3, scope: !2850, inlinedAt: !2928)
!2934 = !DILocation(line: 147, column: 57, scope: !1867, inlinedAt: !2933)
!2935 = !DILocation(line: 149, column: 21, scope: !1867, inlinedAt: !2933)
!2936 = !DILocation(line: 150, column: 6, scope: !1867, inlinedAt: !2933)
!2937 = !DILocation(line: 975, column: 10, scope: !2850, inlinedAt: !2928)
!2938 = !DILocation(line: 976, column: 1, scope: !2850, inlinedAt: !2928)
!2939 = !DILocation(line: 993, column: 3, scope: !2922)
!2940 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !506, file: !506, line: 997, type: !2742, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2941)
!2941 = !{!2942, !2943, !2944, !2945}
!2942 = !DILocalVariable(name: "n", arg: 1, scope: !2940, file: !506, line: 997, type: !77)
!2943 = !DILocalVariable(name: "s", arg: 2, scope: !2940, file: !506, line: 997, type: !81)
!2944 = !DILocalVariable(name: "arg", arg: 3, scope: !2940, file: !506, line: 997, type: !122)
!2945 = !DILocalVariable(name: "options", scope: !2940, file: !506, line: 999, type: !545)
!2946 = !DILocation(line: 185, column: 26, scope: !2757, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 1000, column: 13, scope: !2940)
!2948 = !DILocation(line: 0, scope: !2940)
!2949 = !DILocation(line: 999, column: 3, scope: !2940)
!2950 = !DILocation(line: 999, column: 26, scope: !2940)
!2951 = !DILocation(line: 0, scope: !2757, inlinedAt: !2947)
!2952 = !DILocation(line: 186, column: 13, scope: !2766, inlinedAt: !2947)
!2953 = !DILocation(line: 186, column: 7, scope: !2757, inlinedAt: !2947)
!2954 = !DILocation(line: 187, column: 5, scope: !2766, inlinedAt: !2947)
!2955 = !{!2956}
!2956 = distinct !{!2956, !2957, !"quoting_options_from_style: argument 0"}
!2957 = distinct !{!2957, !"quoting_options_from_style"}
!2958 = !DILocation(line: 1000, column: 13, scope: !2940)
!2959 = !DILocation(line: 0, scope: !1867, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 1001, column: 3, scope: !2940)
!2961 = !DILocation(line: 147, column: 57, scope: !1867, inlinedAt: !2960)
!2962 = !DILocation(line: 149, column: 21, scope: !1867, inlinedAt: !2960)
!2963 = !DILocation(line: 150, column: 6, scope: !1867, inlinedAt: !2960)
!2964 = !DILocation(line: 1002, column: 10, scope: !2940)
!2965 = !DILocation(line: 1003, column: 1, scope: !2940)
!2966 = !DILocation(line: 1002, column: 3, scope: !2940)
!2967 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !506, file: !506, line: 1006, type: !2968, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!116, !77, !122, !122, !122}
!2970 = !{!2971, !2972, !2973, !2974}
!2971 = !DILocalVariable(name: "n", arg: 1, scope: !2967, file: !506, line: 1006, type: !77)
!2972 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2967, file: !506, line: 1006, type: !122)
!2973 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2967, file: !506, line: 1007, type: !122)
!2974 = !DILocalVariable(name: "arg", arg: 4, scope: !2967, file: !506, line: 1007, type: !122)
!2975 = !DILocation(line: 0, scope: !2967)
!2976 = !DILocalVariable(name: "n", arg: 1, scope: !2977, file: !506, line: 1014, type: !77)
!2977 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !506, file: !506, line: 1014, type: !2978, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!116, !77, !122, !122, !122, !119}
!2980 = !{!2976, !2981, !2982, !2983, !2984, !2985}
!2981 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2977, file: !506, line: 1014, type: !122)
!2982 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2977, file: !506, line: 1015, type: !122)
!2983 = !DILocalVariable(name: "arg", arg: 4, scope: !2977, file: !506, line: 1016, type: !122)
!2984 = !DILocalVariable(name: "argsize", arg: 5, scope: !2977, file: !506, line: 1016, type: !119)
!2985 = !DILocalVariable(name: "o", scope: !2977, file: !506, line: 1018, type: !545)
!2986 = !DILocation(line: 0, scope: !2977, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 1009, column: 10, scope: !2967)
!2988 = !DILocation(line: 1018, column: 3, scope: !2977, inlinedAt: !2987)
!2989 = !DILocation(line: 1018, column: 26, scope: !2977, inlinedAt: !2987)
!2990 = !DILocation(line: 1018, column: 30, scope: !2977, inlinedAt: !2987)
!2991 = !DILocation(line: 0, scope: !1907, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 1019, column: 3, scope: !2977, inlinedAt: !2987)
!2993 = !DILocation(line: 174, column: 12, scope: !1907, inlinedAt: !2992)
!2994 = !DILocation(line: 175, column: 8, scope: !1920, inlinedAt: !2992)
!2995 = !DILocation(line: 175, column: 19, scope: !1920, inlinedAt: !2992)
!2996 = !DILocation(line: 176, column: 5, scope: !1920, inlinedAt: !2992)
!2997 = !DILocation(line: 177, column: 6, scope: !1907, inlinedAt: !2992)
!2998 = !DILocation(line: 177, column: 17, scope: !1907, inlinedAt: !2992)
!2999 = !DILocation(line: 178, column: 6, scope: !1907, inlinedAt: !2992)
!3000 = !DILocation(line: 178, column: 18, scope: !1907, inlinedAt: !2992)
!3001 = !DILocation(line: 1020, column: 10, scope: !2977, inlinedAt: !2987)
!3002 = !DILocation(line: 1021, column: 1, scope: !2977, inlinedAt: !2987)
!3003 = !DILocation(line: 1009, column: 3, scope: !2967)
!3004 = !DILocation(line: 0, scope: !2977)
!3005 = !DILocation(line: 1018, column: 3, scope: !2977)
!3006 = !DILocation(line: 1018, column: 26, scope: !2977)
!3007 = !DILocation(line: 1018, column: 30, scope: !2977)
!3008 = !DILocation(line: 0, scope: !1907, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 1019, column: 3, scope: !2977)
!3010 = !DILocation(line: 174, column: 12, scope: !1907, inlinedAt: !3009)
!3011 = !DILocation(line: 175, column: 8, scope: !1920, inlinedAt: !3009)
!3012 = !DILocation(line: 175, column: 19, scope: !1920, inlinedAt: !3009)
!3013 = !DILocation(line: 176, column: 5, scope: !1920, inlinedAt: !3009)
!3014 = !DILocation(line: 177, column: 6, scope: !1907, inlinedAt: !3009)
!3015 = !DILocation(line: 177, column: 17, scope: !1907, inlinedAt: !3009)
!3016 = !DILocation(line: 178, column: 6, scope: !1907, inlinedAt: !3009)
!3017 = !DILocation(line: 178, column: 18, scope: !1907, inlinedAt: !3009)
!3018 = !DILocation(line: 1020, column: 10, scope: !2977)
!3019 = !DILocation(line: 1021, column: 1, scope: !2977)
!3020 = !DILocation(line: 1020, column: 3, scope: !2977)
!3021 = distinct !DISubprogram(name: "quotearg_custom", scope: !506, file: !506, line: 1024, type: !3022, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!116, !122, !122, !122}
!3024 = !{!3025, !3026, !3027}
!3025 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3021, file: !506, line: 1024, type: !122)
!3026 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3021, file: !506, line: 1024, type: !122)
!3027 = !DILocalVariable(name: "arg", arg: 3, scope: !3021, file: !506, line: 1025, type: !122)
!3028 = !DILocation(line: 0, scope: !3021)
!3029 = !DILocation(line: 0, scope: !2967, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 1027, column: 10, scope: !3021)
!3031 = !DILocation(line: 0, scope: !2977, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 1009, column: 10, scope: !2967, inlinedAt: !3030)
!3033 = !DILocation(line: 1018, column: 3, scope: !2977, inlinedAt: !3032)
!3034 = !DILocation(line: 1018, column: 26, scope: !2977, inlinedAt: !3032)
!3035 = !DILocation(line: 1018, column: 30, scope: !2977, inlinedAt: !3032)
!3036 = !DILocation(line: 0, scope: !1907, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 1019, column: 3, scope: !2977, inlinedAt: !3032)
!3038 = !DILocation(line: 174, column: 12, scope: !1907, inlinedAt: !3037)
!3039 = !DILocation(line: 175, column: 8, scope: !1920, inlinedAt: !3037)
!3040 = !DILocation(line: 175, column: 19, scope: !1920, inlinedAt: !3037)
!3041 = !DILocation(line: 176, column: 5, scope: !1920, inlinedAt: !3037)
!3042 = !DILocation(line: 177, column: 6, scope: !1907, inlinedAt: !3037)
!3043 = !DILocation(line: 177, column: 17, scope: !1907, inlinedAt: !3037)
!3044 = !DILocation(line: 178, column: 6, scope: !1907, inlinedAt: !3037)
!3045 = !DILocation(line: 178, column: 18, scope: !1907, inlinedAt: !3037)
!3046 = !DILocation(line: 1020, column: 10, scope: !2977, inlinedAt: !3032)
!3047 = !DILocation(line: 1021, column: 1, scope: !2977, inlinedAt: !3032)
!3048 = !DILocation(line: 1027, column: 3, scope: !3021)
!3049 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !506, file: !506, line: 1031, type: !3050, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!116, !122, !122, !122, !119}
!3052 = !{!3053, !3054, !3055, !3056}
!3053 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3049, file: !506, line: 1031, type: !122)
!3054 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3049, file: !506, line: 1031, type: !122)
!3055 = !DILocalVariable(name: "arg", arg: 3, scope: !3049, file: !506, line: 1032, type: !122)
!3056 = !DILocalVariable(name: "argsize", arg: 4, scope: !3049, file: !506, line: 1032, type: !119)
!3057 = !DILocation(line: 0, scope: !3049)
!3058 = !DILocation(line: 0, scope: !2977, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 1034, column: 10, scope: !3049)
!3060 = !DILocation(line: 1018, column: 3, scope: !2977, inlinedAt: !3059)
!3061 = !DILocation(line: 1018, column: 26, scope: !2977, inlinedAt: !3059)
!3062 = !DILocation(line: 1018, column: 30, scope: !2977, inlinedAt: !3059)
!3063 = !DILocation(line: 0, scope: !1907, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 1019, column: 3, scope: !2977, inlinedAt: !3059)
!3065 = !DILocation(line: 174, column: 12, scope: !1907, inlinedAt: !3064)
!3066 = !DILocation(line: 175, column: 8, scope: !1920, inlinedAt: !3064)
!3067 = !DILocation(line: 175, column: 19, scope: !1920, inlinedAt: !3064)
!3068 = !DILocation(line: 176, column: 5, scope: !1920, inlinedAt: !3064)
!3069 = !DILocation(line: 177, column: 6, scope: !1907, inlinedAt: !3064)
!3070 = !DILocation(line: 177, column: 17, scope: !1907, inlinedAt: !3064)
!3071 = !DILocation(line: 178, column: 6, scope: !1907, inlinedAt: !3064)
!3072 = !DILocation(line: 178, column: 18, scope: !1907, inlinedAt: !3064)
!3073 = !DILocation(line: 1020, column: 10, scope: !2977, inlinedAt: !3059)
!3074 = !DILocation(line: 1021, column: 1, scope: !2977, inlinedAt: !3059)
!3075 = !DILocation(line: 1034, column: 3, scope: !3049)
!3076 = distinct !DISubprogram(name: "quote_n_mem", scope: !506, file: !506, line: 1049, type: !3077, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!122, !77, !122, !119}
!3079 = !{!3080, !3081, !3082}
!3080 = !DILocalVariable(name: "n", arg: 1, scope: !3076, file: !506, line: 1049, type: !77)
!3081 = !DILocalVariable(name: "arg", arg: 2, scope: !3076, file: !506, line: 1049, type: !122)
!3082 = !DILocalVariable(name: "argsize", arg: 3, scope: !3076, file: !506, line: 1049, type: !119)
!3083 = !DILocation(line: 0, scope: !3076)
!3084 = !DILocation(line: 1051, column: 10, scope: !3076)
!3085 = !DILocation(line: 1051, column: 3, scope: !3076)
!3086 = distinct !DISubprogram(name: "quote_mem", scope: !506, file: !506, line: 1055, type: !3087, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!122, !122, !119}
!3089 = !{!3090, !3091}
!3090 = !DILocalVariable(name: "arg", arg: 1, scope: !3086, file: !506, line: 1055, type: !122)
!3091 = !DILocalVariable(name: "argsize", arg: 2, scope: !3086, file: !506, line: 1055, type: !119)
!3092 = !DILocation(line: 0, scope: !3086)
!3093 = !DILocation(line: 0, scope: !3076, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 1057, column: 10, scope: !3086)
!3095 = !DILocation(line: 1051, column: 10, scope: !3076, inlinedAt: !3094)
!3096 = !DILocation(line: 1057, column: 3, scope: !3086)
!3097 = distinct !DISubprogram(name: "quote_n", scope: !506, file: !506, line: 1061, type: !3098, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!122, !77, !122}
!3100 = !{!3101, !3102}
!3101 = !DILocalVariable(name: "n", arg: 1, scope: !3097, file: !506, line: 1061, type: !77)
!3102 = !DILocalVariable(name: "arg", arg: 2, scope: !3097, file: !506, line: 1061, type: !122)
!3103 = !DILocation(line: 0, scope: !3097)
!3104 = !DILocation(line: 0, scope: !3076, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 1063, column: 10, scope: !3097)
!3106 = !DILocation(line: 1051, column: 10, scope: !3076, inlinedAt: !3105)
!3107 = !DILocation(line: 1063, column: 3, scope: !3097)
!3108 = distinct !DISubprogram(name: "quote", scope: !506, file: !506, line: 1067, type: !3109, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !3111)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!122, !122}
!3111 = !{!3112}
!3112 = !DILocalVariable(name: "arg", arg: 1, scope: !3108, file: !506, line: 1067, type: !122)
!3113 = !DILocation(line: 0, scope: !3108)
!3114 = !DILocation(line: 0, scope: !3097, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 1069, column: 10, scope: !3108)
!3116 = !DILocation(line: 0, scope: !3076, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 1063, column: 10, scope: !3097, inlinedAt: !3115)
!3118 = !DILocation(line: 1051, column: 10, scope: !3076, inlinedAt: !3117)
!3119 = !DILocation(line: 1069, column: 3, scope: !3108)
!3120 = distinct !DISubprogram(name: "version_etc_arn", scope: !608, file: !608, line: 61, type: !3121, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3158)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !3123, !122, !122, !122, !3157, !119}
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3125)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3126)
!3126 = !{!3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3125, file: !185, line: 51, baseType: !77, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3125, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3125, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3125, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3125, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3125, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3125, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3125, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3125, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3125, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3125, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3125, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3125, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3125, file: !185, line: 70, baseType: !3141, size: 64, offset: 832)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3125, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3125, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3125, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3125, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3125, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3125, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3125, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3125, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3125, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3125, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3125, file: !185, line: 93, baseType: !3141, size: 64, offset: 1344)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3125, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3125, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3125, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3125, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!3158 = !{!3159, !3160, !3161, !3162, !3163, !3164}
!3159 = !DILocalVariable(name: "stream", arg: 1, scope: !3120, file: !608, line: 61, type: !3123)
!3160 = !DILocalVariable(name: "command_name", arg: 2, scope: !3120, file: !608, line: 62, type: !122)
!3161 = !DILocalVariable(name: "package", arg: 3, scope: !3120, file: !608, line: 62, type: !122)
!3162 = !DILocalVariable(name: "version", arg: 4, scope: !3120, file: !608, line: 63, type: !122)
!3163 = !DILocalVariable(name: "authors", arg: 5, scope: !3120, file: !608, line: 64, type: !3157)
!3164 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3120, file: !608, line: 64, type: !119)
!3165 = !DILocation(line: 0, scope: !3120)
!3166 = !DILocation(line: 66, column: 7, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3120, file: !608, line: 66, column: 7)
!3168 = !DILocation(line: 66, column: 7, scope: !3120)
!3169 = !DILocation(line: 67, column: 5, scope: !3167)
!3170 = !DILocation(line: 69, column: 5, scope: !3167)
!3171 = !DILocation(line: 83, column: 3, scope: !3120)
!3172 = !DILocation(line: 85, column: 3, scope: !3120)
!3173 = !DILocation(line: 88, column: 3, scope: !3120)
!3174 = !DILocation(line: 95, column: 3, scope: !3120)
!3175 = !DILocation(line: 97, column: 3, scope: !3120)
!3176 = !DILocation(line: 105, column: 7, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3120, file: !608, line: 98, column: 5)
!3178 = !DILocation(line: 106, column: 7, scope: !3177)
!3179 = !DILocation(line: 109, column: 7, scope: !3177)
!3180 = !DILocation(line: 110, column: 7, scope: !3177)
!3181 = !DILocation(line: 113, column: 7, scope: !3177)
!3182 = !DILocation(line: 115, column: 7, scope: !3177)
!3183 = !DILocation(line: 120, column: 7, scope: !3177)
!3184 = !DILocation(line: 122, column: 7, scope: !3177)
!3185 = !DILocation(line: 127, column: 7, scope: !3177)
!3186 = !DILocation(line: 129, column: 7, scope: !3177)
!3187 = !DILocation(line: 134, column: 7, scope: !3177)
!3188 = !DILocation(line: 137, column: 7, scope: !3177)
!3189 = !DILocation(line: 142, column: 7, scope: !3177)
!3190 = !DILocation(line: 145, column: 7, scope: !3177)
!3191 = !DILocation(line: 150, column: 7, scope: !3177)
!3192 = !DILocation(line: 154, column: 7, scope: !3177)
!3193 = !DILocation(line: 159, column: 7, scope: !3177)
!3194 = !DILocation(line: 163, column: 7, scope: !3177)
!3195 = !DILocation(line: 170, column: 7, scope: !3177)
!3196 = !DILocation(line: 174, column: 7, scope: !3177)
!3197 = !DILocation(line: 176, column: 1, scope: !3120)
!3198 = distinct !DISubprogram(name: "version_etc_ar", scope: !608, file: !608, line: 183, type: !3199, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3201)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{null, !3123, !122, !122, !122, !3157}
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207}
!3202 = !DILocalVariable(name: "stream", arg: 1, scope: !3198, file: !608, line: 183, type: !3123)
!3203 = !DILocalVariable(name: "command_name", arg: 2, scope: !3198, file: !608, line: 184, type: !122)
!3204 = !DILocalVariable(name: "package", arg: 3, scope: !3198, file: !608, line: 184, type: !122)
!3205 = !DILocalVariable(name: "version", arg: 4, scope: !3198, file: !608, line: 185, type: !122)
!3206 = !DILocalVariable(name: "authors", arg: 5, scope: !3198, file: !608, line: 185, type: !3157)
!3207 = !DILocalVariable(name: "n_authors", scope: !3198, file: !608, line: 187, type: !119)
!3208 = !DILocation(line: 0, scope: !3198)
!3209 = !DILocation(line: 189, column: 8, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3198, file: !608, line: 189, column: 3)
!3211 = !DILocation(line: 189, scope: !3210)
!3212 = !DILocation(line: 189, column: 23, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3210, file: !608, line: 189, column: 3)
!3214 = !DILocation(line: 189, column: 3, scope: !3210)
!3215 = !DILocation(line: 189, column: 52, scope: !3213)
!3216 = distinct !{!3216, !3214, !3217, !921}
!3217 = !DILocation(line: 190, column: 5, scope: !3210)
!3218 = !DILocation(line: 191, column: 3, scope: !3198)
!3219 = !DILocation(line: 192, column: 1, scope: !3198)
!3220 = distinct !DISubprogram(name: "version_etc_va", scope: !608, file: !608, line: 199, type: !3221, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3234)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{null, !3123, !122, !122, !122, !3223}
!3223 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !420, line: 52, baseType: !3224)
!3224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !422, line: 14, baseType: !3225)
!3225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3226, baseType: !3227)
!3226 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3228)
!3228 = !{!3229, !3230, !3231, !3232, !3233}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3227, file: !3226, line: 192, baseType: !117, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3227, file: !3226, line: 192, baseType: !117, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3227, file: !3226, line: 192, baseType: !117, size: 64, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3227, file: !3226, line: 192, baseType: !77, size: 32, offset: 192)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3227, file: !3226, line: 192, baseType: !77, size: 32, offset: 224)
!3234 = !{!3235, !3236, !3237, !3238, !3239, !3240, !3241}
!3235 = !DILocalVariable(name: "stream", arg: 1, scope: !3220, file: !608, line: 199, type: !3123)
!3236 = !DILocalVariable(name: "command_name", arg: 2, scope: !3220, file: !608, line: 200, type: !122)
!3237 = !DILocalVariable(name: "package", arg: 3, scope: !3220, file: !608, line: 200, type: !122)
!3238 = !DILocalVariable(name: "version", arg: 4, scope: !3220, file: !608, line: 201, type: !122)
!3239 = !DILocalVariable(name: "authors", arg: 5, scope: !3220, file: !608, line: 201, type: !3223)
!3240 = !DILocalVariable(name: "n_authors", scope: !3220, file: !608, line: 203, type: !119)
!3241 = !DILocalVariable(name: "authtab", scope: !3220, file: !608, line: 204, type: !3242)
!3242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 640, elements: !55)
!3243 = !DILocation(line: 0, scope: !3220)
!3244 = !DILocation(line: 201, column: 46, scope: !3220)
!3245 = !DILocation(line: 204, column: 3, scope: !3220)
!3246 = !DILocation(line: 204, column: 15, scope: !3220)
!3247 = !DILocation(line: 208, column: 35, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3249, file: !608, line: 206, column: 3)
!3249 = distinct !DILexicalBlock(scope: !3220, file: !608, line: 206, column: 3)
!3250 = !DILocation(line: 208, column: 33, scope: !3248)
!3251 = !DILocation(line: 208, column: 67, scope: !3248)
!3252 = !DILocation(line: 206, column: 3, scope: !3249)
!3253 = !DILocation(line: 208, column: 14, scope: !3248)
!3254 = !DILocation(line: 0, scope: !3249)
!3255 = !DILocation(line: 211, column: 3, scope: !3220)
!3256 = !DILocation(line: 213, column: 1, scope: !3220)
!3257 = distinct !DISubprogram(name: "version_etc", scope: !608, file: !608, line: 230, type: !3258, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3260)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{null, !3123, !122, !122, !122, null}
!3260 = !{!3261, !3262, !3263, !3264, !3265}
!3261 = !DILocalVariable(name: "stream", arg: 1, scope: !3257, file: !608, line: 230, type: !3123)
!3262 = !DILocalVariable(name: "command_name", arg: 2, scope: !3257, file: !608, line: 231, type: !122)
!3263 = !DILocalVariable(name: "package", arg: 3, scope: !3257, file: !608, line: 231, type: !122)
!3264 = !DILocalVariable(name: "version", arg: 4, scope: !3257, file: !608, line: 232, type: !122)
!3265 = !DILocalVariable(name: "authors", scope: !3257, file: !608, line: 234, type: !3223)
!3266 = !DILocation(line: 0, scope: !3257)
!3267 = !DILocation(line: 234, column: 3, scope: !3257)
!3268 = !DILocation(line: 234, column: 11, scope: !3257)
!3269 = !DILocation(line: 235, column: 3, scope: !3257)
!3270 = !DILocation(line: 236, column: 3, scope: !3257)
!3271 = !DILocation(line: 237, column: 3, scope: !3257)
!3272 = !DILocation(line: 238, column: 1, scope: !3257)
!3273 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !608, file: !608, line: 241, type: !461, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !859)
!3274 = !DILocation(line: 243, column: 3, scope: !3273)
!3275 = !DILocation(line: 248, column: 3, scope: !3273)
!3276 = !DILocation(line: 254, column: 3, scope: !3273)
!3277 = !DILocation(line: 259, column: 3, scope: !3273)
!3278 = !DILocation(line: 261, column: 1, scope: !3273)
!3279 = distinct !DISubprogram(name: "xnrealloc", scope: !3280, file: !3280, line: 147, type: !3281, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3283)
!3280 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!117, !117, !119, !119}
!3283 = !{!3284, !3285, !3286}
!3284 = !DILocalVariable(name: "p", arg: 1, scope: !3279, file: !3280, line: 147, type: !117)
!3285 = !DILocalVariable(name: "n", arg: 2, scope: !3279, file: !3280, line: 147, type: !119)
!3286 = !DILocalVariable(name: "s", arg: 3, scope: !3279, file: !3280, line: 147, type: !119)
!3287 = !DILocation(line: 0, scope: !3279)
!3288 = !DILocalVariable(name: "p", arg: 1, scope: !3289, file: !738, line: 83, type: !117)
!3289 = distinct !DISubprogram(name: "xreallocarray", scope: !738, file: !738, line: 83, type: !3281, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3290)
!3290 = !{!3288, !3291, !3292}
!3291 = !DILocalVariable(name: "n", arg: 2, scope: !3289, file: !738, line: 83, type: !119)
!3292 = !DILocalVariable(name: "s", arg: 3, scope: !3289, file: !738, line: 83, type: !119)
!3293 = !DILocation(line: 0, scope: !3289, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 149, column: 10, scope: !3279)
!3295 = !DILocation(line: 85, column: 25, scope: !3289, inlinedAt: !3294)
!3296 = !DILocalVariable(name: "p", arg: 1, scope: !3297, file: !738, line: 37, type: !117)
!3297 = distinct !DISubprogram(name: "check_nonnull", scope: !738, file: !738, line: 37, type: !3298, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!117, !117}
!3300 = !{!3296}
!3301 = !DILocation(line: 0, scope: !3297, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 85, column: 10, scope: !3289, inlinedAt: !3294)
!3303 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3302)
!3304 = distinct !DILexicalBlock(scope: !3297, file: !738, line: 39, column: 7)
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
!3316 = distinct !DISubprogram(name: "xmalloc", scope: !738, file: !738, line: 47, type: !3317, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3319)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!117, !119}
!3319 = !{!3320}
!3320 = !DILocalVariable(name: "s", arg: 1, scope: !3316, file: !738, line: 47, type: !119)
!3321 = !DILocation(line: 0, scope: !3316)
!3322 = !DILocation(line: 49, column: 25, scope: !3316)
!3323 = !DILocation(line: 0, scope: !3297, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 49, column: 10, scope: !3316)
!3325 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3324)
!3326 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3324)
!3327 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3324)
!3328 = !DILocation(line: 49, column: 3, scope: !3316)
!3329 = !DISubprogram(name: "malloc", scope: !995, file: !995, line: 540, type: !3317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3330 = distinct !DISubprogram(name: "ximalloc", scope: !738, file: !738, line: 53, type: !3331, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3333)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!117, !757}
!3333 = !{!3334}
!3334 = !DILocalVariable(name: "s", arg: 1, scope: !3330, file: !738, line: 53, type: !757)
!3335 = !DILocation(line: 0, scope: !3330)
!3336 = !DILocalVariable(name: "s", arg: 1, scope: !3337, file: !3338, line: 55, type: !757)
!3337 = distinct !DISubprogram(name: "imalloc", scope: !3338, file: !3338, line: 55, type: !3331, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3339)
!3338 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
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
!3349 = distinct !DISubprogram(name: "xcharalloc", scope: !738, file: !738, line: 59, type: !3350, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3352)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!116, !119}
!3352 = !{!3353}
!3353 = !DILocalVariable(name: "n", arg: 1, scope: !3349, file: !738, line: 59, type: !119)
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
!3364 = distinct !DISubprogram(name: "xrealloc", scope: !738, file: !738, line: 68, type: !3365, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3367)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!117, !117, !119}
!3367 = !{!3368, !3369}
!3368 = !DILocalVariable(name: "p", arg: 1, scope: !3364, file: !738, line: 68, type: !117)
!3369 = !DILocalVariable(name: "s", arg: 2, scope: !3364, file: !738, line: 68, type: !119)
!3370 = !DILocation(line: 0, scope: !3364)
!3371 = !DILocalVariable(name: "ptr", arg: 1, scope: !3372, file: !3373, line: 2057, type: !117)
!3372 = distinct !DISubprogram(name: "rpl_realloc", scope: !3373, file: !3373, line: 2057, type: !3365, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3374)
!3373 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3374 = !{!3371, !3375}
!3375 = !DILocalVariable(name: "size", arg: 2, scope: !3372, file: !3373, line: 2057, type: !119)
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
!3386 = !DISubprogram(name: "realloc", scope: !995, file: !995, line: 551, type: !3365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3387 = distinct !DISubprogram(name: "xirealloc", scope: !738, file: !738, line: 74, type: !3388, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!117, !117, !757}
!3390 = !{!3391, !3392}
!3391 = !DILocalVariable(name: "p", arg: 1, scope: !3387, file: !738, line: 74, type: !117)
!3392 = !DILocalVariable(name: "s", arg: 2, scope: !3387, file: !738, line: 74, type: !757)
!3393 = !DILocation(line: 0, scope: !3387)
!3394 = !DILocalVariable(name: "p", arg: 1, scope: !3395, file: !3338, line: 66, type: !117)
!3395 = distinct !DISubprogram(name: "irealloc", scope: !3338, file: !3338, line: 66, type: !3388, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3396)
!3396 = !{!3394, !3397}
!3397 = !DILocalVariable(name: "s", arg: 2, scope: !3395, file: !3338, line: 66, type: !757)
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
!3410 = distinct !DISubprogram(name: "xireallocarray", scope: !738, file: !738, line: 89, type: !3411, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!117, !117, !757, !757}
!3413 = !{!3414, !3415, !3416}
!3414 = !DILocalVariable(name: "p", arg: 1, scope: !3410, file: !738, line: 89, type: !117)
!3415 = !DILocalVariable(name: "n", arg: 2, scope: !3410, file: !738, line: 89, type: !757)
!3416 = !DILocalVariable(name: "s", arg: 3, scope: !3410, file: !738, line: 89, type: !757)
!3417 = !DILocation(line: 0, scope: !3410)
!3418 = !DILocalVariable(name: "p", arg: 1, scope: !3419, file: !3338, line: 98, type: !117)
!3419 = distinct !DISubprogram(name: "ireallocarray", scope: !3338, file: !3338, line: 98, type: !3411, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3420)
!3420 = !{!3418, !3421, !3422}
!3421 = !DILocalVariable(name: "n", arg: 2, scope: !3419, file: !3338, line: 98, type: !757)
!3422 = !DILocalVariable(name: "s", arg: 3, scope: !3419, file: !3338, line: 98, type: !757)
!3423 = !DILocation(line: 0, scope: !3419, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 91, column: 25, scope: !3410)
!3425 = !DILocation(line: 101, column: 13, scope: !3419, inlinedAt: !3424)
!3426 = !DILocation(line: 0, scope: !3297, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 91, column: 10, scope: !3410)
!3428 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3427)
!3429 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3427)
!3430 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3427)
!3431 = !DILocation(line: 91, column: 3, scope: !3410)
!3432 = distinct !DISubprogram(name: "xnmalloc", scope: !738, file: !738, line: 98, type: !3433, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!117, !119, !119}
!3435 = !{!3436, !3437}
!3436 = !DILocalVariable(name: "n", arg: 1, scope: !3432, file: !738, line: 98, type: !119)
!3437 = !DILocalVariable(name: "s", arg: 2, scope: !3432, file: !738, line: 98, type: !119)
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
!3448 = distinct !DISubprogram(name: "xinmalloc", scope: !738, file: !738, line: 104, type: !3449, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!117, !757, !757}
!3451 = !{!3452, !3453}
!3452 = !DILocalVariable(name: "n", arg: 1, scope: !3448, file: !738, line: 104, type: !757)
!3453 = !DILocalVariable(name: "s", arg: 2, scope: !3448, file: !738, line: 104, type: !757)
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
!3466 = distinct !DISubprogram(name: "x2realloc", scope: !738, file: !738, line: 116, type: !3467, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!117, !117, !744}
!3469 = !{!3470, !3471}
!3470 = !DILocalVariable(name: "p", arg: 1, scope: !3466, file: !738, line: 116, type: !117)
!3471 = !DILocalVariable(name: "ps", arg: 2, scope: !3466, file: !738, line: 116, type: !744)
!3472 = !DILocation(line: 0, scope: !3466)
!3473 = !DILocation(line: 0, scope: !741, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 118, column: 10, scope: !3466)
!3475 = !DILocation(line: 178, column: 14, scope: !741, inlinedAt: !3474)
!3476 = !DILocation(line: 180, column: 9, scope: !3477, inlinedAt: !3474)
!3477 = distinct !DILexicalBlock(scope: !741, file: !738, line: 180, column: 7)
!3478 = !DILocation(line: 180, column: 7, scope: !741, inlinedAt: !3474)
!3479 = !DILocation(line: 182, column: 13, scope: !3480, inlinedAt: !3474)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !738, line: 182, column: 11)
!3481 = distinct !DILexicalBlock(scope: !3477, file: !738, line: 181, column: 5)
!3482 = !DILocation(line: 182, column: 11, scope: !3481, inlinedAt: !3474)
!3483 = !DILocation(line: 197, column: 11, scope: !3484, inlinedAt: !3474)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !738, line: 197, column: 11)
!3485 = distinct !DILexicalBlock(scope: !3477, file: !738, line: 195, column: 5)
!3486 = !DILocation(line: 197, column: 11, scope: !3485, inlinedAt: !3474)
!3487 = !DILocation(line: 198, column: 9, scope: !3484, inlinedAt: !3474)
!3488 = !DILocation(line: 0, scope: !3289, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 201, column: 7, scope: !741, inlinedAt: !3474)
!3490 = !DILocation(line: 85, column: 25, scope: !3289, inlinedAt: !3489)
!3491 = !DILocation(line: 0, scope: !3297, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 85, column: 10, scope: !3289, inlinedAt: !3489)
!3493 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3492)
!3494 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3492)
!3495 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3492)
!3496 = !DILocation(line: 202, column: 7, scope: !741, inlinedAt: !3474)
!3497 = !DILocation(line: 118, column: 3, scope: !3466)
!3498 = !DILocation(line: 0, scope: !741)
!3499 = !DILocation(line: 178, column: 14, scope: !741)
!3500 = !DILocation(line: 180, column: 9, scope: !3477)
!3501 = !DILocation(line: 180, column: 7, scope: !741)
!3502 = !DILocation(line: 182, column: 13, scope: !3480)
!3503 = !DILocation(line: 182, column: 11, scope: !3481)
!3504 = !DILocation(line: 190, column: 30, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3480, file: !738, line: 183, column: 9)
!3506 = !DILocation(line: 191, column: 16, scope: !3505)
!3507 = !DILocation(line: 191, column: 13, scope: !3505)
!3508 = !DILocation(line: 192, column: 9, scope: !3505)
!3509 = !DILocation(line: 197, column: 11, scope: !3484)
!3510 = !DILocation(line: 197, column: 11, scope: !3485)
!3511 = !DILocation(line: 198, column: 9, scope: !3484)
!3512 = !DILocation(line: 0, scope: !3289, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 201, column: 7, scope: !741)
!3514 = !DILocation(line: 85, column: 25, scope: !3289, inlinedAt: !3513)
!3515 = !DILocation(line: 0, scope: !3297, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 85, column: 10, scope: !3289, inlinedAt: !3513)
!3517 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3516)
!3518 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3516)
!3519 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3516)
!3520 = !DILocation(line: 202, column: 7, scope: !741)
!3521 = !DILocation(line: 203, column: 3, scope: !741)
!3522 = !DILocation(line: 0, scope: !753)
!3523 = !DILocation(line: 230, column: 14, scope: !753)
!3524 = !DILocation(line: 238, column: 7, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !753, file: !738, line: 238, column: 7)
!3526 = !DILocation(line: 238, column: 7, scope: !753)
!3527 = !DILocation(line: 240, column: 9, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !753, file: !738, line: 240, column: 7)
!3529 = !DILocation(line: 240, column: 18, scope: !3528)
!3530 = !DILocation(line: 253, column: 8, scope: !753)
!3531 = !DILocation(line: 258, column: 27, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !738, line: 257, column: 5)
!3533 = distinct !DILexicalBlock(scope: !753, file: !738, line: 256, column: 7)
!3534 = !DILocation(line: 259, column: 32, scope: !3532)
!3535 = !DILocation(line: 260, column: 5, scope: !3532)
!3536 = !DILocation(line: 262, column: 9, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !753, file: !738, line: 262, column: 7)
!3538 = !DILocation(line: 262, column: 7, scope: !753)
!3539 = !DILocation(line: 263, column: 9, scope: !3537)
!3540 = !DILocation(line: 263, column: 5, scope: !3537)
!3541 = !DILocation(line: 264, column: 9, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !753, file: !738, line: 264, column: 7)
!3543 = !DILocation(line: 264, column: 14, scope: !3542)
!3544 = !DILocation(line: 265, column: 7, scope: !3542)
!3545 = !DILocation(line: 265, column: 11, scope: !3542)
!3546 = !DILocation(line: 266, column: 11, scope: !3542)
!3547 = !DILocation(line: 267, column: 14, scope: !3542)
!3548 = !DILocation(line: 264, column: 7, scope: !753)
!3549 = !DILocation(line: 268, column: 5, scope: !3542)
!3550 = !DILocation(line: 0, scope: !3364, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 269, column: 8, scope: !753)
!3552 = !DILocation(line: 0, scope: !3372, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 70, column: 25, scope: !3364, inlinedAt: !3551)
!3554 = !DILocation(line: 2059, column: 24, scope: !3372, inlinedAt: !3553)
!3555 = !DILocation(line: 2059, column: 10, scope: !3372, inlinedAt: !3553)
!3556 = !DILocation(line: 0, scope: !3297, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 70, column: 10, scope: !3364, inlinedAt: !3551)
!3558 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3557)
!3559 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3557)
!3560 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3557)
!3561 = !DILocation(line: 270, column: 7, scope: !753)
!3562 = !DILocation(line: 271, column: 3, scope: !753)
!3563 = distinct !DISubprogram(name: "xzalloc", scope: !738, file: !738, line: 279, type: !3317, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3564)
!3564 = !{!3565}
!3565 = !DILocalVariable(name: "s", arg: 1, scope: !3563, file: !738, line: 279, type: !119)
!3566 = !DILocation(line: 0, scope: !3563)
!3567 = !DILocalVariable(name: "n", arg: 1, scope: !3568, file: !738, line: 294, type: !119)
!3568 = distinct !DISubprogram(name: "xcalloc", scope: !738, file: !738, line: 294, type: !3433, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3569)
!3569 = !{!3567, !3570}
!3570 = !DILocalVariable(name: "s", arg: 2, scope: !3568, file: !738, line: 294, type: !119)
!3571 = !DILocation(line: 0, scope: !3568, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 281, column: 10, scope: !3563)
!3573 = !DILocation(line: 296, column: 25, scope: !3568, inlinedAt: !3572)
!3574 = !DILocation(line: 0, scope: !3297, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 296, column: 10, scope: !3568, inlinedAt: !3572)
!3576 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3575)
!3577 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3575)
!3578 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3575)
!3579 = !DILocation(line: 281, column: 3, scope: !3563)
!3580 = !DISubprogram(name: "calloc", scope: !995, file: !995, line: 543, type: !3433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3581 = !DILocation(line: 0, scope: !3568)
!3582 = !DILocation(line: 296, column: 25, scope: !3568)
!3583 = !DILocation(line: 0, scope: !3297, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 296, column: 10, scope: !3568)
!3585 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3584)
!3586 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3584)
!3587 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3584)
!3588 = !DILocation(line: 296, column: 3, scope: !3568)
!3589 = distinct !DISubprogram(name: "xizalloc", scope: !738, file: !738, line: 285, type: !3331, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3590)
!3590 = !{!3591}
!3591 = !DILocalVariable(name: "s", arg: 1, scope: !3589, file: !738, line: 285, type: !757)
!3592 = !DILocation(line: 0, scope: !3589)
!3593 = !DILocalVariable(name: "n", arg: 1, scope: !3594, file: !738, line: 300, type: !757)
!3594 = distinct !DISubprogram(name: "xicalloc", scope: !738, file: !738, line: 300, type: !3449, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3595)
!3595 = !{!3593, !3596}
!3596 = !DILocalVariable(name: "s", arg: 2, scope: !3594, file: !738, line: 300, type: !757)
!3597 = !DILocation(line: 0, scope: !3594, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 287, column: 10, scope: !3589)
!3599 = !DILocalVariable(name: "n", arg: 1, scope: !3600, file: !3338, line: 77, type: !757)
!3600 = distinct !DISubprogram(name: "icalloc", scope: !3338, file: !3338, line: 77, type: !3449, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3601)
!3601 = !{!3599, !3602}
!3602 = !DILocalVariable(name: "s", arg: 2, scope: !3600, file: !3338, line: 77, type: !757)
!3603 = !DILocation(line: 0, scope: !3600, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 302, column: 25, scope: !3594, inlinedAt: !3598)
!3605 = !DILocation(line: 91, column: 10, scope: !3600, inlinedAt: !3604)
!3606 = !DILocation(line: 0, scope: !3297, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 302, column: 10, scope: !3594, inlinedAt: !3598)
!3608 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3607)
!3609 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3607)
!3610 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3607)
!3611 = !DILocation(line: 287, column: 3, scope: !3589)
!3612 = !DILocation(line: 0, scope: !3594)
!3613 = !DILocation(line: 0, scope: !3600, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 302, column: 25, scope: !3594)
!3615 = !DILocation(line: 91, column: 10, scope: !3600, inlinedAt: !3614)
!3616 = !DILocation(line: 0, scope: !3297, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 302, column: 10, scope: !3594)
!3618 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3617)
!3619 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3617)
!3620 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3617)
!3621 = !DILocation(line: 302, column: 3, scope: !3594)
!3622 = distinct !DISubprogram(name: "xmemdup", scope: !738, file: !738, line: 310, type: !3623, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3625)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!117, !1019, !119}
!3625 = !{!3626, !3627}
!3626 = !DILocalVariable(name: "p", arg: 1, scope: !3622, file: !738, line: 310, type: !1019)
!3627 = !DILocalVariable(name: "s", arg: 2, scope: !3622, file: !738, line: 310, type: !119)
!3628 = !DILocation(line: 0, scope: !3622)
!3629 = !DILocation(line: 0, scope: !3316, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 312, column: 18, scope: !3622)
!3631 = !DILocation(line: 49, column: 25, scope: !3316, inlinedAt: !3630)
!3632 = !DILocation(line: 0, scope: !3297, inlinedAt: !3633)
!3633 = distinct !DILocation(line: 49, column: 10, scope: !3316, inlinedAt: !3630)
!3634 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3633)
!3635 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3633)
!3636 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3633)
!3637 = !DILocalVariable(name: "__dest", arg: 1, scope: !3638, file: !1810, line: 26, type: !3641)
!3638 = distinct !DISubprogram(name: "memcpy", scope: !1810, file: !1810, line: 26, type: !3639, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3642)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!117, !3641, !1018, !119}
!3641 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!3642 = !{!3637, !3643, !3644}
!3643 = !DILocalVariable(name: "__src", arg: 2, scope: !3638, file: !1810, line: 26, type: !1018)
!3644 = !DILocalVariable(name: "__len", arg: 3, scope: !3638, file: !1810, line: 26, type: !119)
!3645 = !DILocation(line: 0, scope: !3638, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 312, column: 10, scope: !3622)
!3647 = !DILocation(line: 29, column: 10, scope: !3638, inlinedAt: !3646)
!3648 = !DILocation(line: 312, column: 3, scope: !3622)
!3649 = distinct !DISubprogram(name: "ximemdup", scope: !738, file: !738, line: 316, type: !3650, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3652)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!117, !1019, !757}
!3652 = !{!3653, !3654}
!3653 = !DILocalVariable(name: "p", arg: 1, scope: !3649, file: !738, line: 316, type: !1019)
!3654 = !DILocalVariable(name: "s", arg: 2, scope: !3649, file: !738, line: 316, type: !757)
!3655 = !DILocation(line: 0, scope: !3649)
!3656 = !DILocation(line: 0, scope: !3330, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 318, column: 18, scope: !3649)
!3658 = !DILocation(line: 0, scope: !3337, inlinedAt: !3659)
!3659 = distinct !DILocation(line: 55, column: 25, scope: !3330, inlinedAt: !3657)
!3660 = !DILocation(line: 57, column: 26, scope: !3337, inlinedAt: !3659)
!3661 = !DILocation(line: 0, scope: !3297, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 55, column: 10, scope: !3330, inlinedAt: !3657)
!3663 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3662)
!3664 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3662)
!3665 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3662)
!3666 = !DILocation(line: 0, scope: !3638, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 318, column: 10, scope: !3649)
!3668 = !DILocation(line: 29, column: 10, scope: !3638, inlinedAt: !3667)
!3669 = !DILocation(line: 318, column: 3, scope: !3649)
!3670 = distinct !DISubprogram(name: "ximemdup0", scope: !738, file: !738, line: 325, type: !3671, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!116, !1019, !757}
!3673 = !{!3674, !3675, !3676}
!3674 = !DILocalVariable(name: "p", arg: 1, scope: !3670, file: !738, line: 325, type: !1019)
!3675 = !DILocalVariable(name: "s", arg: 2, scope: !3670, file: !738, line: 325, type: !757)
!3676 = !DILocalVariable(name: "result", scope: !3670, file: !738, line: 327, type: !116)
!3677 = !DILocation(line: 0, scope: !3670)
!3678 = !DILocation(line: 327, column: 30, scope: !3670)
!3679 = !DILocation(line: 0, scope: !3330, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 327, column: 18, scope: !3670)
!3681 = !DILocation(line: 0, scope: !3337, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 55, column: 25, scope: !3330, inlinedAt: !3680)
!3683 = !DILocation(line: 57, column: 26, scope: !3337, inlinedAt: !3682)
!3684 = !DILocation(line: 0, scope: !3297, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 55, column: 10, scope: !3330, inlinedAt: !3680)
!3686 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3685)
!3687 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3685)
!3688 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3685)
!3689 = !DILocation(line: 328, column: 3, scope: !3670)
!3690 = !DILocation(line: 328, column: 13, scope: !3670)
!3691 = !DILocation(line: 0, scope: !3638, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 329, column: 10, scope: !3670)
!3693 = !DILocation(line: 29, column: 10, scope: !3638, inlinedAt: !3692)
!3694 = !DILocation(line: 329, column: 3, scope: !3670)
!3695 = distinct !DISubprogram(name: "xstrdup", scope: !738, file: !738, line: 335, type: !997, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3696)
!3696 = !{!3697}
!3697 = !DILocalVariable(name: "string", arg: 1, scope: !3695, file: !738, line: 335, type: !122)
!3698 = !DILocation(line: 0, scope: !3695)
!3699 = !DILocation(line: 337, column: 27, scope: !3695)
!3700 = !DILocation(line: 337, column: 43, scope: !3695)
!3701 = !DILocation(line: 0, scope: !3622, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 337, column: 10, scope: !3695)
!3703 = !DILocation(line: 0, scope: !3316, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 312, column: 18, scope: !3622, inlinedAt: !3702)
!3705 = !DILocation(line: 49, column: 25, scope: !3316, inlinedAt: !3704)
!3706 = !DILocation(line: 0, scope: !3297, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 49, column: 10, scope: !3316, inlinedAt: !3704)
!3708 = !DILocation(line: 39, column: 8, scope: !3304, inlinedAt: !3707)
!3709 = !DILocation(line: 39, column: 7, scope: !3297, inlinedAt: !3707)
!3710 = !DILocation(line: 40, column: 5, scope: !3304, inlinedAt: !3707)
!3711 = !DILocation(line: 0, scope: !3638, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 312, column: 10, scope: !3622, inlinedAt: !3702)
!3713 = !DILocation(line: 29, column: 10, scope: !3638, inlinedAt: !3712)
!3714 = !DILocation(line: 337, column: 3, scope: !3695)
!3715 = distinct !DISubprogram(name: "xalloc_die", scope: !695, file: !695, line: 32, type: !461, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3716)
!3716 = !{!3717}
!3717 = !DILocalVariable(name: "__errstatus", scope: !3718, file: !695, line: 34, type: !3719)
!3718 = distinct !DILexicalBlock(scope: !3715, file: !695, line: 34, column: 3)
!3719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!3720 = !DILocation(line: 34, column: 3, scope: !3718)
!3721 = !DILocation(line: 0, scope: !3718)
!3722 = !DILocation(line: 40, column: 3, scope: !3715)
!3723 = distinct !DISubprogram(name: "last_component", scope: !774, file: !774, line: 29, type: !997, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !3724)
!3724 = !{!3725, !3726, !3727, !3728}
!3725 = !DILocalVariable(name: "name", arg: 1, scope: !3723, file: !774, line: 29, type: !122)
!3726 = !DILocalVariable(name: "base", scope: !3723, file: !774, line: 31, type: !122)
!3727 = !DILocalVariable(name: "last_was_slash", scope: !3723, file: !774, line: 35, type: !152)
!3728 = !DILocalVariable(name: "p", scope: !3729, file: !774, line: 36, type: !122)
!3729 = distinct !DILexicalBlock(scope: !3723, file: !774, line: 36, column: 3)
!3730 = !DILocation(line: 0, scope: !3723)
!3731 = !DILocation(line: 32, column: 3, scope: !3723)
!3732 = !DILocation(line: 32, column: 10, scope: !3723)
!3733 = !DILocation(line: 33, column: 9, scope: !3723)
!3734 = distinct !{!3734, !3731, !3733, !921}
!3735 = !DILocation(line: 36, column: 30, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3729, file: !774, line: 36, column: 3)
!3737 = !DILocation(line: 31, column: 15, scope: !3723)
!3738 = !DILocation(line: 36, scope: !3729)
!3739 = !DILocation(line: 0, scope: !3729)
!3740 = !DILocation(line: 36, column: 3, scope: !3729)
!3741 = !DILocation(line: 47, column: 3, scope: !3723)
!3742 = !DILocation(line: 40, column: 16, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !774, line: 38, column: 11)
!3744 = distinct !DILexicalBlock(scope: !3736, file: !774, line: 37, column: 5)
!3745 = !DILocation(line: 36, column: 35, scope: !3736)
!3746 = !DILocation(line: 36, column: 3, scope: !3736)
!3747 = distinct !{!3747, !3740, !3748, !921}
!3748 = !DILocation(line: 45, column: 5, scope: !3729)
!3749 = distinct !DISubprogram(name: "base_len", scope: !774, file: !774, line: 51, type: !3750, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!119, !122}
!3752 = !{!3753, !3754, !3755}
!3753 = !DILocalVariable(name: "name", arg: 1, scope: !3749, file: !774, line: 51, type: !122)
!3754 = !DILocalVariable(name: "len", scope: !3749, file: !774, line: 53, type: !119)
!3755 = !DILocalVariable(name: "prefix_len", scope: !3749, file: !774, line: 61, type: !119)
!3756 = !DILocation(line: 0, scope: !3749)
!3757 = !DILocation(line: 54, column: 14, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3749, file: !774, line: 54, column: 3)
!3759 = !DILocation(line: 54, column: 8, scope: !3758)
!3760 = !DILocation(line: 54, scope: !3758)
!3761 = !DILocation(line: 54, column: 32, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3758, file: !774, line: 54, column: 3)
!3763 = !DILocation(line: 54, column: 38, scope: !3762)
!3764 = !DILocation(line: 54, column: 41, scope: !3762)
!3765 = !DILocation(line: 54, column: 3, scope: !3758)
!3766 = distinct !{!3766, !3765, !3767, !921}
!3767 = !DILocation(line: 55, column: 5, scope: !3758)
!3768 = !DILocation(line: 66, column: 3, scope: !3749)
!3769 = distinct !DISubprogram(name: "close_stream", scope: !776, file: !776, line: 55, type: !3770, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3806)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!77, !3772}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3774)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3775)
!3775 = !{!3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3774, file: !185, line: 51, baseType: !77, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3774, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3774, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3774, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3774, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3774, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3774, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3774, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3774, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3774, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3774, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3774, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3774, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3774, file: !185, line: 70, baseType: !3790, size: 64, offset: 832)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3774, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3774, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3774, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3774, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3774, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3774, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3774, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3774, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3774, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3774, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3774, file: !185, line: 93, baseType: !3790, size: 64, offset: 1344)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3774, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3774, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3774, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3774, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!3806 = !{!3807, !3808, !3810, !3811}
!3807 = !DILocalVariable(name: "stream", arg: 1, scope: !3769, file: !776, line: 55, type: !3772)
!3808 = !DILocalVariable(name: "some_pending", scope: !3769, file: !776, line: 57, type: !3809)
!3809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!3810 = !DILocalVariable(name: "prev_fail", scope: !3769, file: !776, line: 58, type: !3809)
!3811 = !DILocalVariable(name: "fclose_fail", scope: !3769, file: !776, line: 59, type: !3809)
!3812 = !DILocation(line: 0, scope: !3769)
!3813 = !DILocation(line: 57, column: 30, scope: !3769)
!3814 = !DILocalVariable(name: "__stream", arg: 1, scope: !3815, file: !1458, line: 135, type: !3772)
!3815 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1458, file: !1458, line: 135, type: !3770, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3816)
!3816 = !{!3814}
!3817 = !DILocation(line: 0, scope: !3815, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 58, column: 27, scope: !3769)
!3819 = !DILocation(line: 137, column: 10, scope: !3815, inlinedAt: !3818)
!3820 = !{!1467, !875, i64 0}
!3821 = !DILocation(line: 58, column: 43, scope: !3769)
!3822 = !DILocation(line: 59, column: 29, scope: !3769)
!3823 = !DILocation(line: 59, column: 45, scope: !3769)
!3824 = !DILocation(line: 69, column: 17, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3769, file: !776, line: 69, column: 7)
!3826 = !DILocation(line: 57, column: 50, scope: !3769)
!3827 = !DILocation(line: 69, column: 33, scope: !3825)
!3828 = !DILocation(line: 69, column: 53, scope: !3825)
!3829 = !DILocation(line: 69, column: 59, scope: !3825)
!3830 = !DILocation(line: 69, column: 7, scope: !3769)
!3831 = !DILocation(line: 71, column: 11, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3825, file: !776, line: 70, column: 5)
!3833 = !DILocation(line: 72, column: 9, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3832, file: !776, line: 71, column: 11)
!3835 = !DILocation(line: 72, column: 15, scope: !3834)
!3836 = !DILocation(line: 77, column: 1, scope: !3769)
!3837 = !DISubprogram(name: "__fpending", scope: !3838, file: !3838, line: 75, type: !3839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3838 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!119, !3772}
!3841 = distinct !DISubprogram(name: "rpl_fclose", scope: !778, file: !778, line: 58, type: !3842, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3878)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!77, !3844}
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3846)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3847)
!3847 = !{!3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3846, file: !185, line: 51, baseType: !77, size: 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3846, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3846, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3846, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3846, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3846, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3846, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3846, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3846, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3846, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3846, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3846, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3846, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3846, file: !185, line: 70, baseType: !3862, size: 64, offset: 832)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3846, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3846, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3846, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3846, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3846, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3846, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3846, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3846, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3846, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3846, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3846, file: !185, line: 93, baseType: !3862, size: 64, offset: 1344)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3846, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3846, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3846, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3846, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!3878 = !{!3879, !3880, !3881, !3882}
!3879 = !DILocalVariable(name: "fp", arg: 1, scope: !3841, file: !778, line: 58, type: !3844)
!3880 = !DILocalVariable(name: "saved_errno", scope: !3841, file: !778, line: 60, type: !77)
!3881 = !DILocalVariable(name: "fd", scope: !3841, file: !778, line: 63, type: !77)
!3882 = !DILocalVariable(name: "result", scope: !3841, file: !778, line: 74, type: !77)
!3883 = !DILocation(line: 0, scope: !3841)
!3884 = !DILocation(line: 63, column: 12, scope: !3841)
!3885 = !DILocation(line: 64, column: 10, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3841, file: !778, line: 64, column: 7)
!3887 = !DILocation(line: 64, column: 7, scope: !3841)
!3888 = !DILocation(line: 65, column: 12, scope: !3886)
!3889 = !DILocation(line: 65, column: 5, scope: !3886)
!3890 = !DILocation(line: 70, column: 9, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3841, file: !778, line: 70, column: 7)
!3892 = !DILocation(line: 70, column: 23, scope: !3891)
!3893 = !DILocation(line: 70, column: 33, scope: !3891)
!3894 = !DILocation(line: 70, column: 26, scope: !3891)
!3895 = !DILocation(line: 70, column: 59, scope: !3891)
!3896 = !DILocation(line: 71, column: 7, scope: !3891)
!3897 = !DILocation(line: 71, column: 10, scope: !3891)
!3898 = !DILocation(line: 70, column: 7, scope: !3841)
!3899 = !DILocation(line: 100, column: 12, scope: !3841)
!3900 = !DILocation(line: 105, column: 7, scope: !3841)
!3901 = !DILocation(line: 72, column: 19, scope: !3891)
!3902 = !DILocation(line: 105, column: 19, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3841, file: !778, line: 105, column: 7)
!3904 = !DILocation(line: 107, column: 13, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3903, file: !778, line: 106, column: 5)
!3906 = !DILocation(line: 109, column: 5, scope: !3905)
!3907 = !DILocation(line: 112, column: 1, scope: !3841)
!3908 = !DISubprogram(name: "fileno", scope: !420, file: !420, line: 809, type: !3842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3909 = !DISubprogram(name: "fclose", scope: !420, file: !420, line: 178, type: !3842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3910 = !DISubprogram(name: "__freading", scope: !3838, file: !3838, line: 51, type: !3842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3911 = !DISubprogram(name: "lseek", scope: !1254, file: !1254, line: 339, type: !3912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!207, !77, !207, !77}
!3914 = distinct !DISubprogram(name: "rpl_fflush", scope: !780, file: !780, line: 130, type: !3915, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3951)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!77, !3917}
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3919)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3920)
!3920 = !{!3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3919, file: !185, line: 51, baseType: !77, size: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3919, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3919, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3919, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3919, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3919, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3919, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3919, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3919, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3919, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3919, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3919, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3919, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3919, file: !185, line: 70, baseType: !3935, size: 64, offset: 832)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3919, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3919, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3919, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3919, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3919, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3919, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3919, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3919, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3919, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3919, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3919, file: !185, line: 93, baseType: !3935, size: 64, offset: 1344)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3919, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3919, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3919, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3919, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!3951 = !{!3952}
!3952 = !DILocalVariable(name: "stream", arg: 1, scope: !3914, file: !780, line: 130, type: !3917)
!3953 = !DILocation(line: 0, scope: !3914)
!3954 = !DILocation(line: 151, column: 14, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3914, file: !780, line: 151, column: 7)
!3956 = !DILocation(line: 151, column: 22, scope: !3955)
!3957 = !DILocation(line: 151, column: 27, scope: !3955)
!3958 = !DILocation(line: 151, column: 7, scope: !3914)
!3959 = !DILocation(line: 152, column: 12, scope: !3955)
!3960 = !DILocation(line: 152, column: 5, scope: !3955)
!3961 = !DILocalVariable(name: "fp", arg: 1, scope: !3962, file: !780, line: 42, type: !3917)
!3962 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !780, file: !780, line: 42, type: !3963, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3965)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{null, !3917}
!3965 = !{!3961}
!3966 = !DILocation(line: 0, scope: !3962, inlinedAt: !3967)
!3967 = distinct !DILocation(line: 157, column: 3, scope: !3914)
!3968 = !DILocation(line: 44, column: 12, scope: !3969, inlinedAt: !3967)
!3969 = distinct !DILexicalBlock(scope: !3962, file: !780, line: 44, column: 7)
!3970 = !DILocation(line: 44, column: 19, scope: !3969, inlinedAt: !3967)
!3971 = !DILocation(line: 44, column: 7, scope: !3962, inlinedAt: !3967)
!3972 = !DILocation(line: 46, column: 5, scope: !3969, inlinedAt: !3967)
!3973 = !DILocation(line: 159, column: 10, scope: !3914)
!3974 = !DILocation(line: 159, column: 3, scope: !3914)
!3975 = !DILocation(line: 236, column: 1, scope: !3914)
!3976 = !DISubprogram(name: "fflush", scope: !420, file: !420, line: 230, type: !3915, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3977 = distinct !DISubprogram(name: "rpl_fseeko", scope: !782, file: !782, line: 28, type: !3978, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4015)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!77, !3980, !4014, !77}
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3982)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3983)
!3983 = !{!3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3982, file: !185, line: 51, baseType: !77, size: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3982, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3982, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3982, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3982, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3982, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3982, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3982, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3982, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3982, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3982, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3982, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3982, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3982, file: !185, line: 70, baseType: !3998, size: 64, offset: 832)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3982, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3982, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3982, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3982, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3982, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3982, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3982, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3982, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3982, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3982, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3982, file: !185, line: 93, baseType: !3998, size: 64, offset: 1344)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3982, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3982, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3982, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3982, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!4014 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !420, line: 63, baseType: !207)
!4015 = !{!4016, !4017, !4018, !4019}
!4016 = !DILocalVariable(name: "fp", arg: 1, scope: !3977, file: !782, line: 28, type: !3980)
!4017 = !DILocalVariable(name: "offset", arg: 2, scope: !3977, file: !782, line: 28, type: !4014)
!4018 = !DILocalVariable(name: "whence", arg: 3, scope: !3977, file: !782, line: 28, type: !77)
!4019 = !DILocalVariable(name: "pos", scope: !4020, file: !782, line: 123, type: !4014)
!4020 = distinct !DILexicalBlock(scope: !4021, file: !782, line: 119, column: 5)
!4021 = distinct !DILexicalBlock(scope: !3977, file: !782, line: 55, column: 7)
!4022 = !DILocation(line: 0, scope: !3977)
!4023 = !DILocation(line: 55, column: 12, scope: !4021)
!4024 = !{!1467, !812, i64 16}
!4025 = !DILocation(line: 55, column: 33, scope: !4021)
!4026 = !{!1467, !812, i64 8}
!4027 = !DILocation(line: 55, column: 25, scope: !4021)
!4028 = !DILocation(line: 56, column: 7, scope: !4021)
!4029 = !DILocation(line: 56, column: 15, scope: !4021)
!4030 = !DILocation(line: 56, column: 37, scope: !4021)
!4031 = !{!1467, !812, i64 32}
!4032 = !DILocation(line: 56, column: 29, scope: !4021)
!4033 = !DILocation(line: 57, column: 7, scope: !4021)
!4034 = !DILocation(line: 57, column: 15, scope: !4021)
!4035 = !{!1467, !812, i64 72}
!4036 = !DILocation(line: 57, column: 29, scope: !4021)
!4037 = !DILocation(line: 55, column: 7, scope: !3977)
!4038 = !DILocation(line: 123, column: 26, scope: !4020)
!4039 = !DILocation(line: 123, column: 19, scope: !4020)
!4040 = !DILocation(line: 0, scope: !4020)
!4041 = !DILocation(line: 124, column: 15, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4020, file: !782, line: 124, column: 11)
!4043 = !DILocation(line: 124, column: 11, scope: !4020)
!4044 = !DILocation(line: 135, column: 19, scope: !4020)
!4045 = !DILocation(line: 136, column: 12, scope: !4020)
!4046 = !DILocation(line: 136, column: 20, scope: !4020)
!4047 = !{!1467, !1149, i64 144}
!4048 = !DILocation(line: 167, column: 7, scope: !4020)
!4049 = !DILocation(line: 169, column: 10, scope: !3977)
!4050 = !DILocation(line: 169, column: 3, scope: !3977)
!4051 = !DILocation(line: 170, column: 1, scope: !3977)
!4052 = !DISubprogram(name: "fseeko", scope: !420, file: !420, line: 736, type: !4053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!77, !3980, !207, !77}
!4055 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !702, file: !702, line: 100, type: !4056, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !4059)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!119, !1828, !122, !119, !4058}
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!4059 = !{!4060, !4061, !4062, !4063, !4064}
!4060 = !DILocalVariable(name: "pwc", arg: 1, scope: !4055, file: !702, line: 100, type: !1828)
!4061 = !DILocalVariable(name: "s", arg: 2, scope: !4055, file: !702, line: 100, type: !122)
!4062 = !DILocalVariable(name: "n", arg: 3, scope: !4055, file: !702, line: 100, type: !119)
!4063 = !DILocalVariable(name: "ps", arg: 4, scope: !4055, file: !702, line: 100, type: !4058)
!4064 = !DILocalVariable(name: "ret", scope: !4055, file: !702, line: 130, type: !119)
!4065 = !DILocation(line: 0, scope: !4055)
!4066 = !DILocation(line: 105, column: 9, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4055, file: !702, line: 105, column: 7)
!4068 = !DILocation(line: 105, column: 7, scope: !4055)
!4069 = !DILocation(line: 117, column: 10, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4055, file: !702, line: 117, column: 7)
!4071 = !DILocation(line: 117, column: 7, scope: !4055)
!4072 = !DILocation(line: 130, column: 16, scope: !4055)
!4073 = !DILocation(line: 135, column: 11, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4055, file: !702, line: 135, column: 7)
!4075 = !DILocation(line: 135, column: 25, scope: !4074)
!4076 = !DILocation(line: 135, column: 30, scope: !4074)
!4077 = !DILocation(line: 135, column: 7, scope: !4055)
!4078 = !DILocalVariable(name: "ps", arg: 1, scope: !4079, file: !1801, line: 1135, type: !4058)
!4079 = distinct !DISubprogram(name: "mbszero", scope: !1801, file: !1801, line: 1135, type: !4080, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !4082)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{null, !4058}
!4082 = !{!4078}
!4083 = !DILocation(line: 0, scope: !4079, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 137, column: 5, scope: !4074)
!4085 = !DILocalVariable(name: "__dest", arg: 1, scope: !4086, file: !1810, line: 57, type: !117)
!4086 = distinct !DISubprogram(name: "memset", scope: !1810, file: !1810, line: 57, type: !1811, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !4087)
!4087 = !{!4085, !4088, !4089}
!4088 = !DILocalVariable(name: "__ch", arg: 2, scope: !4086, file: !1810, line: 57, type: !77)
!4089 = !DILocalVariable(name: "__len", arg: 3, scope: !4086, file: !1810, line: 57, type: !119)
!4090 = !DILocation(line: 0, scope: !4086, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 1137, column: 3, scope: !4079, inlinedAt: !4084)
!4092 = !DILocation(line: 59, column: 10, scope: !4086, inlinedAt: !4091)
!4093 = !DILocation(line: 137, column: 5, scope: !4074)
!4094 = !DILocation(line: 138, column: 11, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4055, file: !702, line: 138, column: 7)
!4096 = !DILocation(line: 138, column: 7, scope: !4055)
!4097 = !DILocation(line: 139, column: 5, scope: !4095)
!4098 = !DILocation(line: 143, column: 26, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4055, file: !702, line: 143, column: 7)
!4100 = !DILocation(line: 143, column: 41, scope: !4099)
!4101 = !DILocation(line: 143, column: 7, scope: !4055)
!4102 = !DILocation(line: 145, column: 15, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4104, file: !702, line: 145, column: 11)
!4104 = distinct !DILexicalBlock(scope: !4099, file: !702, line: 144, column: 5)
!4105 = !DILocation(line: 145, column: 11, scope: !4104)
!4106 = !DILocation(line: 146, column: 32, scope: !4103)
!4107 = !DILocation(line: 146, column: 16, scope: !4103)
!4108 = !DILocation(line: 146, column: 14, scope: !4103)
!4109 = !DILocation(line: 146, column: 9, scope: !4103)
!4110 = !DILocation(line: 286, column: 1, scope: !4055)
!4111 = !DISubprogram(name: "mbsinit", scope: !4112, file: !4112, line: 293, type: !4113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!4112 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!77, !4115}
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !708)
!4117 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !784, file: !784, line: 27, type: !3281, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4118)
!4118 = !{!4119, !4120, !4121, !4122}
!4119 = !DILocalVariable(name: "ptr", arg: 1, scope: !4117, file: !784, line: 27, type: !117)
!4120 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4117, file: !784, line: 27, type: !119)
!4121 = !DILocalVariable(name: "size", arg: 3, scope: !4117, file: !784, line: 27, type: !119)
!4122 = !DILocalVariable(name: "nbytes", scope: !4117, file: !784, line: 29, type: !119)
!4123 = !DILocation(line: 0, scope: !4117)
!4124 = !DILocation(line: 30, column: 7, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4117, file: !784, line: 30, column: 7)
!4126 = !DILocalVariable(name: "ptr", arg: 1, scope: !4127, file: !3373, line: 2057, type: !117)
!4127 = distinct !DISubprogram(name: "rpl_realloc", scope: !3373, file: !3373, line: 2057, type: !3365, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4128)
!4128 = !{!4126, !4129}
!4129 = !DILocalVariable(name: "size", arg: 2, scope: !4127, file: !3373, line: 2057, type: !119)
!4130 = !DILocation(line: 0, scope: !4127, inlinedAt: !4131)
!4131 = distinct !DILocation(line: 37, column: 10, scope: !4117)
!4132 = !DILocation(line: 2059, column: 24, scope: !4127, inlinedAt: !4131)
!4133 = !DILocation(line: 2059, column: 10, scope: !4127, inlinedAt: !4131)
!4134 = !DILocation(line: 37, column: 3, scope: !4117)
!4135 = !DILocation(line: 32, column: 7, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4125, file: !784, line: 31, column: 5)
!4137 = !DILocation(line: 32, column: 13, scope: !4136)
!4138 = !DILocation(line: 33, column: 7, scope: !4136)
!4139 = !DILocation(line: 38, column: 1, scope: !4117)
!4140 = distinct !DISubprogram(name: "hard_locale", scope: !720, file: !720, line: 28, type: !4141, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4143)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!152, !77}
!4143 = !{!4144, !4145}
!4144 = !DILocalVariable(name: "category", arg: 1, scope: !4140, file: !720, line: 28, type: !77)
!4145 = !DILocalVariable(name: "locale", scope: !4140, file: !720, line: 30, type: !4146)
!4146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4147)
!4147 = !{!4148}
!4148 = !DISubrange(count: 257)
!4149 = !DILocation(line: 0, scope: !4140)
!4150 = !DILocation(line: 30, column: 3, scope: !4140)
!4151 = !DILocation(line: 30, column: 8, scope: !4140)
!4152 = !DILocation(line: 32, column: 7, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4140, file: !720, line: 32, column: 7)
!4154 = !DILocation(line: 32, column: 7, scope: !4140)
!4155 = !DILocalVariable(name: "__s1", arg: 1, scope: !4156, file: !887, line: 1359, type: !122)
!4156 = distinct !DISubprogram(name: "streq", scope: !887, file: !887, line: 1359, type: !888, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4157)
!4157 = !{!4155, !4158}
!4158 = !DILocalVariable(name: "__s2", arg: 2, scope: !4156, file: !887, line: 1359, type: !122)
!4159 = !DILocation(line: 0, scope: !4156, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 35, column: 9, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4140, file: !720, line: 35, column: 7)
!4162 = !DILocation(line: 1361, column: 11, scope: !4156, inlinedAt: !4160)
!4163 = !DILocation(line: 1361, column: 10, scope: !4156, inlinedAt: !4160)
!4164 = !DILocation(line: 35, column: 29, scope: !4161)
!4165 = !DILocation(line: 0, scope: !4156, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 35, column: 32, scope: !4161)
!4167 = !DILocation(line: 1361, column: 11, scope: !4156, inlinedAt: !4166)
!4168 = !DILocation(line: 1361, column: 10, scope: !4156, inlinedAt: !4166)
!4169 = !DILocation(line: 35, column: 7, scope: !4140)
!4170 = !DILocation(line: 46, column: 3, scope: !4140)
!4171 = !DILocation(line: 47, column: 1, scope: !4140)
!4172 = distinct !DISubprogram(name: "setlocale_null_r", scope: !789, file: !789, line: 154, type: !4173, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4175)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!77, !77, !116, !119}
!4175 = !{!4176, !4177, !4178}
!4176 = !DILocalVariable(name: "category", arg: 1, scope: !4172, file: !789, line: 154, type: !77)
!4177 = !DILocalVariable(name: "buf", arg: 2, scope: !4172, file: !789, line: 154, type: !116)
!4178 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4172, file: !789, line: 154, type: !119)
!4179 = !DILocation(line: 0, scope: !4172)
!4180 = !DILocation(line: 159, column: 10, scope: !4172)
!4181 = !DILocation(line: 159, column: 3, scope: !4172)
!4182 = distinct !DISubprogram(name: "setlocale_null", scope: !789, file: !789, line: 186, type: !4183, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4185)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!122, !77}
!4185 = !{!4186}
!4186 = !DILocalVariable(name: "category", arg: 1, scope: !4182, file: !789, line: 186, type: !77)
!4187 = !DILocation(line: 0, scope: !4182)
!4188 = !DILocation(line: 189, column: 10, scope: !4182)
!4189 = !DILocation(line: 189, column: 3, scope: !4182)
!4190 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !791, file: !791, line: 35, type: !4183, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4191)
!4191 = !{!4192, !4193}
!4192 = !DILocalVariable(name: "category", arg: 1, scope: !4190, file: !791, line: 35, type: !77)
!4193 = !DILocalVariable(name: "result", scope: !4190, file: !791, line: 37, type: !122)
!4194 = !DILocation(line: 0, scope: !4190)
!4195 = !DILocation(line: 37, column: 24, scope: !4190)
!4196 = !DILocation(line: 62, column: 3, scope: !4190)
!4197 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !791, file: !791, line: 66, type: !4173, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4198)
!4198 = !{!4199, !4200, !4201, !4202, !4203}
!4199 = !DILocalVariable(name: "category", arg: 1, scope: !4197, file: !791, line: 66, type: !77)
!4200 = !DILocalVariable(name: "buf", arg: 2, scope: !4197, file: !791, line: 66, type: !116)
!4201 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4197, file: !791, line: 66, type: !119)
!4202 = !DILocalVariable(name: "result", scope: !4197, file: !791, line: 111, type: !122)
!4203 = !DILocalVariable(name: "length", scope: !4204, file: !791, line: 125, type: !119)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !791, line: 124, column: 5)
!4205 = distinct !DILexicalBlock(scope: !4197, file: !791, line: 113, column: 7)
!4206 = !DILocation(line: 0, scope: !4197)
!4207 = !DILocation(line: 0, scope: !4190, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 111, column: 24, scope: !4197)
!4209 = !DILocation(line: 37, column: 24, scope: !4190, inlinedAt: !4208)
!4210 = !DILocation(line: 113, column: 14, scope: !4205)
!4211 = !DILocation(line: 113, column: 7, scope: !4197)
!4212 = !DILocation(line: 116, column: 19, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !791, line: 116, column: 11)
!4214 = distinct !DILexicalBlock(scope: !4205, file: !791, line: 114, column: 5)
!4215 = !DILocation(line: 116, column: 11, scope: !4214)
!4216 = !DILocation(line: 120, column: 16, scope: !4213)
!4217 = !DILocation(line: 120, column: 9, scope: !4213)
!4218 = !DILocation(line: 125, column: 23, scope: !4204)
!4219 = !DILocation(line: 0, scope: !4204)
!4220 = !DILocation(line: 126, column: 18, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4204, file: !791, line: 126, column: 11)
!4222 = !DILocation(line: 126, column: 11, scope: !4204)
!4223 = !DILocation(line: 128, column: 39, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4221, file: !791, line: 127, column: 9)
!4225 = !DILocalVariable(name: "__dest", arg: 1, scope: !4226, file: !1810, line: 26, type: !3641)
!4226 = distinct !DISubprogram(name: "memcpy", scope: !1810, file: !1810, line: 26, type: !3639, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !4227)
!4227 = !{!4225, !4228, !4229}
!4228 = !DILocalVariable(name: "__src", arg: 2, scope: !4226, file: !1810, line: 26, type: !1018)
!4229 = !DILocalVariable(name: "__len", arg: 3, scope: !4226, file: !1810, line: 26, type: !119)
!4230 = !DILocation(line: 0, scope: !4226, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 128, column: 11, scope: !4224)
!4232 = !DILocation(line: 29, column: 10, scope: !4226, inlinedAt: !4231)
!4233 = !DILocation(line: 129, column: 11, scope: !4224)
!4234 = !DILocation(line: 133, column: 23, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4236, file: !791, line: 133, column: 15)
!4236 = distinct !DILexicalBlock(scope: !4221, file: !791, line: 132, column: 9)
!4237 = !DILocation(line: 133, column: 15, scope: !4236)
!4238 = !DILocation(line: 138, column: 44, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4235, file: !791, line: 134, column: 13)
!4240 = !DILocation(line: 0, scope: !4226, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 138, column: 15, scope: !4239)
!4242 = !DILocation(line: 29, column: 10, scope: !4226, inlinedAt: !4241)
!4243 = !DILocation(line: 139, column: 15, scope: !4239)
!4244 = !DILocation(line: 139, column: 32, scope: !4239)
!4245 = !DILocation(line: 140, column: 13, scope: !4239)
!4246 = !DILocation(line: 0, scope: !4205)
!4247 = !DILocation(line: 145, column: 1, scope: !4197)
