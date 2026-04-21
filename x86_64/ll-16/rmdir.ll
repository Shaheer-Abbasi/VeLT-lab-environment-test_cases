; ModuleID = 'src/rmdir.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !444
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !414
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !434
@.str.1.41 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !436
@.str.2.43 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !438
@.str.3.42 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !440
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !442
@.str.4.36 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !446
@.str.5.37 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !448
@.str.6.38 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !453
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !458
@.str.61 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !464
@.str.1.62 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !466
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !468
@.str.65 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !499
@.str.1.66 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !502
@.str.2.67 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !504
@.str.3.68 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !509
@.str.4.69 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !511
@.str.5.70 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !513
@.str.6.71 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !515
@.str.7.72 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !517
@.str.8.73 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !519
@.str.9.74 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !521
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.65, ptr @.str.1.66, ptr @.str.2.67, ptr @.str.3.68, ptr @.str.4.69, ptr @.str.5.70, ptr @.str.6.71, ptr @.str.7.72, ptr @.str.8.73, ptr @.str.9.74, ptr null], align 16, !dbg !523
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !534
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !548
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !586
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !593
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !550
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !595
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !538
@.str.10.77 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !555
@.str.11.75 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !557
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !559
@.str.13.76 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !561
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !563
@.str.83 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !601
@.str.1.84 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !604
@.str.2.85 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !606
@.str.3.86 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !608
@.str.4.87 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !610
@.str.5.88 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !612
@.str.6.89 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !617
@.str.7.90 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !622
@.str.8.91 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !624
@.str.9.92 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !626
@.str.10.93 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !631
@.str.11.94 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !636
@.str.12.95 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !638
@.str.13.96 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !640
@.str.14.97 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !645
@.str.15.98 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !647
@.str.16.99 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !652
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.104 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !657
@.str.18.105 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !659
@.str.19.106 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !661
@.str.20.107 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !663
@.str.21.108 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !665
@.str.22.109 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !667
@.str.23.110 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !669
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !674
@exit_failure = dso_local global i32 1, align 4, !dbg !682
@.str.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !688
@.str.1.123 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !691
@.str.2.124 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !693
@.str.140 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !695
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !698
@.str.1.145 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !713

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !794 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !798, metadata !DIExpression()), !dbg !799
  %2 = icmp eq i32 %0, 0, !dbg !800
  br i1 %2, label %8, label %3, !dbg !802

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !803, !tbaa !805
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !803
  %6 = load ptr, ptr @program_name, align 8, !dbg !803, !tbaa !805
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !803
  br label %34, !dbg !803

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !809
  %10 = load ptr, ptr @program_name, align 8, !dbg !809, !tbaa !805
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !809
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !811
  %13 = load ptr, ptr @stdout, align 8, !dbg !811, !tbaa !805
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !811
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !812
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !812
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !813
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !813
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !814
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !814
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !815
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !815
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !816
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !816
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !817, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !829, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr poison, metadata !829, metadata !DIExpression()), !dbg !834
  tail call void @emit_bug_reporting_address() #38, !dbg !836
  %20 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !837
  call void @llvm.dbg.value(metadata ptr %20, metadata !832, metadata !DIExpression()), !dbg !834
  %21 = icmp eq ptr %20, null, !dbg !838
  br i1 %21, label %29, label %22, !dbg !840

22:                                               ; preds = %8
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str.49, i64 noundef 3) #39, !dbg !841
  %24 = icmp eq i32 %23, 0, !dbg !841
  br i1 %24, label %29, label %25, !dbg !842

25:                                               ; preds = %22
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #38, !dbg !843
  %27 = load ptr, ptr @stdout, align 8, !dbg !843, !tbaa !805
  %28 = tail call i32 @fputs_unlocked(ptr noundef %26, ptr noundef %27), !dbg !843
  br label %29, !dbg !845

29:                                               ; preds = %8, %22, %25
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !829, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !833, metadata !DIExpression()), !dbg !834
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #38, !dbg !846
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %30, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3) #38, !dbg !846
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #38, !dbg !847
  %33 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #38, !dbg !847
  br label %34

34:                                               ; preds = %29, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !848
  unreachable, !dbg !848
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !849 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !854 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !860 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !863 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !159 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !163, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata ptr %0, metadata !164, metadata !DIExpression()), !dbg !867
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !868, !tbaa !869
  %3 = icmp eq i32 %2, -1, !dbg !871
  br i1 %3, label %4, label %16, !dbg !872

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.19) #38, !dbg !873
  call void @llvm.dbg.value(metadata ptr %5, metadata !165, metadata !DIExpression()), !dbg !874
  %6 = icmp eq ptr %5, null, !dbg !875
  br i1 %6, label %14, label %7, !dbg !876

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !877, !tbaa !878
  %9 = icmp eq i8 %8, 0, !dbg !877
  br i1 %9, label %14, label %10, !dbg !879

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !880, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata ptr @.str.20, metadata !886, metadata !DIExpression()), !dbg !887
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.20) #39, !dbg !889
  %12 = icmp eq i32 %11, 0, !dbg !890
  %13 = zext i1 %12 to i32, !dbg !879
  br label %14, !dbg !879

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !891, !tbaa !869
  br label %16, !dbg !892

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !893
  %18 = icmp eq i32 %17, 0, !dbg !893
  br i1 %18, label %22, label %19, !dbg !895

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !896, !tbaa !805
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !896
  br label %128, !dbg !898

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !168, metadata !DIExpression()), !dbg !867
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.21) #39, !dbg !899
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !900
  call void @llvm.dbg.value(metadata ptr %24, metadata !169, metadata !DIExpression()), !dbg !867
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !901
  call void @llvm.dbg.value(metadata ptr %25, metadata !170, metadata !DIExpression()), !dbg !867
  %26 = icmp eq ptr %25, null, !dbg !902
  br i1 %26, label %58, label %27, !dbg !903

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !904
  br i1 %28, label %58, label %29, !dbg !905

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !171, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 0, metadata !175, metadata !DIExpression()), !dbg !906
  %30 = icmp ult ptr %24, %25, !dbg !907
  br i1 %30, label %31, label %52, !dbg !908

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !867
  %33 = load ptr, ptr %32, align 8, !tbaa !805
  br label %34, !dbg !908

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !171, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %36, metadata !175, metadata !DIExpression()), !dbg !906
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !909
  call void @llvm.dbg.value(metadata ptr %37, metadata !171, metadata !DIExpression()), !dbg !906
  %38 = load i8, ptr %35, align 1, !dbg !909, !tbaa !878
  %39 = sext i8 %38 to i64, !dbg !909
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !909
  %41 = load i16, ptr %40, align 2, !dbg !909, !tbaa !910
  %42 = freeze i16 %41, !dbg !912
  %43 = lshr i16 %42, 13, !dbg !912
  %44 = and i16 %43, 1, !dbg !912
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !913
  call void @llvm.dbg.value(metadata i64 %46, metadata !175, metadata !DIExpression()), !dbg !906
  %47 = icmp ult ptr %37, %25, !dbg !907
  %48 = icmp ult i64 %46, 2, !dbg !914
  %49 = select i1 %47, i1 %48, i1 false, !dbg !914
  br i1 %49, label %34, label %50, !dbg !908, !llvm.loop !915

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !917
  br i1 %51, label %52, label %54, !dbg !919

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !919

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !919
  call void @llvm.dbg.value(metadata i8 %57, metadata !168, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata ptr %56, metadata !170, metadata !DIExpression()), !dbg !867
  br label %58, !dbg !920

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !867
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !867
  call void @llvm.dbg.value(metadata i8 %60, metadata !168, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata ptr %59, metadata !170, metadata !DIExpression()), !dbg !867
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.22) #39, !dbg !921
  call void @llvm.dbg.value(metadata i64 %61, metadata !176, metadata !DIExpression()), !dbg !867
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !922
  call void @llvm.dbg.value(metadata ptr %62, metadata !177, metadata !DIExpression()), !dbg !867
  br label %63, !dbg !923

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !867
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !867
  call void @llvm.dbg.value(metadata i8 %65, metadata !168, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata ptr %64, metadata !177, metadata !DIExpression()), !dbg !867
  %66 = load i8, ptr %64, align 1, !dbg !924, !tbaa !878
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !925

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !926
  %69 = load i8, ptr %68, align 1, !dbg !929, !tbaa !878
  %70 = icmp eq i8 %69, 45, !dbg !930
  %71 = select i1 %70, i8 0, i8 %65, !dbg !931
  br label %72, !dbg !931

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !867
  call void @llvm.dbg.value(metadata i8 %73, metadata !168, metadata !DIExpression()), !dbg !867
  %74 = tail call ptr @__ctype_b_loc() #41, !dbg !932
  %75 = load ptr, ptr %74, align 8, !dbg !932, !tbaa !805
  %76 = sext i8 %66 to i64, !dbg !932
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !932
  %78 = load i16, ptr %77, align 2, !dbg !932, !tbaa !910
  %79 = and i16 %78, 8192, !dbg !932
  %80 = icmp eq i16 %79, 0, !dbg !932
  br i1 %80, label %96, label %81, !dbg !934

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !935
  br i1 %82, label %98, label %83, !dbg !938

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !939
  %85 = load i8, ptr %84, align 1, !dbg !939, !tbaa !878
  %86 = sext i8 %85 to i64, !dbg !939
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !939
  %88 = load i16, ptr %87, align 2, !dbg !939, !tbaa !910
  %89 = and i16 %88, 8192, !dbg !939
  %90 = icmp eq i16 %89, 0, !dbg !939
  br i1 %90, label %91, label %98, !dbg !940

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !941
  %93 = icmp ne i8 %92, 0, !dbg !941
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !943
  br i1 %95, label %96, label %98, !dbg !943

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !944
  call void @llvm.dbg.value(metadata ptr %97, metadata !177, metadata !DIExpression()), !dbg !867
  br label %63, !dbg !923, !llvm.loop !945

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !947
  %100 = load ptr, ptr @stdout, align 8, !dbg !947, !tbaa !805
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !947
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !880, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !880, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !880, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !880, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !880, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !880, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !880, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !880, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !880, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !880, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !231, metadata !DIExpression()), !dbg !867
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.36, i64 noundef 6) #39, !dbg !968
  %103 = icmp eq i32 %102, 0, !dbg !968
  br i1 %103, label %107, label %104, !dbg !970

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.37, i64 noundef 9) #39, !dbg !971
  %106 = icmp eq i32 %105, 0, !dbg !971
  br i1 %106, label %107, label %110, !dbg !972

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !973
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #38, !dbg !973
  br label %113, !dbg !975

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !976
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #38, !dbg !976
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !978, !tbaa !805
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %114), !dbg !978
  %116 = load ptr, ptr @stdout, align 8, !dbg !979, !tbaa !805
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %116), !dbg !979
  %118 = ptrtoint ptr %64 to i64, !dbg !980
  %119 = sub i64 %118, %99, !dbg !980
  %120 = load ptr, ptr @stdout, align 8, !dbg !980, !tbaa !805
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !980
  %122 = load ptr, ptr @stdout, align 8, !dbg !981, !tbaa !805
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %122), !dbg !981
  %124 = load ptr, ptr @stdout, align 8, !dbg !982, !tbaa !805
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.45, ptr noundef %124), !dbg !982
  %126 = load ptr, ptr @stdout, align 8, !dbg !983, !tbaa !805
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !983
  br label %128, !dbg !984

128:                                              ; preds = %113, %19
  ret void, !dbg !984
}

; Function Attrs: nounwind
declare !dbg !985 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !989 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !993 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !995 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !998 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1001 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1004 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1007 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1013 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1014 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1020 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1025, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata ptr %1, metadata !1026, metadata !DIExpression()), !dbg !1081
  %5 = load ptr, ptr %1, align 8, !dbg !1082, !tbaa !805
  tail call void @set_program_name(ptr noundef %5) #38, !dbg !1083
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #38, !dbg !1084
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #38, !dbg !1085
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #38, !dbg !1086
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1087
  br label %10, !dbg !1088

10:                                               ; preds = %20, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1089
  call void @llvm.dbg.value(metadata i32 %11, metadata !1027, metadata !DIExpression()), !dbg !1081
  switch i32 %11, label %19 [
    i32 -1, label %22
    i32 112, label %20
    i32 128, label %12
    i32 118, label %13
    i32 -130, label %14
    i32 -131, label %15
  ], !dbg !1088

12:                                               ; preds = %10
  br label %20, !dbg !1090

13:                                               ; preds = %10
  br label %20, !dbg !1093

14:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #42, !dbg !1094
  unreachable, !dbg !1094

15:                                               ; preds = %10
  %16 = load ptr, ptr @stdout, align 8, !dbg !1095, !tbaa !805
  %17 = load ptr, ptr @Version, align 8, !dbg !1095, !tbaa !805
  %18 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #38, !dbg !1095
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, ptr noundef %17, ptr noundef %18, ptr noundef null) #38, !dbg !1095
  tail call void @exit(i32 noundef 0) #40, !dbg !1095
  unreachable, !dbg !1095

19:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #42, !dbg !1096
  unreachable, !dbg !1096

20:                                               ; preds = %10, %13, %12
  %21 = phi ptr [ @verbose, %13 ], [ @ignore_fail_on_non_empty, %12 ], [ @remove_empty_parents, %10 ]
  store i1 true, ptr %21, align 1, !dbg !1097
  br label %10, !dbg !1088, !llvm.loop !1098

22:                                               ; preds = %10
  %23 = load i32, ptr @optind, align 4, !dbg !1100, !tbaa !869
  %24 = icmp eq i32 %23, %0, !dbg !1102
  br i1 %24, label %29, label %25, !dbg !1103

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1028, metadata !DIExpression()), !dbg !1081
  %26 = icmp slt i32 %23, %0, !dbg !1104
  br i1 %26, label %27, label %134, !dbg !1105

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  br label %31, !dbg !1105

29:                                               ; preds = %22
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #38, !dbg !1106
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30) #38, !dbg !1106
  tail call void @usage(i32 noundef 1) #42, !dbg !1108
  unreachable, !dbg !1108

31:                                               ; preds = %27, %129
  %32 = phi i32 [ %23, %27 ], [ %132, %129 ]
  %33 = phi i8 [ 1, %27 ], [ %130, %129 ]
  call void @llvm.dbg.value(metadata i8 %33, metadata !1028, metadata !DIExpression()), !dbg !1081
  %34 = sext i32 %32 to i64, !dbg !1109
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34, !dbg !1109
  %36 = load ptr, ptr %35, align 8, !dbg !1109, !tbaa !805
  call void @llvm.dbg.value(metadata ptr %36, metadata !1029, metadata !DIExpression()), !dbg !1110
  %37 = load i1, ptr @verbose, align 1, !dbg !1111
  br i1 %37, label %38, label %42, !dbg !1113

38:                                               ; preds = %31
  %39 = load ptr, ptr @stdout, align 8, !dbg !1114, !tbaa !805
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #38, !dbg !1115
  %41 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #38, !dbg !1116
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %39, ptr noundef %40, ptr noundef %41) #38, !dbg !1117
  br label %42, !dbg !1117

42:                                               ; preds = %38, %31
  %43 = tail call i32 @rmdir(ptr noundef %36) #38, !dbg !1118
  %44 = icmp eq i32 %43, 0, !dbg !1119
  br i1 %44, label %81, label %45, !dbg !1120

45:                                               ; preds = %42
  %46 = tail call ptr @__errno_location() #41, !dbg !1121
  %47 = load i32, ptr %46, align 4, !dbg !1121, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %47, metadata !1033, metadata !DIExpression()), !dbg !1122
  %48 = tail call fastcc zeroext i1 @ignorable_failure(i32 noundef %47, ptr noundef %36), !dbg !1123
  br i1 %48, label %129, label %49, !dbg !1125

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8 0, metadata !1036, metadata !DIExpression()), !dbg !1122
  %50 = icmp eq i32 %47, 20, !dbg !1126
  br i1 %50, label %51, label %78, !dbg !1127

51:                                               ; preds = %49
  %52 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %36, i32 noundef 47) #39, !dbg !1128
  call void @llvm.dbg.value(metadata ptr %52, metadata !1037, metadata !DIExpression()), !dbg !1129
  %53 = icmp eq ptr %52, null, !dbg !1130
  br i1 %53, label %78, label %54, !dbg !1131

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1132
  %56 = load i8, ptr %55, align 1, !dbg !1133, !tbaa !878
  %57 = icmp eq i8 %56, 0, !dbg !1134
  br i1 %57, label %58, label %78, !dbg !1135

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #38, !dbg !1136
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1040, metadata !DIExpression()), !dbg !1137
  %59 = call i32 @stat(ptr noundef %36, ptr noundef nonnull %4) #38, !dbg !1138
  call void @llvm.dbg.value(metadata i32 %59, metadata !1077, metadata !DIExpression()), !dbg !1139
  %60 = icmp eq i32 %59, 0, !dbg !1140
  br i1 %60, label %64, label %61, !dbg !1140

61:                                               ; preds = %58
  %62 = load i32, ptr %46, align 4, !dbg !1141, !tbaa !869
  %63 = icmp eq i32 %62, 20, !dbg !1142
  br i1 %63, label %77, label %68, !dbg !1143

64:                                               ; preds = %58
  %65 = load i32, ptr %28, align 8, !dbg !1144, !tbaa !1145
  %66 = and i32 %65, 61440, !dbg !1144
  %67 = icmp eq i32 %66, 16384, !dbg !1144
  br i1 %67, label %68, label %77, !dbg !1149

68:                                               ; preds = %64, %61
  %69 = tail call noalias nonnull ptr @xstrdup(ptr noundef %36) #38, !dbg !1150
  call void @llvm.dbg.value(metadata ptr %69, metadata !1078, metadata !DIExpression()), !dbg !1151
  %70 = tail call zeroext i1 @strip_trailing_slashes(ptr noundef %36) #38, !dbg !1152
  call void @llvm.dbg.value(metadata ptr %36, metadata !1153, metadata !DIExpression()), !dbg !1160
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #38, !dbg !1163
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1159, metadata !DIExpression()), !dbg !1164
  %71 = call i64 @readlink(ptr noundef nonnull %36, ptr noundef nonnull %3, i64 noundef 1) #38, !dbg !1165
  %72 = icmp sgt i64 %71, -1, !dbg !1167
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #38, !dbg !1168
  br i1 %72, label %73, label %76, !dbg !1169

73:                                               ; preds = %68
  %74 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !1170
  %75 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull %69) #38, !dbg !1170
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %74, ptr noundef %75) #38, !dbg !1170
  call void @llvm.dbg.value(metadata i8 poison, metadata !1036, metadata !DIExpression()), !dbg !1122
  tail call void @free(ptr noundef nonnull %69) #38, !dbg !1172
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #38, !dbg !1173
  br label %129, !dbg !1174

76:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i8 poison, metadata !1036, metadata !DIExpression()), !dbg !1122
  tail call void @free(ptr noundef nonnull %69) #38, !dbg !1172
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #38, !dbg !1173
  br label %78, !dbg !1174

77:                                               ; preds = %61, %64
  call void @llvm.dbg.value(metadata i8 poison, metadata !1036, metadata !DIExpression()), !dbg !1122
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #38, !dbg !1173
  br label %78, !dbg !1174

78:                                               ; preds = %76, %49, %54, %51, %77
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #38, !dbg !1175
  %80 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #38, !dbg !1175
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %47, ptr noundef %79, ptr noundef %80) #38, !dbg !1175
  br label %129, !dbg !1175

81:                                               ; preds = %42
  %82 = load i1, ptr @remove_empty_parents, align 1, !dbg !1177
  br i1 %82, label %83, label %129, !dbg !1179

83:                                               ; preds = %81
  call void @llvm.dbg.value(metadata ptr %36, metadata !1180, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i8 1, metadata !1185, metadata !DIExpression()), !dbg !1194
  %84 = ptrtoint ptr %36 to i64, !dbg !1197
  %85 = tail call zeroext i1 @strip_trailing_slashes(ptr noundef %36) #38, !dbg !1197
  br label %86, !dbg !1198

86:                                               ; preds = %111, %83
  call void @llvm.dbg.value(metadata i8 1, metadata !1185, metadata !DIExpression()), !dbg !1194
  %87 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %36, i32 noundef 47) #39, !dbg !1199
  %88 = ptrtoint ptr %87 to i64, !dbg !1200
  call void @llvm.dbg.value(metadata ptr %87, metadata !1186, metadata !DIExpression()), !dbg !1200
  %89 = icmp eq ptr %87, null, !dbg !1201
  br i1 %89, label %123, label %90, !dbg !1203

90:                                               ; preds = %86
  call void @llvm.dbg.value(metadata ptr %87, metadata !1186, metadata !DIExpression()), !dbg !1200
  %91 = icmp ugt ptr %87, %36, !dbg !1204
  br i1 %91, label %92, label %103, !dbg !1205

92:                                               ; preds = %90
  %93 = getelementptr i8, ptr %87, i64 %84, !dbg !1206
  %94 = sub i64 0, %88, !dbg !1206
  %95 = getelementptr i8, ptr %93, i64 %94, !dbg !1206
  br label %96, !dbg !1206

96:                                               ; preds = %100, %92
  %97 = phi ptr [ %101, %100 ], [ %87, %92 ]
  call void @llvm.dbg.value(metadata ptr %97, metadata !1186, metadata !DIExpression()), !dbg !1200
  %98 = load i8, ptr %97, align 1, !dbg !1207, !tbaa !878
  %99 = icmp eq i8 %98, 47, !dbg !1208
  br i1 %99, label %100, label %103, !dbg !1206

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, ptr %97, i64 -1, !dbg !1209
  call void @llvm.dbg.value(metadata ptr %101, metadata !1186, metadata !DIExpression()), !dbg !1200
  %102 = icmp ugt ptr %101, %36, !dbg !1204
  br i1 %102, label %96, label %103, !dbg !1205, !llvm.loop !1210

103:                                              ; preds = %100, %96, %90
  %104 = phi ptr [ %87, %90 ], [ %97, %96 ], [ %95, %100 ], !dbg !1200
  %105 = getelementptr inbounds i8, ptr %104, i64 1, !dbg !1212
  store i8 0, ptr %105, align 1, !dbg !1213, !tbaa !878
  %106 = load i1, ptr @verbose, align 1, !dbg !1214
  br i1 %106, label %107, label %111, !dbg !1216

107:                                              ; preds = %103
  %108 = load ptr, ptr @stdout, align 8, !dbg !1217, !tbaa !805
  %109 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #38, !dbg !1218
  %110 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #38, !dbg !1219
  tail call void (ptr, ptr, ...) @prog_fprintf(ptr noundef %108, ptr noundef %109, ptr noundef %110) #38, !dbg !1220
  br label %111, !dbg !1220

111:                                              ; preds = %107, %103
  %112 = tail call i32 @rmdir(ptr noundef %36) #38, !dbg !1221
  %113 = icmp eq i32 %112, 0, !dbg !1222
  call void @llvm.dbg.value(metadata i1 %113, metadata !1185, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1194
  %114 = tail call ptr @__errno_location() #41, !dbg !1223
  %115 = load i32, ptr %114, align 4, !dbg !1223, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %115, metadata !1188, metadata !DIExpression()), !dbg !1200
  br i1 %113, label %86, label %116, !dbg !1224

116:                                              ; preds = %111
  %117 = tail call fastcc zeroext i1 @ignorable_failure(i32 noundef %115, ptr noundef %36), !dbg !1225
  br i1 %117, label %123, label %118, !dbg !1226

118:                                              ; preds = %116
  %119 = icmp eq i32 %115, 20, !dbg !1227
  %120 = select i1 %119, ptr @.str.18, ptr @.str.60
  call void @llvm.dbg.value(metadata ptr %120, metadata !1189, metadata !DIExpression()), !dbg !1229
  %121 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %120, i32 noundef 5) #38, !dbg !1230
  %122 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %36) #38, !dbg !1230
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %115, ptr noundef %121, ptr noundef %122) #38, !dbg !1230
  br label %123

123:                                              ; preds = %86, %116, %118
  %124 = phi i1 [ true, %116 ], [ false, %118 ], [ true, %86 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1185, metadata !DIExpression()), !dbg !1194
  %125 = and i8 %33, 1, !dbg !1231
  %126 = icmp ne i8 %125, 0, !dbg !1231
  %127 = and i1 %126, %124, !dbg !1231
  %128 = zext i1 %127 to i8, !dbg !1231
  call void @llvm.dbg.value(metadata i8 %128, metadata !1028, metadata !DIExpression()), !dbg !1081
  br label %129, !dbg !1232

129:                                              ; preds = %73, %45, %78, %123, %81
  %130 = phi i8 [ %128, %123 ], [ %33, %81 ], [ %33, %45 ], [ 0, %78 ], [ 0, %73 ], !dbg !1233
  call void @llvm.dbg.value(metadata i8 %130, metadata !1028, metadata !DIExpression()), !dbg !1081
  %131 = load i32, ptr @optind, align 4, !dbg !1234, !tbaa !869
  %132 = add nsw i32 %131, 1, !dbg !1234
  store i32 %132, ptr @optind, align 4, !dbg !1234, !tbaa !869
  %133 = icmp slt i32 %132, %0, !dbg !1104
  br i1 %133, label %31, label %134, !dbg !1105, !llvm.loop !1235

134:                                              ; preds = %129, %25
  %135 = phi i8 [ 1, %25 ], [ %130, %129 ], !dbg !1233
  %136 = and i8 %135, 1, !dbg !1237
  %137 = icmp eq i8 %136, 0, !dbg !1237
  %138 = zext i1 %137 to i32, !dbg !1237
  ret i32 %138, !dbg !1238
}

; Function Attrs: nounwind
declare !dbg !1239 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1242 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1243 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1246 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1252 noundef i32 @rmdir(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1254 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @ignorable_failure(i32 noundef %0, ptr noundef %1) unnamed_addr #10 !dbg !1258 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1262, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata ptr %1, metadata !1263, metadata !DIExpression()), !dbg !1264
  %3 = load i1, ptr @ignore_fail_on_non_empty, align 1, !dbg !1265
  br i1 %3, label %4, label %47, !dbg !1266

4:                                                ; preds = %2
  switch i32 %0, label %46 [
    i32 39, label %47
    i32 17, label %47
    i32 13, label %5
    i32 1, label %5
    i32 30, label %5
    i32 16, label %5
  ], !dbg !1267

5:                                                ; preds = %4, %4, %4, %4
  call void @llvm.dbg.value(metadata i32 -100, metadata !1268, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata ptr %1, metadata !1273, metadata !DIExpression()), !dbg !1282
  %6 = tail call i32 (i32, ptr, i32, ...) @openat(i32 noundef -100, ptr noundef %1, i32 noundef 198912) #38, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %6, metadata !1281, metadata !DIExpression()), !dbg !1282
  %7 = icmp slt i32 %6, 0, !dbg !1285
  br i1 %7, label %8, label %11, !dbg !1287

8:                                                ; preds = %5
  %9 = tail call ptr @__errno_location() #41, !dbg !1288
  %10 = load i32, ptr %9, align 4, !dbg !1288, !tbaa !869
  br label %43, !dbg !1289

11:                                               ; preds = %5
  %12 = tail call ptr @fdopendir(i32 noundef %6) #38, !dbg !1290
  call void @llvm.dbg.value(metadata ptr %12, metadata !1274, metadata !DIExpression()), !dbg !1282
  %13 = icmp eq ptr %12, null, !dbg !1291
  %14 = tail call ptr @__errno_location() #41, !dbg !1282
  br i1 %13, label %15, label %18, !dbg !1293

15:                                               ; preds = %11
  %16 = load i32, ptr %14, align 4, !dbg !1294, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %16, metadata !1280, metadata !DIExpression()), !dbg !1282
  %17 = tail call i32 @close(i32 noundef %6) #38, !dbg !1296
  br label %43, !dbg !1297

18:                                               ; preds = %11
  store i32 0, ptr %14, align 4, !dbg !1298, !tbaa !869
  call void @llvm.dbg.value(metadata ptr %12, metadata !1299, metadata !DIExpression()), !dbg !1316
  br label %19, !dbg !1318

19:                                               ; preds = %26, %18
  %20 = tail call ptr @readdir(ptr noundef nonnull %12) #38, !dbg !1319
  call void @llvm.dbg.value(metadata ptr %20, metadata !1314, metadata !DIExpression()), !dbg !1320
  %21 = icmp eq ptr %20, null, !dbg !1321
  br i1 %21, label %37, label %22, !dbg !1323

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.dirent, ptr %20, i64 0, i32 4, !dbg !1324
  call void @llvm.dbg.value(metadata ptr %23, metadata !1325, metadata !DIExpression()), !dbg !1333
  %24 = load i8, ptr %23, align 1, !dbg !1335, !tbaa !878
  %25 = icmp eq i8 %24, 46, !dbg !1336
  br i1 %25, label %26, label %37, !dbg !1337

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dirent, ptr %20, i64 0, i32 4, i64 1, !dbg !1338
  %28 = load i8, ptr %27, align 1, !dbg !1338, !tbaa !878
  %29 = icmp eq i8 %28, 46, !dbg !1339
  %30 = select i1 %29, i64 2, i64 1, !dbg !1340
  %31 = getelementptr inbounds i8, ptr %23, i64 %30, !dbg !1341
  %32 = load i8, ptr %31, align 1, !dbg !1341, !tbaa !878
  call void @llvm.dbg.value(metadata i8 %32, metadata !1330, metadata !DIExpression()), !dbg !1342
  %33 = icmp eq i8 %32, 0, !dbg !1343
  %34 = icmp eq i8 %32, 47, !dbg !1344
  %35 = or i1 %33, %34, !dbg !1344
  %36 = freeze i1 %35
  br i1 %36, label %19, label %37, !dbg !1345

37:                                               ; preds = %26, %22, %19
  call void @llvm.dbg.value(metadata i1 %21, metadata !1279, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1282
  %38 = load i32, ptr %14, align 4, !dbg !1346, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %38, metadata !1280, metadata !DIExpression()), !dbg !1282
  %39 = tail call i32 @closedir(ptr noundef nonnull %12), !dbg !1347
  %40 = icmp eq i32 %38, 0
  %41 = select i1 %21, i1 %40, i1 false, !dbg !1348
  %42 = select i1 %41, i32 -1, i32 %38, !dbg !1348
  br label %43, !dbg !1349

43:                                               ; preds = %8, %15, %37
  %44 = phi i32 [ %10, %8 ], [ %16, %15 ], [ %42, %37 ], !dbg !1282
  %45 = icmp eq i32 %44, 0, !dbg !1350
  br label %47

46:                                               ; preds = %4
  br label %47, !dbg !1351

47:                                               ; preds = %4, %4, %46, %43, %2
  %48 = phi i1 [ false, %2 ], [ true, %4 ], [ %45, %43 ], [ true, %4 ], [ false, %46 ], !dbg !1264
  ret i1 %48, !dbg !1351
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1352 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare !dbg !1353 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr nocapture noundef readonly, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1359 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

declare !dbg !1362 i32 @openat(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare !dbg !1366 ptr @fdopendir(i32 noundef) local_unnamed_addr #3

declare !dbg !1369 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !1372 ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1376 noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @prog_fprintf(ptr noundef nonnull %0, ptr noundef nonnull %1, ...) local_unnamed_addr #10 !dbg !1379 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1417, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata ptr %1, metadata !1418, metadata !DIExpression()), !dbg !1432
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #38, !dbg !1433
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1419, metadata !DIExpression()), !dbg !1434
  %4 = load ptr, ptr @program_name, align 8, !dbg !1435, !tbaa !805
  %5 = tail call i32 @fputs_unlocked(ptr noundef %4, ptr noundef nonnull %0), !dbg !1435
  %6 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.23, ptr noundef nonnull %0), !dbg !1436
  call void @llvm.va_start(ptr nonnull %3), !dbg !1437
  call void @llvm.dbg.value(metadata ptr %0, metadata !1438, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata ptr %1, metadata !1445, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata ptr %3, metadata !1446, metadata !DIExpression()), !dbg !1447
  %7 = call i32 @__vfprintf_chk(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %3) #38, !dbg !1449
  call void @llvm.va_end(ptr nonnull %3), !dbg !1450
  call void @llvm.dbg.value(metadata i32 10, metadata !1451, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata ptr %0, metadata !1457, metadata !DIExpression()), !dbg !1458
  %8 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !1460
  %9 = load ptr, ptr %8, align 8, !dbg !1460, !tbaa !1461
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 6, !dbg !1460
  %11 = load ptr, ptr %10, align 8, !dbg !1460, !tbaa !1463
  %12 = icmp ult ptr %9, %11, !dbg !1460
  br i1 %12, label %15, label %13, !dbg !1460, !prof !1464

13:                                               ; preds = %2
  %14 = call i32 @__overflow(ptr noundef nonnull %0, i32 noundef 10) #38, !dbg !1460
  br label %17, !dbg !1460

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, ptr %9, i64 1, !dbg !1460
  store ptr %16, ptr %8, align 8, !dbg !1460, !tbaa !1461
  store i8 10, ptr %9, align 1, !dbg !1460, !tbaa !878
  br label %17, !dbg !1460

17:                                               ; preds = %13, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #38, !dbg !1465
  ret void, !dbg !1465
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

declare !dbg !1466 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

declare !dbg !1469 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1472 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1474, metadata !DIExpression()), !dbg !1475
  store ptr %0, ptr @file_name, align 8, !dbg !1476, !tbaa !805
  ret void, !dbg !1477
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #14 !dbg !1478 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1482, metadata !DIExpression()), !dbg !1483
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1484, !tbaa !1485
  ret void, !dbg !1487
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1488 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1493, !tbaa !805
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1494
  %3 = icmp eq i32 %2, 0, !dbg !1495
  br i1 %3, label %22, label %4, !dbg !1496

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1497, !tbaa !1485, !range !1498, !noundef !853
  %6 = icmp eq i8 %5, 0, !dbg !1497
  br i1 %6, label %11, label %7, !dbg !1499

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1500
  %9 = load i32, ptr %8, align 4, !dbg !1500, !tbaa !869
  %10 = icmp eq i32 %9, 32, !dbg !1501
  br i1 %10, label %22, label %11, !dbg !1502

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1.30, i32 noundef 5) #38, !dbg !1503
  call void @llvm.dbg.value(metadata ptr %12, metadata !1490, metadata !DIExpression()), !dbg !1504
  %13 = load ptr, ptr @file_name, align 8, !dbg !1505, !tbaa !805
  %14 = icmp eq ptr %13, null, !dbg !1505
  %15 = tail call ptr @__errno_location() #41, !dbg !1507
  %16 = load i32, ptr %15, align 4, !dbg !1507, !tbaa !869
  br i1 %14, label %19, label %17, !dbg !1508

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1509
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.31, ptr noundef %18, ptr noundef %12) #38, !dbg !1509
  br label %20, !dbg !1509

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.32, ptr noundef %12) #38, !dbg !1510
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1511, !tbaa !869
  tail call void @_exit(i32 noundef %21) #40, !dbg !1512
  unreachable, !dbg !1512

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1513, !tbaa !805
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1515
  %25 = icmp eq i32 %24, 0, !dbg !1516
  br i1 %25, label %28, label %26, !dbg !1517

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1518, !tbaa !869
  tail call void @_exit(i32 noundef %27) #40, !dbg !1519
  unreachable, !dbg !1519

28:                                               ; preds = %22
  ret void, !dbg !1520
}

; Function Attrs: noreturn
declare !dbg !1521 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read) uwtable
define dso_local zeroext i1 @strip_trailing_slashes(ptr noundef %0) local_unnamed_addr #16 !dbg !1522 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1524, metadata !DIExpression()), !dbg !1528
  %2 = tail call ptr @last_component(ptr noundef %0) #39, !dbg !1529
  call void @llvm.dbg.value(metadata ptr %2, metadata !1525, metadata !DIExpression()), !dbg !1528
  %3 = load i8, ptr %2, align 1, !dbg !1530, !tbaa !878
  %4 = icmp eq i8 %3, 0, !dbg !1530
  %5 = select i1 %4, ptr %0, ptr %2, !dbg !1532
  call void @llvm.dbg.value(metadata ptr %5, metadata !1525, metadata !DIExpression()), !dbg !1528
  %6 = tail call i64 @base_len(ptr noundef %5) #39, !dbg !1533
  %7 = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !1534
  call void @llvm.dbg.value(metadata ptr %7, metadata !1526, metadata !DIExpression()), !dbg !1528
  %8 = load i8, ptr %7, align 1, !dbg !1535, !tbaa !878
  %9 = icmp ne i8 %8, 0, !dbg !1536
  call void @llvm.dbg.value(metadata i1 %9, metadata !1527, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1528
  store i8 0, ptr %7, align 1, !dbg !1537, !tbaa !878
  ret i1 %9, !dbg !1538
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !1539 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1543, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 %1, metadata !1544, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata ptr %3, metadata !1546, metadata !DIExpression()), !dbg !1547
  tail call fastcc void @flush_stdout(), !dbg !1548
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1549, !tbaa !805
  %6 = icmp eq ptr %5, null, !dbg !1549
  br i1 %6, label %8, label %7, !dbg !1551

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !1552
  br label %12, !dbg !1552

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1553, !tbaa !805
  %10 = tail call ptr @getprogname() #39, !dbg !1553
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef %10) #38, !dbg !1553
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1555
  ret void, !dbg !1556
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1557 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1559, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i32 1, metadata !1561, metadata !DIExpression()), !dbg !1564
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1567
  %2 = icmp slt i32 %1, 0, !dbg !1568
  br i1 %2, label %6, label %3, !dbg !1569

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1570, !tbaa !805
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1570
  br label %6, !dbg !1570

6:                                                ; preds = %3, %0
  ret void, !dbg !1571
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1572 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1574, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i32 %1, metadata !1575, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata ptr %2, metadata !1576, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata ptr %3, metadata !1577, metadata !DIExpression()), !dbg !1578
  %6 = load ptr, ptr @stderr, align 8, !dbg !1579, !tbaa !805
  call void @llvm.dbg.value(metadata ptr %6, metadata !1580, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr %2, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr %3, metadata !1621, metadata !DIExpression()), !dbg !1622
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !1624
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1625, !tbaa !869
  %9 = add i32 %8, 1, !dbg !1625
  store i32 %9, ptr @error_message_count, align 4, !dbg !1625, !tbaa !869
  %10 = icmp eq i32 %1, 0, !dbg !1626
  br i1 %10, label %20, label %11, !dbg !1628

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1629, metadata !DIExpression()), !dbg !1637
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1639
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1633, metadata !DIExpression()), !dbg !1640
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1641
  call void @llvm.dbg.value(metadata ptr %12, metadata !1632, metadata !DIExpression()), !dbg !1637
  %13 = icmp eq ptr %12, null, !dbg !1642
  br i1 %13, label %14, label %16, !dbg !1644

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.36, ptr noundef nonnull @.str.5.37, i32 noundef 5) #38, !dbg !1645
  call void @llvm.dbg.value(metadata ptr %15, metadata !1632, metadata !DIExpression()), !dbg !1637
  br label %16, !dbg !1646

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1637
  call void @llvm.dbg.value(metadata ptr %17, metadata !1632, metadata !DIExpression()), !dbg !1637
  %18 = load ptr, ptr @stderr, align 8, !dbg !1647, !tbaa !805
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.38, ptr noundef %17) #38, !dbg !1647
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1648
  br label %20, !dbg !1649

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1650, !tbaa !805
  call void @llvm.dbg.value(metadata i32 10, metadata !1651, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata ptr %21, metadata !1656, metadata !DIExpression()), !dbg !1657
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1659
  %23 = load ptr, ptr %22, align 8, !dbg !1659, !tbaa !1461
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1659
  %25 = load ptr, ptr %24, align 8, !dbg !1659, !tbaa !1463
  %26 = icmp ult ptr %23, %25, !dbg !1659
  br i1 %26, label %29, label %27, !dbg !1659, !prof !1464

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !1659
  br label %31, !dbg !1659

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1659
  store ptr %30, ptr %22, align 8, !dbg !1659, !tbaa !1461
  store i8 10, ptr %23, align 1, !dbg !1659, !tbaa !878
  br label %31, !dbg !1659

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1660, !tbaa !805
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !1660
  %34 = icmp eq i32 %0, 0, !dbg !1661
  br i1 %34, label %36, label %35, !dbg !1663

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #40, !dbg !1664
  unreachable, !dbg !1664

36:                                               ; preds = %31
  ret void, !dbg !1665
}

; Function Attrs: nounwind
declare !dbg !1666 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1669 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1672 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1675 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1679, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i32 %1, metadata !1680, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata ptr %2, metadata !1681, metadata !DIExpression()), !dbg !1687
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !1688
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1682, metadata !DIExpression()), !dbg !1689
  call void @llvm.va_start(ptr nonnull %4), !dbg !1690
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #43, !dbg !1691
  call void @llvm.va_end(ptr nonnull %4), !dbg !1692
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !1693
  ret void, !dbg !1693
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !416 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !428, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i32 %1, metadata !429, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata ptr %2, metadata !430, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i32 %3, metadata !431, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata ptr %4, metadata !432, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata ptr %5, metadata !433, metadata !DIExpression()), !dbg !1694
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1695, !tbaa !869
  %8 = icmp eq i32 %7, 0, !dbg !1695
  br i1 %8, label %23, label %9, !dbg !1697

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1698, !tbaa !869
  %11 = icmp eq i32 %10, %3, !dbg !1701
  br i1 %11, label %12, label %22, !dbg !1702

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1703, !tbaa !805
  %14 = icmp eq ptr %13, %2, !dbg !1704
  br i1 %14, label %36, label %15, !dbg !1705

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1706
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1707
  br i1 %18, label %19, label %22, !dbg !1707

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1708
  %21 = icmp eq i32 %20, 0, !dbg !1709
  br i1 %21, label %36, label %22, !dbg !1710

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1711, !tbaa !805
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1712, !tbaa !869
  br label %23, !dbg !1713

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1714
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1715, !tbaa !805
  %25 = icmp eq ptr %24, null, !dbg !1715
  br i1 %25, label %27, label %26, !dbg !1717

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !1718
  br label %31, !dbg !1718

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1719, !tbaa !805
  %29 = tail call ptr @getprogname() #39, !dbg !1719
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.41, ptr noundef %29) #38, !dbg !1719
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1721, !tbaa !805
  %33 = icmp eq ptr %2, null, !dbg !1721
  %34 = select i1 %33, ptr @.str.3.42, ptr @.str.2.43, !dbg !1721
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !1721
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1722
  br label %36, !dbg !1723

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1723
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1724 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1728, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i32 %1, metadata !1729, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata ptr %2, metadata !1730, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i32 %3, metadata !1731, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata ptr %4, metadata !1732, metadata !DIExpression()), !dbg !1734
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !1735
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1733, metadata !DIExpression()), !dbg !1736
  call void @llvm.va_start(ptr nonnull %6), !dbg !1737
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #43, !dbg !1738
  call void @llvm.va_end(ptr nonnull %6), !dbg !1739
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !1740
  ret void, !dbg !1740
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1741 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1744, !tbaa !805
  ret ptr %1, !dbg !1745
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1746 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1748, metadata !DIExpression()), !dbg !1751
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1752
  call void @llvm.dbg.value(metadata ptr %2, metadata !1749, metadata !DIExpression()), !dbg !1751
  %3 = icmp eq ptr %2, null, !dbg !1753
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1753
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1753
  call void @llvm.dbg.value(metadata ptr %5, metadata !1750, metadata !DIExpression()), !dbg !1751
  %6 = ptrtoint ptr %5 to i64, !dbg !1754
  %7 = ptrtoint ptr %0 to i64, !dbg !1754
  %8 = sub i64 %6, %7, !dbg !1754
  %9 = icmp sgt i64 %8, 6, !dbg !1756
  br i1 %9, label %10, label %19, !dbg !1757

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1758
  call void @llvm.dbg.value(metadata ptr %11, metadata !1759, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata ptr @.str.61, metadata !1764, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 7, metadata !1765, metadata !DIExpression()), !dbg !1766
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.61, i64 7), !dbg !1768
  %13 = icmp eq i32 %12, 0, !dbg !1769
  br i1 %13, label %14, label %19, !dbg !1770

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1748, metadata !DIExpression()), !dbg !1751
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.62, i64 noundef 3) #39, !dbg !1771
  %16 = icmp eq i32 %15, 0, !dbg !1774
  %17 = select i1 %16, i64 3, i64 0, !dbg !1775
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1775
  br label %19, !dbg !1775

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1751
  call void @llvm.dbg.value(metadata ptr %21, metadata !1750, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata ptr %20, metadata !1748, metadata !DIExpression()), !dbg !1751
  store ptr %20, ptr @program_name, align 8, !dbg !1776, !tbaa !805
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1777, !tbaa !805
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1778, !tbaa !805
  ret void, !dbg !1779
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !470 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !477, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata ptr %1, metadata !478, metadata !DIExpression()), !dbg !1780
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1781
  call void @llvm.dbg.value(metadata ptr %5, metadata !479, metadata !DIExpression()), !dbg !1780
  %6 = icmp eq ptr %5, %0, !dbg !1782
  br i1 %6, label %7, label %14, !dbg !1784

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1785
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1786
  call void @llvm.dbg.declare(metadata ptr %4, metadata !485, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata ptr %4, metadata !1788, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata ptr %4, metadata !1797, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i32 0, metadata !1803, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 8, metadata !1804, metadata !DIExpression()), !dbg !1805
  store i64 0, ptr %4, align 8, !dbg !1807
  call void @llvm.dbg.value(metadata ptr %3, metadata !480, metadata !DIExpression(DW_OP_deref)), !dbg !1780
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1808
  %9 = icmp eq i64 %8, 2, !dbg !1810
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !480, metadata !DIExpression()), !dbg !1780
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1811
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1780
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1812
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1812
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1780
  ret ptr %15, !dbg !1812
}

; Function Attrs: nounwind
declare !dbg !1813 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1819 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1824, metadata !DIExpression()), !dbg !1827
  %2 = tail call ptr @__errno_location() #41, !dbg !1828
  %3 = load i32, ptr %2, align 4, !dbg !1828, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %3, metadata !1825, metadata !DIExpression()), !dbg !1827
  %4 = icmp eq ptr %0, null, !dbg !1829
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1829
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !1830
  call void @llvm.dbg.value(metadata ptr %6, metadata !1826, metadata !DIExpression()), !dbg !1827
  store i32 %3, ptr %2, align 4, !dbg !1831, !tbaa !869
  ret ptr %6, !dbg !1832
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1833 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1839, metadata !DIExpression()), !dbg !1840
  %2 = icmp eq ptr %0, null, !dbg !1841
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1841
  %4 = load i32, ptr %3, align 8, !dbg !1842, !tbaa !1843
  ret i32 %4, !dbg !1845
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1846 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1850, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 %1, metadata !1851, metadata !DIExpression()), !dbg !1852
  %3 = icmp eq ptr %0, null, !dbg !1853
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1853
  store i32 %1, ptr %4, align 8, !dbg !1854, !tbaa !1843
  ret void, !dbg !1855
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1856 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1860, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8 %1, metadata !1861, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 %2, metadata !1862, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8 %1, metadata !1863, metadata !DIExpression()), !dbg !1868
  %4 = icmp eq ptr %0, null, !dbg !1869
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1869
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1870
  %7 = lshr i8 %1, 5, !dbg !1871
  %8 = zext i8 %7 to i64, !dbg !1871
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1872
  call void @llvm.dbg.value(metadata ptr %9, metadata !1864, metadata !DIExpression()), !dbg !1868
  %10 = and i8 %1, 31, !dbg !1873
  %11 = zext i8 %10 to i32, !dbg !1873
  call void @llvm.dbg.value(metadata i32 %11, metadata !1866, metadata !DIExpression()), !dbg !1868
  %12 = load i32, ptr %9, align 4, !dbg !1874, !tbaa !869
  %13 = lshr i32 %12, %11, !dbg !1875
  %14 = and i32 %13, 1, !dbg !1876
  call void @llvm.dbg.value(metadata i32 %14, metadata !1867, metadata !DIExpression()), !dbg !1868
  %15 = xor i32 %13, %2, !dbg !1877
  %16 = and i32 %15, 1, !dbg !1877
  %17 = shl nuw i32 %16, %11, !dbg !1878
  %18 = xor i32 %17, %12, !dbg !1879
  store i32 %18, ptr %9, align 4, !dbg !1879, !tbaa !869
  ret i32 %14, !dbg !1880
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1881 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1885, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i32 %1, metadata !1886, metadata !DIExpression()), !dbg !1888
  %3 = icmp eq ptr %0, null, !dbg !1889
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1891
  call void @llvm.dbg.value(metadata ptr %4, metadata !1885, metadata !DIExpression()), !dbg !1888
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1892
  %6 = load i32, ptr %5, align 4, !dbg !1892, !tbaa !1893
  call void @llvm.dbg.value(metadata i32 %6, metadata !1887, metadata !DIExpression()), !dbg !1888
  store i32 %1, ptr %5, align 4, !dbg !1894, !tbaa !1893
  ret i32 %6, !dbg !1895
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1896 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1900, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %1, metadata !1901, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr %2, metadata !1902, metadata !DIExpression()), !dbg !1903
  %4 = icmp eq ptr %0, null, !dbg !1904
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1906
  call void @llvm.dbg.value(metadata ptr %5, metadata !1900, metadata !DIExpression()), !dbg !1903
  store i32 10, ptr %5, align 8, !dbg !1907, !tbaa !1843
  %6 = icmp ne ptr %1, null, !dbg !1908
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1910
  br i1 %8, label %10, label %9, !dbg !1910

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1911
  unreachable, !dbg !1911

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1912
  store ptr %1, ptr %11, align 8, !dbg !1913, !tbaa !1914
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1915
  store ptr %2, ptr %12, align 8, !dbg !1916, !tbaa !1917
  ret void, !dbg !1918
}

; Function Attrs: noreturn nounwind
declare !dbg !1919 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1920 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1924, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %1, metadata !1925, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata ptr %2, metadata !1926, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %3, metadata !1927, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata ptr %4, metadata !1928, metadata !DIExpression()), !dbg !1932
  %6 = icmp eq ptr %4, null, !dbg !1933
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1933
  call void @llvm.dbg.value(metadata ptr %7, metadata !1929, metadata !DIExpression()), !dbg !1932
  %8 = tail call ptr @__errno_location() #41, !dbg !1934
  %9 = load i32, ptr %8, align 4, !dbg !1934, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %9, metadata !1930, metadata !DIExpression()), !dbg !1932
  %10 = load i32, ptr %7, align 8, !dbg !1935, !tbaa !1843
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1936
  %12 = load i32, ptr %11, align 4, !dbg !1936, !tbaa !1893
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1937
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1938
  %15 = load ptr, ptr %14, align 8, !dbg !1938, !tbaa !1914
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1939
  %17 = load ptr, ptr %16, align 8, !dbg !1939, !tbaa !1917
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1940
  call void @llvm.dbg.value(metadata i64 %18, metadata !1931, metadata !DIExpression()), !dbg !1932
  store i32 %9, ptr %8, align 4, !dbg !1941, !tbaa !869
  ret i64 %18, !dbg !1942
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1943 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1949, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %1, metadata !1950, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr %2, metadata !1951, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %3, metadata !1952, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i32 %4, metadata !1953, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i32 %5, metadata !1954, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr %6, metadata !1955, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr %7, metadata !1956, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr %8, metadata !1957, metadata !DIExpression()), !dbg !2011
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !2012
  %17 = icmp eq i64 %16, 1, !dbg !2013
  call void @llvm.dbg.value(metadata i1 %17, metadata !1958, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2011
  call void @llvm.dbg.value(metadata i64 0, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 0, metadata !1960, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr null, metadata !1961, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 0, metadata !1962, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 0, metadata !1963, metadata !DIExpression()), !dbg !2011
  %18 = trunc i32 %5 to i8, !dbg !2014
  %19 = lshr i8 %18, 1, !dbg !2014
  %20 = and i8 %19, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i8 %20, metadata !1964, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 0, metadata !1965, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 1, metadata !1966, metadata !DIExpression()), !dbg !2011
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2015

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2016
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2017
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2018
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2019
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2011
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2020
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2021
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1950, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %39, metadata !1966, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %38, metadata !1965, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %37, metadata !1964, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %36, metadata !1963, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %35, metadata !1962, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr %34, metadata !1961, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %33, metadata !1960, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 0, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %32, metadata !1952, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr %31, metadata !1957, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr %30, metadata !1956, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i32 %29, metadata !1953, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.label(metadata !2004), !dbg !2022
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !2011
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
  ], !dbg !2023

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1964, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i32 5, metadata !1953, metadata !DIExpression()), !dbg !2011
  br label %115, !dbg !2024

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1964, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i32 5, metadata !1953, metadata !DIExpression()), !dbg !2011
  %43 = and i8 %37, 1, !dbg !2025
  %44 = icmp eq i8 %43, 0, !dbg !2025
  br i1 %44, label %45, label %115, !dbg !2024

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2027
  br i1 %46, label %115, label %47, !dbg !2030

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2027, !tbaa !878
  br label %115, !dbg !2027

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.75, metadata !569, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %29, metadata !570, metadata !DIExpression()), !dbg !2031
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.76, ptr noundef nonnull @.str.11.75, i32 noundef 5) #38, !dbg !2035
  call void @llvm.dbg.value(metadata ptr %49, metadata !571, metadata !DIExpression()), !dbg !2031
  %50 = icmp eq ptr %49, @.str.11.75, !dbg !2036
  br i1 %50, label %51, label %60, !dbg !2038

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !2039
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !2040
  call void @llvm.dbg.declare(metadata ptr %13, metadata !573, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata ptr %13, metadata !2042, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata ptr %13, metadata !2050, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 0, metadata !2053, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i64 8, metadata !2054, metadata !DIExpression()), !dbg !2055
  store i64 0, ptr %13, align 8, !dbg !2057
  call void @llvm.dbg.value(metadata ptr %12, metadata !572, metadata !DIExpression(DW_OP_deref)), !dbg !2031
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !2058
  %53 = icmp eq i64 %52, 3, !dbg !2060
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !572, metadata !DIExpression()), !dbg !2031
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2061
  %57 = icmp eq i32 %29, 9, !dbg !2061
  %58 = select i1 %57, ptr @.str.10.77, ptr @.str.12.78, !dbg !2061
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !2062
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !2062
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2031
  call void @llvm.dbg.value(metadata ptr %61, metadata !1956, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr @.str.12.78, metadata !569, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 %29, metadata !570, metadata !DIExpression()), !dbg !2063
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.76, ptr noundef nonnull @.str.12.78, i32 noundef 5) #38, !dbg !2065
  call void @llvm.dbg.value(metadata ptr %62, metadata !571, metadata !DIExpression()), !dbg !2063
  %63 = icmp eq ptr %62, @.str.12.78, !dbg !2066
  br i1 %63, label %64, label %73, !dbg !2067

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !2068
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !2069
  call void @llvm.dbg.declare(metadata ptr %11, metadata !573, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata ptr %11, metadata !2042, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata ptr %11, metadata !2050, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 0, metadata !2053, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 8, metadata !2054, metadata !DIExpression()), !dbg !2073
  store i64 0, ptr %11, align 8, !dbg !2075
  call void @llvm.dbg.value(metadata ptr %10, metadata !572, metadata !DIExpression(DW_OP_deref)), !dbg !2063
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !2076
  %66 = icmp eq i64 %65, 3, !dbg !2077
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !572, metadata !DIExpression()), !dbg !2063
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2078
  %70 = icmp eq i32 %29, 9, !dbg !2078
  %71 = select i1 %70, ptr @.str.10.77, ptr @.str.12.78, !dbg !2078
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2078
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !2079
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !2079
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1957, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr %74, metadata !1956, metadata !DIExpression()), !dbg !2011
  %76 = and i8 %37, 1, !dbg !2080
  %77 = icmp eq i8 %76, 0, !dbg !2080
  br i1 %77, label %78, label %93, !dbg !2081

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1968, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 0, metadata !1959, metadata !DIExpression()), !dbg !2011
  %79 = load i8, ptr %74, align 1, !dbg !2083, !tbaa !878
  %80 = icmp eq i8 %79, 0, !dbg !2085
  br i1 %80, label %93, label %81, !dbg !2085

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1968, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %84, metadata !1959, metadata !DIExpression()), !dbg !2011
  %85 = icmp ult i64 %84, %40, !dbg !2086
  br i1 %85, label %86, label %88, !dbg !2089

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2086
  store i8 %82, ptr %87, align 1, !dbg !2086, !tbaa !878
  br label %88, !dbg !2086

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %89, metadata !1959, metadata !DIExpression()), !dbg !2011
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2090
  call void @llvm.dbg.value(metadata ptr %90, metadata !1968, metadata !DIExpression()), !dbg !2082
  %91 = load i8, ptr %90, align 1, !dbg !2083, !tbaa !878
  %92 = icmp eq i8 %91, 0, !dbg !2085
  br i1 %92, label %93, label %81, !dbg !2085, !llvm.loop !2091

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2093
  call void @llvm.dbg.value(metadata i64 %94, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 1, metadata !1963, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr %75, metadata !1961, metadata !DIExpression()), !dbg !2011
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %95, metadata !1962, metadata !DIExpression()), !dbg !2011
  br label %115, !dbg !2095

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1963, metadata !DIExpression()), !dbg !2011
  br label %97, !dbg !2096

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2011
  call void @llvm.dbg.value(metadata i8 %98, metadata !1963, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 1, metadata !1964, metadata !DIExpression()), !dbg !2011
  br label %99, !dbg !2097

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2019
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2011
  call void @llvm.dbg.value(metadata i8 %101, metadata !1964, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %100, metadata !1963, metadata !DIExpression()), !dbg !2011
  %102 = and i8 %101, 1, !dbg !2098
  %103 = icmp eq i8 %102, 0, !dbg !2098
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2100
  br label %105, !dbg !2100

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2011
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2014
  call void @llvm.dbg.value(metadata i8 %107, metadata !1964, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %106, metadata !1963, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i32 2, metadata !1953, metadata !DIExpression()), !dbg !2011
  %108 = and i8 %107, 1, !dbg !2101
  %109 = icmp eq i8 %108, 0, !dbg !2101
  br i1 %109, label %110, label %115, !dbg !2103

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2104
  br i1 %111, label %115, label %112, !dbg !2107

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2104, !tbaa !878
  br label %115, !dbg !2104

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1964, metadata !DIExpression()), !dbg !2011
  br label %115, !dbg !2108

114:                                              ; preds = %28
  call void @abort() #40, !dbg !2109
  unreachable, !dbg !2109

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2093
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.77, %45 ], [ @.str.10.77, %47 ], [ @.str.10.77, %42 ], [ %34, %28 ], [ @.str.12.78, %110 ], [ @.str.12.78, %112 ], [ @.str.12.78, %105 ], [ @.str.10.77, %41 ], !dbg !2011
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2011
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2011
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2011
  call void @llvm.dbg.value(metadata i8 %123, metadata !1964, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %122, metadata !1963, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %121, metadata !1962, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr %120, metadata !1961, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %119, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr %118, metadata !1957, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata ptr %117, metadata !1956, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i32 %116, metadata !1953, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 0, metadata !1973, metadata !DIExpression()), !dbg !2110
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
  br label %138, !dbg !2111

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2093
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2016
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2020
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2021
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2112
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2113
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1950, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %145, metadata !1973, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 %144, metadata !1967, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %143, metadata !1966, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %142, metadata !1965, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %141, metadata !1960, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %140, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %139, metadata !1952, metadata !DIExpression()), !dbg !2011
  %147 = icmp eq i64 %139, -1, !dbg !2114
  br i1 %147, label %148, label %152, !dbg !2115

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2116
  %150 = load i8, ptr %149, align 1, !dbg !2116, !tbaa !878
  %151 = icmp eq i8 %150, 0, !dbg !2117
  br i1 %151, label %627, label %154, !dbg !2118

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2119
  br i1 %153, label %627, label %154, !dbg !2118

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1975, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 0, metadata !1979, metadata !DIExpression()), !dbg !2120
  br i1 %129, label %155, label %170, !dbg !2121

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2123
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2124
  br i1 %157, label %158, label %160, !dbg !2124

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %159, metadata !1952, metadata !DIExpression()), !dbg !2011
  br label %160, !dbg !2126

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2126
  call void @llvm.dbg.value(metadata i64 %161, metadata !1952, metadata !DIExpression()), !dbg !2011
  %162 = icmp ugt i64 %156, %161, !dbg !2127
  br i1 %162, label %170, label %163, !dbg !2128

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2129
  call void @llvm.dbg.value(metadata ptr %164, metadata !2130, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata ptr %120, metadata !2133, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %121, metadata !2134, metadata !DIExpression()), !dbg !2135
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2137
  %166 = icmp ne i32 %165, 0, !dbg !2138
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2139
  %168 = xor i1 %166, true, !dbg !2139
  %169 = zext i1 %168 to i8, !dbg !2139
  br i1 %167, label %170, label %688, !dbg !2139

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2120
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2120
  call void @llvm.dbg.value(metadata i8 %173, metadata !1975, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %171, metadata !1952, metadata !DIExpression()), !dbg !2011
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2140
  %175 = load i8, ptr %174, align 1, !dbg !2140, !tbaa !878
  call void @llvm.dbg.value(metadata i8 %175, metadata !1980, metadata !DIExpression()), !dbg !2120
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
  ], !dbg !2141

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2142

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2143

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1978, metadata !DIExpression()), !dbg !2120
  %179 = and i8 %144, 1, !dbg !2147
  %180 = icmp eq i8 %179, 0, !dbg !2147
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2147
  br i1 %181, label %182, label %198, !dbg !2147

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2149
  br i1 %183, label %184, label %186, !dbg !2153

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2149
  store i8 39, ptr %185, align 1, !dbg !2149, !tbaa !878
  br label %186, !dbg !2149

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2153
  call void @llvm.dbg.value(metadata i64 %187, metadata !1959, metadata !DIExpression()), !dbg !2011
  %188 = icmp ult i64 %187, %146, !dbg !2154
  br i1 %188, label %189, label %191, !dbg !2157

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2154
  store i8 36, ptr %190, align 1, !dbg !2154, !tbaa !878
  br label %191, !dbg !2154

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %192, metadata !1959, metadata !DIExpression()), !dbg !2011
  %193 = icmp ult i64 %192, %146, !dbg !2158
  br i1 %193, label %194, label %196, !dbg !2161

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2158
  store i8 39, ptr %195, align 1, !dbg !2158, !tbaa !878
  br label %196, !dbg !2158

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %197, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 1, metadata !1967, metadata !DIExpression()), !dbg !2011
  br label %198, !dbg !2162

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2011
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2011
  call void @llvm.dbg.value(metadata i8 %200, metadata !1967, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %199, metadata !1959, metadata !DIExpression()), !dbg !2011
  %201 = icmp ult i64 %199, %146, !dbg !2163
  br i1 %201, label %202, label %204, !dbg !2166

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2163
  store i8 92, ptr %203, align 1, !dbg !2163, !tbaa !878
  br label %204, !dbg !2163

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %205, metadata !1959, metadata !DIExpression()), !dbg !2011
  br i1 %126, label %206, label %491, !dbg !2167

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2169
  %208 = icmp ult i64 %207, %171, !dbg !2170
  br i1 %208, label %209, label %480, !dbg !2171

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2172
  %211 = load i8, ptr %210, align 1, !dbg !2172, !tbaa !878
  %212 = add i8 %211, -48, !dbg !2173
  %213 = icmp ult i8 %212, 10, !dbg !2173
  br i1 %213, label %214, label %480, !dbg !2173

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2174
  br i1 %215, label %216, label %218, !dbg !2178

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2174
  store i8 48, ptr %217, align 1, !dbg !2174, !tbaa !878
  br label %218, !dbg !2174

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %219, metadata !1959, metadata !DIExpression()), !dbg !2011
  %220 = icmp ult i64 %219, %146, !dbg !2179
  br i1 %220, label %221, label %223, !dbg !2182

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2179
  store i8 48, ptr %222, align 1, !dbg !2179, !tbaa !878
  br label %223, !dbg !2179

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %224, metadata !1959, metadata !DIExpression()), !dbg !2011
  br label %480, !dbg !2183

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2184

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2185

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2186

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2188

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2190
  %231 = icmp ult i64 %230, %171, !dbg !2191
  br i1 %231, label %232, label %480, !dbg !2192

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2193
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2194
  %235 = load i8, ptr %234, align 1, !dbg !2194, !tbaa !878
  %236 = icmp eq i8 %235, 63, !dbg !2195
  br i1 %236, label %237, label %480, !dbg !2196

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2197
  %239 = load i8, ptr %238, align 1, !dbg !2197, !tbaa !878
  %240 = sext i8 %239 to i32, !dbg !2197
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
  ], !dbg !2198

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2199

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1980, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %230, metadata !1973, metadata !DIExpression()), !dbg !2110
  %243 = icmp ult i64 %140, %146, !dbg !2201
  br i1 %243, label %244, label %246, !dbg !2204

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2201
  store i8 63, ptr %245, align 1, !dbg !2201, !tbaa !878
  br label %246, !dbg !2201

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %247, metadata !1959, metadata !DIExpression()), !dbg !2011
  %248 = icmp ult i64 %247, %146, !dbg !2205
  br i1 %248, label %249, label %251, !dbg !2208

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2205
  store i8 34, ptr %250, align 1, !dbg !2205, !tbaa !878
  br label %251, !dbg !2205

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %252, metadata !1959, metadata !DIExpression()), !dbg !2011
  %253 = icmp ult i64 %252, %146, !dbg !2209
  br i1 %253, label %254, label %256, !dbg !2212

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2209
  store i8 34, ptr %255, align 1, !dbg !2209, !tbaa !878
  br label %256, !dbg !2209

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %257, metadata !1959, metadata !DIExpression()), !dbg !2011
  %258 = icmp ult i64 %257, %146, !dbg !2213
  br i1 %258, label %259, label %261, !dbg !2216

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2213
  store i8 63, ptr %260, align 1, !dbg !2213, !tbaa !878
  br label %261, !dbg !2213

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %262, metadata !1959, metadata !DIExpression()), !dbg !2011
  br label %480, !dbg !2217

263:                                              ; preds = %170
  br label %274, !dbg !2218

264:                                              ; preds = %170
  br label %274, !dbg !2219

265:                                              ; preds = %170
  br label %272, !dbg !2220

266:                                              ; preds = %170
  br label %272, !dbg !2221

267:                                              ; preds = %170
  br label %274, !dbg !2222

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2223

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2224

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2227

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2229

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2230
  call void @llvm.dbg.label(metadata !2005), !dbg !2231
  br i1 %134, label %274, label %670, !dbg !2232

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2230
  call void @llvm.dbg.label(metadata !2007), !dbg !2234
  br i1 %125, label %535, label %491, !dbg !2235

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2236

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2237, !tbaa !878
  %279 = icmp eq i8 %278, 0, !dbg !2239
  br i1 %279, label %280, label %480, !dbg !2240

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2241
  br i1 %281, label %282, label %480, !dbg !2243

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1979, metadata !DIExpression()), !dbg !2120
  br label %283, !dbg !2244

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2120
  call void @llvm.dbg.value(metadata i8 %284, metadata !1979, metadata !DIExpression()), !dbg !2120
  br i1 %134, label %480, label %670, !dbg !2245

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1965, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 1, metadata !1979, metadata !DIExpression()), !dbg !2120
  br i1 %133, label %286, label %480, !dbg !2247

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2248

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2251
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2253
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2253
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %292, metadata !1950, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %291, metadata !1960, metadata !DIExpression()), !dbg !2011
  %293 = icmp ult i64 %140, %292, !dbg !2254
  br i1 %293, label %294, label %296, !dbg !2257

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2254
  store i8 39, ptr %295, align 1, !dbg !2254, !tbaa !878
  br label %296, !dbg !2254

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %297, metadata !1959, metadata !DIExpression()), !dbg !2011
  %298 = icmp ult i64 %297, %292, !dbg !2258
  br i1 %298, label %299, label %301, !dbg !2261

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2258
  store i8 92, ptr %300, align 1, !dbg !2258, !tbaa !878
  br label %301, !dbg !2258

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %302, metadata !1959, metadata !DIExpression()), !dbg !2011
  %303 = icmp ult i64 %302, %292, !dbg !2262
  br i1 %303, label %304, label %306, !dbg !2265

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2262
  store i8 39, ptr %305, align 1, !dbg !2262, !tbaa !878
  br label %306, !dbg !2262

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %307, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !2011
  br label %480, !dbg !2266

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2267

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1981, metadata !DIExpression()), !dbg !2268
  %310 = tail call ptr @__ctype_b_loc() #41, !dbg !2269
  %311 = load ptr, ptr %310, align 8, !dbg !2269, !tbaa !805
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2269
  %314 = load i16, ptr %313, align 2, !dbg !2269, !tbaa !910
  %315 = lshr i16 %314, 14, !dbg !2271
  %316 = trunc i16 %315 to i8, !dbg !2271
  %317 = and i8 %316, 1, !dbg !2271
  call void @llvm.dbg.value(metadata i8 %317, metadata !1984, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %171, metadata !1952, metadata !DIExpression()), !dbg !2011
  %318 = icmp eq i8 %317, 0, !dbg !2272
  call void @llvm.dbg.value(metadata i1 %318, metadata !1979, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2120
  br label %368, !dbg !2273

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2274
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1985, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata ptr %14, metadata !2042, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata ptr %14, metadata !2050, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i32 0, metadata !2053, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 8, metadata !2054, metadata !DIExpression()), !dbg !2278
  store i64 0, ptr %14, align 8, !dbg !2280
  call void @llvm.dbg.value(metadata i64 0, metadata !1981, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8 1, metadata !1984, metadata !DIExpression()), !dbg !2268
  %320 = icmp eq i64 %171, -1, !dbg !2281
  br i1 %320, label %321, label %323, !dbg !2283

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %322, metadata !1952, metadata !DIExpression()), !dbg !2011
  br label %323, !dbg !2285

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2120
  call void @llvm.dbg.value(metadata i64 %324, metadata !1952, metadata !DIExpression()), !dbg !2011
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2286
  %325 = sub i64 %324, %145, !dbg !2287
  call void @llvm.dbg.value(metadata ptr %15, metadata !1988, metadata !DIExpression(DW_OP_deref)), !dbg !2288
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #38, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %326, metadata !1992, metadata !DIExpression()), !dbg !2288
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2290

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1981, metadata !DIExpression()), !dbg !2268
  %328 = icmp ugt i64 %324, %145, !dbg !2291
  br i1 %328, label %331, label %329, !dbg !2293

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 0, metadata !1981, metadata !DIExpression()), !dbg !2268
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2294
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %324, metadata !1952, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i1 true, metadata !1979, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2120
  br label %368, !dbg !2273

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1984, metadata !DIExpression()), !dbg !2268
  br label %360, !dbg !2296

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1981, metadata !DIExpression()), !dbg !2268
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2298
  %335 = load i8, ptr %334, align 1, !dbg !2298, !tbaa !878
  %336 = icmp eq i8 %335, 0, !dbg !2293
  br i1 %336, label %363, label %337, !dbg !2299

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %338, metadata !1981, metadata !DIExpression()), !dbg !2268
  %339 = add i64 %338, %145, !dbg !2301
  %340 = icmp eq i64 %338, %325, !dbg !2291
  br i1 %340, label %363, label %331, !dbg !2293, !llvm.loop !2302

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2303
  %344 = and i1 %343, %133, !dbg !2303
  call void @llvm.dbg.value(metadata i64 1, metadata !1993, metadata !DIExpression()), !dbg !2304
  br i1 %344, label %345, label %354, !dbg !2303

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1993, metadata !DIExpression()), !dbg !2304
  %347 = add i64 %346, %145, !dbg !2305
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2307
  %349 = load i8, ptr %348, align 1, !dbg !2307, !tbaa !878
  %350 = sext i8 %349 to i32, !dbg !2307
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2308

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2309
  call void @llvm.dbg.value(metadata i64 %352, metadata !1993, metadata !DIExpression()), !dbg !2304
  %353 = icmp eq i64 %352, %326, !dbg !2310
  br i1 %353, label %354, label %345, !dbg !2311, !llvm.loop !2312

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2314, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %355, metadata !1988, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i32 %355, metadata !2316, metadata !DIExpression()), !dbg !2324
  %356 = call i32 @iswprint(i32 noundef %355) #38, !dbg !2326
  %357 = icmp ne i32 %356, 0, !dbg !2327
  %358 = zext i1 %357 to i8, !dbg !2328
  call void @llvm.dbg.value(metadata i8 %358, metadata !1984, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %326, metadata !1981, metadata !DIExpression()), !dbg !2268
  br label %363, !dbg !2329

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1984, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 0, metadata !1981, metadata !DIExpression()), !dbg !2268
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2294
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2295
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1984, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 0, metadata !1981, metadata !DIExpression()), !dbg !2268
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2294
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %324, metadata !1952, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i1 %361, metadata !1979, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2120
  br label %368, !dbg !2273

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1984, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i64 %364, metadata !1981, metadata !DIExpression()), !dbg !2268
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2294
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %324, metadata !1952, metadata !DIExpression()), !dbg !2011
  %366 = icmp eq i8 %365, 0, !dbg !2272
  call void @llvm.dbg.value(metadata i1 %366, metadata !1979, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2120
  %367 = icmp ugt i64 %364, 1, !dbg !2330
  br i1 %367, label %374, label %368, !dbg !2273

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2331
  br i1 %373, label %374, label %480, !dbg !2331

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %379, metadata !2001, metadata !DIExpression()), !dbg !2333
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2334

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2011
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2112
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2110
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2120
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2335
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2120
  call void @llvm.dbg.value(metadata i8 %387, metadata !1980, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %386, metadata !1978, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %385, metadata !1975, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %384, metadata !1973, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 %383, metadata !1967, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %382, metadata !1959, metadata !DIExpression()), !dbg !2011
  br i1 %380, label %388, label %434, !dbg !2336

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2341

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1978, metadata !DIExpression()), !dbg !2120
  %390 = and i8 %383, 1, !dbg !2344
  %391 = icmp eq i8 %390, 0, !dbg !2344
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2344
  br i1 %392, label %393, label %409, !dbg !2344

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2346
  br i1 %394, label %395, label %397, !dbg !2350

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2346
  store i8 39, ptr %396, align 1, !dbg !2346, !tbaa !878
  br label %397, !dbg !2346

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %398, metadata !1959, metadata !DIExpression()), !dbg !2011
  %399 = icmp ult i64 %398, %146, !dbg !2351
  br i1 %399, label %400, label %402, !dbg !2354

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2351
  store i8 36, ptr %401, align 1, !dbg !2351, !tbaa !878
  br label %402, !dbg !2351

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %403, metadata !1959, metadata !DIExpression()), !dbg !2011
  %404 = icmp ult i64 %403, %146, !dbg !2355
  br i1 %404, label %405, label %407, !dbg !2358

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2355
  store i8 39, ptr %406, align 1, !dbg !2355, !tbaa !878
  br label %407, !dbg !2355

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %408, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 1, metadata !1967, metadata !DIExpression()), !dbg !2011
  br label %409, !dbg !2359

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2011
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2011
  call void @llvm.dbg.value(metadata i8 %411, metadata !1967, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %410, metadata !1959, metadata !DIExpression()), !dbg !2011
  %412 = icmp ult i64 %410, %146, !dbg !2360
  br i1 %412, label %413, label %415, !dbg !2363

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2360
  store i8 92, ptr %414, align 1, !dbg !2360, !tbaa !878
  br label %415, !dbg !2360

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %416, metadata !1959, metadata !DIExpression()), !dbg !2011
  %417 = icmp ult i64 %416, %146, !dbg !2364
  br i1 %417, label %418, label %422, !dbg !2367

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2364
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2364
  store i8 %420, ptr %421, align 1, !dbg !2364, !tbaa !878
  br label %422, !dbg !2364

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %423, metadata !1959, metadata !DIExpression()), !dbg !2011
  %424 = icmp ult i64 %423, %146, !dbg !2368
  br i1 %424, label %425, label %430, !dbg !2371

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2368
  %428 = or i8 %427, 48, !dbg !2368
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2368
  store i8 %428, ptr %429, align 1, !dbg !2368, !tbaa !878
  br label %430, !dbg !2368

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2371
  call void @llvm.dbg.value(metadata i64 %431, metadata !1959, metadata !DIExpression()), !dbg !2011
  %432 = and i8 %387, 7, !dbg !2372
  %433 = or i8 %432, 48, !dbg !2373
  call void @llvm.dbg.value(metadata i8 %433, metadata !1980, metadata !DIExpression()), !dbg !2120
  br label %443, !dbg !2374

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2375
  %436 = icmp eq i8 %435, 0, !dbg !2375
  br i1 %436, label %443, label %437, !dbg !2377

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2378
  br i1 %438, label %439, label %441, !dbg !2382

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2378
  store i8 92, ptr %440, align 1, !dbg !2378, !tbaa !878
  br label %441, !dbg !2378

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %442, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 0, metadata !1975, metadata !DIExpression()), !dbg !2120
  br label %443, !dbg !2383

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2011
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2112
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2120
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2120
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2120
  call void @llvm.dbg.value(metadata i8 %448, metadata !1980, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %447, metadata !1978, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %446, metadata !1975, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %445, metadata !1967, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %444, metadata !1959, metadata !DIExpression()), !dbg !2011
  %449 = add i64 %384, 1, !dbg !2384
  %450 = icmp ugt i64 %379, %449, !dbg !2386
  br i1 %450, label %451, label %478, !dbg !2387

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2388
  %453 = icmp ne i8 %452, 0, !dbg !2388
  %454 = and i8 %447, 1, !dbg !2388
  %455 = icmp eq i8 %454, 0, !dbg !2388
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2388
  br i1 %456, label %457, label %468, !dbg !2388

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2391
  br i1 %458, label %459, label %461, !dbg !2395

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2391
  store i8 39, ptr %460, align 1, !dbg !2391, !tbaa !878
  br label %461, !dbg !2391

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %462, metadata !1959, metadata !DIExpression()), !dbg !2011
  %463 = icmp ult i64 %462, %146, !dbg !2396
  br i1 %463, label %464, label %466, !dbg !2399

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2396
  store i8 39, ptr %465, align 1, !dbg !2396, !tbaa !878
  br label %466, !dbg !2396

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %467, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !2011
  br label %468, !dbg !2400

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2401
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2011
  call void @llvm.dbg.value(metadata i8 %470, metadata !1967, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %469, metadata !1959, metadata !DIExpression()), !dbg !2011
  %471 = icmp ult i64 %469, %146, !dbg !2402
  br i1 %471, label %472, label %474, !dbg !2405

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2402
  store i8 %448, ptr %473, align 1, !dbg !2402, !tbaa !878
  br label %474, !dbg !2402

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2405
  call void @llvm.dbg.value(metadata i64 %475, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %449, metadata !1973, metadata !DIExpression()), !dbg !2110
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2406
  %477 = load i8, ptr %476, align 1, !dbg !2406, !tbaa !878
  call void @llvm.dbg.value(metadata i8 %477, metadata !1980, metadata !DIExpression()), !dbg !2120
  br label %381, !dbg !2407, !llvm.loop !2408

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i8 %448, metadata !1980, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %479, metadata !1979, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %447, metadata !1978, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %446, metadata !1975, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %384, metadata !1973, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 %445, metadata !1967, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %444, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %378, metadata !1952, metadata !DIExpression()), !dbg !2011
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2411
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2011
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2016
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2011
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2011
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2110
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2120
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2120
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2120
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1950, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %489, metadata !1980, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %488, metadata !1979, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %487, metadata !1978, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %173, metadata !1975, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %486, metadata !1973, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 %485, metadata !1967, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %484, metadata !1965, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %483, metadata !1960, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %482, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %481, metadata !1952, metadata !DIExpression()), !dbg !2011
  br i1 %127, label %502, label %491, !dbg !2412

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
  br i1 %137, label %503, label %524, !dbg !2414

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2415

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
  %514 = lshr i8 %505, 5, !dbg !2416
  %515 = zext i8 %514 to i64, !dbg !2416
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2417
  %517 = load i32, ptr %516, align 4, !dbg !2417, !tbaa !869
  %518 = and i8 %505, 31, !dbg !2418
  %519 = zext i8 %518 to i32, !dbg !2418
  %520 = shl nuw i32 1, %519, !dbg !2419
  %521 = and i32 %517, %520, !dbg !2419
  %522 = icmp eq i32 %521, 0, !dbg !2419
  %523 = and i1 %172, %522, !dbg !2420
  br i1 %523, label %573, label %535, !dbg !2420

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
  br i1 %172, label %573, label %535, !dbg !2421

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2411
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2011
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2016
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2020
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2112
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2422
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2120
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2120
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1950, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %543, metadata !1980, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %542, metadata !1979, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %541, metadata !1973, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 %540, metadata !1967, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %539, metadata !1965, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %538, metadata !1960, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %537, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %536, metadata !1952, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.label(metadata !2008), !dbg !2423
  br i1 %132, label %545, label %674, !dbg !2424

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1978, metadata !DIExpression()), !dbg !2120
  %546 = and i8 %540, 1, !dbg !2426
  %547 = icmp eq i8 %546, 0, !dbg !2426
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2426
  br i1 %548, label %549, label %565, !dbg !2426

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2428
  br i1 %550, label %551, label %553, !dbg !2432

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2428
  store i8 39, ptr %552, align 1, !dbg !2428, !tbaa !878
  br label %553, !dbg !2428

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2432
  call void @llvm.dbg.value(metadata i64 %554, metadata !1959, metadata !DIExpression()), !dbg !2011
  %555 = icmp ult i64 %554, %544, !dbg !2433
  br i1 %555, label %556, label %558, !dbg !2436

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2433
  store i8 36, ptr %557, align 1, !dbg !2433, !tbaa !878
  br label %558, !dbg !2433

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %559, metadata !1959, metadata !DIExpression()), !dbg !2011
  %560 = icmp ult i64 %559, %544, !dbg !2437
  br i1 %560, label %561, label %563, !dbg !2440

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2437
  store i8 39, ptr %562, align 1, !dbg !2437, !tbaa !878
  br label %563, !dbg !2437

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %564, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 1, metadata !1967, metadata !DIExpression()), !dbg !2011
  br label %565, !dbg !2441

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2120
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2011
  call void @llvm.dbg.value(metadata i8 %567, metadata !1967, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %566, metadata !1959, metadata !DIExpression()), !dbg !2011
  %568 = icmp ult i64 %566, %544, !dbg !2442
  br i1 %568, label %569, label %571, !dbg !2445

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2442
  store i8 92, ptr %570, align 1, !dbg !2442, !tbaa !878
  br label %571, !dbg !2442

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2445
  call void @llvm.dbg.value(metadata i64 %544, metadata !1950, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %543, metadata !1980, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %542, metadata !1979, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 1, metadata !1978, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %541, metadata !1973, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 %567, metadata !1967, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %539, metadata !1965, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %538, metadata !1960, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %572, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %536, metadata !1952, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.label(metadata !2009), !dbg !2446
  br label %600, !dbg !2447

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2411
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2011
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2016
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2020
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2112
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2422
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2120
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2120
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2450
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1950, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %582, metadata !1980, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %581, metadata !1979, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 %580, metadata !1978, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i64 %579, metadata !1973, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 %578, metadata !1967, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %577, metadata !1965, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %576, metadata !1960, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %575, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %574, metadata !1952, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.label(metadata !2009), !dbg !2446
  %584 = and i8 %578, 1, !dbg !2447
  %585 = icmp ne i8 %584, 0, !dbg !2447
  %586 = and i8 %580, 1, !dbg !2447
  %587 = icmp eq i8 %586, 0, !dbg !2447
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2447
  br i1 %588, label %589, label %600, !dbg !2447

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2451
  br i1 %590, label %591, label %593, !dbg !2455

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2451
  store i8 39, ptr %592, align 1, !dbg !2451, !tbaa !878
  br label %593, !dbg !2451

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2455
  call void @llvm.dbg.value(metadata i64 %594, metadata !1959, metadata !DIExpression()), !dbg !2011
  %595 = icmp ult i64 %594, %583, !dbg !2456
  br i1 %595, label %596, label %598, !dbg !2459

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2456
  store i8 39, ptr %597, align 1, !dbg !2456, !tbaa !878
  br label %598, !dbg !2456

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %599, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !2011
  br label %600, !dbg !2460

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2120
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2011
  call void @llvm.dbg.value(metadata i8 %609, metadata !1967, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %608, metadata !1959, metadata !DIExpression()), !dbg !2011
  %610 = icmp ult i64 %608, %601, !dbg !2461
  br i1 %610, label %611, label %613, !dbg !2464

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2461
  store i8 %602, ptr %612, align 1, !dbg !2461, !tbaa !878
  br label %613, !dbg !2461

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %614, metadata !1959, metadata !DIExpression()), !dbg !2011
  %615 = icmp eq i8 %603, 0, !dbg !2465
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2467
  call void @llvm.dbg.value(metadata i8 %616, metadata !1966, metadata !DIExpression()), !dbg !2011
  br label %617, !dbg !2468

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2411
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2011
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2016
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2020
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2021
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2112
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2422
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1950, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %624, metadata !1973, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 %623, metadata !1967, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %622, metadata !1966, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %621, metadata !1965, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %620, metadata !1960, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %619, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %618, metadata !1952, metadata !DIExpression()), !dbg !2011
  %626 = add i64 %624, 1, !dbg !2469
  call void @llvm.dbg.value(metadata i64 %626, metadata !1973, metadata !DIExpression()), !dbg !2110
  br label %138, !dbg !2470, !llvm.loop !2471

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1950, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %143, metadata !1966, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8 %142, metadata !1965, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %141, metadata !1960, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %140, metadata !1959, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %139, metadata !1952, metadata !DIExpression()), !dbg !2011
  %628 = icmp eq i64 %140, 0, !dbg !2473
  %629 = and i1 %133, %628, !dbg !2475
  %630 = xor i1 %629, true, !dbg !2475
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2475
  br i1 %631, label %632, label %670, !dbg !2475

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2476
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2476
  br i1 %636, label %637, label %646, !dbg !2476

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2478
  %639 = icmp eq i8 %638, 0, !dbg !2478
  br i1 %639, label %642, label %640, !dbg !2481

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2482
  br label %694, !dbg !2483

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2484
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2486
  br i1 %645, label %28, label %646, !dbg !2486

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2487
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2489
  br i1 %649, label %650, label %665, !dbg !2489

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1961, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %140, metadata !1959, metadata !DIExpression()), !dbg !2011
  %651 = load i8, ptr %120, align 1, !dbg !2490, !tbaa !878
  %652 = icmp eq i8 %651, 0, !dbg !2493
  br i1 %652, label %665, label %653, !dbg !2493

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1961, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %656, metadata !1959, metadata !DIExpression()), !dbg !2011
  %657 = icmp ult i64 %656, %146, !dbg !2494
  br i1 %657, label %658, label %660, !dbg !2497

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2494
  store i8 %654, ptr %659, align 1, !dbg !2494, !tbaa !878
  br label %660, !dbg !2494

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %661, metadata !1959, metadata !DIExpression()), !dbg !2011
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2498
  call void @llvm.dbg.value(metadata ptr %662, metadata !1961, metadata !DIExpression()), !dbg !2011
  %663 = load i8, ptr %662, align 1, !dbg !2490, !tbaa !878
  %664 = icmp eq i8 %663, 0, !dbg !2493
  br i1 %664, label %665, label %653, !dbg !2493, !llvm.loop !2499

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2093
  call void @llvm.dbg.value(metadata i64 %666, metadata !1959, metadata !DIExpression()), !dbg !2011
  %667 = icmp ult i64 %666, %146, !dbg !2501
  br i1 %667, label %668, label %694, !dbg !2503

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2504
  store i8 0, ptr %669, align 1, !dbg !2505, !tbaa !878
  br label %694, !dbg !2504

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2010), !dbg !2506
  %672 = icmp eq i8 %124, 0, !dbg !2507
  %673 = select i1 %672, i32 2, i32 4, !dbg !2507
  br label %684, !dbg !2507

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2507
  %678 = select i1 %677, i32 2, i32 4, !dbg !2507
  br label %679, !dbg !2509

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2010), !dbg !2506
  %683 = icmp eq i32 %116, 2, !dbg !2509
  br i1 %683, label %684, label %688, !dbg !2507

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2507

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1953, metadata !DIExpression()), !dbg !2011
  %692 = and i32 %5, -3, !dbg !2510
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2511
  br label %694, !dbg !2512

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2513
}

; Function Attrs: nounwind
declare !dbg !2514 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2517 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2520 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2522 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2526, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i64 %1, metadata !2527, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata ptr %2, metadata !2528, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata ptr %0, metadata !2530, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 %1, metadata !2535, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata ptr null, metadata !2536, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata ptr %2, metadata !2537, metadata !DIExpression()), !dbg !2543
  %4 = icmp eq ptr %2, null, !dbg !2545
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2545
  call void @llvm.dbg.value(metadata ptr %5, metadata !2538, metadata !DIExpression()), !dbg !2543
  %6 = tail call ptr @__errno_location() #41, !dbg !2546
  %7 = load i32, ptr %6, align 4, !dbg !2546, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %7, metadata !2539, metadata !DIExpression()), !dbg !2543
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2547
  %9 = load i32, ptr %8, align 4, !dbg !2547, !tbaa !1893
  %10 = or i32 %9, 1, !dbg !2548
  call void @llvm.dbg.value(metadata i32 %10, metadata !2540, metadata !DIExpression()), !dbg !2543
  %11 = load i32, ptr %5, align 8, !dbg !2549, !tbaa !1843
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2550
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2551
  %14 = load ptr, ptr %13, align 8, !dbg !2551, !tbaa !1914
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2552
  %16 = load ptr, ptr %15, align 8, !dbg !2552, !tbaa !1917
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2553
  %18 = add i64 %17, 1, !dbg !2554
  call void @llvm.dbg.value(metadata i64 %18, metadata !2541, metadata !DIExpression()), !dbg !2543
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2555
  call void @llvm.dbg.value(metadata ptr %19, metadata !2542, metadata !DIExpression()), !dbg !2543
  %20 = load i32, ptr %5, align 8, !dbg !2556, !tbaa !1843
  %21 = load ptr, ptr %13, align 8, !dbg !2557, !tbaa !1914
  %22 = load ptr, ptr %15, align 8, !dbg !2558, !tbaa !1917
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2559
  store i32 %7, ptr %6, align 4, !dbg !2560, !tbaa !869
  ret ptr %19, !dbg !2561
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2531 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2530, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i64 %1, metadata !2535, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata ptr %2, metadata !2536, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata ptr %3, metadata !2537, metadata !DIExpression()), !dbg !2562
  %5 = icmp eq ptr %3, null, !dbg !2563
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2563
  call void @llvm.dbg.value(metadata ptr %6, metadata !2538, metadata !DIExpression()), !dbg !2562
  %7 = tail call ptr @__errno_location() #41, !dbg !2564
  %8 = load i32, ptr %7, align 4, !dbg !2564, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %8, metadata !2539, metadata !DIExpression()), !dbg !2562
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2565
  %10 = load i32, ptr %9, align 4, !dbg !2565, !tbaa !1893
  %11 = icmp eq ptr %2, null, !dbg !2566
  %12 = zext i1 %11 to i32, !dbg !2566
  %13 = or i32 %10, %12, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %13, metadata !2540, metadata !DIExpression()), !dbg !2562
  %14 = load i32, ptr %6, align 8, !dbg !2568, !tbaa !1843
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2569
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2570
  %17 = load ptr, ptr %16, align 8, !dbg !2570, !tbaa !1914
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2571
  %19 = load ptr, ptr %18, align 8, !dbg !2571, !tbaa !1917
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2572
  %21 = add i64 %20, 1, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %21, metadata !2541, metadata !DIExpression()), !dbg !2562
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2574
  call void @llvm.dbg.value(metadata ptr %22, metadata !2542, metadata !DIExpression()), !dbg !2562
  %23 = load i32, ptr %6, align 8, !dbg !2575, !tbaa !1843
  %24 = load ptr, ptr %16, align 8, !dbg !2576, !tbaa !1914
  %25 = load ptr, ptr %18, align 8, !dbg !2577, !tbaa !1917
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2578
  store i32 %8, ptr %7, align 4, !dbg !2579, !tbaa !869
  br i1 %11, label %28, label %27, !dbg !2580

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2581, !tbaa !2583
  br label %28, !dbg !2584

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2585
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2586 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2591, !tbaa !805
  call void @llvm.dbg.value(metadata ptr %1, metadata !2588, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 1, metadata !2589, metadata !DIExpression()), !dbg !2593
  %2 = load i32, ptr @nslots, align 4, !tbaa !869
  call void @llvm.dbg.value(metadata i32 1, metadata !2589, metadata !DIExpression()), !dbg !2593
  %3 = icmp sgt i32 %2, 1, !dbg !2594
  br i1 %3, label %4, label %6, !dbg !2596

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2594
  br label %10, !dbg !2596

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2597
  %8 = load ptr, ptr %7, align 8, !dbg !2597, !tbaa !2599
  %9 = icmp eq ptr %8, @slot0, !dbg !2601
  br i1 %9, label %17, label %16, !dbg !2602

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2589, metadata !DIExpression()), !dbg !2593
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2603
  %13 = load ptr, ptr %12, align 8, !dbg !2603, !tbaa !2599
  tail call void @free(ptr noundef %13) #38, !dbg !2604
  %14 = add nuw nsw i64 %11, 1, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %14, metadata !2589, metadata !DIExpression()), !dbg !2593
  %15 = icmp eq i64 %14, %5, !dbg !2594
  br i1 %15, label %6, label %10, !dbg !2596, !llvm.loop !2606

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2608
  store i64 256, ptr @slotvec0, align 8, !dbg !2610, !tbaa !2611
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2612, !tbaa !2599
  br label %17, !dbg !2613

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2614
  br i1 %18, label %20, label %19, !dbg !2616

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2617
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2619, !tbaa !805
  br label %20, !dbg !2620

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2621, !tbaa !869
  ret void, !dbg !2622
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2623 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2625, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata ptr %1, metadata !2626, metadata !DIExpression()), !dbg !2627
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2628
  ret ptr %3, !dbg !2629
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2630 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2634, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %1, metadata !2635, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64 %2, metadata !2636, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %3, metadata !2637, metadata !DIExpression()), !dbg !2650
  %6 = tail call ptr @__errno_location() #41, !dbg !2651
  %7 = load i32, ptr %6, align 4, !dbg !2651, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %7, metadata !2638, metadata !DIExpression()), !dbg !2650
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2652, !tbaa !805
  call void @llvm.dbg.value(metadata ptr %8, metadata !2639, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2640, metadata !DIExpression()), !dbg !2650
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2653
  br i1 %9, label %10, label %11, !dbg !2653

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2655
  unreachable, !dbg !2655

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2656, !tbaa !869
  %13 = icmp sgt i32 %12, %0, !dbg !2657
  br i1 %13, label %32, label %14, !dbg !2658

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2659
  call void @llvm.dbg.value(metadata i1 %15, metadata !2641, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2660
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2661
  %16 = sext i32 %12 to i64, !dbg !2662
  call void @llvm.dbg.value(metadata i64 %16, metadata !2644, metadata !DIExpression()), !dbg !2660
  store i64 %16, ptr %5, align 8, !dbg !2663, !tbaa !2583
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2664
  %18 = add nuw nsw i32 %0, 1, !dbg !2665
  %19 = sub i32 %18, %12, !dbg !2666
  %20 = sext i32 %19 to i64, !dbg !2667
  call void @llvm.dbg.value(metadata ptr %5, metadata !2644, metadata !DIExpression(DW_OP_deref)), !dbg !2660
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2668
  call void @llvm.dbg.value(metadata ptr %21, metadata !2639, metadata !DIExpression()), !dbg !2650
  store ptr %21, ptr @slotvec, align 8, !dbg !2669, !tbaa !805
  br i1 %15, label %22, label %23, !dbg !2670

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2671, !tbaa.struct !2673
  br label %23, !dbg !2674

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2675, !tbaa !869
  %25 = sext i32 %24 to i64, !dbg !2676
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2676
  %27 = load i64, ptr %5, align 8, !dbg !2677, !tbaa !2583
  call void @llvm.dbg.value(metadata i64 %27, metadata !2644, metadata !DIExpression()), !dbg !2660
  %28 = sub nsw i64 %27, %25, !dbg !2678
  %29 = shl i64 %28, 4, !dbg !2679
  call void @llvm.dbg.value(metadata ptr %26, metadata !2050, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i32 0, metadata !2053, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %29, metadata !2054, metadata !DIExpression()), !dbg !2680
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2682
  %30 = load i64, ptr %5, align 8, !dbg !2683, !tbaa !2583
  call void @llvm.dbg.value(metadata i64 %30, metadata !2644, metadata !DIExpression()), !dbg !2660
  %31 = trunc i64 %30 to i32, !dbg !2683
  store i32 %31, ptr @nslots, align 4, !dbg !2684, !tbaa !869
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2685
  br label %32, !dbg !2686

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2650
  call void @llvm.dbg.value(metadata ptr %33, metadata !2639, metadata !DIExpression()), !dbg !2650
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2687
  %36 = load i64, ptr %35, align 8, !dbg !2688, !tbaa !2611
  call void @llvm.dbg.value(metadata i64 %36, metadata !2645, metadata !DIExpression()), !dbg !2689
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2690
  %38 = load ptr, ptr %37, align 8, !dbg !2690, !tbaa !2599
  call void @llvm.dbg.value(metadata ptr %38, metadata !2647, metadata !DIExpression()), !dbg !2689
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2691
  %40 = load i32, ptr %39, align 4, !dbg !2691, !tbaa !1893
  %41 = or i32 %40, 1, !dbg !2692
  call void @llvm.dbg.value(metadata i32 %41, metadata !2648, metadata !DIExpression()), !dbg !2689
  %42 = load i32, ptr %3, align 8, !dbg !2693, !tbaa !1843
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2694
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2695
  %45 = load ptr, ptr %44, align 8, !dbg !2695, !tbaa !1914
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2696
  %47 = load ptr, ptr %46, align 8, !dbg !2696, !tbaa !1917
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %48, metadata !2649, metadata !DIExpression()), !dbg !2689
  %49 = icmp ugt i64 %36, %48, !dbg !2698
  br i1 %49, label %60, label %50, !dbg !2700

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2701
  call void @llvm.dbg.value(metadata i64 %51, metadata !2645, metadata !DIExpression()), !dbg !2689
  store i64 %51, ptr %35, align 8, !dbg !2703, !tbaa !2611
  %52 = icmp eq ptr %38, @slot0, !dbg !2704
  br i1 %52, label %54, label %53, !dbg !2706

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2707
  br label %54, !dbg !2707

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !2708
  call void @llvm.dbg.value(metadata ptr %55, metadata !2647, metadata !DIExpression()), !dbg !2689
  store ptr %55, ptr %37, align 8, !dbg !2709, !tbaa !2599
  %56 = load i32, ptr %3, align 8, !dbg !2710, !tbaa !1843
  %57 = load ptr, ptr %44, align 8, !dbg !2711, !tbaa !1914
  %58 = load ptr, ptr %46, align 8, !dbg !2712, !tbaa !1917
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2713
  br label %60, !dbg !2714

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2689
  call void @llvm.dbg.value(metadata ptr %61, metadata !2647, metadata !DIExpression()), !dbg !2689
  store i32 %7, ptr %6, align 4, !dbg !2715, !tbaa !869
  ret ptr %61, !dbg !2716
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2717 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2721, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %1, metadata !2722, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %2, metadata !2723, metadata !DIExpression()), !dbg !2724
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2725
  ret ptr %4, !dbg !2726
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2727 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2729, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i32 0, metadata !2625, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata ptr %0, metadata !2626, metadata !DIExpression()), !dbg !2731
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2733
  ret ptr %2, !dbg !2734
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2735 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2739, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i64 %1, metadata !2740, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i32 0, metadata !2721, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata ptr %0, metadata !2722, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i64 %1, metadata !2723, metadata !DIExpression()), !dbg !2742
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2744
  ret ptr %3, !dbg !2745
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2746 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2750, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 %1, metadata !2751, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata ptr %2, metadata !2752, metadata !DIExpression()), !dbg !2754
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2755
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2753, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2757), !dbg !2760
  call void @llvm.dbg.value(metadata i32 %1, metadata !2761, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2766, metadata !DIExpression()), !dbg !2769
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2769, !alias.scope !2757
  %5 = icmp eq i32 %1, 10, !dbg !2770
  br i1 %5, label %6, label %7, !dbg !2772

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2773, !noalias !2757
  unreachable, !dbg !2773

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2774, !tbaa !1843, !alias.scope !2757
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2775
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2776
  ret ptr %8, !dbg !2777
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2778 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2782, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i32 %1, metadata !2783, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata ptr %2, metadata !2784, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %3, metadata !2785, metadata !DIExpression()), !dbg !2787
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2788
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2786, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2790), !dbg !2793
  call void @llvm.dbg.value(metadata i32 %1, metadata !2761, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2766, metadata !DIExpression()), !dbg !2796
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2796, !alias.scope !2790
  %6 = icmp eq i32 %1, 10, !dbg !2797
  br i1 %6, label %7, label %8, !dbg !2798

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2799, !noalias !2790
  unreachable, !dbg !2799

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2800, !tbaa !1843, !alias.scope !2790
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2801
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2802
  ret ptr %9, !dbg !2803
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2804 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2808, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata ptr %1, metadata !2809, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i32 0, metadata !2750, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 %0, metadata !2751, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata ptr %1, metadata !2752, metadata !DIExpression()), !dbg !2811
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2813
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2753, metadata !DIExpression()), !dbg !2814
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2815), !dbg !2818
  call void @llvm.dbg.value(metadata i32 %0, metadata !2761, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2766, metadata !DIExpression()), !dbg !2821
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2821, !alias.scope !2815
  %4 = icmp eq i32 %0, 10, !dbg !2822
  br i1 %4, label %5, label %6, !dbg !2823

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2824, !noalias !2815
  unreachable, !dbg !2824

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2825, !tbaa !1843, !alias.scope !2815
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2826
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2827
  ret ptr %7, !dbg !2828
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2829 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2833, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata ptr %1, metadata !2834, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %2, metadata !2835, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32 0, metadata !2782, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i32 %0, metadata !2783, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata ptr %1, metadata !2784, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i64 %2, metadata !2785, metadata !DIExpression()), !dbg !2837
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2839
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2786, metadata !DIExpression()), !dbg !2840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2841), !dbg !2844
  call void @llvm.dbg.value(metadata i32 %0, metadata !2761, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2766, metadata !DIExpression()), !dbg !2847
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2847, !alias.scope !2841
  %5 = icmp eq i32 %0, 10, !dbg !2848
  br i1 %5, label %6, label %7, !dbg !2849

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2850, !noalias !2841
  unreachable, !dbg !2850

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2851, !tbaa !1843, !alias.scope !2841
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2852
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2853
  ret ptr %8, !dbg !2854
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2855 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2859, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i64 %1, metadata !2860, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8 %2, metadata !2861, metadata !DIExpression()), !dbg !2863
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2864
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2862, metadata !DIExpression()), !dbg !2865
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2866, !tbaa.struct !2867
  call void @llvm.dbg.value(metadata ptr %4, metadata !1860, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8 %2, metadata !1861, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i32 1, metadata !1862, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8 %2, metadata !1863, metadata !DIExpression()), !dbg !2868
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2870
  %6 = lshr i8 %2, 5, !dbg !2871
  %7 = zext i8 %6 to i64, !dbg !2871
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2872
  call void @llvm.dbg.value(metadata ptr %8, metadata !1864, metadata !DIExpression()), !dbg !2868
  %9 = and i8 %2, 31, !dbg !2873
  %10 = zext i8 %9 to i32, !dbg !2873
  call void @llvm.dbg.value(metadata i32 %10, metadata !1866, metadata !DIExpression()), !dbg !2868
  %11 = load i32, ptr %8, align 4, !dbg !2874, !tbaa !869
  %12 = lshr i32 %11, %10, !dbg !2875
  call void @llvm.dbg.value(metadata i32 %12, metadata !1867, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2868
  %13 = and i32 %12, 1, !dbg !2876
  %14 = xor i32 %13, 1, !dbg !2876
  %15 = shl nuw i32 %14, %10, !dbg !2877
  %16 = xor i32 %15, %11, !dbg !2878
  store i32 %16, ptr %8, align 4, !dbg !2878, !tbaa !869
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2879
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2880
  ret ptr %17, !dbg !2881
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2882 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2886, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8 %1, metadata !2887, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata ptr %0, metadata !2859, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i64 -1, metadata !2860, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8 %1, metadata !2861, metadata !DIExpression()), !dbg !2889
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2891
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2862, metadata !DIExpression()), !dbg !2892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2893, !tbaa.struct !2867
  call void @llvm.dbg.value(metadata ptr %3, metadata !1860, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 %1, metadata !1861, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i32 1, metadata !1862, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 %1, metadata !1863, metadata !DIExpression()), !dbg !2894
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2896
  %5 = lshr i8 %1, 5, !dbg !2897
  %6 = zext i8 %5 to i64, !dbg !2897
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2898
  call void @llvm.dbg.value(metadata ptr %7, metadata !1864, metadata !DIExpression()), !dbg !2894
  %8 = and i8 %1, 31, !dbg !2899
  %9 = zext i8 %8 to i32, !dbg !2899
  call void @llvm.dbg.value(metadata i32 %9, metadata !1866, metadata !DIExpression()), !dbg !2894
  %10 = load i32, ptr %7, align 4, !dbg !2900, !tbaa !869
  %11 = lshr i32 %10, %9, !dbg !2901
  call void @llvm.dbg.value(metadata i32 %11, metadata !1867, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2894
  %12 = and i32 %11, 1, !dbg !2902
  %13 = xor i32 %12, 1, !dbg !2902
  %14 = shl nuw i32 %13, %9, !dbg !2903
  %15 = xor i32 %14, %10, !dbg !2904
  store i32 %15, ptr %7, align 4, !dbg !2904, !tbaa !869
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2905
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2906
  ret ptr %16, !dbg !2907
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2908 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2910, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata ptr %0, metadata !2886, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8 58, metadata !2887, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata ptr %0, metadata !2859, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 -1, metadata !2860, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 58, metadata !2861, metadata !DIExpression()), !dbg !2914
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2916
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2862, metadata !DIExpression()), !dbg !2917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2918, !tbaa.struct !2867
  call void @llvm.dbg.value(metadata ptr %2, metadata !1860, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8 58, metadata !1861, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i32 1, metadata !1862, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8 58, metadata !1863, metadata !DIExpression()), !dbg !2919
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2921
  call void @llvm.dbg.value(metadata ptr %3, metadata !1864, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i32 26, metadata !1866, metadata !DIExpression()), !dbg !2919
  %4 = load i32, ptr %3, align 4, !dbg !2922, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %4, metadata !1867, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2919
  %5 = or i32 %4, 67108864, !dbg !2923
  store i32 %5, ptr %3, align 4, !dbg !2923, !tbaa !869
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2924
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2925
  ret ptr %6, !dbg !2926
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2927 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2929, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i64 %1, metadata !2930, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata ptr %0, metadata !2859, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2860, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8 58, metadata !2861, metadata !DIExpression()), !dbg !2932
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2934
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2862, metadata !DIExpression()), !dbg !2935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2936, !tbaa.struct !2867
  call void @llvm.dbg.value(metadata ptr %3, metadata !1860, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8 58, metadata !1861, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i32 1, metadata !1862, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8 58, metadata !1863, metadata !DIExpression()), !dbg !2937
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2939
  call void @llvm.dbg.value(metadata ptr %4, metadata !1864, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i32 26, metadata !1866, metadata !DIExpression()), !dbg !2937
  %5 = load i32, ptr %4, align 4, !dbg !2940, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %5, metadata !1867, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2937
  %6 = or i32 %5, 67108864, !dbg !2941
  store i32 %6, ptr %4, align 4, !dbg !2941, !tbaa !869
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2942
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2943
  ret ptr %7, !dbg !2944
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2945 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2766, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2951
  call void @llvm.dbg.value(metadata i32 %0, metadata !2947, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32 %1, metadata !2948, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata ptr %2, metadata !2949, metadata !DIExpression()), !dbg !2953
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2954
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2950, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 %1, metadata !2761, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i32 0, metadata !2766, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2956
  %5 = icmp eq i32 %1, 10, !dbg !2957
  br i1 %5, label %6, label %7, !dbg !2958

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2959, !noalias !2960
  unreachable, !dbg !2959

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2766, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2956
  store i32 %1, ptr %4, align 8, !dbg !2963, !tbaa.struct !2867
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2963
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2963
  call void @llvm.dbg.value(metadata ptr %4, metadata !1860, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8 58, metadata !1861, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i32 1, metadata !1862, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8 58, metadata !1863, metadata !DIExpression()), !dbg !2964
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2966
  call void @llvm.dbg.value(metadata ptr %9, metadata !1864, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i32 26, metadata !1866, metadata !DIExpression()), !dbg !2964
  %10 = load i32, ptr %9, align 4, !dbg !2967, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %10, metadata !1867, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2964
  %11 = or i32 %10, 67108864, !dbg !2968
  store i32 %11, ptr %9, align 4, !dbg !2968, !tbaa !869
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2969
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2970
  ret ptr %12, !dbg !2971
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2972 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2976, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata ptr %1, metadata !2977, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata ptr %2, metadata !2978, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata ptr %3, metadata !2979, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i32 %0, metadata !2981, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %1, metadata !2986, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %2, metadata !2987, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr %3, metadata !2988, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 -1, metadata !2989, metadata !DIExpression()), !dbg !2991
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2993
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2990, metadata !DIExpression()), !dbg !2994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2995, !tbaa.struct !2867
  call void @llvm.dbg.value(metadata ptr %5, metadata !1900, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr %1, metadata !1901, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr %2, metadata !1902, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr %5, metadata !1900, metadata !DIExpression()), !dbg !2996
  store i32 10, ptr %5, align 8, !dbg !2998, !tbaa !1843
  %6 = icmp ne ptr %1, null, !dbg !2999
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3000
  br i1 %8, label %10, label %9, !dbg !3000

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3001
  unreachable, !dbg !3001

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3002
  store ptr %1, ptr %11, align 8, !dbg !3003, !tbaa !1914
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3004
  store ptr %2, ptr %12, align 8, !dbg !3005, !tbaa !1917
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3006
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3007
  ret ptr %13, !dbg !3008
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2982 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2981, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata ptr %1, metadata !2986, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata ptr %2, metadata !2987, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata ptr %3, metadata !2988, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i64 %4, metadata !2989, metadata !DIExpression()), !dbg !3009
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !3010
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2990, metadata !DIExpression()), !dbg !3011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3012, !tbaa.struct !2867
  call void @llvm.dbg.value(metadata ptr %6, metadata !1900, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata ptr %1, metadata !1901, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata ptr %2, metadata !1902, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata ptr %6, metadata !1900, metadata !DIExpression()), !dbg !3013
  store i32 10, ptr %6, align 8, !dbg !3015, !tbaa !1843
  %7 = icmp ne ptr %1, null, !dbg !3016
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3017
  br i1 %9, label %11, label %10, !dbg !3017

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !3018
  unreachable, !dbg !3018

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3019
  store ptr %1, ptr %12, align 8, !dbg !3020, !tbaa !1914
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3021
  store ptr %2, ptr %13, align 8, !dbg !3022, !tbaa !1917
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3023
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !3024
  ret ptr %14, !dbg !3025
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3026 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3030, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %1, metadata !3031, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %2, metadata !3032, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 0, metadata !2976, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata ptr %0, metadata !2977, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata ptr %1, metadata !2978, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata ptr %2, metadata !2979, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i32 0, metadata !2981, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata ptr %0, metadata !2986, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata ptr %1, metadata !2987, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata ptr %2, metadata !2988, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i64 -1, metadata !2989, metadata !DIExpression()), !dbg !3036
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3038
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2990, metadata !DIExpression()), !dbg !3039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3040, !tbaa.struct !2867
  call void @llvm.dbg.value(metadata ptr %4, metadata !1900, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata ptr %0, metadata !1901, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata ptr %1, metadata !1902, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata ptr %4, metadata !1900, metadata !DIExpression()), !dbg !3041
  store i32 10, ptr %4, align 8, !dbg !3043, !tbaa !1843
  %5 = icmp ne ptr %0, null, !dbg !3044
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3045
  br i1 %7, label %9, label %8, !dbg !3045

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3046
  unreachable, !dbg !3046

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3047
  store ptr %0, ptr %10, align 8, !dbg !3048, !tbaa !1914
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3049
  store ptr %1, ptr %11, align 8, !dbg !3050, !tbaa !1917
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3051
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3052
  ret ptr %12, !dbg !3053
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3054 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3058, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata ptr %1, metadata !3059, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata ptr %2, metadata !3060, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i64 %3, metadata !3061, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i32 0, metadata !2981, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %0, metadata !2986, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %1, metadata !2987, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %2, metadata !2988, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %3, metadata !2989, metadata !DIExpression()), !dbg !3063
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3065
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2990, metadata !DIExpression()), !dbg !3066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3067, !tbaa.struct !2867
  call void @llvm.dbg.value(metadata ptr %5, metadata !1900, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata ptr %0, metadata !1901, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata ptr %1, metadata !1902, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata ptr %5, metadata !1900, metadata !DIExpression()), !dbg !3068
  store i32 10, ptr %5, align 8, !dbg !3070, !tbaa !1843
  %6 = icmp ne ptr %0, null, !dbg !3071
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3072
  br i1 %8, label %10, label %9, !dbg !3072

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3073
  unreachable, !dbg !3073

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3074
  store ptr %0, ptr %11, align 8, !dbg !3075, !tbaa !1914
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3076
  store ptr %1, ptr %12, align 8, !dbg !3077, !tbaa !1917
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3078
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3079
  ret ptr %13, !dbg !3080
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3081 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3085, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata ptr %1, metadata !3086, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i64 %2, metadata !3087, metadata !DIExpression()), !dbg !3088
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3089
  ret ptr %4, !dbg !3090
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3091 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3095, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i64 %1, metadata !3096, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 0, metadata !3085, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata ptr %0, metadata !3086, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %1, metadata !3087, metadata !DIExpression()), !dbg !3098
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3100
  ret ptr %3, !dbg !3101
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3102 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3106, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %1, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i32 %0, metadata !3085, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata ptr %1, metadata !3086, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i64 -1, metadata !3087, metadata !DIExpression()), !dbg !3109
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3111
  ret ptr %3, !dbg !3112
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3113 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3117, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 0, metadata !3106, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr %0, metadata !3107, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 0, metadata !3085, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata ptr %0, metadata !3086, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 -1, metadata !3087, metadata !DIExpression()), !dbg !3121
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3123
  ret ptr %2, !dbg !3124
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3125 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3164, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %1, metadata !3165, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %2, metadata !3166, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %3, metadata !3167, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %4, metadata !3168, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %5, metadata !3169, metadata !DIExpression()), !dbg !3170
  %7 = icmp eq ptr %1, null, !dbg !3171
  br i1 %7, label %10, label %8, !dbg !3173

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.83, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3174
  br label %12, !dbg !3174

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.84, ptr noundef %2, ptr noundef %3) #38, !dbg !3175
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.3.86, i32 noundef 5) #38, !dbg !3176
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3176
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.87, ptr noundef %0), !dbg !3177
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.5.88, i32 noundef 5) #38, !dbg !3178
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.89) #38, !dbg !3178
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.87, ptr noundef %0), !dbg !3179
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
  ], !dbg !3180

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.7.90, i32 noundef 5) #38, !dbg !3181
  %21 = load ptr, ptr %4, align 8, !dbg !3181, !tbaa !805
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3181
  br label %147, !dbg !3183

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.8.91, i32 noundef 5) #38, !dbg !3184
  %25 = load ptr, ptr %4, align 8, !dbg !3184, !tbaa !805
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3184
  %27 = load ptr, ptr %26, align 8, !dbg !3184, !tbaa !805
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3184
  br label %147, !dbg !3185

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.9.92, i32 noundef 5) #38, !dbg !3186
  %31 = load ptr, ptr %4, align 8, !dbg !3186, !tbaa !805
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3186
  %33 = load ptr, ptr %32, align 8, !dbg !3186, !tbaa !805
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3186
  %35 = load ptr, ptr %34, align 8, !dbg !3186, !tbaa !805
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3186
  br label %147, !dbg !3187

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.10.93, i32 noundef 5) #38, !dbg !3188
  %39 = load ptr, ptr %4, align 8, !dbg !3188, !tbaa !805
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3188
  %41 = load ptr, ptr %40, align 8, !dbg !3188, !tbaa !805
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3188
  %43 = load ptr, ptr %42, align 8, !dbg !3188, !tbaa !805
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3188
  %45 = load ptr, ptr %44, align 8, !dbg !3188, !tbaa !805
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3188
  br label %147, !dbg !3189

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.11.94, i32 noundef 5) #38, !dbg !3190
  %49 = load ptr, ptr %4, align 8, !dbg !3190, !tbaa !805
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3190
  %51 = load ptr, ptr %50, align 8, !dbg !3190, !tbaa !805
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3190
  %53 = load ptr, ptr %52, align 8, !dbg !3190, !tbaa !805
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3190
  %55 = load ptr, ptr %54, align 8, !dbg !3190, !tbaa !805
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3190
  %57 = load ptr, ptr %56, align 8, !dbg !3190, !tbaa !805
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3190
  br label %147, !dbg !3191

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.12.95, i32 noundef 5) #38, !dbg !3192
  %61 = load ptr, ptr %4, align 8, !dbg !3192, !tbaa !805
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3192
  %63 = load ptr, ptr %62, align 8, !dbg !3192, !tbaa !805
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3192
  %65 = load ptr, ptr %64, align 8, !dbg !3192, !tbaa !805
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3192
  %67 = load ptr, ptr %66, align 8, !dbg !3192, !tbaa !805
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3192
  %69 = load ptr, ptr %68, align 8, !dbg !3192, !tbaa !805
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3192
  %71 = load ptr, ptr %70, align 8, !dbg !3192, !tbaa !805
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3192
  br label %147, !dbg !3193

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.13.96, i32 noundef 5) #38, !dbg !3194
  %75 = load ptr, ptr %4, align 8, !dbg !3194, !tbaa !805
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3194
  %77 = load ptr, ptr %76, align 8, !dbg !3194, !tbaa !805
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3194
  %79 = load ptr, ptr %78, align 8, !dbg !3194, !tbaa !805
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3194
  %81 = load ptr, ptr %80, align 8, !dbg !3194, !tbaa !805
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3194
  %83 = load ptr, ptr %82, align 8, !dbg !3194, !tbaa !805
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3194
  %85 = load ptr, ptr %84, align 8, !dbg !3194, !tbaa !805
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3194
  %87 = load ptr, ptr %86, align 8, !dbg !3194, !tbaa !805
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3194
  br label %147, !dbg !3195

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.14.97, i32 noundef 5) #38, !dbg !3196
  %91 = load ptr, ptr %4, align 8, !dbg !3196, !tbaa !805
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3196
  %93 = load ptr, ptr %92, align 8, !dbg !3196, !tbaa !805
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3196
  %95 = load ptr, ptr %94, align 8, !dbg !3196, !tbaa !805
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3196
  %97 = load ptr, ptr %96, align 8, !dbg !3196, !tbaa !805
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3196
  %99 = load ptr, ptr %98, align 8, !dbg !3196, !tbaa !805
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3196
  %101 = load ptr, ptr %100, align 8, !dbg !3196, !tbaa !805
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3196
  %103 = load ptr, ptr %102, align 8, !dbg !3196, !tbaa !805
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3196
  %105 = load ptr, ptr %104, align 8, !dbg !3196, !tbaa !805
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3196
  br label %147, !dbg !3197

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.15.98, i32 noundef 5) #38, !dbg !3198
  %109 = load ptr, ptr %4, align 8, !dbg !3198, !tbaa !805
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3198
  %111 = load ptr, ptr %110, align 8, !dbg !3198, !tbaa !805
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3198
  %113 = load ptr, ptr %112, align 8, !dbg !3198, !tbaa !805
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3198
  %115 = load ptr, ptr %114, align 8, !dbg !3198, !tbaa !805
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3198
  %117 = load ptr, ptr %116, align 8, !dbg !3198, !tbaa !805
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3198
  %119 = load ptr, ptr %118, align 8, !dbg !3198, !tbaa !805
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3198
  %121 = load ptr, ptr %120, align 8, !dbg !3198, !tbaa !805
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3198
  %123 = load ptr, ptr %122, align 8, !dbg !3198, !tbaa !805
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3198
  %125 = load ptr, ptr %124, align 8, !dbg !3198, !tbaa !805
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3198
  br label %147, !dbg !3199

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.16.99, i32 noundef 5) #38, !dbg !3200
  %129 = load ptr, ptr %4, align 8, !dbg !3200, !tbaa !805
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3200
  %131 = load ptr, ptr %130, align 8, !dbg !3200, !tbaa !805
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3200
  %133 = load ptr, ptr %132, align 8, !dbg !3200, !tbaa !805
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3200
  %135 = load ptr, ptr %134, align 8, !dbg !3200, !tbaa !805
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3200
  %137 = load ptr, ptr %136, align 8, !dbg !3200, !tbaa !805
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3200
  %139 = load ptr, ptr %138, align 8, !dbg !3200, !tbaa !805
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3200
  %141 = load ptr, ptr %140, align 8, !dbg !3200, !tbaa !805
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3200
  %143 = load ptr, ptr %142, align 8, !dbg !3200, !tbaa !805
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3200
  %145 = load ptr, ptr %144, align 8, !dbg !3200, !tbaa !805
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3200
  br label %147, !dbg !3201

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3202
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3203 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3207, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %1, metadata !3208, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %2, metadata !3209, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %3, metadata !3210, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %4, metadata !3211, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 0, metadata !3212, metadata !DIExpression()), !dbg !3213
  br label %6, !dbg !3214

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3216
  call void @llvm.dbg.value(metadata i64 %7, metadata !3212, metadata !DIExpression()), !dbg !3213
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3217
  %9 = load ptr, ptr %8, align 8, !dbg !3217, !tbaa !805
  %10 = icmp eq ptr %9, null, !dbg !3219
  %11 = add i64 %7, 1, !dbg !3220
  call void @llvm.dbg.value(metadata i64 %11, metadata !3212, metadata !DIExpression()), !dbg !3213
  br i1 %10, label %12, label %6, !dbg !3219, !llvm.loop !3221

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3223
  ret void, !dbg !3224
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3225 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3237, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata ptr %1, metadata !3238, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata ptr %2, metadata !3239, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata ptr %3, metadata !3240, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata ptr %4, metadata !3241, metadata !DIExpression()), !dbg !3245
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3246
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3243, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 0, metadata !3242, metadata !DIExpression()), !dbg !3245
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3242, metadata !DIExpression()), !dbg !3245
  %10 = icmp ult i32 %9, 41, !dbg !3248
  br i1 %10, label %11, label %16, !dbg !3248

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3248
  %13 = zext i32 %9 to i64, !dbg !3248
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3248
  %15 = add nuw nsw i32 %9, 8, !dbg !3248
  store i32 %15, ptr %4, align 8, !dbg !3248
  br label %19, !dbg !3248

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3248
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3248
  store ptr %18, ptr %7, align 8, !dbg !3248
  br label %19, !dbg !3248

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3248
  %22 = load ptr, ptr %21, align 8, !dbg !3248
  store ptr %22, ptr %6, align 16, !dbg !3251, !tbaa !805
  %23 = icmp eq ptr %22, null, !dbg !3252
  br i1 %23, label %128, label %24, !dbg !3253

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3242, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 1, metadata !3242, metadata !DIExpression()), !dbg !3245
  %25 = icmp ult i32 %20, 41, !dbg !3248
  br i1 %25, label %29, label %26, !dbg !3248

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3248
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3248
  store ptr %28, ptr %7, align 8, !dbg !3248
  br label %34, !dbg !3248

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3248
  %31 = zext i32 %20 to i64, !dbg !3248
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3248
  %33 = add nuw nsw i32 %20, 8, !dbg !3248
  store i32 %33, ptr %4, align 8, !dbg !3248
  br label %34, !dbg !3248

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3248
  %37 = load ptr, ptr %36, align 8, !dbg !3248
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3254
  store ptr %37, ptr %38, align 8, !dbg !3251, !tbaa !805
  %39 = icmp eq ptr %37, null, !dbg !3252
  br i1 %39, label %128, label %40, !dbg !3253

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3242, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 2, metadata !3242, metadata !DIExpression()), !dbg !3245
  %41 = icmp ult i32 %35, 41, !dbg !3248
  br i1 %41, label %45, label %42, !dbg !3248

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3248
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3248
  store ptr %44, ptr %7, align 8, !dbg !3248
  br label %50, !dbg !3248

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3248
  %47 = zext i32 %35 to i64, !dbg !3248
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3248
  %49 = add nuw nsw i32 %35, 8, !dbg !3248
  store i32 %49, ptr %4, align 8, !dbg !3248
  br label %50, !dbg !3248

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3248
  %53 = load ptr, ptr %52, align 8, !dbg !3248
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3254
  store ptr %53, ptr %54, align 16, !dbg !3251, !tbaa !805
  %55 = icmp eq ptr %53, null, !dbg !3252
  br i1 %55, label %128, label %56, !dbg !3253

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3242, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 3, metadata !3242, metadata !DIExpression()), !dbg !3245
  %57 = icmp ult i32 %51, 41, !dbg !3248
  br i1 %57, label %61, label %58, !dbg !3248

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3248
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3248
  store ptr %60, ptr %7, align 8, !dbg !3248
  br label %66, !dbg !3248

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3248
  %63 = zext i32 %51 to i64, !dbg !3248
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3248
  %65 = add nuw nsw i32 %51, 8, !dbg !3248
  store i32 %65, ptr %4, align 8, !dbg !3248
  br label %66, !dbg !3248

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3248
  %69 = load ptr, ptr %68, align 8, !dbg !3248
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3254
  store ptr %69, ptr %70, align 8, !dbg !3251, !tbaa !805
  %71 = icmp eq ptr %69, null, !dbg !3252
  br i1 %71, label %128, label %72, !dbg !3253

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3242, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 4, metadata !3242, metadata !DIExpression()), !dbg !3245
  %73 = icmp ult i32 %67, 41, !dbg !3248
  br i1 %73, label %77, label %74, !dbg !3248

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3248
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3248
  store ptr %76, ptr %7, align 8, !dbg !3248
  br label %82, !dbg !3248

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3248
  %79 = zext i32 %67 to i64, !dbg !3248
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3248
  %81 = add nuw nsw i32 %67, 8, !dbg !3248
  store i32 %81, ptr %4, align 8, !dbg !3248
  br label %82, !dbg !3248

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3248
  %85 = load ptr, ptr %84, align 8, !dbg !3248
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3254
  store ptr %85, ptr %86, align 16, !dbg !3251, !tbaa !805
  %87 = icmp eq ptr %85, null, !dbg !3252
  br i1 %87, label %128, label %88, !dbg !3253

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3242, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 5, metadata !3242, metadata !DIExpression()), !dbg !3245
  %89 = icmp ult i32 %83, 41, !dbg !3248
  br i1 %89, label %93, label %90, !dbg !3248

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3248
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3248
  store ptr %92, ptr %7, align 8, !dbg !3248
  br label %98, !dbg !3248

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3248
  %95 = zext i32 %83 to i64, !dbg !3248
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3248
  %97 = add nuw nsw i32 %83, 8, !dbg !3248
  store i32 %97, ptr %4, align 8, !dbg !3248
  br label %98, !dbg !3248

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3248
  %100 = load ptr, ptr %99, align 8, !dbg !3248
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3254
  store ptr %100, ptr %101, align 8, !dbg !3251, !tbaa !805
  %102 = icmp eq ptr %100, null, !dbg !3252
  br i1 %102, label %128, label %103, !dbg !3253

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3242, metadata !DIExpression()), !dbg !3245
  %104 = load ptr, ptr %7, align 8, !dbg !3248
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3248
  store ptr %105, ptr %7, align 8, !dbg !3248
  %106 = load ptr, ptr %104, align 8, !dbg !3248
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3254
  store ptr %106, ptr %107, align 16, !dbg !3251, !tbaa !805
  %108 = icmp eq ptr %106, null, !dbg !3252
  br i1 %108, label %128, label %109, !dbg !3253

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3242, metadata !DIExpression()), !dbg !3245
  %110 = load ptr, ptr %7, align 8, !dbg !3248
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3248
  store ptr %111, ptr %7, align 8, !dbg !3248
  %112 = load ptr, ptr %110, align 8, !dbg !3248
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3254
  store ptr %112, ptr %113, align 8, !dbg !3251, !tbaa !805
  %114 = icmp eq ptr %112, null, !dbg !3252
  br i1 %114, label %128, label %115, !dbg !3253

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3242, metadata !DIExpression()), !dbg !3245
  %116 = load ptr, ptr %7, align 8, !dbg !3248
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3248
  store ptr %117, ptr %7, align 8, !dbg !3248
  %118 = load ptr, ptr %116, align 8, !dbg !3248
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3254
  store ptr %118, ptr %119, align 16, !dbg !3251, !tbaa !805
  %120 = icmp eq ptr %118, null, !dbg !3252
  br i1 %120, label %128, label %121, !dbg !3253

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3242, metadata !DIExpression()), !dbg !3245
  %122 = load ptr, ptr %7, align 8, !dbg !3248
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3248
  store ptr %123, ptr %7, align 8, !dbg !3248
  %124 = load ptr, ptr %122, align 8, !dbg !3248
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3254
  store ptr %124, ptr %125, align 8, !dbg !3251, !tbaa !805
  %126 = icmp eq ptr %124, null, !dbg !3252
  %127 = select i1 %126, i64 9, i64 10, !dbg !3253
  br label %128, !dbg !3253

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3255
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3256
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3257
  ret void, !dbg !3257
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3258 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3262, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %1, metadata !3263, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %2, metadata !3264, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %3, metadata !3265, metadata !DIExpression()), !dbg !3271
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !3272
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3266, metadata !DIExpression()), !dbg !3273
  call void @llvm.va_start(ptr nonnull %5), !dbg !3274
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3275
  call void @llvm.va_end(ptr nonnull %5), !dbg !3276
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !3277
  ret void, !dbg !3277
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3278 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3279, !tbaa !805
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.87, ptr noundef %1), !dbg !3279
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.17.104, i32 noundef 5) #38, !dbg !3280
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.105) #38, !dbg !3280
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.19.106, i32 noundef 5) #38, !dbg !3281
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.107, ptr noundef nonnull @.str.21.108) #38, !dbg !3281
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.85, ptr noundef nonnull @.str.22.109, i32 noundef 5) #38, !dbg !3282
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.110) #38, !dbg !3282
  ret void, !dbg !3283
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3284 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3289, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %1, metadata !3290, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %2, metadata !3291, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata ptr %0, metadata !3293, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %1, metadata !3296, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %2, metadata !3297, metadata !DIExpression()), !dbg !3298
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3300
  call void @llvm.dbg.value(metadata ptr %4, metadata !3301, metadata !DIExpression()), !dbg !3306
  %5 = icmp eq ptr %4, null, !dbg !3308
  br i1 %5, label %6, label %7, !dbg !3310

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3311
  unreachable, !dbg !3311

7:                                                ; preds = %3
  ret ptr %4, !dbg !3312
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3294 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3293, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 %1, metadata !3296, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 %2, metadata !3297, metadata !DIExpression()), !dbg !3313
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3314
  call void @llvm.dbg.value(metadata ptr %4, metadata !3301, metadata !DIExpression()), !dbg !3315
  %5 = icmp eq ptr %4, null, !dbg !3317
  br i1 %5, label %6, label %7, !dbg !3318

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3319
  unreachable, !dbg !3319

7:                                                ; preds = %3
  ret ptr %4, !dbg !3320
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3321 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3325, metadata !DIExpression()), !dbg !3326
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3327
  call void @llvm.dbg.value(metadata ptr %2, metadata !3301, metadata !DIExpression()), !dbg !3328
  %3 = icmp eq ptr %2, null, !dbg !3330
  br i1 %3, label %4, label %5, !dbg !3331

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3332
  unreachable, !dbg !3332

5:                                                ; preds = %1
  ret ptr %2, !dbg !3333
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3334 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3335 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3339, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64 %0, metadata !3341, metadata !DIExpression()), !dbg !3345
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3347
  call void @llvm.dbg.value(metadata ptr %2, metadata !3301, metadata !DIExpression()), !dbg !3348
  %3 = icmp eq ptr %2, null, !dbg !3350
  br i1 %3, label %4, label %5, !dbg !3351

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3352
  unreachable, !dbg !3352

5:                                                ; preds = %1
  ret ptr %2, !dbg !3353
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3354 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3358, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i64 %0, metadata !3325, metadata !DIExpression()), !dbg !3360
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3362
  call void @llvm.dbg.value(metadata ptr %2, metadata !3301, metadata !DIExpression()), !dbg !3363
  %3 = icmp eq ptr %2, null, !dbg !3365
  br i1 %3, label %4, label %5, !dbg !3366

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3367
  unreachable, !dbg !3367

5:                                                ; preds = %1
  ret ptr %2, !dbg !3368
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3369 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3373, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i64 %1, metadata !3374, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata ptr %0, metadata !3376, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %1, metadata !3380, metadata !DIExpression()), !dbg !3381
  %3 = icmp eq i64 %1, 0, !dbg !3383
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3383
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3384
  call void @llvm.dbg.value(metadata ptr %5, metadata !3301, metadata !DIExpression()), !dbg !3385
  %6 = icmp eq ptr %5, null, !dbg !3387
  br i1 %6, label %7, label %8, !dbg !3388

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3389
  unreachable, !dbg !3389

8:                                                ; preds = %2
  ret ptr %5, !dbg !3390
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3391 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3392 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3396, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %1, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata ptr %0, metadata !3399, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %1, metadata !3402, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata ptr %0, metadata !3376, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %1, metadata !3380, metadata !DIExpression()), !dbg !3405
  %3 = icmp eq i64 %1, 0, !dbg !3407
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3407
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3408
  call void @llvm.dbg.value(metadata ptr %5, metadata !3301, metadata !DIExpression()), !dbg !3409
  %6 = icmp eq ptr %5, null, !dbg !3411
  br i1 %6, label %7, label %8, !dbg !3412

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3413
  unreachable, !dbg !3413

8:                                                ; preds = %2
  ret ptr %5, !dbg !3414
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3415 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3419, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i64 %1, metadata !3420, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i64 %2, metadata !3421, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata ptr %0, metadata !3423, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 %1, metadata !3426, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i64 %2, metadata !3427, metadata !DIExpression()), !dbg !3428
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3430
  call void @llvm.dbg.value(metadata ptr %4, metadata !3301, metadata !DIExpression()), !dbg !3431
  %5 = icmp eq ptr %4, null, !dbg !3433
  br i1 %5, label %6, label %7, !dbg !3434

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3435
  unreachable, !dbg !3435

7:                                                ; preds = %3
  ret ptr %4, !dbg !3436
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3437 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3441, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %1, metadata !3442, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata ptr null, metadata !3293, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 %0, metadata !3296, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 %1, metadata !3297, metadata !DIExpression()), !dbg !3444
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3446
  call void @llvm.dbg.value(metadata ptr %3, metadata !3301, metadata !DIExpression()), !dbg !3447
  %4 = icmp eq ptr %3, null, !dbg !3449
  br i1 %4, label %5, label %6, !dbg !3450

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3451
  unreachable, !dbg !3451

6:                                                ; preds = %2
  ret ptr %3, !dbg !3452
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3453 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3457, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i64 %1, metadata !3458, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata ptr null, metadata !3419, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 %0, metadata !3420, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 %1, metadata !3421, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata ptr null, metadata !3423, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 %0, metadata !3426, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 %1, metadata !3427, metadata !DIExpression()), !dbg !3462
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3464
  call void @llvm.dbg.value(metadata ptr %3, metadata !3301, metadata !DIExpression()), !dbg !3465
  %4 = icmp eq ptr %3, null, !dbg !3467
  br i1 %4, label %5, label %6, !dbg !3468

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3469
  unreachable, !dbg !3469

6:                                                ; preds = %2
  ret ptr %3, !dbg !3470
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3471 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3475, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata ptr %1, metadata !3476, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.value(metadata ptr %0, metadata !739, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata ptr %1, metadata !740, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i64 1, metadata !741, metadata !DIExpression()), !dbg !3478
  %3 = load i64, ptr %1, align 8, !dbg !3480, !tbaa !2583
  call void @llvm.dbg.value(metadata i64 %3, metadata !742, metadata !DIExpression()), !dbg !3478
  %4 = icmp eq ptr %0, null, !dbg !3481
  br i1 %4, label %5, label %8, !dbg !3483

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3484
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3487
  br label %15, !dbg !3487

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3488
  %10 = add nuw i64 %9, 1, !dbg !3488
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3488
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3488
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3488
  call void @llvm.dbg.value(metadata i64 %13, metadata !742, metadata !DIExpression()), !dbg !3478
  br i1 %12, label %14, label %15, !dbg !3491

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !3492
  unreachable, !dbg !3492

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3478
  call void @llvm.dbg.value(metadata i64 %16, metadata !742, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata ptr %0, metadata !3293, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %16, metadata !3296, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 1, metadata !3297, metadata !DIExpression()), !dbg !3493
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3495
  call void @llvm.dbg.value(metadata ptr %17, metadata !3301, metadata !DIExpression()), !dbg !3496
  %18 = icmp eq ptr %17, null, !dbg !3498
  br i1 %18, label %19, label %20, !dbg !3499

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !3500
  unreachable, !dbg !3500

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !739, metadata !DIExpression()), !dbg !3478
  store i64 %16, ptr %1, align 8, !dbg !3501, !tbaa !2583
  ret ptr %17, !dbg !3502
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !734 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !739, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata ptr %1, metadata !740, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i64 %2, metadata !741, metadata !DIExpression()), !dbg !3503
  %4 = load i64, ptr %1, align 8, !dbg !3504, !tbaa !2583
  call void @llvm.dbg.value(metadata i64 %4, metadata !742, metadata !DIExpression()), !dbg !3503
  %5 = icmp eq ptr %0, null, !dbg !3505
  br i1 %5, label %6, label %13, !dbg !3506

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3507
  br i1 %7, label %8, label %20, !dbg !3508

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3509
  call void @llvm.dbg.value(metadata i64 %9, metadata !742, metadata !DIExpression()), !dbg !3503
  %10 = icmp ugt i64 %2, 128, !dbg !3511
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3512
  call void @llvm.dbg.value(metadata i64 %12, metadata !742, metadata !DIExpression()), !dbg !3503
  br label %20, !dbg !3513

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3514
  %15 = add nuw i64 %14, 1, !dbg !3514
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3514
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3514
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3514
  call void @llvm.dbg.value(metadata i64 %18, metadata !742, metadata !DIExpression()), !dbg !3503
  br i1 %17, label %19, label %20, !dbg !3515

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !3516
  unreachable, !dbg !3516

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3503
  call void @llvm.dbg.value(metadata i64 %21, metadata !742, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata ptr %0, metadata !3293, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i64 %21, metadata !3296, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i64 %2, metadata !3297, metadata !DIExpression()), !dbg !3517
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3519
  call void @llvm.dbg.value(metadata ptr %22, metadata !3301, metadata !DIExpression()), !dbg !3520
  %23 = icmp eq ptr %22, null, !dbg !3522
  br i1 %23, label %24, label %25, !dbg !3523

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !3524
  unreachable, !dbg !3524

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !739, metadata !DIExpression()), !dbg !3503
  store i64 %21, ptr %1, align 8, !dbg !3525, !tbaa !2583
  ret ptr %22, !dbg !3526
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !746 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !754, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata ptr %1, metadata !755, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %2, metadata !756, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %3, metadata !757, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %4, metadata !758, metadata !DIExpression()), !dbg !3527
  %6 = load i64, ptr %1, align 8, !dbg !3528, !tbaa !2583
  call void @llvm.dbg.value(metadata i64 %6, metadata !759, metadata !DIExpression()), !dbg !3527
  %7 = ashr i64 %6, 1, !dbg !3529
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3529
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3529
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3529
  call void @llvm.dbg.value(metadata i64 %10, metadata !760, metadata !DIExpression()), !dbg !3527
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3531
  call void @llvm.dbg.value(metadata i64 %11, metadata !760, metadata !DIExpression()), !dbg !3527
  %12 = icmp sgt i64 %3, -1, !dbg !3532
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3534
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3534
  call void @llvm.dbg.value(metadata i64 %15, metadata !760, metadata !DIExpression()), !dbg !3527
  %16 = icmp slt i64 %4, 0, !dbg !3535
  br i1 %16, label %17, label %30, !dbg !3535

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3535
  br i1 %18, label %19, label %24, !dbg !3535

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3535
  %21 = udiv i64 9223372036854775807, %20, !dbg !3535
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3535
  br i1 %23, label %46, label %43, !dbg !3535

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3535
  br i1 %25, label %43, label %26, !dbg !3535

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3535
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3535
  %29 = icmp ult i64 %28, %15, !dbg !3535
  br i1 %29, label %46, label %43, !dbg !3535

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3535
  br i1 %31, label %43, label %32, !dbg !3535

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3535
  br i1 %33, label %34, label %40, !dbg !3535

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3535
  br i1 %35, label %43, label %36, !dbg !3535

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3535
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3535
  %39 = icmp ult i64 %38, %4, !dbg !3535
  br i1 %39, label %46, label %43, !dbg !3535

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3535
  br i1 %42, label %46, label %43, !dbg !3535

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !761, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3527
  %44 = mul i64 %15, %4, !dbg !3535
  call void @llvm.dbg.value(metadata i64 %44, metadata !761, metadata !DIExpression()), !dbg !3527
  %45 = icmp slt i64 %44, 128, !dbg !3535
  br i1 %45, label %46, label %51, !dbg !3535

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !762, metadata !DIExpression()), !dbg !3527
  %48 = sdiv i64 %47, %4, !dbg !3536
  call void @llvm.dbg.value(metadata i64 %48, metadata !760, metadata !DIExpression()), !dbg !3527
  %49 = srem i64 %47, %4, !dbg !3539
  %50 = sub nsw i64 %47, %49, !dbg !3540
  call void @llvm.dbg.value(metadata i64 %50, metadata !761, metadata !DIExpression()), !dbg !3527
  br label %51, !dbg !3541

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3527
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3527
  call void @llvm.dbg.value(metadata i64 %53, metadata !761, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %52, metadata !760, metadata !DIExpression()), !dbg !3527
  %54 = icmp eq ptr %0, null, !dbg !3542
  br i1 %54, label %55, label %56, !dbg !3544

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3545, !tbaa !2583
  br label %56, !dbg !3546

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3547
  %58 = icmp slt i64 %57, %2, !dbg !3549
  br i1 %58, label %59, label %96, !dbg !3550

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3551
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3551
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3551
  call void @llvm.dbg.value(metadata i64 %62, metadata !760, metadata !DIExpression()), !dbg !3527
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3552
  br i1 %65, label %95, label %66, !dbg !3552

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3553

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3553
  br i1 %68, label %69, label %74, !dbg !3553

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3553
  %71 = udiv i64 9223372036854775807, %70, !dbg !3553
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3553
  br i1 %73, label %95, label %93, !dbg !3553

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3553
  br i1 %75, label %93, label %76, !dbg !3553

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3553
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3553
  %79 = icmp ult i64 %78, %62, !dbg !3553
  br i1 %79, label %95, label %93, !dbg !3553

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3553
  br i1 %81, label %93, label %82, !dbg !3553

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3553
  br i1 %83, label %84, label %90, !dbg !3553

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3553
  br i1 %85, label %93, label %86, !dbg !3553

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3553
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3553
  %89 = icmp ult i64 %88, %4, !dbg !3553
  br i1 %89, label %95, label %93, !dbg !3553

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3553
  br i1 %92, label %95, label %93, !dbg !3553

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !761, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3527
  %94 = mul i64 %62, %4, !dbg !3553
  call void @llvm.dbg.value(metadata i64 %94, metadata !761, metadata !DIExpression()), !dbg !3527
  br label %96, !dbg !3554

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #40, !dbg !3555
  unreachable, !dbg !3555

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3527
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3527
  call void @llvm.dbg.value(metadata i64 %98, metadata !761, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 %97, metadata !760, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata ptr %0, metadata !3373, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata i64 %98, metadata !3374, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.value(metadata ptr %0, metadata !3376, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i64 %98, metadata !3380, metadata !DIExpression()), !dbg !3558
  %99 = icmp eq i64 %98, 0, !dbg !3560
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3560
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #44, !dbg !3561
  call void @llvm.dbg.value(metadata ptr %101, metadata !3301, metadata !DIExpression()), !dbg !3562
  %102 = icmp eq ptr %101, null, !dbg !3564
  br i1 %102, label %103, label %104, !dbg !3565

103:                                              ; preds = %96
  tail call void @xalloc_die() #40, !dbg !3566
  unreachable, !dbg !3566

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !754, metadata !DIExpression()), !dbg !3527
  store i64 %97, ptr %1, align 8, !dbg !3567, !tbaa !2583
  ret ptr %101, !dbg !3568
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3569 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3571, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i64 %0, metadata !3573, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i64 1, metadata !3576, metadata !DIExpression()), !dbg !3577
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3579
  call void @llvm.dbg.value(metadata ptr %2, metadata !3301, metadata !DIExpression()), !dbg !3580
  %3 = icmp eq ptr %2, null, !dbg !3582
  br i1 %3, label %4, label %5, !dbg !3583

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3584
  unreachable, !dbg !3584

5:                                                ; preds = %1
  ret ptr %2, !dbg !3585
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3586 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3574 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3573, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i64 %1, metadata !3576, metadata !DIExpression()), !dbg !3587
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3588
  call void @llvm.dbg.value(metadata ptr %3, metadata !3301, metadata !DIExpression()), !dbg !3589
  %4 = icmp eq ptr %3, null, !dbg !3591
  br i1 %4, label %5, label %6, !dbg !3592

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3593
  unreachable, !dbg !3593

6:                                                ; preds = %2
  ret ptr %3, !dbg !3594
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3595 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3597, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i64 %0, metadata !3599, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i64 1, metadata !3602, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i64 %0, metadata !3605, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 1, metadata !3608, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 %0, metadata !3605, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 1, metadata !3608, metadata !DIExpression()), !dbg !3609
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3611
  call void @llvm.dbg.value(metadata ptr %2, metadata !3301, metadata !DIExpression()), !dbg !3612
  %3 = icmp eq ptr %2, null, !dbg !3614
  br i1 %3, label %4, label %5, !dbg !3615

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3616
  unreachable, !dbg !3616

5:                                                ; preds = %1
  ret ptr %2, !dbg !3617
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3600 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3599, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i64 %1, metadata !3602, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i64 %0, metadata !3605, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %1, metadata !3608, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %0, metadata !3605, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %1, metadata !3608, metadata !DIExpression()), !dbg !3619
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3621
  call void @llvm.dbg.value(metadata ptr %3, metadata !3301, metadata !DIExpression()), !dbg !3622
  %4 = icmp eq ptr %3, null, !dbg !3624
  br i1 %4, label %5, label %6, !dbg !3625

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3626
  unreachable, !dbg !3626

6:                                                ; preds = %2
  ret ptr %3, !dbg !3627
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3628 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3632, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i64 %1, metadata !3633, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i64 %1, metadata !3325, metadata !DIExpression()), !dbg !3635
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3637
  call void @llvm.dbg.value(metadata ptr %3, metadata !3301, metadata !DIExpression()), !dbg !3638
  %4 = icmp eq ptr %3, null, !dbg !3640
  br i1 %4, label %5, label %6, !dbg !3641

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3642
  unreachable, !dbg !3642

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3643, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i64 %1, metadata !3650, metadata !DIExpression()), !dbg !3651
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3653
  ret ptr %3, !dbg !3654
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3655 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3659, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 %1, metadata !3660, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 %1, metadata !3339, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 %1, metadata !3341, metadata !DIExpression()), !dbg !3664
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3666
  call void @llvm.dbg.value(metadata ptr %3, metadata !3301, metadata !DIExpression()), !dbg !3667
  %4 = icmp eq ptr %3, null, !dbg !3669
  br i1 %4, label %5, label %6, !dbg !3670

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3671
  unreachable, !dbg !3671

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3643, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i64 %1, metadata !3650, metadata !DIExpression()), !dbg !3672
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3674
  ret ptr %3, !dbg !3675
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3676 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 %1, metadata !3681, metadata !DIExpression()), !dbg !3683
  %3 = add nsw i64 %1, 1, !dbg !3684
  call void @llvm.dbg.value(metadata i64 %3, metadata !3339, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i64 %3, metadata !3341, metadata !DIExpression()), !dbg !3687
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3689
  call void @llvm.dbg.value(metadata ptr %4, metadata !3301, metadata !DIExpression()), !dbg !3690
  %5 = icmp eq ptr %4, null, !dbg !3692
  br i1 %5, label %6, label %7, !dbg !3693

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3694
  unreachable, !dbg !3694

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3682, metadata !DIExpression()), !dbg !3683
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3695
  store i8 0, ptr %8, align 1, !dbg !3696, !tbaa !878
  call void @llvm.dbg.value(metadata ptr %4, metadata !3643, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i64 %1, metadata !3650, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3699
  ret ptr %4, !dbg !3700
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3701 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3703, metadata !DIExpression()), !dbg !3704
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3705
  %3 = add i64 %2, 1, !dbg !3706
  call void @llvm.dbg.value(metadata ptr %0, metadata !3632, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %3, metadata !3633, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 %3, metadata !3325, metadata !DIExpression()), !dbg !3709
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3711
  call void @llvm.dbg.value(metadata ptr %4, metadata !3301, metadata !DIExpression()), !dbg !3712
  %5 = icmp eq ptr %4, null, !dbg !3714
  br i1 %5, label %6, label %7, !dbg !3715

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3716
  unreachable, !dbg !3716

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3643, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 %3, metadata !3650, metadata !DIExpression()), !dbg !3717
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3719
  ret ptr %4, !dbg !3720
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3721 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3726, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %1, metadata !3723, metadata !DIExpression()), !dbg !3727
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.123, ptr noundef nonnull @.str.2.124, i32 noundef 5) #38, !dbg !3726
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.125, ptr noundef %2) #38, !dbg !3726
  %3 = icmp eq i32 %1, 0, !dbg !3726
  tail call void @llvm.assume(i1 %3), !dbg !3726
  tail call void @abort() #40, !dbg !3728
  unreachable, !dbg !3728
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !3729 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3731, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata ptr %0, metadata !3732, metadata !DIExpression()), !dbg !3736
  br label %2, !dbg !3737

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3736
  call void @llvm.dbg.value(metadata ptr %3, metadata !3732, metadata !DIExpression()), !dbg !3736
  %4 = load i8, ptr %3, align 1, !dbg !3738, !tbaa !878
  %5 = icmp eq i8 %4, 47, !dbg !3738
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3739
  call void @llvm.dbg.value(metadata ptr %6, metadata !3732, metadata !DIExpression()), !dbg !3736
  br i1 %5, label %2, label %7, !dbg !3737, !llvm.loop !3740

7:                                                ; preds = %2, %18
  %8 = phi i8 [ %22, %18 ], [ %4, %2 ], !dbg !3741
  %9 = phi ptr [ %19, %18 ], [ %3, %2 ], !dbg !3743
  %10 = phi i8 [ %20, %18 ], [ 0, %2 ], !dbg !3736
  %11 = phi ptr [ %21, %18 ], [ %3, %2 ], !dbg !3744
  call void @llvm.dbg.value(metadata ptr %11, metadata !3734, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i8 %10, metadata !3733, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata ptr %9, metadata !3732, metadata !DIExpression()), !dbg !3736
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %18
  ], !dbg !3746

12:                                               ; preds = %7
  ret ptr %9, !dbg !3747

13:                                               ; preds = %7
  %14 = and i8 %10, 1, !dbg !3748
  %15 = icmp eq i8 %14, 0, !dbg !3748
  %16 = select i1 %15, ptr %9, ptr %11, !dbg !3752
  %17 = select i1 %15, i8 %10, i8 0, !dbg !3752
  br label %18, !dbg !3752

18:                                               ; preds = %13, %7
  %19 = phi ptr [ %9, %7 ], [ %16, %13 ], !dbg !3736
  %20 = phi i8 [ 1, %7 ], [ %17, %13 ], !dbg !3736
  call void @llvm.dbg.value(metadata i8 %20, metadata !3733, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata ptr %19, metadata !3732, metadata !DIExpression()), !dbg !3736
  %21 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3753
  call void @llvm.dbg.value(metadata ptr %21, metadata !3734, metadata !DIExpression()), !dbg !3745
  %22 = load i8, ptr %21, align 1, !dbg !3741, !tbaa !878
  br label %7, !dbg !3754, !llvm.loop !3755
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #35 !dbg !3757 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3761, metadata !DIExpression()), !dbg !3764
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3765
  call void @llvm.dbg.value(metadata i64 %2, metadata !3762, metadata !DIExpression()), !dbg !3764
  %3 = icmp ne i64 %2, 0, !dbg !3767
  %4 = zext i1 %3 to i64, !dbg !3767
  br label %5, !dbg !3767

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !3768
  call void @llvm.dbg.value(metadata i64 %6, metadata !3762, metadata !DIExpression()), !dbg !3764
  %7 = icmp ugt i64 %6, 1, !dbg !3769
  br i1 %7, label %8, label %13, !dbg !3771

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !3772
  %10 = getelementptr inbounds i8, ptr %0, i64 %9, !dbg !3772
  %11 = load i8, ptr %10, align 1, !dbg !3772, !tbaa !878
  %12 = icmp eq i8 %11, 47, !dbg !3772
  br i1 %12, label %5, label %13, !dbg !3773, !llvm.loop !3774

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !3768
  call void @llvm.dbg.value(metadata i64 0, metadata !3763, metadata !DIExpression()), !dbg !3764
  ret i64 %14, !dbg !3776
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3777 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3815, metadata !DIExpression()), !dbg !3820
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !3821
  call void @llvm.dbg.value(metadata i1 poison, metadata !3816, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3820
  call void @llvm.dbg.value(metadata ptr %0, metadata !3822, metadata !DIExpression()), !dbg !3825
  %3 = load i32, ptr %0, align 8, !dbg !3827, !tbaa !3828
  %4 = and i32 %3, 32, !dbg !3829
  %5 = icmp eq i32 %4, 0, !dbg !3829
  call void @llvm.dbg.value(metadata i1 %5, metadata !3818, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3820
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !3830
  %7 = icmp eq i32 %6, 0, !dbg !3831
  call void @llvm.dbg.value(metadata i1 %7, metadata !3819, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3820
  br i1 %5, label %8, label %18, !dbg !3832

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3834
  call void @llvm.dbg.value(metadata i1 %9, metadata !3816, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3820
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3835
  %11 = xor i1 %7, true, !dbg !3835
  %12 = sext i1 %11 to i32, !dbg !3835
  br i1 %10, label %21, label %13, !dbg !3835

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !3836
  %15 = load i32, ptr %14, align 4, !dbg !3836, !tbaa !869
  %16 = icmp ne i32 %15, 9, !dbg !3837
  %17 = sext i1 %16 to i32, !dbg !3838
  br label %21, !dbg !3838

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3839

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !3841
  store i32 0, ptr %20, align 4, !dbg !3843, !tbaa !869
  br label %21, !dbg !3841

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3820
  ret i32 %22, !dbg !3844
}

; Function Attrs: nounwind
declare !dbg !3845 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3849 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3887, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i32 0, metadata !3888, metadata !DIExpression()), !dbg !3891
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3892
  call void @llvm.dbg.value(metadata i32 %2, metadata !3889, metadata !DIExpression()), !dbg !3891
  %3 = icmp slt i32 %2, 0, !dbg !3893
  br i1 %3, label %4, label %6, !dbg !3895

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3896
  br label %24, !dbg !3897

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3898
  %8 = icmp eq i32 %7, 0, !dbg !3898
  br i1 %8, label %13, label %9, !dbg !3900

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3901
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !3902
  %12 = icmp eq i64 %11, -1, !dbg !3903
  br i1 %12, label %16, label %13, !dbg !3904

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !3905
  %15 = icmp eq i32 %14, 0, !dbg !3905
  br i1 %15, label %16, label %18, !dbg !3906

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3888, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression()), !dbg !3891
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3907
  call void @llvm.dbg.value(metadata i32 %17, metadata !3890, metadata !DIExpression()), !dbg !3891
  br label %24, !dbg !3908

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !3909
  %20 = load i32, ptr %19, align 4, !dbg !3909, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %20, metadata !3888, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i32 0, metadata !3890, metadata !DIExpression()), !dbg !3891
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3907
  call void @llvm.dbg.value(metadata i32 %21, metadata !3890, metadata !DIExpression()), !dbg !3891
  %22 = icmp eq i32 %20, 0, !dbg !3910
  br i1 %22, label %24, label %23, !dbg !3908

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3912, !tbaa !869
  call void @llvm.dbg.value(metadata i32 -1, metadata !3890, metadata !DIExpression()), !dbg !3891
  br label %24, !dbg !3914

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3891
  ret i32 %25, !dbg !3915
}

; Function Attrs: nofree nounwind
declare !dbg !3916 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3917 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3918 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3919 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3922 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3960, metadata !DIExpression()), !dbg !3961
  %2 = icmp eq ptr %0, null, !dbg !3962
  br i1 %2, label %6, label %3, !dbg !3964

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3965
  %5 = icmp eq i32 %4, 0, !dbg !3965
  br i1 %5, label %6, label %8, !dbg !3966

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3967
  br label %16, !dbg !3968

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3969, metadata !DIExpression()), !dbg !3974
  %9 = load i32, ptr %0, align 8, !dbg !3976, !tbaa !3828
  %10 = and i32 %9, 256, !dbg !3978
  %11 = icmp eq i32 %10, 0, !dbg !3978
  br i1 %11, label %14, label %12, !dbg !3979

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !3980
  br label %14, !dbg !3980

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3981
  br label %16, !dbg !3982

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3961
  ret i32 %17, !dbg !3983
}

; Function Attrs: nofree nounwind
declare !dbg !3984 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3985 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4024, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %1, metadata !4025, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i32 %2, metadata !4026, metadata !DIExpression()), !dbg !4030
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4031
  %5 = load ptr, ptr %4, align 8, !dbg !4031, !tbaa !4032
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4033
  %7 = load ptr, ptr %6, align 8, !dbg !4033, !tbaa !4034
  %8 = icmp eq ptr %5, %7, !dbg !4035
  br i1 %8, label %9, label %27, !dbg !4036

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4037
  %11 = load ptr, ptr %10, align 8, !dbg !4037, !tbaa !1461
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4038
  %13 = load ptr, ptr %12, align 8, !dbg !4038, !tbaa !4039
  %14 = icmp eq ptr %11, %13, !dbg !4040
  br i1 %14, label %15, label %27, !dbg !4041

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4042
  %17 = load ptr, ptr %16, align 8, !dbg !4042, !tbaa !4043
  %18 = icmp eq ptr %17, null, !dbg !4044
  br i1 %18, label %19, label %27, !dbg !4045

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4046
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !4047
  call void @llvm.dbg.value(metadata i64 %21, metadata !4027, metadata !DIExpression()), !dbg !4048
  %22 = icmp eq i64 %21, -1, !dbg !4049
  br i1 %22, label %29, label %23, !dbg !4051

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4052, !tbaa !3828
  %25 = and i32 %24, -17, !dbg !4052
  store i32 %25, ptr %0, align 8, !dbg !4052, !tbaa !3828
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4053
  store i64 %21, ptr %26, align 8, !dbg !4054, !tbaa !4055
  br label %29, !dbg !4056

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4057
  br label %29, !dbg !4058

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4030
  ret i32 %30, !dbg !4059
}

; Function Attrs: nofree nounwind
declare !dbg !4060 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4063 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4068, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr %1, metadata !4069, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata i64 %2, metadata !4070, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr %3, metadata !4071, metadata !DIExpression()), !dbg !4073
  %5 = icmp eq ptr %1, null, !dbg !4074
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4076
  %7 = select i1 %5, ptr @.str.140, ptr %1, !dbg !4076
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4076
  call void @llvm.dbg.value(metadata i64 %8, metadata !4070, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr %7, metadata !4069, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.value(metadata ptr %6, metadata !4068, metadata !DIExpression()), !dbg !4073
  %9 = icmp eq ptr %3, null, !dbg !4077
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4079
  call void @llvm.dbg.value(metadata ptr %10, metadata !4071, metadata !DIExpression()), !dbg !4073
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !4080
  call void @llvm.dbg.value(metadata i64 %11, metadata !4072, metadata !DIExpression()), !dbg !4073
  %12 = icmp ult i64 %11, -3, !dbg !4081
  br i1 %12, label %13, label %17, !dbg !4083

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !4084
  %15 = icmp eq i32 %14, 0, !dbg !4084
  br i1 %15, label %16, label %29, !dbg !4085

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4086, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata ptr %10, metadata !4093, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i32 0, metadata !4096, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 8, metadata !4097, metadata !DIExpression()), !dbg !4098
  store i64 0, ptr %10, align 1, !dbg !4100
  br label %29, !dbg !4101

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4102
  br i1 %18, label %19, label %20, !dbg !4104

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !4105
  unreachable, !dbg !4105

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4106

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !4108
  br i1 %23, label %29, label %24, !dbg !4109

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4110
  br i1 %25, label %29, label %26, !dbg !4113

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4114, !tbaa !878
  %28 = zext i8 %27 to i32, !dbg !4115
  store i32 %28, ptr %6, align 4, !dbg !4116, !tbaa !869
  br label %29, !dbg !4117

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4073
  ret i64 %30, !dbg !4118
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4119 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4125 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4127, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i64 %1, metadata !4128, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i64 %2, metadata !4129, metadata !DIExpression()), !dbg !4131
  %4 = icmp eq i64 %2, 0, !dbg !4132
  br i1 %4, label %8, label %5, !dbg !4132

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4132
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4132
  br i1 %7, label %13, label %8, !dbg !4132

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4130, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4131
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4130, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4131
  %9 = mul i64 %2, %1, !dbg !4132
  call void @llvm.dbg.value(metadata i64 %9, metadata !4130, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata ptr %0, metadata !4134, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i64 %9, metadata !4137, metadata !DIExpression()), !dbg !4138
  %10 = icmp eq i64 %9, 0, !dbg !4140
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4140
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4141
  br label %15, !dbg !4142

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4130, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4131
  %14 = tail call ptr @__errno_location() #41, !dbg !4143
  store i32 12, ptr %14, align 4, !dbg !4145, !tbaa !869
  br label %15, !dbg !4146

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4131
  ret ptr %16, !dbg !4147
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4148 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4152, metadata !DIExpression()), !dbg !4157
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4158
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4153, metadata !DIExpression()), !dbg !4159
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4160
  %4 = icmp eq i32 %3, 0, !dbg !4160
  br i1 %4, label %5, label %12, !dbg !4162

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4163, metadata !DIExpression()), !dbg !4167
  %6 = load i16, ptr %2, align 16, !dbg !4170
  %7 = icmp eq i16 %6, 67, !dbg !4170
  br i1 %7, label %11, label %8, !dbg !4171

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4163, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata ptr @.str.1.145, metadata !4166, metadata !DIExpression()), !dbg !4172
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.145, i64 6), !dbg !4174
  %10 = icmp eq i32 %9, 0, !dbg !4175
  br i1 %10, label %11, label %12, !dbg !4176

11:                                               ; preds = %8, %5
  br label %12, !dbg !4177

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4157
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4178
  ret i1 %13, !dbg !4178
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4179 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4183, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata ptr %1, metadata !4184, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 %2, metadata !4185, metadata !DIExpression()), !dbg !4186
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4187
  ret i32 %4, !dbg !4188
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4189 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4193, metadata !DIExpression()), !dbg !4194
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4195
  ret ptr %2, !dbg !4196
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4197 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4199, metadata !DIExpression()), !dbg !4201
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4202
  call void @llvm.dbg.value(metadata ptr %2, metadata !4200, metadata !DIExpression()), !dbg !4201
  ret ptr %2, !dbg !4203
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4204 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4206, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata ptr %1, metadata !4207, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata i64 %2, metadata !4208, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.value(metadata i32 %0, metadata !4199, metadata !DIExpression()), !dbg !4214
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4216
  call void @llvm.dbg.value(metadata ptr %4, metadata !4200, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.value(metadata ptr %4, metadata !4209, metadata !DIExpression()), !dbg !4213
  %5 = icmp eq ptr %4, null, !dbg !4217
  br i1 %5, label %6, label %9, !dbg !4218

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4219
  br i1 %7, label %19, label %8, !dbg !4222

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4223, !tbaa !878
  br label %19, !dbg !4224

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4225
  call void @llvm.dbg.value(metadata i64 %10, metadata !4210, metadata !DIExpression()), !dbg !4226
  %11 = icmp ult i64 %10, %2, !dbg !4227
  br i1 %11, label %12, label %14, !dbg !4229

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4230
  call void @llvm.dbg.value(metadata ptr %1, metadata !4232, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata ptr %4, metadata !4235, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i64 %13, metadata !4236, metadata !DIExpression()), !dbg !4237
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !4239
  br label %19, !dbg !4240

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4241
  br i1 %15, label %19, label %16, !dbg !4244

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4245
  call void @llvm.dbg.value(metadata ptr %1, metadata !4232, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata ptr %4, metadata !4235, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64 %17, metadata !4236, metadata !DIExpression()), !dbg !4247
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4249
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4250
  store i8 0, ptr %18, align 1, !dbg !4251, !tbaa !878
  br label %19, !dbg !4252

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4253
  ret i32 %20, !dbg !4254
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
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #35 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.dbg.cu = !{!69, !716, !389, !393, !719, !408, !684, !721, !460, !474, !525, !723, !676, !730, !764, !766, !768, !770, !772, !774, !700, !776, !779, !783, !785}
!llvm.ident = !{!787, !787, !787, !787, !787, !787, !787, !787, !787, !787, !787, !787, !787, !787, !787, !787, !787, !787, !787, !787, !787, !787, !787, !787, !787}
!llvm.module.flags = !{!788, !789, !790, !791, !792, !793}

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
!69 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !115, globals: !125, splitDebugInlining: false, nameTableKind: None)
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
!407 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !408, file: !409, line: 66, type: !455, isLocal: false, isDefinition: true)
!408 = distinct !DICompileUnit(language: DW_LANG_C11, file: !409, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !410, globals: !411, splitDebugInlining: false, nameTableKind: None)
!409 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!410 = !{!117, !124}
!411 = !{!412, !414, !434, !436, !438, !440, !406, !442, !444, !446, !448, !453}
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !409, line: 272, type: !238, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "old_file_name", scope: !416, file: !409, line: 304, type: !122, isLocal: true, isDefinition: true)
!416 = distinct !DISubprogram(name: "verror_at_line", scope: !409, file: !409, line: 298, type: !417, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !427)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !77, !77, !122, !72, !122, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !421)
!421 = !{!422, !424, !425, !426}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !420, file: !423, baseType: !72, size: 32)
!423 = !DIFile(filename: "lib/error.c", directory: "/src")
!424 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !420, file: !423, baseType: !72, size: 32, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !420, file: !423, baseType: !117, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !420, file: !423, baseType: !117, size: 64, offset: 128)
!427 = !{!428, !429, !430, !431, !432, !433}
!428 = !DILocalVariable(name: "status", arg: 1, scope: !416, file: !409, line: 298, type: !77)
!429 = !DILocalVariable(name: "errnum", arg: 2, scope: !416, file: !409, line: 298, type: !77)
!430 = !DILocalVariable(name: "file_name", arg: 3, scope: !416, file: !409, line: 298, type: !122)
!431 = !DILocalVariable(name: "line_number", arg: 4, scope: !416, file: !409, line: 298, type: !72)
!432 = !DILocalVariable(name: "message", arg: 5, scope: !416, file: !409, line: 298, type: !122)
!433 = !DILocalVariable(name: "args", arg: 6, scope: !416, file: !409, line: 298, type: !419)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(name: "old_line_number", scope: !416, file: !409, line: 305, type: !72, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !409, line: 338, type: !245, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !409, line: 346, type: !274, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !409, line: 346, type: !252, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(name: "error_message_count", scope: !408, file: !409, line: 69, type: !72, isLocal: false, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !408, file: !409, line: 295, type: !77, isLocal: false, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !409, line: 208, type: !269, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !409, line: 208, type: !450, isLocal: true, isDefinition: true)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 21)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !409, line: 214, type: !238, isLocal: true, isDefinition: true)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null}
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "program_name", scope: !460, file: !461, line: 31, type: !122, isLocal: false, isDefinition: true)
!460 = distinct !DICompileUnit(language: DW_LANG_C11, file: !461, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !462, globals: !463, splitDebugInlining: false, nameTableKind: None)
!461 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!462 = !{!116}
!463 = !{!458, !464, !466}
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !461, line: 46, type: !274, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !461, line: 49, type: !245, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "utf07FF", scope: !470, file: !471, line: 46, type: !498, isLocal: true, isDefinition: true)
!470 = distinct !DISubprogram(name: "proper_name_lite", scope: !471, file: !471, line: 38, type: !472, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !476)
!471 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!472 = !DISubroutineType(types: !473)
!473 = !{!122, !122, !122}
!474 = distinct !DICompileUnit(language: DW_LANG_C11, file: !471, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !475, splitDebugInlining: false, nameTableKind: None)
!475 = !{!468}
!476 = !{!477, !478, !479, !480, !485}
!477 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !470, file: !471, line: 38, type: !122)
!478 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !470, file: !471, line: 38, type: !122)
!479 = !DILocalVariable(name: "translation", scope: !470, file: !471, line: 40, type: !122)
!480 = !DILocalVariable(name: "w", scope: !470, file: !471, line: 47, type: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !482, line: 37, baseType: !483)
!482 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !208, line: 57, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !208, line: 42, baseType: !72)
!485 = !DILocalVariable(name: "mbs", scope: !470, file: !471, line: 48, type: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !487, line: 6, baseType: !488)
!487 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !489, line: 21, baseType: !490)
!489 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 13, size: 64, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !490, file: !489, line: 15, baseType: !77, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !490, file: !489, line: 20, baseType: !494, size: 32, offset: 32)
!494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !489, line: 16, size: 32, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !494, file: !489, line: 18, baseType: !72, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !494, file: !489, line: 19, baseType: !245, size: 32)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 16, elements: !253)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !501, line: 78, type: !274, isLocal: true, isDefinition: true)
!501 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !501, line: 79, type: !19, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !501, line: 80, type: !506, isLocal: true, isDefinition: true)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !507)
!507 = !{!508}
!508 = !DISubrange(count: 13)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !501, line: 81, type: !506, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !501, line: 82, type: !147, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !501, line: 83, type: !252, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !501, line: 84, type: !274, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !501, line: 85, type: !269, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !501, line: 86, type: !269, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !501, line: 87, type: !274, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !525, file: !501, line: 76, type: !597, isLocal: false, isDefinition: true)
!525 = distinct !DICompileUnit(language: DW_LANG_C11, file: !501, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !526, retainedTypes: !532, globals: !533, splitDebugInlining: false, nameTableKind: None)
!526 = !{!81, !527, !95}
!527 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !82, line: 254, baseType: !72, size: 32, elements: !528)
!528 = !{!529, !530, !531}
!529 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!530 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!531 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!532 = !{!77, !118, !119}
!533 = !{!499, !502, !504, !509, !511, !513, !515, !517, !519, !521, !523, !534, !538, !548, !550, !555, !557, !559, !561, !563, !586, !593, !595}
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !525, file: !501, line: 92, type: !536, isLocal: false, isDefinition: true)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 320, elements: !55)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !525, file: !501, line: 1040, type: !540, isLocal: false, isDefinition: true)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !501, line: 56, size: 448, elements: !541)
!541 = !{!542, !543, !544, !546, !547}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !540, file: !501, line: 59, baseType: !81, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !501, line: 62, baseType: !77, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !540, file: !501, line: 66, baseType: !545, size: 256, offset: 64)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !275)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !540, file: !501, line: 69, baseType: !122, size: 64, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !540, file: !501, line: 72, baseType: !122, size: 64, offset: 384)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !525, file: !501, line: 107, type: !540, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "slot0", scope: !525, file: !501, line: 831, type: !552, isLocal: true, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 256)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !501, line: 321, type: !252, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !501, line: 357, type: !252, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !501, line: 358, type: !252, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !501, line: 199, type: !269, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(name: "quote", scope: !565, file: !501, line: 228, type: !584, isLocal: true, isDefinition: true)
!565 = distinct !DISubprogram(name: "gettext_quote", scope: !501, file: !501, line: 197, type: !566, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !568)
!566 = !DISubroutineType(types: !567)
!567 = !{!122, !122, !81}
!568 = !{!569, !570, !571, !572, !573}
!569 = !DILocalVariable(name: "msgid", arg: 1, scope: !565, file: !501, line: 197, type: !122)
!570 = !DILocalVariable(name: "s", arg: 2, scope: !565, file: !501, line: 197, type: !81)
!571 = !DILocalVariable(name: "translation", scope: !565, file: !501, line: 199, type: !122)
!572 = !DILocalVariable(name: "w", scope: !565, file: !501, line: 229, type: !481)
!573 = !DILocalVariable(name: "mbs", scope: !565, file: !501, line: 230, type: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !487, line: 6, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !489, line: 21, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 13, size: 64, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !576, file: !489, line: 15, baseType: !77, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !576, file: !489, line: 20, baseType: !580, size: 32, offset: 32)
!580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !489, line: 16, size: 32, elements: !581)
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !580, file: !489, line: 18, baseType: !72, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !580, file: !489, line: 19, baseType: !245, size: 32)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !585)
!585 = !{!254, !247}
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(name: "slotvec", scope: !525, file: !501, line: 834, type: !588, isLocal: true, isDefinition: true)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !501, line: 823, size: 128, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !589, file: !501, line: 825, baseType: !119, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !589, file: !501, line: 826, baseType: !116, size: 64, offset: 64)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(name: "nslots", scope: !525, file: !501, line: 832, type: !77, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "slotvec0", scope: !525, file: !501, line: 833, type: !589, isLocal: true, isDefinition: true)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 704, elements: !599)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!599 = !{!600}
!600 = !DISubrange(count: 11)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !603, line: 67, type: !345, isLocal: true, isDefinition: true)
!603 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !603, line: 69, type: !269, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !603, line: 83, type: !269, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !603, line: 83, type: !245, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !603, line: 85, type: !252, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !603, line: 88, type: !614, isLocal: true, isDefinition: true)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 171)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !603, line: 88, type: !619, isLocal: true, isDefinition: true)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 34)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !603, line: 105, type: !133, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !603, line: 109, type: !140, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !603, line: 113, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 28)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !603, line: 120, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 32)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !603, line: 127, type: !9, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !603, line: 134, type: !296, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !603, line: 142, type: !642, isLocal: true, isDefinition: true)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 44)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !603, line: 150, type: !14, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !603, line: 159, type: !649, isLocal: true, isDefinition: true)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 52)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !603, line: 170, type: !654, isLocal: true, isDefinition: true)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 60)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !603, line: 248, type: !147, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !603, line: 248, type: !321, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !603, line: 254, type: !147, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !603, line: 254, type: !128, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !603, line: 254, type: !296, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !603, line: 259, type: !3, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !603, line: 259, type: !671, isLocal: true, isDefinition: true)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 29)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !676, file: !677, line: 26, type: !679, isLocal: false, isDefinition: true)
!676 = distinct !DICompileUnit(language: DW_LANG_C11, file: !677, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !678, splitDebugInlining: false, nameTableKind: None)
!677 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!678 = !{!674}
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 376, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 47)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(name: "exit_failure", scope: !684, file: !685, line: 24, type: !687, isLocal: false, isDefinition: true)
!684 = distinct !DICompileUnit(language: DW_LANG_C11, file: !685, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !686, splitDebugInlining: false, nameTableKind: None)
!685 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!686 = !{!682}
!687 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !690, line: 34, type: !64, isLocal: true, isDefinition: true)
!690 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !690, line: 34, type: !269, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !690, line: 34, type: !291, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !697, line: 108, type: !49, isLocal: true, isDefinition: true)
!697 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(name: "internal_state", scope: !700, file: !697, line: 97, type: !703, isLocal: true, isDefinition: true)
!700 = distinct !DICompileUnit(language: DW_LANG_C11, file: !697, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !701, globals: !702, splitDebugInlining: false, nameTableKind: None)
!701 = !{!117, !119, !124}
!702 = !{!695, !698}
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !487, line: 6, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !489, line: 21, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 13, size: 64, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !705, file: !489, line: 15, baseType: !77, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !705, file: !489, line: 20, baseType: !709, size: 32, offset: 32)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !489, line: 16, size: 32, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !709, file: !489, line: 18, baseType: !72, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !709, file: !489, line: 19, baseType: !245, size: 32)
!713 = !DIGlobalVariableExpression(var: !714, expr: !DIExpression())
!714 = distinct !DIGlobalVariable(scope: null, file: !715, line: 35, type: !19, isLocal: true, isDefinition: true)
!715 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !383, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !717, globals: !718, splitDebugInlining: false, nameTableKind: None)
!717 = !{!124}
!718 = !{!381}
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/stripslash.c", directory: "/src", checksumkind: CSK_MD5, checksum: "128a5f12cafc5019074f64cf3b3d799b")
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !722, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !603, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !724, retainedTypes: !728, globals: !729, splitDebugInlining: false, nameTableKind: None)
!724 = !{!725}
!725 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !603, line: 40, baseType: !72, size: 32, elements: !726)
!726 = !{!727}
!727 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!728 = !{!117}
!729 = !{!601, !604, !606, !608, !610, !612, !617, !622, !624, !626, !631, !636, !638, !640, !645, !647, !652, !657, !659, !661, !663, !665, !667, !669}
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !732, retainedTypes: !763, splitDebugInlining: false, nameTableKind: None)
!731 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!732 = !{!733, !745}
!733 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !734, file: !731, line: 188, baseType: !72, size: 32, elements: !743)
!734 = distinct !DISubprogram(name: "x2nrealloc", scope: !731, file: !731, line: 176, type: !735, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !738)
!735 = !DISubroutineType(types: !736)
!736 = !{!117, !117, !737, !119}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!738 = !{!739, !740, !741, !742}
!739 = !DILocalVariable(name: "p", arg: 1, scope: !734, file: !731, line: 176, type: !117)
!740 = !DILocalVariable(name: "pn", arg: 2, scope: !734, file: !731, line: 176, type: !737)
!741 = !DILocalVariable(name: "s", arg: 3, scope: !734, file: !731, line: 176, type: !119)
!742 = !DILocalVariable(name: "n", scope: !734, file: !731, line: 178, type: !119)
!743 = !{!744}
!744 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!745 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !746, file: !731, line: 228, baseType: !72, size: 32, elements: !743)
!746 = distinct !DISubprogram(name: "xpalloc", scope: !731, file: !731, line: 223, type: !747, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !753)
!747 = !DISubroutineType(types: !748)
!748 = !{!117, !117, !749, !750, !752, !750}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !751, line: 130, baseType: !752)
!751 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !120, line: 35, baseType: !209)
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762}
!754 = !DILocalVariable(name: "pa", arg: 1, scope: !746, file: !731, line: 223, type: !117)
!755 = !DILocalVariable(name: "pn", arg: 2, scope: !746, file: !731, line: 223, type: !749)
!756 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !746, file: !731, line: 223, type: !750)
!757 = !DILocalVariable(name: "n_max", arg: 4, scope: !746, file: !731, line: 223, type: !752)
!758 = !DILocalVariable(name: "s", arg: 5, scope: !746, file: !731, line: 223, type: !750)
!759 = !DILocalVariable(name: "n0", scope: !746, file: !731, line: 230, type: !750)
!760 = !DILocalVariable(name: "n", scope: !746, file: !731, line: 237, type: !750)
!761 = !DILocalVariable(name: "nbytes", scope: !746, file: !731, line: 248, type: !750)
!762 = !DILocalVariable(name: "adjusted_nbytes", scope: !746, file: !731, line: 252, type: !750)
!763 = !{!116, !117, !152, !209, !121}
!764 = distinct !DICompileUnit(language: DW_LANG_C11, file: !690, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !765, splitDebugInlining: false, nameTableKind: None)
!765 = !{!688, !691, !693}
!766 = distinct !DICompileUnit(language: DW_LANG_C11, file: !767, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !462, splitDebugInlining: false, nameTableKind: None)
!767 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !769, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!771 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !773, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !728, splitDebugInlining: false, nameTableKind: None)
!773 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !728, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !778, splitDebugInlining: false, nameTableKind: None)
!777 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!778 = !{!152, !121, !117}
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !715, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !780, splitDebugInlining: false, nameTableKind: None)
!780 = !{!781, !713}
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(scope: null, file: !715, line: 35, type: !252, isLocal: true, isDefinition: true)
!783 = distinct !DICompileUnit(language: DW_LANG_C11, file: !784, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!784 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!785 = distinct !DICompileUnit(language: DW_LANG_C11, file: !786, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !728, splitDebugInlining: false, nameTableKind: None)
!786 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!787 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!788 = !{i32 7, !"Dwarf Version", i32 5}
!789 = !{i32 2, !"Debug Info Version", i32 3}
!790 = !{i32 1, !"wchar_size", i32 4}
!791 = !{i32 8, !"PIC Level", i32 2}
!792 = !{i32 7, !"PIE Level", i32 2}
!793 = !{i32 7, !"uwtable", i32 2}
!794 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 166, type: !795, scopeLine: 167, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !77}
!797 = !{!798}
!798 = !DILocalVariable(name: "status", arg: 1, scope: !794, file: !2, line: 166, type: !77)
!799 = !DILocation(line: 0, scope: !794)
!800 = !DILocation(line: 168, column: 14, scope: !801)
!801 = distinct !DILexicalBlock(scope: !794, file: !2, line: 168, column: 7)
!802 = !DILocation(line: 168, column: 7, scope: !794)
!803 = !DILocation(line: 169, column: 5, scope: !804)
!804 = distinct !DILexicalBlock(scope: !801, file: !2, line: 169, column: 5)
!805 = !{!806, !806, i64 0}
!806 = !{!"any pointer", !807, i64 0}
!807 = !{!"omnipotent char", !808, i64 0}
!808 = !{!"Simple C/C++ TBAA"}
!809 = !DILocation(line: 172, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !801, file: !2, line: 171, column: 5)
!811 = !DILocation(line: 173, column: 7, scope: !810)
!812 = !DILocation(line: 177, column: 7, scope: !810)
!813 = !DILocation(line: 181, column: 7, scope: !810)
!814 = !DILocation(line: 186, column: 7, scope: !810)
!815 = !DILocation(line: 190, column: 7, scope: !810)
!816 = !DILocation(line: 191, column: 7, scope: !810)
!817 = !DILocalVariable(name: "program", arg: 1, scope: !818, file: !76, line: 836, type: !122)
!818 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !76, file: !76, line: 836, type: !819, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !122}
!821 = !{!817, !822, !829, !830, !832, !833}
!822 = !DILocalVariable(name: "infomap", scope: !818, file: !76, line: 838, type: !823)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 896, elements: !270)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !818, file: !76, line: 838, size: 128, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !825, file: !76, line: 838, baseType: !122, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !825, file: !76, line: 838, baseType: !122, size: 64, offset: 64)
!829 = !DILocalVariable(name: "node", scope: !818, file: !76, line: 848, type: !122)
!830 = !DILocalVariable(name: "map_prog", scope: !818, file: !76, line: 849, type: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!832 = !DILocalVariable(name: "lc_messages", scope: !818, file: !76, line: 861, type: !122)
!833 = !DILocalVariable(name: "url_program", scope: !818, file: !76, line: 874, type: !122)
!834 = !DILocation(line: 0, scope: !818, inlinedAt: !835)
!835 = distinct !DILocation(line: 192, column: 7, scope: !810)
!836 = !DILocation(line: 857, column: 3, scope: !818, inlinedAt: !835)
!837 = !DILocation(line: 861, column: 29, scope: !818, inlinedAt: !835)
!838 = !DILocation(line: 862, column: 7, scope: !839, inlinedAt: !835)
!839 = distinct !DILexicalBlock(scope: !818, file: !76, line: 862, column: 7)
!840 = !DILocation(line: 862, column: 19, scope: !839, inlinedAt: !835)
!841 = !DILocation(line: 862, column: 22, scope: !839, inlinedAt: !835)
!842 = !DILocation(line: 862, column: 7, scope: !818, inlinedAt: !835)
!843 = !DILocation(line: 868, column: 7, scope: !844, inlinedAt: !835)
!844 = distinct !DILexicalBlock(scope: !839, file: !76, line: 863, column: 5)
!845 = !DILocation(line: 870, column: 5, scope: !844, inlinedAt: !835)
!846 = !DILocation(line: 875, column: 3, scope: !818, inlinedAt: !835)
!847 = !DILocation(line: 877, column: 3, scope: !818, inlinedAt: !835)
!848 = !DILocation(line: 194, column: 3, scope: !794)
!849 = !DISubprogram(name: "dcgettext", scope: !850, file: !850, line: 51, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!850 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!851 = !DISubroutineType(types: !852)
!852 = !{!116, !122, !122, !77}
!853 = !{}
!854 = !DISubprogram(name: "__fprintf_chk", scope: !855, file: !855, line: 93, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!855 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!856 = !DISubroutineType(types: !857)
!857 = !{!77, !858, !77, !859, null}
!858 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !181)
!859 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!860 = !DISubprogram(name: "__printf_chk", scope: !855, file: !855, line: 95, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!861 = !DISubroutineType(types: !862)
!862 = !{!77, !77, !859, null}
!863 = !DISubprogram(name: "fputs_unlocked", scope: !864, file: !864, line: 691, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!864 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!865 = !DISubroutineType(types: !866)
!866 = !{!77, !859, !858}
!867 = !DILocation(line: 0, scope: !159)
!868 = !DILocation(line: 581, column: 7, scope: !167)
!869 = !{!870, !870, i64 0}
!870 = !{!"int", !807, i64 0}
!871 = !DILocation(line: 581, column: 19, scope: !167)
!872 = !DILocation(line: 581, column: 7, scope: !159)
!873 = !DILocation(line: 585, column: 26, scope: !166)
!874 = !DILocation(line: 0, scope: !166)
!875 = !DILocation(line: 586, column: 23, scope: !166)
!876 = !DILocation(line: 586, column: 28, scope: !166)
!877 = !DILocation(line: 586, column: 32, scope: !166)
!878 = !{!807, !807, i64 0}
!879 = !DILocation(line: 586, column: 38, scope: !166)
!880 = !DILocalVariable(name: "__s1", arg: 1, scope: !881, file: !882, line: 1359, type: !122)
!881 = distinct !DISubprogram(name: "streq", scope: !882, file: !882, line: 1359, type: !883, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !885)
!882 = !DIFile(filename: "./lib/string.h", directory: "/src")
!883 = !DISubroutineType(types: !884)
!884 = !{!152, !122, !122}
!885 = !{!880, !886}
!886 = !DILocalVariable(name: "__s2", arg: 2, scope: !881, file: !882, line: 1359, type: !122)
!887 = !DILocation(line: 0, scope: !881, inlinedAt: !888)
!888 = distinct !DILocation(line: 586, column: 41, scope: !166)
!889 = !DILocation(line: 1361, column: 11, scope: !881, inlinedAt: !888)
!890 = !DILocation(line: 1361, column: 10, scope: !881, inlinedAt: !888)
!891 = !DILocation(line: 586, column: 19, scope: !166)
!892 = !DILocation(line: 587, column: 5, scope: !166)
!893 = !DILocation(line: 588, column: 7, scope: !894)
!894 = distinct !DILexicalBlock(scope: !159, file: !76, line: 588, column: 7)
!895 = !DILocation(line: 588, column: 7, scope: !159)
!896 = !DILocation(line: 590, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !76, line: 589, column: 5)
!898 = !DILocation(line: 591, column: 7, scope: !897)
!899 = !DILocation(line: 595, column: 37, scope: !159)
!900 = !DILocation(line: 595, column: 35, scope: !159)
!901 = !DILocation(line: 596, column: 29, scope: !159)
!902 = !DILocation(line: 597, column: 8, scope: !174)
!903 = !DILocation(line: 597, column: 7, scope: !159)
!904 = !DILocation(line: 604, column: 24, scope: !173)
!905 = !DILocation(line: 604, column: 12, scope: !174)
!906 = !DILocation(line: 0, scope: !172)
!907 = !DILocation(line: 610, column: 16, scope: !172)
!908 = !DILocation(line: 610, column: 7, scope: !172)
!909 = !DILocation(line: 611, column: 21, scope: !172)
!910 = !{!911, !911, i64 0}
!911 = !{!"short", !807, i64 0}
!912 = !DILocation(line: 611, column: 19, scope: !172)
!913 = !DILocation(line: 611, column: 16, scope: !172)
!914 = !DILocation(line: 610, column: 30, scope: !172)
!915 = distinct !{!915, !908, !909, !916}
!916 = !{!"llvm.loop.mustprogress"}
!917 = !DILocation(line: 612, column: 18, scope: !918)
!918 = distinct !DILexicalBlock(scope: !172, file: !76, line: 612, column: 11)
!919 = !DILocation(line: 612, column: 11, scope: !172)
!920 = !DILocation(line: 618, column: 5, scope: !172)
!921 = !DILocation(line: 620, column: 23, scope: !159)
!922 = !DILocation(line: 625, column: 39, scope: !159)
!923 = !DILocation(line: 626, column: 3, scope: !159)
!924 = !DILocation(line: 626, column: 10, scope: !159)
!925 = !DILocation(line: 626, column: 21, scope: !159)
!926 = !DILocation(line: 628, column: 44, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !76, line: 628, column: 11)
!928 = distinct !DILexicalBlock(scope: !159, file: !76, line: 627, column: 5)
!929 = !DILocation(line: 628, column: 32, scope: !927)
!930 = !DILocation(line: 628, column: 49, scope: !927)
!931 = !DILocation(line: 628, column: 11, scope: !928)
!932 = !DILocation(line: 630, column: 11, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !76, line: 630, column: 11)
!934 = !DILocation(line: 630, column: 11, scope: !928)
!935 = !DILocation(line: 632, column: 26, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !76, line: 632, column: 15)
!937 = distinct !DILexicalBlock(scope: !933, file: !76, line: 631, column: 9)
!938 = !DILocation(line: 632, column: 34, scope: !936)
!939 = !DILocation(line: 632, column: 37, scope: !936)
!940 = !DILocation(line: 632, column: 15, scope: !937)
!941 = !DILocation(line: 636, column: 16, scope: !942)
!942 = distinct !DILexicalBlock(scope: !937, file: !76, line: 636, column: 15)
!943 = !DILocation(line: 636, column: 29, scope: !942)
!944 = !DILocation(line: 640, column: 16, scope: !928)
!945 = distinct !{!945, !923, !946, !916}
!946 = !DILocation(line: 641, column: 5, scope: !159)
!947 = !DILocation(line: 644, column: 3, scope: !159)
!948 = !DILocation(line: 0, scope: !881, inlinedAt: !949)
!949 = distinct !DILocation(line: 648, column: 31, scope: !159)
!950 = !DILocation(line: 0, scope: !881, inlinedAt: !951)
!951 = distinct !DILocation(line: 649, column: 31, scope: !159)
!952 = !DILocation(line: 0, scope: !881, inlinedAt: !953)
!953 = distinct !DILocation(line: 650, column: 31, scope: !159)
!954 = !DILocation(line: 0, scope: !881, inlinedAt: !955)
!955 = distinct !DILocation(line: 651, column: 31, scope: !159)
!956 = !DILocation(line: 0, scope: !881, inlinedAt: !957)
!957 = distinct !DILocation(line: 652, column: 31, scope: !159)
!958 = !DILocation(line: 0, scope: !881, inlinedAt: !959)
!959 = distinct !DILocation(line: 653, column: 31, scope: !159)
!960 = !DILocation(line: 0, scope: !881, inlinedAt: !961)
!961 = distinct !DILocation(line: 654, column: 31, scope: !159)
!962 = !DILocation(line: 0, scope: !881, inlinedAt: !963)
!963 = distinct !DILocation(line: 655, column: 31, scope: !159)
!964 = !DILocation(line: 0, scope: !881, inlinedAt: !965)
!965 = distinct !DILocation(line: 656, column: 31, scope: !159)
!966 = !DILocation(line: 0, scope: !881, inlinedAt: !967)
!967 = distinct !DILocation(line: 657, column: 31, scope: !159)
!968 = !DILocation(line: 663, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !159, file: !76, line: 663, column: 7)
!970 = !DILocation(line: 664, column: 7, scope: !969)
!971 = !DILocation(line: 664, column: 10, scope: !969)
!972 = !DILocation(line: 663, column: 7, scope: !159)
!973 = !DILocation(line: 669, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !969, file: !76, line: 665, column: 5)
!975 = !DILocation(line: 671, column: 5, scope: !974)
!976 = !DILocation(line: 676, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !969, file: !76, line: 673, column: 5)
!978 = !DILocation(line: 679, column: 3, scope: !159)
!979 = !DILocation(line: 683, column: 3, scope: !159)
!980 = !DILocation(line: 686, column: 3, scope: !159)
!981 = !DILocation(line: 688, column: 3, scope: !159)
!982 = !DILocation(line: 691, column: 3, scope: !159)
!983 = !DILocation(line: 695, column: 3, scope: !159)
!984 = !DILocation(line: 696, column: 1, scope: !159)
!985 = !DISubprogram(name: "setlocale", scope: !986, file: !986, line: 122, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!986 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!987 = !DISubroutineType(types: !988)
!988 = !{!116, !77, !122}
!989 = !DISubprogram(name: "strncmp", scope: !990, file: !990, line: 159, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!990 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!991 = !DISubroutineType(types: !992)
!992 = !{!77, !122, !122, !119}
!993 = !DISubprogram(name: "exit", scope: !994, file: !994, line: 624, type: !795, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !853)
!994 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!995 = !DISubprogram(name: "getenv", scope: !994, file: !994, line: 641, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!996 = !DISubroutineType(types: !997)
!997 = !{!116, !122}
!998 = !DISubprogram(name: "strcmp", scope: !990, file: !990, line: 156, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!77, !122, !122}
!1001 = !DISubprogram(name: "strspn", scope: !990, file: !990, line: 297, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!121, !122, !122}
!1004 = !DISubprogram(name: "strchr", scope: !990, file: !990, line: 246, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!116, !122, !77}
!1007 = !DISubprogram(name: "__ctype_b_loc", scope: !96, file: !96, line: 79, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!1010}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1013 = !DISubprogram(name: "strcspn", scope: !990, file: !990, line: 293, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1014 = !DISubprogram(name: "fwrite_unlocked", scope: !864, file: !864, line: 704, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!119, !1017, !119, !119, !858}
!1017 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1018)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1020 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 198, type: !1021, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1024)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!77, !77, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1033, !1036, !1037, !1040, !1077, !1078}
!1025 = !DILocalVariable(name: "argc", arg: 1, scope: !1020, file: !2, line: 198, type: !77)
!1026 = !DILocalVariable(name: "argv", arg: 2, scope: !1020, file: !2, line: 198, type: !1023)
!1027 = !DILocalVariable(name: "optc", scope: !1020, file: !2, line: 208, type: !77)
!1028 = !DILocalVariable(name: "ok", scope: !1020, file: !2, line: 235, type: !152)
!1029 = !DILocalVariable(name: "dir", scope: !1030, file: !2, line: 238, type: !116)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !2, line: 237, column: 5)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 236, column: 3)
!1032 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 236, column: 3)
!1033 = !DILocalVariable(name: "rmdir_errno", scope: !1034, file: !2, line: 246, type: !77)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 245, column: 9)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 244, column: 11)
!1036 = !DILocalVariable(name: "custom_error", scope: !1034, file: !2, line: 255, type: !152)
!1037 = !DILocalVariable(name: "last_unix_slash", scope: !1038, file: !2, line: 258, type: !122)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 257, column: 13)
!1039 = distinct !DILexicalBlock(scope: !1034, file: !2, line: 256, column: 15)
!1040 = !DILocalVariable(name: "st", scope: !1041, file: !2, line: 261, type: !1043)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 260, column: 17)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 259, column: 19)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1044, line: 26, size: 1152, elements: !1045)
!1044 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1045 = !{!1046, !1048, !1050, !1052, !1054, !1056, !1058, !1059, !1060, !1061, !1063, !1065, !1073, !1074, !1075}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1043, file: !1044, line: 31, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !208, line: 145, baseType: !121)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1043, file: !1044, line: 36, baseType: !1049, size: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !208, line: 148, baseType: !121)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1043, file: !1044, line: 44, baseType: !1051, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !208, line: 151, baseType: !121)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1043, file: !1044, line: 45, baseType: !1053, size: 32, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !208, line: 150, baseType: !72)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1043, file: !1044, line: 47, baseType: !1055, size: 32, offset: 224)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !208, line: 146, baseType: !72)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1043, file: !1044, line: 48, baseType: !1057, size: 32, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !208, line: 147, baseType: !72)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1043, file: !1044, line: 50, baseType: !77, size: 32, offset: 288)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1043, file: !1044, line: 52, baseType: !1047, size: 64, offset: 320)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1043, file: !1044, line: 57, baseType: !207, size: 64, offset: 384)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1043, file: !1044, line: 61, baseType: !1062, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !208, line: 175, baseType: !209)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1043, file: !1044, line: 63, baseType: !1064, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !208, line: 180, baseType: !209)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1043, file: !1044, line: 74, baseType: !1066, size: 128, offset: 576)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1067, line: 11, size: 128, elements: !1068)
!1067 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1068 = !{!1069, !1071}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1066, file: !1067, line: 16, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !208, line: 160, baseType: !209)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1066, file: !1067, line: 21, baseType: !1072, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !208, line: 197, baseType: !209)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1043, file: !1044, line: 75, baseType: !1066, size: 128, offset: 704)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1043, file: !1044, line: 76, baseType: !1066, size: 128, offset: 832)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1043, file: !1044, line: 89, baseType: !1076, size: 192, offset: 960)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1072, size: 192, elements: !65)
!1077 = !DILocalVariable(name: "ret", scope: !1041, file: !2, line: 262, type: !77)
!1078 = !DILocalVariable(name: "dir_arg", scope: !1079, file: !2, line: 268, type: !116)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 266, column: 21)
!1080 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 264, column: 23)
!1081 = !DILocation(line: 0, scope: !1020)
!1082 = !DILocation(line: 201, column: 21, scope: !1020)
!1083 = !DILocation(line: 201, column: 3, scope: !1020)
!1084 = !DILocation(line: 202, column: 3, scope: !1020)
!1085 = !DILocation(line: 203, column: 3, scope: !1020)
!1086 = !DILocation(line: 204, column: 3, scope: !1020)
!1087 = !DILocation(line: 206, column: 3, scope: !1020)
!1088 = !DILocation(line: 209, column: 3, scope: !1020)
!1089 = !DILocation(line: 209, column: 18, scope: !1020)
!1090 = !DILocation(line: 218, column: 11, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 212, column: 9)
!1092 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 210, column: 5)
!1093 = !DILocation(line: 221, column: 11, scope: !1091)
!1094 = !DILocation(line: 222, column: 9, scope: !1091)
!1095 = !DILocation(line: 223, column: 9, scope: !1091)
!1096 = !DILocation(line: 225, column: 11, scope: !1091)
!1097 = !DILocation(line: 0, scope: !1091)
!1098 = distinct !{!1098, !1088, !1099, !916}
!1099 = !DILocation(line: 227, column: 5, scope: !1020)
!1100 = !DILocation(line: 229, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 229, column: 7)
!1102 = !DILocation(line: 229, column: 14, scope: !1101)
!1103 = !DILocation(line: 229, column: 7, scope: !1020)
!1104 = !DILocation(line: 236, column: 17, scope: !1031)
!1105 = !DILocation(line: 236, column: 3, scope: !1032)
!1106 = !DILocation(line: 231, column: 7, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 230, column: 5)
!1108 = !DILocation(line: 232, column: 7, scope: !1107)
!1109 = !DILocation(line: 238, column: 19, scope: !1030)
!1110 = !DILocation(line: 0, scope: !1030)
!1111 = !DILocation(line: 241, column: 11, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 241, column: 11)
!1113 = !DILocation(line: 241, column: 11, scope: !1030)
!1114 = !DILocation(line: 242, column: 23, scope: !1112)
!1115 = !DILocation(line: 242, column: 31, scope: !1112)
!1116 = !DILocation(line: 242, column: 60, scope: !1112)
!1117 = !DILocation(line: 242, column: 9, scope: !1112)
!1118 = !DILocation(line: 244, column: 11, scope: !1035)
!1119 = !DILocation(line: 244, column: 23, scope: !1035)
!1120 = !DILocation(line: 244, column: 11, scope: !1030)
!1121 = !DILocation(line: 246, column: 29, scope: !1034)
!1122 = !DILocation(line: 0, scope: !1034)
!1123 = !DILocation(line: 247, column: 15, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1034, file: !2, line: 247, column: 15)
!1125 = !DILocation(line: 247, column: 15, scope: !1034)
!1126 = !DILocation(line: 256, column: 27, scope: !1039)
!1127 = !DILocation(line: 256, column: 15, scope: !1034)
!1128 = !DILocation(line: 258, column: 45, scope: !1038)
!1129 = !DILocation(line: 0, scope: !1038)
!1130 = !DILocation(line: 259, column: 19, scope: !1042)
!1131 = !DILocation(line: 259, column: 35, scope: !1042)
!1132 = !DILocation(line: 259, column: 57, scope: !1042)
!1133 = !DILocation(line: 259, column: 39, scope: !1042)
!1134 = !DILocation(line: 259, column: 62, scope: !1042)
!1135 = !DILocation(line: 259, column: 19, scope: !1038)
!1136 = !DILocation(line: 261, column: 19, scope: !1041)
!1137 = !DILocation(line: 261, column: 31, scope: !1041)
!1138 = !DILocation(line: 262, column: 29, scope: !1041)
!1139 = !DILocation(line: 0, scope: !1041)
!1140 = !DILocation(line: 264, column: 33, scope: !1080)
!1141 = !DILocation(line: 264, column: 36, scope: !1080)
!1142 = !DILocation(line: 264, column: 42, scope: !1080)
!1143 = !DILocation(line: 265, column: 23, scope: !1080)
!1144 = !DILocation(line: 265, column: 39, scope: !1080)
!1145 = !{!1146, !870, i64 24}
!1146 = !{!"stat", !1147, i64 0, !1147, i64 8, !1147, i64 16, !870, i64 24, !870, i64 28, !870, i64 32, !870, i64 36, !1147, i64 40, !1147, i64 48, !1147, i64 56, !1147, i64 64, !1148, i64 72, !1148, i64 88, !1148, i64 104, !807, i64 120}
!1147 = !{!"long", !807, i64 0}
!1148 = !{!"timespec", !1147, i64 0, !1147, i64 8}
!1149 = !DILocation(line: 264, column: 23, scope: !1041)
!1150 = !DILocation(line: 268, column: 39, scope: !1079)
!1151 = !DILocation(line: 0, scope: !1079)
!1152 = !DILocation(line: 269, column: 23, scope: !1079)
!1153 = !DILocalVariable(name: "filename", arg: 1, scope: !1154, file: !1155, line: 49, type: !122)
!1154 = distinct !DISubprogram(name: "issymlink", scope: !1155, file: !1155, line: 49, type: !1156, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1158)
!1155 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!77, !122}
!1158 = !{!1153, !1159}
!1159 = !DILocalVariable(name: "linkbuf", scope: !1154, file: !1155, line: 51, type: !49)
!1160 = !DILocation(line: 0, scope: !1154, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 270, column: 27, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 270, column: 27)
!1163 = !DILocation(line: 51, column: 3, scope: !1154, inlinedAt: !1161)
!1164 = !DILocation(line: 51, column: 8, scope: !1154, inlinedAt: !1161)
!1165 = !DILocation(line: 52, column: 7, scope: !1166, inlinedAt: !1161)
!1166 = distinct !DILexicalBlock(scope: !1154, file: !1155, line: 52, column: 7)
!1167 = !DILocation(line: 52, column: 54, scope: !1166, inlinedAt: !1161)
!1168 = !DILocation(line: 58, column: 1, scope: !1154, inlinedAt: !1161)
!1169 = !DILocation(line: 52, column: 7, scope: !1154, inlinedAt: !1161)
!1170 = !DILocation(line: 272, column: 27, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 271, column: 25)
!1172 = !DILocation(line: 278, column: 23, scope: !1079)
!1173 = !DILocation(line: 280, column: 17, scope: !1042)
!1174 = !DILocation(line: 283, column: 15, scope: !1034)
!1175 = !DILocation(line: 284, column: 13, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1034, file: !2, line: 283, column: 15)
!1177 = !DILocation(line: 288, column: 16, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 288, column: 16)
!1179 = !DILocation(line: 288, column: 16, scope: !1035)
!1180 = !DILocalVariable(name: "dir", arg: 1, scope: !1181, file: !2, line: 113, type: !116)
!1181 = distinct !DISubprogram(name: "remove_parents", scope: !2, file: !2, line: 113, type: !1182, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1184)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!152, !116}
!1184 = !{!1180, !1185, !1186, !1188, !1189}
!1185 = !DILocalVariable(name: "ok", scope: !1181, file: !2, line: 115, type: !152)
!1186 = !DILocalVariable(name: "slash", scope: !1187, file: !2, line: 120, type: !116)
!1187 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 119, column: 5)
!1188 = !DILocalVariable(name: "rmdir_errno", scope: !1187, file: !2, line: 134, type: !77)
!1189 = !DILocalVariable(name: "error_msg", scope: !1190, file: !2, line: 145, type: !122)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 144, column: 13)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 139, column: 15)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 137, column: 9)
!1193 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 136, column: 11)
!1194 = !DILocation(line: 0, scope: !1181, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 290, column: 17, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 289, column: 9)
!1197 = !DILocation(line: 117, column: 3, scope: !1181, inlinedAt: !1195)
!1198 = !DILocation(line: 118, column: 3, scope: !1181, inlinedAt: !1195)
!1199 = !DILocation(line: 120, column: 21, scope: !1187, inlinedAt: !1195)
!1200 = !DILocation(line: 0, scope: !1187, inlinedAt: !1195)
!1201 = !DILocation(line: 121, column: 17, scope: !1202, inlinedAt: !1195)
!1202 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 121, column: 11)
!1203 = !DILocation(line: 121, column: 11, scope: !1187, inlinedAt: !1195)
!1204 = !DILocation(line: 125, column: 20, scope: !1187, inlinedAt: !1195)
!1205 = !DILocation(line: 125, column: 26, scope: !1187, inlinedAt: !1195)
!1206 = !DILocation(line: 125, column: 7, scope: !1187, inlinedAt: !1195)
!1207 = !DILocation(line: 125, column: 29, scope: !1187, inlinedAt: !1195)
!1208 = !DILocation(line: 125, column: 36, scope: !1187, inlinedAt: !1195)
!1209 = !DILocation(line: 126, column: 9, scope: !1187, inlinedAt: !1195)
!1210 = distinct !{!1210, !1206, !1211, !916}
!1211 = !DILocation(line: 126, column: 11, scope: !1187, inlinedAt: !1195)
!1212 = !DILocation(line: 127, column: 7, scope: !1187, inlinedAt: !1195)
!1213 = !DILocation(line: 127, column: 16, scope: !1187, inlinedAt: !1195)
!1214 = !DILocation(line: 130, column: 11, scope: !1215, inlinedAt: !1195)
!1215 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 130, column: 11)
!1216 = !DILocation(line: 130, column: 11, scope: !1187, inlinedAt: !1195)
!1217 = !DILocation(line: 131, column: 23, scope: !1215, inlinedAt: !1195)
!1218 = !DILocation(line: 131, column: 31, scope: !1215, inlinedAt: !1195)
!1219 = !DILocation(line: 131, column: 60, scope: !1215, inlinedAt: !1195)
!1220 = !DILocation(line: 131, column: 9, scope: !1215, inlinedAt: !1195)
!1221 = !DILocation(line: 133, column: 13, scope: !1187, inlinedAt: !1195)
!1222 = !DILocation(line: 133, column: 25, scope: !1187, inlinedAt: !1195)
!1223 = !DILocation(line: 134, column: 25, scope: !1187, inlinedAt: !1195)
!1224 = !DILocation(line: 136, column: 11, scope: !1187, inlinedAt: !1195)
!1225 = !DILocation(line: 139, column: 15, scope: !1191, inlinedAt: !1195)
!1226 = !DILocation(line: 139, column: 15, scope: !1192, inlinedAt: !1195)
!1227 = !DILocation(line: 146, column: 31, scope: !1228, inlinedAt: !1195)
!1228 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 146, column: 19)
!1229 = !DILocation(line: 0, scope: !1190, inlinedAt: !1195)
!1230 = !DILocation(line: 157, column: 15, scope: !1190, inlinedAt: !1195)
!1231 = !DILocation(line: 290, column: 14, scope: !1196)
!1232 = !DILocation(line: 291, column: 9, scope: !1196)
!1233 = !DILocation(line: 235, column: 8, scope: !1020)
!1234 = !DILocation(line: 236, column: 25, scope: !1031)
!1235 = distinct !{!1235, !1105, !1236, !916}
!1236 = !DILocation(line: 292, column: 5, scope: !1032)
!1237 = !DILocation(line: 294, column: 10, scope: !1020)
!1238 = !DILocation(line: 295, column: 1, scope: !1020)
!1239 = !DISubprogram(name: "bindtextdomain", scope: !850, file: !850, line: 86, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!116, !122, !122}
!1242 = !DISubprogram(name: "textdomain", scope: !850, file: !850, line: 82, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1243 = !DISubprogram(name: "atexit", scope: !994, file: !994, line: 602, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!77, !455}
!1246 = !DISubprogram(name: "getopt_long", scope: !371, file: !371, line: 66, type: !1247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!77, !77, !1249, !122, !1251, !376}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!1252 = !DISubprogram(name: "rmdir", scope: !1253, file: !1253, line: 867, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1253 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1254 = !DISubprogram(name: "__errno_location", scope: !1255, file: !1255, line: 37, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1255 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!376}
!1258 = distinct !DISubprogram(name: "ignorable_failure", scope: !2, file: !2, line: 99, type: !1259, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1261)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!152, !77, !122}
!1261 = !{!1262, !1263}
!1262 = !DILocalVariable(name: "error_number", arg: 1, scope: !1258, file: !2, line: 99, type: !77)
!1263 = !DILocalVariable(name: "dir", arg: 2, scope: !1258, file: !2, line: 99, type: !122)
!1264 = !DILocation(line: 0, scope: !1258)
!1265 = !DILocation(line: 101, column: 11, scope: !1258)
!1266 = !DILocation(line: 102, column: 11, scope: !1258)
!1267 = !DILocation(line: 103, column: 15, scope: !1258)
!1268 = !DILocalVariable(name: "fd_cwd", arg: 1, scope: !1269, file: !76, line: 305, type: !77)
!1269 = distinct !DISubprogram(name: "directory_status", scope: !76, file: !76, line: 305, type: !1270, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1272)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!77, !77, !122}
!1272 = !{!1268, !1273, !1274, !1279, !1280, !1281}
!1273 = !DILocalVariable(name: "dir", arg: 2, scope: !1269, file: !76, line: 305, type: !122)
!1274 = !DILocalVariable(name: "dirp", scope: !1269, file: !76, line: 307, type: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !1277, line: 127, baseType: !1278)
!1277 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!1278 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !1277, line: 127, flags: DIFlagFwdDecl)
!1279 = !DILocalVariable(name: "no_direntries", scope: !1269, file: !76, line: 308, type: !152)
!1280 = !DILocalVariable(name: "saved_errno", scope: !1269, file: !76, line: 309, type: !77)
!1281 = !DILocalVariable(name: "fd", scope: !1269, file: !76, line: 310, type: !77)
!1282 = !DILocation(line: 0, scope: !1269, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 104, column: 22, scope: !1258)
!1284 = !DILocation(line: 310, column: 12, scope: !1269, inlinedAt: !1283)
!1285 = !DILocation(line: 314, column: 10, scope: !1286, inlinedAt: !1283)
!1286 = distinct !DILexicalBlock(scope: !1269, file: !76, line: 314, column: 7)
!1287 = !DILocation(line: 314, column: 7, scope: !1269, inlinedAt: !1283)
!1288 = !DILocation(line: 315, column: 12, scope: !1286, inlinedAt: !1283)
!1289 = !DILocation(line: 315, column: 5, scope: !1286, inlinedAt: !1283)
!1290 = !DILocation(line: 317, column: 10, scope: !1269, inlinedAt: !1283)
!1291 = !DILocation(line: 318, column: 12, scope: !1292, inlinedAt: !1283)
!1292 = distinct !DILexicalBlock(scope: !1269, file: !76, line: 318, column: 7)
!1293 = !DILocation(line: 318, column: 7, scope: !1269, inlinedAt: !1283)
!1294 = !DILocation(line: 320, column: 21, scope: !1295, inlinedAt: !1283)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !76, line: 319, column: 5)
!1296 = !DILocation(line: 321, column: 7, scope: !1295, inlinedAt: !1283)
!1297 = !DILocation(line: 322, column: 7, scope: !1295, inlinedAt: !1283)
!1298 = !DILocation(line: 325, column: 9, scope: !1269, inlinedAt: !1283)
!1299 = !DILocalVariable(name: "dirp", arg: 1, scope: !1300, file: !76, line: 285, type: !1275)
!1300 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !76, file: !76, line: 285, type: !1301, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1313)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!1303, !1275}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1305)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !1306, line: 22, size: 2240, elements: !1307)
!1306 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!1307 = !{!1308, !1309, !1310, !1311, !1312}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !1305, file: !1306, line: 25, baseType: !1049, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !1305, file: !1306, line: 26, baseType: !207, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !1305, file: !1306, line: 31, baseType: !118, size: 16, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !1305, file: !1306, line: 32, baseType: !124, size: 8, offset: 144)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1305, file: !1306, line: 33, baseType: !552, size: 2048, offset: 152)
!1313 = !{!1299, !1314}
!1314 = !DILocalVariable(name: "dp", scope: !1315, file: !76, line: 289, type: !1303)
!1315 = distinct !DILexicalBlock(scope: !1300, file: !76, line: 288, column: 5)
!1316 = !DILocation(line: 0, scope: !1300, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 326, column: 20, scope: !1269, inlinedAt: !1283)
!1318 = !DILocation(line: 287, column: 3, scope: !1300, inlinedAt: !1317)
!1319 = !DILocation(line: 289, column: 33, scope: !1315, inlinedAt: !1317)
!1320 = !DILocation(line: 0, scope: !1315, inlinedAt: !1317)
!1321 = !DILocation(line: 290, column: 14, scope: !1322, inlinedAt: !1317)
!1322 = distinct !DILexicalBlock(scope: !1315, file: !76, line: 290, column: 11)
!1323 = !DILocation(line: 290, column: 22, scope: !1322, inlinedAt: !1317)
!1324 = !DILocation(line: 290, column: 46, scope: !1322, inlinedAt: !1317)
!1325 = !DILocalVariable(name: "file_name", arg: 1, scope: !1326, file: !76, line: 272, type: !122)
!1326 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !76, file: !76, line: 272, type: !1327, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1329)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!152, !122}
!1329 = !{!1325, !1330}
!1330 = !DILocalVariable(name: "sep", scope: !1331, file: !76, line: 276, type: !4)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !76, line: 275, column: 5)
!1332 = distinct !DILexicalBlock(scope: !1326, file: !76, line: 274, column: 7)
!1333 = !DILocation(line: 0, scope: !1326, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 290, column: 27, scope: !1322, inlinedAt: !1317)
!1335 = !DILocation(line: 274, column: 7, scope: !1332, inlinedAt: !1334)
!1336 = !DILocation(line: 274, column: 20, scope: !1332, inlinedAt: !1334)
!1337 = !DILocation(line: 274, column: 7, scope: !1326, inlinedAt: !1334)
!1338 = !DILocation(line: 276, column: 29, scope: !1331, inlinedAt: !1334)
!1339 = !DILocation(line: 276, column: 42, scope: !1331, inlinedAt: !1334)
!1340 = !DILocation(line: 276, column: 50, scope: !1331, inlinedAt: !1334)
!1341 = !DILocation(line: 276, column: 18, scope: !1331, inlinedAt: !1334)
!1342 = !DILocation(line: 0, scope: !1331, inlinedAt: !1334)
!1343 = !DILocation(line: 277, column: 17, scope: !1331, inlinedAt: !1334)
!1344 = !DILocation(line: 277, column: 21, scope: !1331, inlinedAt: !1334)
!1345 = !DILocation(line: 290, column: 11, scope: !1315, inlinedAt: !1317)
!1346 = !DILocation(line: 327, column: 17, scope: !1269, inlinedAt: !1283)
!1347 = !DILocation(line: 328, column: 3, scope: !1269, inlinedAt: !1283)
!1348 = !DILocation(line: 329, column: 24, scope: !1269, inlinedAt: !1283)
!1349 = !DILocation(line: 329, column: 3, scope: !1269, inlinedAt: !1283)
!1350 = !DILocation(line: 104, column: 55, scope: !1258)
!1351 = !DILocation(line: 101, column: 3, scope: !1258)
!1352 = !DISubprogram(name: "strrchr", scope: !990, file: !990, line: 273, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1353 = !DISubprogram(name: "stat", scope: !1354, file: !1354, line: 205, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1354 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!77, !859, !1357}
!1357 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1358)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1359 = !DISubprogram(name: "free", scope: !994, file: !994, line: 555, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !117}
!1362 = !DISubprogram(name: "openat", scope: !1363, file: !1363, line: 205, type: !1364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1363 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!77, !77, !122, !77, null}
!1366 = !DISubprogram(name: "fdopendir", scope: !1277, file: !1277, line: 141, type: !1367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1275, !77}
!1369 = !DISubprogram(name: "close", scope: !1253, file: !1253, line: 358, type: !1370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!77, !77}
!1372 = !DISubprogram(name: "readdir", scope: !1277, file: !1277, line: 162, type: !1373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!1375, !1275}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1376 = !DISubprogram(name: "closedir", scope: !1277, file: !1277, line: 149, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!77, !1275}
!1379 = distinct !DISubprogram(name: "prog_fprintf", scope: !383, file: !383, line: 28, type: !1380, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !1416)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !1382, !122, null}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1384, file: !185, line: 51, baseType: !77, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1384, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1384, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1384, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1384, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1384, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1384, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1384, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1384, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1384, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1384, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1384, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1384, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1384, file: !185, line: 70, baseType: !1400, size: 64, offset: 832)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1384, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1384, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1384, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1384, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1384, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1384, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1384, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1384, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1384, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1384, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1384, file: !185, line: 93, baseType: !1400, size: 64, offset: 1344)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1384, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1384, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1384, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1384, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!1416 = !{!1417, !1418, !1419}
!1417 = !DILocalVariable(name: "fp", arg: 1, scope: !1379, file: !383, line: 28, type: !1382)
!1418 = !DILocalVariable(name: "fmt", arg: 2, scope: !1379, file: !383, line: 28, type: !122)
!1419 = !DILocalVariable(name: "ap", scope: !1379, file: !383, line: 30, type: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !864, line: 52, baseType: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1422, line: 14, baseType: !1423)
!1422 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1424, baseType: !1425)
!1424 = !DIFile(filename: "src/prog-fprintf.c", directory: "/src")
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1426, size: 192, elements: !50)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1427)
!1427 = !{!1428, !1429, !1430, !1431}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1426, file: !1424, line: 30, baseType: !72, size: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1426, file: !1424, line: 30, baseType: !72, size: 32, offset: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1426, file: !1424, line: 30, baseType: !117, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1426, file: !1424, line: 30, baseType: !117, size: 64, offset: 128)
!1432 = !DILocation(line: 0, scope: !1379)
!1433 = !DILocation(line: 30, column: 3, scope: !1379)
!1434 = !DILocation(line: 30, column: 11, scope: !1379)
!1435 = !DILocation(line: 31, column: 3, scope: !1379)
!1436 = !DILocation(line: 32, column: 3, scope: !1379)
!1437 = !DILocation(line: 33, column: 3, scope: !1379)
!1438 = !DILocalVariable(name: "__stream", arg: 1, scope: !1439, file: !855, line: 132, type: !1442)
!1439 = distinct !DISubprogram(name: "vfprintf", scope: !855, file: !855, line: 132, type: !1440, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !1444)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!77, !1442, !859, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1382)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1444 = !{!1438, !1445, !1446}
!1445 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1439, file: !855, line: 133, type: !859)
!1446 = !DILocalVariable(name: "__ap", arg: 3, scope: !1439, file: !855, line: 133, type: !1443)
!1447 = !DILocation(line: 0, scope: !1439, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 34, column: 3, scope: !1379)
!1449 = !DILocation(line: 135, column: 10, scope: !1439, inlinedAt: !1448)
!1450 = !DILocation(line: 35, column: 3, scope: !1379)
!1451 = !DILocalVariable(name: "__c", arg: 1, scope: !1452, file: !1453, line: 91, type: !77)
!1452 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1453, file: !1453, line: 91, type: !1454, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !1456)
!1453 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!77, !77, !1382}
!1456 = !{!1451, !1457}
!1457 = !DILocalVariable(name: "__stream", arg: 2, scope: !1452, file: !1453, line: 91, type: !1382)
!1458 = !DILocation(line: 0, scope: !1452, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 36, column: 3, scope: !1379)
!1460 = !DILocation(line: 93, column: 10, scope: !1452, inlinedAt: !1459)
!1461 = !{!1462, !806, i64 40}
!1462 = !{!"_IO_FILE", !870, i64 0, !806, i64 8, !806, i64 16, !806, i64 24, !806, i64 32, !806, i64 40, !806, i64 48, !806, i64 56, !806, i64 64, !806, i64 72, !806, i64 80, !806, i64 88, !806, i64 96, !806, i64 104, !870, i64 112, !870, i64 116, !1147, i64 120, !911, i64 128, !807, i64 130, !807, i64 131, !806, i64 136, !1147, i64 144, !806, i64 152, !806, i64 160, !806, i64 168, !806, i64 176, !1147, i64 184, !870, i64 192, !807, i64 196}
!1463 = !{!1462, !806, i64 48}
!1464 = !{!"branch_weights", i32 2000, i32 1}
!1465 = !DILocation(line: 37, column: 1, scope: !1379)
!1466 = !DISubprogram(name: "__vfprintf_chk", scope: !855, file: !855, line: 96, type: !1467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!77, !1442, !77, !859, !1443}
!1469 = !DISubprogram(name: "__overflow", scope: !864, file: !864, line: 886, type: !1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!77, !1382, !77}
!1472 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !394, file: !394, line: 50, type: !819, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1473)
!1473 = !{!1474}
!1474 = !DILocalVariable(name: "file", arg: 1, scope: !1472, file: !394, line: 50, type: !122)
!1475 = !DILocation(line: 0, scope: !1472)
!1476 = !DILocation(line: 52, column: 13, scope: !1472)
!1477 = !DILocation(line: 53, column: 1, scope: !1472)
!1478 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !394, file: !394, line: 87, type: !1479, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !152}
!1481 = !{!1482}
!1482 = !DILocalVariable(name: "ignore", arg: 1, scope: !1478, file: !394, line: 87, type: !152)
!1483 = !DILocation(line: 0, scope: !1478)
!1484 = !DILocation(line: 89, column: 16, scope: !1478)
!1485 = !{!1486, !1486, i64 0}
!1486 = !{!"_Bool", !807, i64 0}
!1487 = !DILocation(line: 90, column: 1, scope: !1478)
!1488 = distinct !DISubprogram(name: "close_stdout", scope: !394, file: !394, line: 116, type: !456, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1489)
!1489 = !{!1490}
!1490 = !DILocalVariable(name: "write_error", scope: !1491, file: !394, line: 121, type: !122)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !394, line: 120, column: 5)
!1492 = distinct !DILexicalBlock(scope: !1488, file: !394, line: 118, column: 7)
!1493 = !DILocation(line: 118, column: 21, scope: !1492)
!1494 = !DILocation(line: 118, column: 7, scope: !1492)
!1495 = !DILocation(line: 118, column: 29, scope: !1492)
!1496 = !DILocation(line: 119, column: 7, scope: !1492)
!1497 = !DILocation(line: 119, column: 12, scope: !1492)
!1498 = !{i8 0, i8 2}
!1499 = !DILocation(line: 119, column: 25, scope: !1492)
!1500 = !DILocation(line: 119, column: 28, scope: !1492)
!1501 = !DILocation(line: 119, column: 34, scope: !1492)
!1502 = !DILocation(line: 118, column: 7, scope: !1488)
!1503 = !DILocation(line: 121, column: 33, scope: !1491)
!1504 = !DILocation(line: 0, scope: !1491)
!1505 = !DILocation(line: 122, column: 11, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1491, file: !394, line: 122, column: 11)
!1507 = !DILocation(line: 0, scope: !1506)
!1508 = !DILocation(line: 122, column: 11, scope: !1491)
!1509 = !DILocation(line: 123, column: 9, scope: !1506)
!1510 = !DILocation(line: 126, column: 9, scope: !1506)
!1511 = !DILocation(line: 128, column: 14, scope: !1491)
!1512 = !DILocation(line: 128, column: 7, scope: !1491)
!1513 = !DILocation(line: 133, column: 42, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1488, file: !394, line: 133, column: 7)
!1515 = !DILocation(line: 133, column: 28, scope: !1514)
!1516 = !DILocation(line: 133, column: 50, scope: !1514)
!1517 = !DILocation(line: 133, column: 7, scope: !1488)
!1518 = !DILocation(line: 134, column: 12, scope: !1514)
!1519 = !DILocation(line: 134, column: 5, scope: !1514)
!1520 = !DILocation(line: 135, column: 1, scope: !1488)
!1521 = !DISubprogram(name: "_exit", scope: !1253, file: !1253, line: 624, type: !795, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1522 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !720, file: !720, line: 31, type: !1182, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !1523)
!1523 = !{!1524, !1525, !1526, !1527}
!1524 = !DILocalVariable(name: "file", arg: 1, scope: !1522, file: !720, line: 31, type: !116)
!1525 = !DILocalVariable(name: "base", scope: !1522, file: !720, line: 33, type: !116)
!1526 = !DILocalVariable(name: "base_lim", scope: !1522, file: !720, line: 39, type: !116)
!1527 = !DILocalVariable(name: "had_slash", scope: !1522, file: !720, line: 40, type: !152)
!1528 = !DILocation(line: 0, scope: !1522)
!1529 = !DILocation(line: 33, column: 16, scope: !1522)
!1530 = !DILocation(line: 37, column: 9, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1522, file: !720, line: 37, column: 7)
!1532 = !DILocation(line: 37, column: 7, scope: !1522)
!1533 = !DILocation(line: 39, column: 27, scope: !1522)
!1534 = !DILocation(line: 39, column: 25, scope: !1522)
!1535 = !DILocation(line: 40, column: 21, scope: !1522)
!1536 = !DILocation(line: 40, column: 31, scope: !1522)
!1537 = !DILocation(line: 41, column: 13, scope: !1522)
!1538 = !DILocation(line: 42, column: 3, scope: !1522)
!1539 = distinct !DISubprogram(name: "verror", scope: !409, file: !409, line: 251, type: !1540, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !77, !77, !122, !419}
!1542 = !{!1543, !1544, !1545, !1546}
!1543 = !DILocalVariable(name: "status", arg: 1, scope: !1539, file: !409, line: 251, type: !77)
!1544 = !DILocalVariable(name: "errnum", arg: 2, scope: !1539, file: !409, line: 251, type: !77)
!1545 = !DILocalVariable(name: "message", arg: 3, scope: !1539, file: !409, line: 251, type: !122)
!1546 = !DILocalVariable(name: "args", arg: 4, scope: !1539, file: !409, line: 251, type: !419)
!1547 = !DILocation(line: 0, scope: !1539)
!1548 = !DILocation(line: 261, column: 3, scope: !1539)
!1549 = !DILocation(line: 265, column: 7, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1539, file: !409, line: 265, column: 7)
!1551 = !DILocation(line: 265, column: 7, scope: !1539)
!1552 = !DILocation(line: 266, column: 5, scope: !1550)
!1553 = !DILocation(line: 272, column: 7, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !409, line: 268, column: 5)
!1555 = !DILocation(line: 276, column: 3, scope: !1539)
!1556 = !DILocation(line: 282, column: 1, scope: !1539)
!1557 = distinct !DISubprogram(name: "flush_stdout", scope: !409, file: !409, line: 163, type: !456, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1558)
!1558 = !{!1559}
!1559 = !DILocalVariable(name: "stdout_fd", scope: !1557, file: !409, line: 166, type: !77)
!1560 = !DILocation(line: 0, scope: !1557)
!1561 = !DILocalVariable(name: "fd", arg: 1, scope: !1562, file: !409, line: 145, type: !77)
!1562 = distinct !DISubprogram(name: "is_open", scope: !409, file: !409, line: 145, type: !1370, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1563)
!1563 = !{!1561}
!1564 = !DILocation(line: 0, scope: !1562, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 182, column: 25, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1557, file: !409, line: 182, column: 7)
!1567 = !DILocation(line: 157, column: 15, scope: !1562, inlinedAt: !1565)
!1568 = !DILocation(line: 157, column: 12, scope: !1562, inlinedAt: !1565)
!1569 = !DILocation(line: 182, column: 7, scope: !1557)
!1570 = !DILocation(line: 184, column: 5, scope: !1566)
!1571 = !DILocation(line: 185, column: 1, scope: !1557)
!1572 = distinct !DISubprogram(name: "error_tail", scope: !409, file: !409, line: 219, type: !1540, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1573)
!1573 = !{!1574, !1575, !1576, !1577}
!1574 = !DILocalVariable(name: "status", arg: 1, scope: !1572, file: !409, line: 219, type: !77)
!1575 = !DILocalVariable(name: "errnum", arg: 2, scope: !1572, file: !409, line: 219, type: !77)
!1576 = !DILocalVariable(name: "message", arg: 3, scope: !1572, file: !409, line: 219, type: !122)
!1577 = !DILocalVariable(name: "args", arg: 4, scope: !1572, file: !409, line: 219, type: !419)
!1578 = !DILocation(line: 0, scope: !1572)
!1579 = !DILocation(line: 229, column: 13, scope: !1572)
!1580 = !DILocalVariable(name: "__stream", arg: 1, scope: !1581, file: !855, line: 132, type: !1584)
!1581 = distinct !DISubprogram(name: "vfprintf", scope: !855, file: !855, line: 132, type: !1582, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1619)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!77, !1584, !859, !419}
!1584 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1585)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !1587)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !1588)
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1587, file: !185, line: 51, baseType: !77, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1587, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1587, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1587, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1587, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1587, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1587, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1587, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1587, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1587, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1587, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1587, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1587, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1587, file: !185, line: 70, baseType: !1603, size: 64, offset: 832)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1587, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1587, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1587, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1587, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1587, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1587, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1587, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1587, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1587, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1587, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1587, file: !185, line: 93, baseType: !1603, size: 64, offset: 1344)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1587, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1587, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1587, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1587, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!1619 = !{!1580, !1620, !1621}
!1620 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1581, file: !855, line: 133, type: !859)
!1621 = !DILocalVariable(name: "__ap", arg: 3, scope: !1581, file: !855, line: 133, type: !419)
!1622 = !DILocation(line: 0, scope: !1581, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 229, column: 3, scope: !1572)
!1624 = !DILocation(line: 135, column: 10, scope: !1581, inlinedAt: !1623)
!1625 = !DILocation(line: 232, column: 3, scope: !1572)
!1626 = !DILocation(line: 233, column: 7, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1572, file: !409, line: 233, column: 7)
!1628 = !DILocation(line: 233, column: 7, scope: !1572)
!1629 = !DILocalVariable(name: "errnum", arg: 1, scope: !1630, file: !409, line: 188, type: !77)
!1630 = distinct !DISubprogram(name: "print_errno_message", scope: !409, file: !409, line: 188, type: !795, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1631)
!1631 = !{!1629, !1632, !1633}
!1632 = !DILocalVariable(name: "s", scope: !1630, file: !409, line: 190, type: !122)
!1633 = !DILocalVariable(name: "errbuf", scope: !1630, file: !409, line: 193, type: !1634)
!1634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1635)
!1635 = !{!1636}
!1636 = !DISubrange(count: 1024)
!1637 = !DILocation(line: 0, scope: !1630, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 234, column: 5, scope: !1627)
!1639 = !DILocation(line: 193, column: 3, scope: !1630, inlinedAt: !1638)
!1640 = !DILocation(line: 193, column: 8, scope: !1630, inlinedAt: !1638)
!1641 = !DILocation(line: 195, column: 7, scope: !1630, inlinedAt: !1638)
!1642 = !DILocation(line: 207, column: 9, scope: !1643, inlinedAt: !1638)
!1643 = distinct !DILexicalBlock(scope: !1630, file: !409, line: 207, column: 7)
!1644 = !DILocation(line: 207, column: 7, scope: !1630, inlinedAt: !1638)
!1645 = !DILocation(line: 208, column: 9, scope: !1643, inlinedAt: !1638)
!1646 = !DILocation(line: 208, column: 5, scope: !1643, inlinedAt: !1638)
!1647 = !DILocation(line: 214, column: 3, scope: !1630, inlinedAt: !1638)
!1648 = !DILocation(line: 216, column: 1, scope: !1630, inlinedAt: !1638)
!1649 = !DILocation(line: 234, column: 5, scope: !1627)
!1650 = !DILocation(line: 238, column: 3, scope: !1572)
!1651 = !DILocalVariable(name: "__c", arg: 1, scope: !1652, file: !1453, line: 101, type: !77)
!1652 = distinct !DISubprogram(name: "putc_unlocked", scope: !1453, file: !1453, line: 101, type: !1653, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1655)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!77, !77, !1585}
!1655 = !{!1651, !1656}
!1656 = !DILocalVariable(name: "__stream", arg: 2, scope: !1652, file: !1453, line: 101, type: !1585)
!1657 = !DILocation(line: 0, scope: !1652, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 238, column: 3, scope: !1572)
!1659 = !DILocation(line: 103, column: 10, scope: !1652, inlinedAt: !1658)
!1660 = !DILocation(line: 240, column: 3, scope: !1572)
!1661 = !DILocation(line: 241, column: 7, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1572, file: !409, line: 241, column: 7)
!1663 = !DILocation(line: 241, column: 7, scope: !1572)
!1664 = !DILocation(line: 242, column: 5, scope: !1662)
!1665 = !DILocation(line: 243, column: 1, scope: !1572)
!1666 = !DISubprogram(name: "strerror_r", scope: !990, file: !990, line: 444, type: !1667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!116, !77, !116, !119}
!1669 = !DISubprogram(name: "fflush_unlocked", scope: !864, file: !864, line: 239, type: !1670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!77, !1585}
!1672 = !DISubprogram(name: "fcntl", scope: !1363, file: !1363, line: 149, type: !1673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!77, !77, !77, null}
!1675 = distinct !DISubprogram(name: "error", scope: !409, file: !409, line: 285, type: !1676, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1678)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !77, !77, !122, null}
!1678 = !{!1679, !1680, !1681, !1682}
!1679 = !DILocalVariable(name: "status", arg: 1, scope: !1675, file: !409, line: 285, type: !77)
!1680 = !DILocalVariable(name: "errnum", arg: 2, scope: !1675, file: !409, line: 285, type: !77)
!1681 = !DILocalVariable(name: "message", arg: 3, scope: !1675, file: !409, line: 285, type: !122)
!1682 = !DILocalVariable(name: "ap", scope: !1675, file: !409, line: 287, type: !1683)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !864, line: 52, baseType: !1684)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1422, line: 14, baseType: !1685)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !423, baseType: !1686)
!1686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 192, elements: !50)
!1687 = !DILocation(line: 0, scope: !1675)
!1688 = !DILocation(line: 287, column: 3, scope: !1675)
!1689 = !DILocation(line: 287, column: 11, scope: !1675)
!1690 = !DILocation(line: 288, column: 3, scope: !1675)
!1691 = !DILocation(line: 289, column: 3, scope: !1675)
!1692 = !DILocation(line: 290, column: 3, scope: !1675)
!1693 = !DILocation(line: 291, column: 1, scope: !1675)
!1694 = !DILocation(line: 0, scope: !416)
!1695 = !DILocation(line: 302, column: 7, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !416, file: !409, line: 302, column: 7)
!1697 = !DILocation(line: 302, column: 7, scope: !416)
!1698 = !DILocation(line: 307, column: 11, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !409, line: 307, column: 11)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !409, line: 303, column: 5)
!1701 = !DILocation(line: 307, column: 27, scope: !1699)
!1702 = !DILocation(line: 308, column: 11, scope: !1699)
!1703 = !DILocation(line: 308, column: 28, scope: !1699)
!1704 = !DILocation(line: 308, column: 25, scope: !1699)
!1705 = !DILocation(line: 309, column: 15, scope: !1699)
!1706 = !DILocation(line: 309, column: 33, scope: !1699)
!1707 = !DILocation(line: 310, column: 19, scope: !1699)
!1708 = !DILocation(line: 311, column: 22, scope: !1699)
!1709 = !DILocation(line: 311, column: 56, scope: !1699)
!1710 = !DILocation(line: 307, column: 11, scope: !1700)
!1711 = !DILocation(line: 316, column: 21, scope: !1700)
!1712 = !DILocation(line: 317, column: 23, scope: !1700)
!1713 = !DILocation(line: 318, column: 5, scope: !1700)
!1714 = !DILocation(line: 327, column: 3, scope: !416)
!1715 = !DILocation(line: 331, column: 7, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !416, file: !409, line: 331, column: 7)
!1717 = !DILocation(line: 331, column: 7, scope: !416)
!1718 = !DILocation(line: 332, column: 5, scope: !1716)
!1719 = !DILocation(line: 338, column: 7, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !409, line: 334, column: 5)
!1721 = !DILocation(line: 346, column: 3, scope: !416)
!1722 = !DILocation(line: 350, column: 3, scope: !416)
!1723 = !DILocation(line: 356, column: 1, scope: !416)
!1724 = distinct !DISubprogram(name: "error_at_line", scope: !409, file: !409, line: 359, type: !1725, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !1727)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{null, !77, !77, !122, !72, !122, null}
!1727 = !{!1728, !1729, !1730, !1731, !1732, !1733}
!1728 = !DILocalVariable(name: "status", arg: 1, scope: !1724, file: !409, line: 359, type: !77)
!1729 = !DILocalVariable(name: "errnum", arg: 2, scope: !1724, file: !409, line: 359, type: !77)
!1730 = !DILocalVariable(name: "file_name", arg: 3, scope: !1724, file: !409, line: 359, type: !122)
!1731 = !DILocalVariable(name: "line_number", arg: 4, scope: !1724, file: !409, line: 360, type: !72)
!1732 = !DILocalVariable(name: "message", arg: 5, scope: !1724, file: !409, line: 360, type: !122)
!1733 = !DILocalVariable(name: "ap", scope: !1724, file: !409, line: 362, type: !1683)
!1734 = !DILocation(line: 0, scope: !1724)
!1735 = !DILocation(line: 362, column: 3, scope: !1724)
!1736 = !DILocation(line: 362, column: 11, scope: !1724)
!1737 = !DILocation(line: 363, column: 3, scope: !1724)
!1738 = !DILocation(line: 364, column: 3, scope: !1724)
!1739 = !DILocation(line: 366, column: 3, scope: !1724)
!1740 = !DILocation(line: 367, column: 1, scope: !1724)
!1741 = distinct !DISubprogram(name: "getprogname", scope: !722, file: !722, line: 54, type: !1742, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !853)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!122}
!1744 = !DILocation(line: 58, column: 10, scope: !1741)
!1745 = !DILocation(line: 58, column: 3, scope: !1741)
!1746 = distinct !DISubprogram(name: "set_program_name", scope: !461, file: !461, line: 37, type: !819, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1747)
!1747 = !{!1748, !1749, !1750}
!1748 = !DILocalVariable(name: "argv0", arg: 1, scope: !1746, file: !461, line: 37, type: !122)
!1749 = !DILocalVariable(name: "slash", scope: !1746, file: !461, line: 44, type: !122)
!1750 = !DILocalVariable(name: "base", scope: !1746, file: !461, line: 45, type: !122)
!1751 = !DILocation(line: 0, scope: !1746)
!1752 = !DILocation(line: 44, column: 23, scope: !1746)
!1753 = !DILocation(line: 45, column: 22, scope: !1746)
!1754 = !DILocation(line: 46, column: 17, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1746, file: !461, line: 46, column: 7)
!1756 = !DILocation(line: 46, column: 9, scope: !1755)
!1757 = !DILocation(line: 46, column: 25, scope: !1755)
!1758 = !DILocation(line: 46, column: 40, scope: !1755)
!1759 = !DILocalVariable(name: "__s1", arg: 1, scope: !1760, file: !882, line: 974, type: !1018)
!1760 = distinct !DISubprogram(name: "memeq", scope: !882, file: !882, line: 974, type: !1761, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!152, !1018, !1018, !119}
!1763 = !{!1759, !1764, !1765}
!1764 = !DILocalVariable(name: "__s2", arg: 2, scope: !1760, file: !882, line: 974, type: !1018)
!1765 = !DILocalVariable(name: "__n", arg: 3, scope: !1760, file: !882, line: 974, type: !119)
!1766 = !DILocation(line: 0, scope: !1760, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 46, column: 28, scope: !1755)
!1768 = !DILocation(line: 976, column: 11, scope: !1760, inlinedAt: !1767)
!1769 = !DILocation(line: 976, column: 10, scope: !1760, inlinedAt: !1767)
!1770 = !DILocation(line: 46, column: 7, scope: !1746)
!1771 = !DILocation(line: 49, column: 11, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !461, line: 49, column: 11)
!1773 = distinct !DILexicalBlock(scope: !1755, file: !461, line: 47, column: 5)
!1774 = !DILocation(line: 49, column: 36, scope: !1772)
!1775 = !DILocation(line: 49, column: 11, scope: !1773)
!1776 = !DILocation(line: 65, column: 16, scope: !1746)
!1777 = !DILocation(line: 71, column: 27, scope: !1746)
!1778 = !DILocation(line: 74, column: 33, scope: !1746)
!1779 = !DILocation(line: 76, column: 1, scope: !1746)
!1780 = !DILocation(line: 0, scope: !470)
!1781 = !DILocation(line: 40, column: 29, scope: !470)
!1782 = !DILocation(line: 41, column: 19, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !470, file: !471, line: 41, column: 7)
!1784 = !DILocation(line: 41, column: 7, scope: !470)
!1785 = !DILocation(line: 47, column: 3, scope: !470)
!1786 = !DILocation(line: 48, column: 3, scope: !470)
!1787 = !DILocation(line: 48, column: 13, scope: !470)
!1788 = !DILocalVariable(name: "ps", arg: 1, scope: !1789, file: !1790, line: 1135, type: !1793)
!1789 = distinct !DISubprogram(name: "mbszero", scope: !1790, file: !1790, line: 1135, type: !1791, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !1794)
!1790 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !1793}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!1794 = !{!1788}
!1795 = !DILocation(line: 0, scope: !1789, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 48, column: 18, scope: !470)
!1797 = !DILocalVariable(name: "__dest", arg: 1, scope: !1798, file: !1799, line: 57, type: !117)
!1798 = distinct !DISubprogram(name: "memset", scope: !1799, file: !1799, line: 57, type: !1800, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !1802)
!1799 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!117, !117, !77, !119}
!1802 = !{!1797, !1803, !1804}
!1803 = !DILocalVariable(name: "__ch", arg: 2, scope: !1798, file: !1799, line: 57, type: !77)
!1804 = !DILocalVariable(name: "__len", arg: 3, scope: !1798, file: !1799, line: 57, type: !119)
!1805 = !DILocation(line: 0, scope: !1798, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 1137, column: 3, scope: !1789, inlinedAt: !1796)
!1807 = !DILocation(line: 59, column: 10, scope: !1798, inlinedAt: !1806)
!1808 = !DILocation(line: 49, column: 7, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !470, file: !471, line: 49, column: 7)
!1810 = !DILocation(line: 49, column: 39, scope: !1809)
!1811 = !DILocation(line: 49, column: 44, scope: !1809)
!1812 = !DILocation(line: 54, column: 1, scope: !470)
!1813 = !DISubprogram(name: "mbrtoc32", scope: !482, file: !482, line: 57, type: !1814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!119, !1816, !859, !119, !1818}
!1816 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1817)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1793)
!1819 = distinct !DISubprogram(name: "clone_quoting_options", scope: !501, file: !501, line: 113, type: !1820, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !1823)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!1822, !1822}
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!1823 = !{!1824, !1825, !1826}
!1824 = !DILocalVariable(name: "o", arg: 1, scope: !1819, file: !501, line: 113, type: !1822)
!1825 = !DILocalVariable(name: "saved_errno", scope: !1819, file: !501, line: 115, type: !77)
!1826 = !DILocalVariable(name: "p", scope: !1819, file: !501, line: 116, type: !1822)
!1827 = !DILocation(line: 0, scope: !1819)
!1828 = !DILocation(line: 115, column: 21, scope: !1819)
!1829 = !DILocation(line: 116, column: 40, scope: !1819)
!1830 = !DILocation(line: 116, column: 31, scope: !1819)
!1831 = !DILocation(line: 118, column: 9, scope: !1819)
!1832 = !DILocation(line: 119, column: 3, scope: !1819)
!1833 = distinct !DISubprogram(name: "get_quoting_style", scope: !501, file: !501, line: 124, type: !1834, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !1838)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!81, !1836}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!1838 = !{!1839}
!1839 = !DILocalVariable(name: "o", arg: 1, scope: !1833, file: !501, line: 124, type: !1836)
!1840 = !DILocation(line: 0, scope: !1833)
!1841 = !DILocation(line: 126, column: 11, scope: !1833)
!1842 = !DILocation(line: 126, column: 46, scope: !1833)
!1843 = !{!1844, !807, i64 0}
!1844 = !{!"quoting_options", !807, i64 0, !870, i64 4, !807, i64 8, !806, i64 40, !806, i64 48}
!1845 = !DILocation(line: 126, column: 3, scope: !1833)
!1846 = distinct !DISubprogram(name: "set_quoting_style", scope: !501, file: !501, line: 132, type: !1847, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !1822, !81}
!1849 = !{!1850, !1851}
!1850 = !DILocalVariable(name: "o", arg: 1, scope: !1846, file: !501, line: 132, type: !1822)
!1851 = !DILocalVariable(name: "s", arg: 2, scope: !1846, file: !501, line: 132, type: !81)
!1852 = !DILocation(line: 0, scope: !1846)
!1853 = !DILocation(line: 134, column: 4, scope: !1846)
!1854 = !DILocation(line: 134, column: 45, scope: !1846)
!1855 = !DILocation(line: 135, column: 1, scope: !1846)
!1856 = distinct !DISubprogram(name: "set_char_quoting", scope: !501, file: !501, line: 143, type: !1857, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !1859)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!77, !1822, !4, !77}
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1866, !1867}
!1860 = !DILocalVariable(name: "o", arg: 1, scope: !1856, file: !501, line: 143, type: !1822)
!1861 = !DILocalVariable(name: "c", arg: 2, scope: !1856, file: !501, line: 143, type: !4)
!1862 = !DILocalVariable(name: "i", arg: 3, scope: !1856, file: !501, line: 143, type: !77)
!1863 = !DILocalVariable(name: "uc", scope: !1856, file: !501, line: 145, type: !124)
!1864 = !DILocalVariable(name: "p", scope: !1856, file: !501, line: 146, type: !1865)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!1866 = !DILocalVariable(name: "shift", scope: !1856, file: !501, line: 148, type: !77)
!1867 = !DILocalVariable(name: "r", scope: !1856, file: !501, line: 149, type: !72)
!1868 = !DILocation(line: 0, scope: !1856)
!1869 = !DILocation(line: 147, column: 6, scope: !1856)
!1870 = !DILocation(line: 147, column: 41, scope: !1856)
!1871 = !DILocation(line: 147, column: 62, scope: !1856)
!1872 = !DILocation(line: 147, column: 57, scope: !1856)
!1873 = !DILocation(line: 148, column: 15, scope: !1856)
!1874 = !DILocation(line: 149, column: 21, scope: !1856)
!1875 = !DILocation(line: 149, column: 24, scope: !1856)
!1876 = !DILocation(line: 149, column: 34, scope: !1856)
!1877 = !DILocation(line: 150, column: 19, scope: !1856)
!1878 = !DILocation(line: 150, column: 24, scope: !1856)
!1879 = !DILocation(line: 150, column: 6, scope: !1856)
!1880 = !DILocation(line: 151, column: 3, scope: !1856)
!1881 = distinct !DISubprogram(name: "set_quoting_flags", scope: !501, file: !501, line: 159, type: !1882, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !1884)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!77, !1822, !77}
!1884 = !{!1885, !1886, !1887}
!1885 = !DILocalVariable(name: "o", arg: 1, scope: !1881, file: !501, line: 159, type: !1822)
!1886 = !DILocalVariable(name: "i", arg: 2, scope: !1881, file: !501, line: 159, type: !77)
!1887 = !DILocalVariable(name: "r", scope: !1881, file: !501, line: 163, type: !77)
!1888 = !DILocation(line: 0, scope: !1881)
!1889 = !DILocation(line: 161, column: 8, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1881, file: !501, line: 161, column: 7)
!1891 = !DILocation(line: 161, column: 7, scope: !1881)
!1892 = !DILocation(line: 163, column: 14, scope: !1881)
!1893 = !{!1844, !870, i64 4}
!1894 = !DILocation(line: 164, column: 12, scope: !1881)
!1895 = !DILocation(line: 165, column: 3, scope: !1881)
!1896 = distinct !DISubprogram(name: "set_custom_quoting", scope: !501, file: !501, line: 169, type: !1897, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !1899)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{null, !1822, !122, !122}
!1899 = !{!1900, !1901, !1902}
!1900 = !DILocalVariable(name: "o", arg: 1, scope: !1896, file: !501, line: 169, type: !1822)
!1901 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1896, file: !501, line: 170, type: !122)
!1902 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1896, file: !501, line: 170, type: !122)
!1903 = !DILocation(line: 0, scope: !1896)
!1904 = !DILocation(line: 172, column: 8, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1896, file: !501, line: 172, column: 7)
!1906 = !DILocation(line: 172, column: 7, scope: !1896)
!1907 = !DILocation(line: 174, column: 12, scope: !1896)
!1908 = !DILocation(line: 175, column: 8, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1896, file: !501, line: 175, column: 7)
!1910 = !DILocation(line: 175, column: 19, scope: !1909)
!1911 = !DILocation(line: 176, column: 5, scope: !1909)
!1912 = !DILocation(line: 177, column: 6, scope: !1896)
!1913 = !DILocation(line: 177, column: 17, scope: !1896)
!1914 = !{!1844, !806, i64 40}
!1915 = !DILocation(line: 178, column: 6, scope: !1896)
!1916 = !DILocation(line: 178, column: 18, scope: !1896)
!1917 = !{!1844, !806, i64 48}
!1918 = !DILocation(line: 179, column: 1, scope: !1896)
!1919 = !DISubprogram(name: "abort", scope: !994, file: !994, line: 598, type: !456, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1920 = distinct !DISubprogram(name: "quotearg_buffer", scope: !501, file: !501, line: 774, type: !1921, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !1923)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!119, !116, !119, !122, !119, !1836}
!1923 = !{!1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931}
!1924 = !DILocalVariable(name: "buffer", arg: 1, scope: !1920, file: !501, line: 774, type: !116)
!1925 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1920, file: !501, line: 774, type: !119)
!1926 = !DILocalVariable(name: "arg", arg: 3, scope: !1920, file: !501, line: 775, type: !122)
!1927 = !DILocalVariable(name: "argsize", arg: 4, scope: !1920, file: !501, line: 775, type: !119)
!1928 = !DILocalVariable(name: "o", arg: 5, scope: !1920, file: !501, line: 776, type: !1836)
!1929 = !DILocalVariable(name: "p", scope: !1920, file: !501, line: 778, type: !1836)
!1930 = !DILocalVariable(name: "saved_errno", scope: !1920, file: !501, line: 779, type: !77)
!1931 = !DILocalVariable(name: "r", scope: !1920, file: !501, line: 780, type: !119)
!1932 = !DILocation(line: 0, scope: !1920)
!1933 = !DILocation(line: 778, column: 37, scope: !1920)
!1934 = !DILocation(line: 779, column: 21, scope: !1920)
!1935 = !DILocation(line: 781, column: 43, scope: !1920)
!1936 = !DILocation(line: 781, column: 53, scope: !1920)
!1937 = !DILocation(line: 781, column: 63, scope: !1920)
!1938 = !DILocation(line: 782, column: 43, scope: !1920)
!1939 = !DILocation(line: 782, column: 58, scope: !1920)
!1940 = !DILocation(line: 780, column: 14, scope: !1920)
!1941 = !DILocation(line: 783, column: 9, scope: !1920)
!1942 = !DILocation(line: 784, column: 3, scope: !1920)
!1943 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !501, file: !501, line: 251, type: !1944, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !1948)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!119, !116, !119, !122, !119, !81, !77, !1946, !122, !122}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!1948 = !{!1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1973, !1975, !1978, !1979, !1980, !1981, !1984, !1985, !1988, !1992, !1993, !2001, !2004, !2005, !2007, !2008, !2009, !2010}
!1949 = !DILocalVariable(name: "buffer", arg: 1, scope: !1943, file: !501, line: 251, type: !116)
!1950 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1943, file: !501, line: 251, type: !119)
!1951 = !DILocalVariable(name: "arg", arg: 3, scope: !1943, file: !501, line: 252, type: !122)
!1952 = !DILocalVariable(name: "argsize", arg: 4, scope: !1943, file: !501, line: 252, type: !119)
!1953 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1943, file: !501, line: 253, type: !81)
!1954 = !DILocalVariable(name: "flags", arg: 6, scope: !1943, file: !501, line: 253, type: !77)
!1955 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1943, file: !501, line: 254, type: !1946)
!1956 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1943, file: !501, line: 255, type: !122)
!1957 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1943, file: !501, line: 256, type: !122)
!1958 = !DILocalVariable(name: "unibyte_locale", scope: !1943, file: !501, line: 258, type: !152)
!1959 = !DILocalVariable(name: "len", scope: !1943, file: !501, line: 260, type: !119)
!1960 = !DILocalVariable(name: "orig_buffersize", scope: !1943, file: !501, line: 261, type: !119)
!1961 = !DILocalVariable(name: "quote_string", scope: !1943, file: !501, line: 262, type: !122)
!1962 = !DILocalVariable(name: "quote_string_len", scope: !1943, file: !501, line: 263, type: !119)
!1963 = !DILocalVariable(name: "backslash_escapes", scope: !1943, file: !501, line: 264, type: !152)
!1964 = !DILocalVariable(name: "elide_outer_quotes", scope: !1943, file: !501, line: 265, type: !152)
!1965 = !DILocalVariable(name: "encountered_single_quote", scope: !1943, file: !501, line: 266, type: !152)
!1966 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1943, file: !501, line: 267, type: !152)
!1967 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1943, file: !501, line: 309, type: !152)
!1968 = !DILocalVariable(name: "lq", scope: !1969, file: !501, line: 361, type: !122)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !501, line: 361, column: 11)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !501, line: 360, column: 13)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !501, line: 333, column: 7)
!1972 = distinct !DILexicalBlock(scope: !1943, file: !501, line: 312, column: 5)
!1973 = !DILocalVariable(name: "i", scope: !1974, file: !501, line: 395, type: !119)
!1974 = distinct !DILexicalBlock(scope: !1943, file: !501, line: 395, column: 3)
!1975 = !DILocalVariable(name: "is_right_quote", scope: !1976, file: !501, line: 397, type: !152)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !501, line: 396, column: 5)
!1977 = distinct !DILexicalBlock(scope: !1974, file: !501, line: 395, column: 3)
!1978 = !DILocalVariable(name: "escaping", scope: !1976, file: !501, line: 398, type: !152)
!1979 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1976, file: !501, line: 399, type: !152)
!1980 = !DILocalVariable(name: "c", scope: !1976, file: !501, line: 417, type: !124)
!1981 = !DILocalVariable(name: "m", scope: !1982, file: !501, line: 598, type: !119)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !501, line: 596, column: 11)
!1983 = distinct !DILexicalBlock(scope: !1976, file: !501, line: 419, column: 9)
!1984 = !DILocalVariable(name: "printable", scope: !1982, file: !501, line: 600, type: !152)
!1985 = !DILocalVariable(name: "mbs", scope: !1986, file: !501, line: 609, type: !574)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !501, line: 608, column: 15)
!1987 = distinct !DILexicalBlock(scope: !1982, file: !501, line: 602, column: 17)
!1988 = !DILocalVariable(name: "w", scope: !1989, file: !501, line: 618, type: !481)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !501, line: 617, column: 19)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !501, line: 616, column: 17)
!1991 = distinct !DILexicalBlock(scope: !1986, file: !501, line: 616, column: 17)
!1992 = !DILocalVariable(name: "bytes", scope: !1989, file: !501, line: 619, type: !119)
!1993 = !DILocalVariable(name: "j", scope: !1994, file: !501, line: 648, type: !119)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !501, line: 648, column: 29)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !501, line: 647, column: 27)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !501, line: 645, column: 29)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !501, line: 636, column: 23)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !501, line: 628, column: 30)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !501, line: 623, column: 30)
!2000 = distinct !DILexicalBlock(scope: !1989, file: !501, line: 621, column: 25)
!2001 = !DILocalVariable(name: "ilim", scope: !2002, file: !501, line: 674, type: !119)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !501, line: 671, column: 15)
!2003 = distinct !DILexicalBlock(scope: !1982, file: !501, line: 670, column: 17)
!2004 = !DILabel(scope: !1943, name: "process_input", file: !501, line: 308)
!2005 = !DILabel(scope: !2006, name: "c_and_shell_escape", file: !501, line: 502)
!2006 = distinct !DILexicalBlock(scope: !1983, file: !501, line: 478, column: 9)
!2007 = !DILabel(scope: !2006, name: "c_escape", file: !501, line: 507)
!2008 = !DILabel(scope: !1976, name: "store_escape", file: !501, line: 709)
!2009 = !DILabel(scope: !1976, name: "store_c", file: !501, line: 712)
!2010 = !DILabel(scope: !1943, name: "force_outer_quoting_style", file: !501, line: 753)
!2011 = !DILocation(line: 0, scope: !1943)
!2012 = !DILocation(line: 258, column: 25, scope: !1943)
!2013 = !DILocation(line: 258, column: 36, scope: !1943)
!2014 = !DILocation(line: 265, column: 8, scope: !1943)
!2015 = !DILocation(line: 267, column: 3, scope: !1943)
!2016 = !DILocation(line: 261, column: 10, scope: !1943)
!2017 = !DILocation(line: 262, column: 15, scope: !1943)
!2018 = !DILocation(line: 263, column: 10, scope: !1943)
!2019 = !DILocation(line: 264, column: 8, scope: !1943)
!2020 = !DILocation(line: 266, column: 8, scope: !1943)
!2021 = !DILocation(line: 267, column: 8, scope: !1943)
!2022 = !DILocation(line: 308, column: 2, scope: !1943)
!2023 = !DILocation(line: 311, column: 3, scope: !1943)
!2024 = !DILocation(line: 318, column: 11, scope: !1972)
!2025 = !DILocation(line: 318, column: 12, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1972, file: !501, line: 318, column: 11)
!2027 = !DILocation(line: 319, column: 9, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !501, line: 319, column: 9)
!2029 = distinct !DILexicalBlock(scope: !2026, file: !501, line: 319, column: 9)
!2030 = !DILocation(line: 319, column: 9, scope: !2029)
!2031 = !DILocation(line: 0, scope: !565, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 357, column: 26, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !501, line: 335, column: 11)
!2034 = distinct !DILexicalBlock(scope: !1971, file: !501, line: 334, column: 13)
!2035 = !DILocation(line: 199, column: 29, scope: !565, inlinedAt: !2032)
!2036 = !DILocation(line: 201, column: 19, scope: !2037, inlinedAt: !2032)
!2037 = distinct !DILexicalBlock(scope: !565, file: !501, line: 201, column: 7)
!2038 = !DILocation(line: 201, column: 7, scope: !565, inlinedAt: !2032)
!2039 = !DILocation(line: 229, column: 3, scope: !565, inlinedAt: !2032)
!2040 = !DILocation(line: 230, column: 3, scope: !565, inlinedAt: !2032)
!2041 = !DILocation(line: 230, column: 13, scope: !565, inlinedAt: !2032)
!2042 = !DILocalVariable(name: "ps", arg: 1, scope: !2043, file: !1790, line: 1135, type: !2046)
!2043 = distinct !DISubprogram(name: "mbszero", scope: !1790, file: !1790, line: 1135, type: !2044, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2047)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !2046}
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!2047 = !{!2042}
!2048 = !DILocation(line: 0, scope: !2043, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 230, column: 18, scope: !565, inlinedAt: !2032)
!2050 = !DILocalVariable(name: "__dest", arg: 1, scope: !2051, file: !1799, line: 57, type: !117)
!2051 = distinct !DISubprogram(name: "memset", scope: !1799, file: !1799, line: 57, type: !1800, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2052)
!2052 = !{!2050, !2053, !2054}
!2053 = !DILocalVariable(name: "__ch", arg: 2, scope: !2051, file: !1799, line: 57, type: !77)
!2054 = !DILocalVariable(name: "__len", arg: 3, scope: !2051, file: !1799, line: 57, type: !119)
!2055 = !DILocation(line: 0, scope: !2051, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 1137, column: 3, scope: !2043, inlinedAt: !2049)
!2057 = !DILocation(line: 59, column: 10, scope: !2051, inlinedAt: !2056)
!2058 = !DILocation(line: 231, column: 7, scope: !2059, inlinedAt: !2032)
!2059 = distinct !DILexicalBlock(scope: !565, file: !501, line: 231, column: 7)
!2060 = !DILocation(line: 231, column: 40, scope: !2059, inlinedAt: !2032)
!2061 = !DILocation(line: 231, column: 45, scope: !2059, inlinedAt: !2032)
!2062 = !DILocation(line: 235, column: 1, scope: !565, inlinedAt: !2032)
!2063 = !DILocation(line: 0, scope: !565, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 358, column: 27, scope: !2033)
!2065 = !DILocation(line: 199, column: 29, scope: !565, inlinedAt: !2064)
!2066 = !DILocation(line: 201, column: 19, scope: !2037, inlinedAt: !2064)
!2067 = !DILocation(line: 201, column: 7, scope: !565, inlinedAt: !2064)
!2068 = !DILocation(line: 229, column: 3, scope: !565, inlinedAt: !2064)
!2069 = !DILocation(line: 230, column: 3, scope: !565, inlinedAt: !2064)
!2070 = !DILocation(line: 230, column: 13, scope: !565, inlinedAt: !2064)
!2071 = !DILocation(line: 0, scope: !2043, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 230, column: 18, scope: !565, inlinedAt: !2064)
!2073 = !DILocation(line: 0, scope: !2051, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 1137, column: 3, scope: !2043, inlinedAt: !2072)
!2075 = !DILocation(line: 59, column: 10, scope: !2051, inlinedAt: !2074)
!2076 = !DILocation(line: 231, column: 7, scope: !2059, inlinedAt: !2064)
!2077 = !DILocation(line: 231, column: 40, scope: !2059, inlinedAt: !2064)
!2078 = !DILocation(line: 231, column: 45, scope: !2059, inlinedAt: !2064)
!2079 = !DILocation(line: 235, column: 1, scope: !565, inlinedAt: !2064)
!2080 = !DILocation(line: 360, column: 14, scope: !1970)
!2081 = !DILocation(line: 360, column: 13, scope: !1971)
!2082 = !DILocation(line: 0, scope: !1969)
!2083 = !DILocation(line: 361, column: 45, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1969, file: !501, line: 361, column: 11)
!2085 = !DILocation(line: 361, column: 11, scope: !1969)
!2086 = !DILocation(line: 362, column: 13, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !501, line: 362, column: 13)
!2088 = distinct !DILexicalBlock(scope: !2084, file: !501, line: 362, column: 13)
!2089 = !DILocation(line: 362, column: 13, scope: !2088)
!2090 = !DILocation(line: 361, column: 52, scope: !2084)
!2091 = distinct !{!2091, !2085, !2092, !916}
!2092 = !DILocation(line: 362, column: 13, scope: !1969)
!2093 = !DILocation(line: 260, column: 10, scope: !1943)
!2094 = !DILocation(line: 365, column: 28, scope: !1971)
!2095 = !DILocation(line: 367, column: 7, scope: !1972)
!2096 = !DILocation(line: 370, column: 7, scope: !1972)
!2097 = !DILocation(line: 373, column: 7, scope: !1972)
!2098 = !DILocation(line: 376, column: 12, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1972, file: !501, line: 376, column: 11)
!2100 = !DILocation(line: 376, column: 11, scope: !1972)
!2101 = !DILocation(line: 381, column: 12, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1972, file: !501, line: 381, column: 11)
!2103 = !DILocation(line: 381, column: 11, scope: !1972)
!2104 = !DILocation(line: 382, column: 9, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !501, line: 382, column: 9)
!2106 = distinct !DILexicalBlock(scope: !2102, file: !501, line: 382, column: 9)
!2107 = !DILocation(line: 382, column: 9, scope: !2106)
!2108 = !DILocation(line: 389, column: 7, scope: !1972)
!2109 = !DILocation(line: 392, column: 7, scope: !1972)
!2110 = !DILocation(line: 0, scope: !1974)
!2111 = !DILocation(line: 395, column: 8, scope: !1974)
!2112 = !DILocation(line: 309, column: 8, scope: !1943)
!2113 = !DILocation(line: 395, scope: !1974)
!2114 = !DILocation(line: 395, column: 34, scope: !1977)
!2115 = !DILocation(line: 395, column: 26, scope: !1977)
!2116 = !DILocation(line: 395, column: 48, scope: !1977)
!2117 = !DILocation(line: 395, column: 55, scope: !1977)
!2118 = !DILocation(line: 395, column: 3, scope: !1974)
!2119 = !DILocation(line: 395, column: 67, scope: !1977)
!2120 = !DILocation(line: 0, scope: !1976)
!2121 = !DILocation(line: 402, column: 11, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1976, file: !501, line: 401, column: 11)
!2123 = !DILocation(line: 404, column: 17, scope: !2122)
!2124 = !DILocation(line: 405, column: 39, scope: !2122)
!2125 = !DILocation(line: 409, column: 32, scope: !2122)
!2126 = !DILocation(line: 405, column: 19, scope: !2122)
!2127 = !DILocation(line: 405, column: 15, scope: !2122)
!2128 = !DILocation(line: 410, column: 11, scope: !2122)
!2129 = !DILocation(line: 410, column: 25, scope: !2122)
!2130 = !DILocalVariable(name: "__s1", arg: 1, scope: !2131, file: !882, line: 974, type: !1018)
!2131 = distinct !DISubprogram(name: "memeq", scope: !882, file: !882, line: 974, type: !1761, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2132)
!2132 = !{!2130, !2133, !2134}
!2133 = !DILocalVariable(name: "__s2", arg: 2, scope: !2131, file: !882, line: 974, type: !1018)
!2134 = !DILocalVariable(name: "__n", arg: 3, scope: !2131, file: !882, line: 974, type: !119)
!2135 = !DILocation(line: 0, scope: !2131, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 410, column: 14, scope: !2122)
!2137 = !DILocation(line: 976, column: 11, scope: !2131, inlinedAt: !2136)
!2138 = !DILocation(line: 976, column: 10, scope: !2131, inlinedAt: !2136)
!2139 = !DILocation(line: 401, column: 11, scope: !1976)
!2140 = !DILocation(line: 417, column: 25, scope: !1976)
!2141 = !DILocation(line: 418, column: 7, scope: !1976)
!2142 = !DILocation(line: 421, column: 15, scope: !1983)
!2143 = !DILocation(line: 423, column: 15, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !501, line: 423, column: 15)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !501, line: 422, column: 13)
!2146 = distinct !DILexicalBlock(scope: !1983, file: !501, line: 421, column: 15)
!2147 = !DILocation(line: 423, column: 15, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2144, file: !501, line: 423, column: 15)
!2149 = !DILocation(line: 423, column: 15, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !501, line: 423, column: 15)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !501, line: 423, column: 15)
!2152 = distinct !DILexicalBlock(scope: !2148, file: !501, line: 423, column: 15)
!2153 = !DILocation(line: 423, column: 15, scope: !2151)
!2154 = !DILocation(line: 423, column: 15, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !501, line: 423, column: 15)
!2156 = distinct !DILexicalBlock(scope: !2152, file: !501, line: 423, column: 15)
!2157 = !DILocation(line: 423, column: 15, scope: !2156)
!2158 = !DILocation(line: 423, column: 15, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !501, line: 423, column: 15)
!2160 = distinct !DILexicalBlock(scope: !2152, file: !501, line: 423, column: 15)
!2161 = !DILocation(line: 423, column: 15, scope: !2160)
!2162 = !DILocation(line: 423, column: 15, scope: !2152)
!2163 = !DILocation(line: 423, column: 15, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !501, line: 423, column: 15)
!2165 = distinct !DILexicalBlock(scope: !2144, file: !501, line: 423, column: 15)
!2166 = !DILocation(line: 423, column: 15, scope: !2165)
!2167 = !DILocation(line: 431, column: 19, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2145, file: !501, line: 430, column: 19)
!2169 = !DILocation(line: 431, column: 24, scope: !2168)
!2170 = !DILocation(line: 431, column: 28, scope: !2168)
!2171 = !DILocation(line: 431, column: 38, scope: !2168)
!2172 = !DILocation(line: 431, column: 48, scope: !2168)
!2173 = !DILocation(line: 431, column: 59, scope: !2168)
!2174 = !DILocation(line: 433, column: 19, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !501, line: 433, column: 19)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !501, line: 433, column: 19)
!2177 = distinct !DILexicalBlock(scope: !2168, file: !501, line: 432, column: 17)
!2178 = !DILocation(line: 433, column: 19, scope: !2176)
!2179 = !DILocation(line: 434, column: 19, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !501, line: 434, column: 19)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !501, line: 434, column: 19)
!2182 = !DILocation(line: 434, column: 19, scope: !2181)
!2183 = !DILocation(line: 435, column: 17, scope: !2177)
!2184 = !DILocation(line: 442, column: 20, scope: !2146)
!2185 = !DILocation(line: 447, column: 11, scope: !1983)
!2186 = !DILocation(line: 450, column: 19, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !1983, file: !501, line: 448, column: 13)
!2188 = !DILocation(line: 456, column: 19, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2187, file: !501, line: 455, column: 19)
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
!2200 = distinct !DILexicalBlock(scope: !2189, file: !501, line: 458, column: 19)
!2201 = !DILocation(line: 468, column: 21, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !501, line: 468, column: 21)
!2203 = distinct !DILexicalBlock(scope: !2200, file: !501, line: 468, column: 21)
!2204 = !DILocation(line: 468, column: 21, scope: !2203)
!2205 = !DILocation(line: 469, column: 21, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !501, line: 469, column: 21)
!2207 = distinct !DILexicalBlock(scope: !2200, file: !501, line: 469, column: 21)
!2208 = !DILocation(line: 469, column: 21, scope: !2207)
!2209 = !DILocation(line: 470, column: 21, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !501, line: 470, column: 21)
!2211 = distinct !DILexicalBlock(scope: !2200, file: !501, line: 470, column: 21)
!2212 = !DILocation(line: 470, column: 21, scope: !2211)
!2213 = !DILocation(line: 471, column: 21, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !501, line: 471, column: 21)
!2215 = distinct !DILexicalBlock(scope: !2200, file: !501, line: 471, column: 21)
!2216 = !DILocation(line: 471, column: 21, scope: !2215)
!2217 = !DILocation(line: 472, column: 21, scope: !2200)
!2218 = !DILocation(line: 482, column: 33, scope: !2006)
!2219 = !DILocation(line: 483, column: 33, scope: !2006)
!2220 = !DILocation(line: 485, column: 33, scope: !2006)
!2221 = !DILocation(line: 486, column: 33, scope: !2006)
!2222 = !DILocation(line: 487, column: 33, scope: !2006)
!2223 = !DILocation(line: 490, column: 17, scope: !2006)
!2224 = !DILocation(line: 492, column: 21, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !501, line: 491, column: 15)
!2226 = distinct !DILexicalBlock(scope: !2006, file: !501, line: 490, column: 17)
!2227 = !DILocation(line: 499, column: 35, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2006, file: !501, line: 499, column: 17)
!2229 = !DILocation(line: 499, column: 57, scope: !2228)
!2230 = !DILocation(line: 0, scope: !2006)
!2231 = !DILocation(line: 502, column: 11, scope: !2006)
!2232 = !DILocation(line: 504, column: 17, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2006, file: !501, line: 503, column: 17)
!2234 = !DILocation(line: 507, column: 11, scope: !2006)
!2235 = !DILocation(line: 508, column: 17, scope: !2006)
!2236 = !DILocation(line: 517, column: 15, scope: !1983)
!2237 = !DILocation(line: 517, column: 40, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !1983, file: !501, line: 517, column: 15)
!2239 = !DILocation(line: 517, column: 47, scope: !2238)
!2240 = !DILocation(line: 517, column: 18, scope: !2238)
!2241 = !DILocation(line: 521, column: 17, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !1983, file: !501, line: 521, column: 15)
!2243 = !DILocation(line: 521, column: 15, scope: !1983)
!2244 = !DILocation(line: 525, column: 11, scope: !1983)
!2245 = !DILocation(line: 537, column: 15, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !1983, file: !501, line: 536, column: 15)
!2247 = !DILocation(line: 544, column: 15, scope: !1983)
!2248 = !DILocation(line: 546, column: 19, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !501, line: 545, column: 13)
!2250 = distinct !DILexicalBlock(scope: !1983, file: !501, line: 544, column: 15)
!2251 = !DILocation(line: 549, column: 19, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2249, file: !501, line: 549, column: 19)
!2253 = !DILocation(line: 549, column: 30, scope: !2252)
!2254 = !DILocation(line: 558, column: 15, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !501, line: 558, column: 15)
!2256 = distinct !DILexicalBlock(scope: !2249, file: !501, line: 558, column: 15)
!2257 = !DILocation(line: 558, column: 15, scope: !2256)
!2258 = !DILocation(line: 559, column: 15, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !501, line: 559, column: 15)
!2260 = distinct !DILexicalBlock(scope: !2249, file: !501, line: 559, column: 15)
!2261 = !DILocation(line: 559, column: 15, scope: !2260)
!2262 = !DILocation(line: 560, column: 15, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !501, line: 560, column: 15)
!2264 = distinct !DILexicalBlock(scope: !2249, file: !501, line: 560, column: 15)
!2265 = !DILocation(line: 560, column: 15, scope: !2264)
!2266 = !DILocation(line: 562, column: 13, scope: !2249)
!2267 = !DILocation(line: 602, column: 17, scope: !1982)
!2268 = !DILocation(line: 0, scope: !1982)
!2269 = !DILocation(line: 605, column: 29, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !1987, file: !501, line: 603, column: 15)
!2271 = !DILocation(line: 605, column: 27, scope: !2270)
!2272 = !DILocation(line: 668, column: 40, scope: !1982)
!2273 = !DILocation(line: 670, column: 23, scope: !2003)
!2274 = !DILocation(line: 609, column: 17, scope: !1986)
!2275 = !DILocation(line: 609, column: 27, scope: !1986)
!2276 = !DILocation(line: 0, scope: !2043, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 609, column: 32, scope: !1986)
!2278 = !DILocation(line: 0, scope: !2051, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 1137, column: 3, scope: !2043, inlinedAt: !2277)
!2280 = !DILocation(line: 59, column: 10, scope: !2051, inlinedAt: !2279)
!2281 = !DILocation(line: 613, column: 29, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !1986, file: !501, line: 613, column: 21)
!2283 = !DILocation(line: 613, column: 21, scope: !1986)
!2284 = !DILocation(line: 614, column: 29, scope: !2282)
!2285 = !DILocation(line: 614, column: 19, scope: !2282)
!2286 = !DILocation(line: 618, column: 21, scope: !1989)
!2287 = !DILocation(line: 620, column: 54, scope: !1989)
!2288 = !DILocation(line: 0, scope: !1989)
!2289 = !DILocation(line: 619, column: 36, scope: !1989)
!2290 = !DILocation(line: 621, column: 25, scope: !1989)
!2291 = !DILocation(line: 631, column: 38, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !1998, file: !501, line: 629, column: 23)
!2293 = !DILocation(line: 631, column: 48, scope: !2292)
!2294 = !DILocation(line: 665, column: 19, scope: !1990)
!2295 = !DILocation(line: 666, column: 15, scope: !1987)
!2296 = !DILocation(line: 626, column: 25, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !1999, file: !501, line: 624, column: 23)
!2298 = !DILocation(line: 631, column: 51, scope: !2292)
!2299 = !DILocation(line: 631, column: 25, scope: !2292)
!2300 = !DILocation(line: 632, column: 28, scope: !2292)
!2301 = !DILocation(line: 631, column: 34, scope: !2292)
!2302 = distinct !{!2302, !2299, !2300, !916}
!2303 = !DILocation(line: 646, column: 29, scope: !1996)
!2304 = !DILocation(line: 0, scope: !1994)
!2305 = !DILocation(line: 649, column: 49, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !1994, file: !501, line: 648, column: 29)
!2307 = !DILocation(line: 649, column: 39, scope: !2306)
!2308 = !DILocation(line: 649, column: 31, scope: !2306)
!2309 = !DILocation(line: 648, column: 60, scope: !2306)
!2310 = !DILocation(line: 648, column: 50, scope: !2306)
!2311 = !DILocation(line: 648, column: 29, scope: !1994)
!2312 = distinct !{!2312, !2311, !2313, !916}
!2313 = !DILocation(line: 654, column: 33, scope: !1994)
!2314 = !DILocation(line: 657, column: 43, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !1997, file: !501, line: 657, column: 29)
!2316 = !DILocalVariable(name: "wc", arg: 1, scope: !2317, file: !2318, line: 865, type: !2321)
!2317 = distinct !DISubprogram(name: "c32isprint", scope: !2318, file: !2318, line: 865, type: !2319, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2323)
!2318 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!77, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2322, line: 20, baseType: !72)
!2322 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2323 = !{!2316}
!2324 = !DILocation(line: 0, scope: !2317, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 657, column: 31, scope: !2315)
!2326 = !DILocation(line: 871, column: 10, scope: !2317, inlinedAt: !2325)
!2327 = !DILocation(line: 657, column: 31, scope: !2315)
!2328 = !DILocation(line: 657, column: 29, scope: !1997)
!2329 = !DILocation(line: 664, column: 23, scope: !1989)
!2330 = !DILocation(line: 670, column: 19, scope: !2003)
!2331 = !DILocation(line: 670, column: 45, scope: !2003)
!2332 = !DILocation(line: 674, column: 33, scope: !2002)
!2333 = !DILocation(line: 0, scope: !2002)
!2334 = !DILocation(line: 676, column: 17, scope: !2002)
!2335 = !DILocation(line: 398, column: 12, scope: !1976)
!2336 = !DILocation(line: 678, column: 43, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !501, line: 678, column: 25)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !501, line: 677, column: 19)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !501, line: 676, column: 17)
!2340 = distinct !DILexicalBlock(scope: !2002, file: !501, line: 676, column: 17)
!2341 = !DILocation(line: 680, column: 25, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !501, line: 680, column: 25)
!2343 = distinct !DILexicalBlock(scope: !2337, file: !501, line: 679, column: 23)
!2344 = !DILocation(line: 680, column: 25, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2342, file: !501, line: 680, column: 25)
!2346 = !DILocation(line: 680, column: 25, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !501, line: 680, column: 25)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !501, line: 680, column: 25)
!2349 = distinct !DILexicalBlock(scope: !2345, file: !501, line: 680, column: 25)
!2350 = !DILocation(line: 680, column: 25, scope: !2348)
!2351 = !DILocation(line: 680, column: 25, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !501, line: 680, column: 25)
!2353 = distinct !DILexicalBlock(scope: !2349, file: !501, line: 680, column: 25)
!2354 = !DILocation(line: 680, column: 25, scope: !2353)
!2355 = !DILocation(line: 680, column: 25, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !501, line: 680, column: 25)
!2357 = distinct !DILexicalBlock(scope: !2349, file: !501, line: 680, column: 25)
!2358 = !DILocation(line: 680, column: 25, scope: !2357)
!2359 = !DILocation(line: 680, column: 25, scope: !2349)
!2360 = !DILocation(line: 680, column: 25, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !501, line: 680, column: 25)
!2362 = distinct !DILexicalBlock(scope: !2342, file: !501, line: 680, column: 25)
!2363 = !DILocation(line: 680, column: 25, scope: !2362)
!2364 = !DILocation(line: 681, column: 25, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !501, line: 681, column: 25)
!2366 = distinct !DILexicalBlock(scope: !2343, file: !501, line: 681, column: 25)
!2367 = !DILocation(line: 681, column: 25, scope: !2366)
!2368 = !DILocation(line: 682, column: 25, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !501, line: 682, column: 25)
!2370 = distinct !DILexicalBlock(scope: !2343, file: !501, line: 682, column: 25)
!2371 = !DILocation(line: 682, column: 25, scope: !2370)
!2372 = !DILocation(line: 683, column: 38, scope: !2343)
!2373 = !DILocation(line: 683, column: 33, scope: !2343)
!2374 = !DILocation(line: 684, column: 23, scope: !2343)
!2375 = !DILocation(line: 685, column: 30, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2337, file: !501, line: 685, column: 30)
!2377 = !DILocation(line: 685, column: 30, scope: !2337)
!2378 = !DILocation(line: 687, column: 25, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !501, line: 687, column: 25)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !501, line: 687, column: 25)
!2381 = distinct !DILexicalBlock(scope: !2376, file: !501, line: 686, column: 23)
!2382 = !DILocation(line: 687, column: 25, scope: !2380)
!2383 = !DILocation(line: 689, column: 23, scope: !2381)
!2384 = !DILocation(line: 690, column: 35, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2338, file: !501, line: 690, column: 25)
!2386 = !DILocation(line: 690, column: 30, scope: !2385)
!2387 = !DILocation(line: 690, column: 25, scope: !2338)
!2388 = !DILocation(line: 692, column: 21, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !501, line: 692, column: 21)
!2390 = distinct !DILexicalBlock(scope: !2338, file: !501, line: 692, column: 21)
!2391 = !DILocation(line: 692, column: 21, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !501, line: 692, column: 21)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !501, line: 692, column: 21)
!2394 = distinct !DILexicalBlock(scope: !2389, file: !501, line: 692, column: 21)
!2395 = !DILocation(line: 692, column: 21, scope: !2393)
!2396 = !DILocation(line: 692, column: 21, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !501, line: 692, column: 21)
!2398 = distinct !DILexicalBlock(scope: !2394, file: !501, line: 692, column: 21)
!2399 = !DILocation(line: 692, column: 21, scope: !2398)
!2400 = !DILocation(line: 692, column: 21, scope: !2394)
!2401 = !DILocation(line: 0, scope: !2338)
!2402 = !DILocation(line: 693, column: 21, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !501, line: 693, column: 21)
!2404 = distinct !DILexicalBlock(scope: !2338, file: !501, line: 693, column: 21)
!2405 = !DILocation(line: 693, column: 21, scope: !2404)
!2406 = !DILocation(line: 694, column: 25, scope: !2338)
!2407 = !DILocation(line: 676, column: 17, scope: !2339)
!2408 = distinct !{!2408, !2409, !2410}
!2409 = !DILocation(line: 676, column: 17, scope: !2340)
!2410 = !DILocation(line: 695, column: 19, scope: !2340)
!2411 = !DILocation(line: 409, column: 30, scope: !2122)
!2412 = !DILocation(line: 702, column: 34, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !1976, file: !501, line: 702, column: 11)
!2414 = !DILocation(line: 704, column: 14, scope: !2413)
!2415 = !DILocation(line: 705, column: 14, scope: !2413)
!2416 = !DILocation(line: 705, column: 35, scope: !2413)
!2417 = !DILocation(line: 705, column: 17, scope: !2413)
!2418 = !DILocation(line: 705, column: 47, scope: !2413)
!2419 = !DILocation(line: 705, column: 65, scope: !2413)
!2420 = !DILocation(line: 706, column: 11, scope: !2413)
!2421 = !DILocation(line: 702, column: 11, scope: !1976)
!2422 = !DILocation(line: 395, column: 15, scope: !1974)
!2423 = !DILocation(line: 709, column: 5, scope: !1976)
!2424 = !DILocation(line: 710, column: 7, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !1976, file: !501, line: 710, column: 7)
!2426 = !DILocation(line: 710, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2425, file: !501, line: 710, column: 7)
!2428 = !DILocation(line: 710, column: 7, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !501, line: 710, column: 7)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !501, line: 710, column: 7)
!2431 = distinct !DILexicalBlock(scope: !2427, file: !501, line: 710, column: 7)
!2432 = !DILocation(line: 710, column: 7, scope: !2430)
!2433 = !DILocation(line: 710, column: 7, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !501, line: 710, column: 7)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !501, line: 710, column: 7)
!2436 = !DILocation(line: 710, column: 7, scope: !2435)
!2437 = !DILocation(line: 710, column: 7, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !501, line: 710, column: 7)
!2439 = distinct !DILexicalBlock(scope: !2431, file: !501, line: 710, column: 7)
!2440 = !DILocation(line: 710, column: 7, scope: !2439)
!2441 = !DILocation(line: 710, column: 7, scope: !2431)
!2442 = !DILocation(line: 710, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !501, line: 710, column: 7)
!2444 = distinct !DILexicalBlock(scope: !2425, file: !501, line: 710, column: 7)
!2445 = !DILocation(line: 710, column: 7, scope: !2444)
!2446 = !DILocation(line: 712, column: 5, scope: !1976)
!2447 = !DILocation(line: 713, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !501, line: 713, column: 7)
!2449 = distinct !DILexicalBlock(scope: !1976, file: !501, line: 713, column: 7)
!2450 = !DILocation(line: 417, column: 21, scope: !1976)
!2451 = !DILocation(line: 713, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !501, line: 713, column: 7)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !501, line: 713, column: 7)
!2454 = distinct !DILexicalBlock(scope: !2448, file: !501, line: 713, column: 7)
!2455 = !DILocation(line: 713, column: 7, scope: !2453)
!2456 = !DILocation(line: 713, column: 7, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !501, line: 713, column: 7)
!2458 = distinct !DILexicalBlock(scope: !2454, file: !501, line: 713, column: 7)
!2459 = !DILocation(line: 713, column: 7, scope: !2458)
!2460 = !DILocation(line: 713, column: 7, scope: !2454)
!2461 = !DILocation(line: 714, column: 7, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !501, line: 714, column: 7)
!2463 = distinct !DILexicalBlock(scope: !1976, file: !501, line: 714, column: 7)
!2464 = !DILocation(line: 714, column: 7, scope: !2463)
!2465 = !DILocation(line: 716, column: 13, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !1976, file: !501, line: 716, column: 11)
!2467 = !DILocation(line: 716, column: 11, scope: !1976)
!2468 = !DILocation(line: 718, column: 5, scope: !1977)
!2469 = !DILocation(line: 395, column: 82, scope: !1977)
!2470 = !DILocation(line: 395, column: 3, scope: !1977)
!2471 = distinct !{!2471, !2118, !2472, !916}
!2472 = !DILocation(line: 718, column: 5, scope: !1974)
!2473 = !DILocation(line: 720, column: 11, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !1943, file: !501, line: 720, column: 7)
!2475 = !DILocation(line: 720, column: 16, scope: !2474)
!2476 = !DILocation(line: 728, column: 51, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !1943, file: !501, line: 728, column: 7)
!2478 = !DILocation(line: 731, column: 11, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !501, line: 731, column: 11)
!2480 = distinct !DILexicalBlock(scope: !2477, file: !501, line: 730, column: 5)
!2481 = !DILocation(line: 731, column: 11, scope: !2480)
!2482 = !DILocation(line: 732, column: 16, scope: !2479)
!2483 = !DILocation(line: 732, column: 9, scope: !2479)
!2484 = !DILocation(line: 736, column: 18, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2479, file: !501, line: 736, column: 16)
!2486 = !DILocation(line: 736, column: 29, scope: !2485)
!2487 = !DILocation(line: 745, column: 7, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !1943, file: !501, line: 745, column: 7)
!2489 = !DILocation(line: 745, column: 20, scope: !2488)
!2490 = !DILocation(line: 746, column: 12, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !501, line: 746, column: 5)
!2492 = distinct !DILexicalBlock(scope: !2488, file: !501, line: 746, column: 5)
!2493 = !DILocation(line: 746, column: 5, scope: !2492)
!2494 = !DILocation(line: 747, column: 7, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !501, line: 747, column: 7)
!2496 = distinct !DILexicalBlock(scope: !2491, file: !501, line: 747, column: 7)
!2497 = !DILocation(line: 747, column: 7, scope: !2496)
!2498 = !DILocation(line: 746, column: 39, scope: !2491)
!2499 = distinct !{!2499, !2493, !2500, !916}
!2500 = !DILocation(line: 747, column: 7, scope: !2492)
!2501 = !DILocation(line: 749, column: 11, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !1943, file: !501, line: 749, column: 7)
!2503 = !DILocation(line: 749, column: 7, scope: !1943)
!2504 = !DILocation(line: 750, column: 5, scope: !2502)
!2505 = !DILocation(line: 750, column: 17, scope: !2502)
!2506 = !DILocation(line: 753, column: 2, scope: !1943)
!2507 = !DILocation(line: 756, column: 51, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !1943, file: !501, line: 756, column: 7)
!2509 = !DILocation(line: 756, column: 21, scope: !2508)
!2510 = !DILocation(line: 760, column: 42, scope: !1943)
!2511 = !DILocation(line: 758, column: 10, scope: !1943)
!2512 = !DILocation(line: 758, column: 3, scope: !1943)
!2513 = !DILocation(line: 762, column: 1, scope: !1943)
!2514 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !994, file: !994, line: 98, type: !2515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!119}
!2517 = !DISubprogram(name: "strlen", scope: !990, file: !990, line: 407, type: !2518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!121, !122}
!2520 = !DISubprogram(name: "iswprint", scope: !2521, file: !2521, line: 120, type: !2319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2521 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2522 = distinct !DISubprogram(name: "quotearg_alloc", scope: !501, file: !501, line: 788, type: !2523, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!116, !122, !119, !1836}
!2525 = !{!2526, !2527, !2528}
!2526 = !DILocalVariable(name: "arg", arg: 1, scope: !2522, file: !501, line: 788, type: !122)
!2527 = !DILocalVariable(name: "argsize", arg: 2, scope: !2522, file: !501, line: 788, type: !119)
!2528 = !DILocalVariable(name: "o", arg: 3, scope: !2522, file: !501, line: 789, type: !1836)
!2529 = !DILocation(line: 0, scope: !2522)
!2530 = !DILocalVariable(name: "arg", arg: 1, scope: !2531, file: !501, line: 801, type: !122)
!2531 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !501, file: !501, line: 801, type: !2532, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!116, !122, !119, !737, !1836}
!2534 = !{!2530, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542}
!2535 = !DILocalVariable(name: "argsize", arg: 2, scope: !2531, file: !501, line: 801, type: !119)
!2536 = !DILocalVariable(name: "size", arg: 3, scope: !2531, file: !501, line: 801, type: !737)
!2537 = !DILocalVariable(name: "o", arg: 4, scope: !2531, file: !501, line: 802, type: !1836)
!2538 = !DILocalVariable(name: "p", scope: !2531, file: !501, line: 804, type: !1836)
!2539 = !DILocalVariable(name: "saved_errno", scope: !2531, file: !501, line: 805, type: !77)
!2540 = !DILocalVariable(name: "flags", scope: !2531, file: !501, line: 807, type: !77)
!2541 = !DILocalVariable(name: "bufsize", scope: !2531, file: !501, line: 808, type: !119)
!2542 = !DILocalVariable(name: "buf", scope: !2531, file: !501, line: 812, type: !116)
!2543 = !DILocation(line: 0, scope: !2531, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 791, column: 10, scope: !2522)
!2545 = !DILocation(line: 804, column: 37, scope: !2531, inlinedAt: !2544)
!2546 = !DILocation(line: 805, column: 21, scope: !2531, inlinedAt: !2544)
!2547 = !DILocation(line: 807, column: 18, scope: !2531, inlinedAt: !2544)
!2548 = !DILocation(line: 807, column: 24, scope: !2531, inlinedAt: !2544)
!2549 = !DILocation(line: 808, column: 72, scope: !2531, inlinedAt: !2544)
!2550 = !DILocation(line: 809, column: 56, scope: !2531, inlinedAt: !2544)
!2551 = !DILocation(line: 810, column: 49, scope: !2531, inlinedAt: !2544)
!2552 = !DILocation(line: 811, column: 49, scope: !2531, inlinedAt: !2544)
!2553 = !DILocation(line: 808, column: 20, scope: !2531, inlinedAt: !2544)
!2554 = !DILocation(line: 811, column: 62, scope: !2531, inlinedAt: !2544)
!2555 = !DILocation(line: 812, column: 15, scope: !2531, inlinedAt: !2544)
!2556 = !DILocation(line: 813, column: 60, scope: !2531, inlinedAt: !2544)
!2557 = !DILocation(line: 815, column: 32, scope: !2531, inlinedAt: !2544)
!2558 = !DILocation(line: 815, column: 47, scope: !2531, inlinedAt: !2544)
!2559 = !DILocation(line: 813, column: 3, scope: !2531, inlinedAt: !2544)
!2560 = !DILocation(line: 816, column: 9, scope: !2531, inlinedAt: !2544)
!2561 = !DILocation(line: 791, column: 3, scope: !2522)
!2562 = !DILocation(line: 0, scope: !2531)
!2563 = !DILocation(line: 804, column: 37, scope: !2531)
!2564 = !DILocation(line: 805, column: 21, scope: !2531)
!2565 = !DILocation(line: 807, column: 18, scope: !2531)
!2566 = !DILocation(line: 807, column: 27, scope: !2531)
!2567 = !DILocation(line: 807, column: 24, scope: !2531)
!2568 = !DILocation(line: 808, column: 72, scope: !2531)
!2569 = !DILocation(line: 809, column: 56, scope: !2531)
!2570 = !DILocation(line: 810, column: 49, scope: !2531)
!2571 = !DILocation(line: 811, column: 49, scope: !2531)
!2572 = !DILocation(line: 808, column: 20, scope: !2531)
!2573 = !DILocation(line: 811, column: 62, scope: !2531)
!2574 = !DILocation(line: 812, column: 15, scope: !2531)
!2575 = !DILocation(line: 813, column: 60, scope: !2531)
!2576 = !DILocation(line: 815, column: 32, scope: !2531)
!2577 = !DILocation(line: 815, column: 47, scope: !2531)
!2578 = !DILocation(line: 813, column: 3, scope: !2531)
!2579 = !DILocation(line: 816, column: 9, scope: !2531)
!2580 = !DILocation(line: 817, column: 7, scope: !2531)
!2581 = !DILocation(line: 818, column: 11, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2531, file: !501, line: 817, column: 7)
!2583 = !{!1147, !1147, i64 0}
!2584 = !DILocation(line: 818, column: 5, scope: !2582)
!2585 = !DILocation(line: 819, column: 3, scope: !2531)
!2586 = distinct !DISubprogram(name: "quotearg_free", scope: !501, file: !501, line: 837, type: !456, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2587)
!2587 = !{!2588, !2589}
!2588 = !DILocalVariable(name: "sv", scope: !2586, file: !501, line: 839, type: !588)
!2589 = !DILocalVariable(name: "i", scope: !2590, file: !501, line: 840, type: !77)
!2590 = distinct !DILexicalBlock(scope: !2586, file: !501, line: 840, column: 3)
!2591 = !DILocation(line: 839, column: 24, scope: !2586)
!2592 = !DILocation(line: 0, scope: !2586)
!2593 = !DILocation(line: 0, scope: !2590)
!2594 = !DILocation(line: 840, column: 21, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2590, file: !501, line: 840, column: 3)
!2596 = !DILocation(line: 840, column: 3, scope: !2590)
!2597 = !DILocation(line: 842, column: 13, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2586, file: !501, line: 842, column: 7)
!2599 = !{!2600, !806, i64 8}
!2600 = !{!"slotvec", !1147, i64 0, !806, i64 8}
!2601 = !DILocation(line: 842, column: 17, scope: !2598)
!2602 = !DILocation(line: 842, column: 7, scope: !2586)
!2603 = !DILocation(line: 841, column: 17, scope: !2595)
!2604 = !DILocation(line: 841, column: 5, scope: !2595)
!2605 = !DILocation(line: 840, column: 32, scope: !2595)
!2606 = distinct !{!2606, !2596, !2607, !916}
!2607 = !DILocation(line: 841, column: 20, scope: !2590)
!2608 = !DILocation(line: 844, column: 7, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2598, file: !501, line: 843, column: 5)
!2610 = !DILocation(line: 845, column: 21, scope: !2609)
!2611 = !{!2600, !1147, i64 0}
!2612 = !DILocation(line: 846, column: 20, scope: !2609)
!2613 = !DILocation(line: 847, column: 5, scope: !2609)
!2614 = !DILocation(line: 848, column: 10, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2586, file: !501, line: 848, column: 7)
!2616 = !DILocation(line: 848, column: 7, scope: !2586)
!2617 = !DILocation(line: 850, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2615, file: !501, line: 849, column: 5)
!2619 = !DILocation(line: 851, column: 15, scope: !2618)
!2620 = !DILocation(line: 852, column: 5, scope: !2618)
!2621 = !DILocation(line: 853, column: 10, scope: !2586)
!2622 = !DILocation(line: 854, column: 1, scope: !2586)
!2623 = distinct !DISubprogram(name: "quotearg_n", scope: !501, file: !501, line: 919, type: !987, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2624)
!2624 = !{!2625, !2626}
!2625 = !DILocalVariable(name: "n", arg: 1, scope: !2623, file: !501, line: 919, type: !77)
!2626 = !DILocalVariable(name: "arg", arg: 2, scope: !2623, file: !501, line: 919, type: !122)
!2627 = !DILocation(line: 0, scope: !2623)
!2628 = !DILocation(line: 921, column: 10, scope: !2623)
!2629 = !DILocation(line: 921, column: 3, scope: !2623)
!2630 = distinct !DISubprogram(name: "quotearg_n_options", scope: !501, file: !501, line: 866, type: !2631, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!116, !77, !122, !119, !1836}
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2644, !2645, !2647, !2648, !2649}
!2634 = !DILocalVariable(name: "n", arg: 1, scope: !2630, file: !501, line: 866, type: !77)
!2635 = !DILocalVariable(name: "arg", arg: 2, scope: !2630, file: !501, line: 866, type: !122)
!2636 = !DILocalVariable(name: "argsize", arg: 3, scope: !2630, file: !501, line: 866, type: !119)
!2637 = !DILocalVariable(name: "options", arg: 4, scope: !2630, file: !501, line: 867, type: !1836)
!2638 = !DILocalVariable(name: "saved_errno", scope: !2630, file: !501, line: 869, type: !77)
!2639 = !DILocalVariable(name: "sv", scope: !2630, file: !501, line: 871, type: !588)
!2640 = !DILocalVariable(name: "nslots_max", scope: !2630, file: !501, line: 873, type: !77)
!2641 = !DILocalVariable(name: "preallocated", scope: !2642, file: !501, line: 879, type: !152)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !501, line: 878, column: 5)
!2643 = distinct !DILexicalBlock(scope: !2630, file: !501, line: 877, column: 7)
!2644 = !DILocalVariable(name: "new_nslots", scope: !2642, file: !501, line: 880, type: !750)
!2645 = !DILocalVariable(name: "size", scope: !2646, file: !501, line: 891, type: !119)
!2646 = distinct !DILexicalBlock(scope: !2630, file: !501, line: 890, column: 3)
!2647 = !DILocalVariable(name: "val", scope: !2646, file: !501, line: 892, type: !116)
!2648 = !DILocalVariable(name: "flags", scope: !2646, file: !501, line: 894, type: !77)
!2649 = !DILocalVariable(name: "qsize", scope: !2646, file: !501, line: 895, type: !119)
!2650 = !DILocation(line: 0, scope: !2630)
!2651 = !DILocation(line: 869, column: 21, scope: !2630)
!2652 = !DILocation(line: 871, column: 24, scope: !2630)
!2653 = !DILocation(line: 874, column: 17, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2630, file: !501, line: 874, column: 7)
!2655 = !DILocation(line: 875, column: 5, scope: !2654)
!2656 = !DILocation(line: 877, column: 7, scope: !2643)
!2657 = !DILocation(line: 877, column: 14, scope: !2643)
!2658 = !DILocation(line: 877, column: 7, scope: !2630)
!2659 = !DILocation(line: 879, column: 31, scope: !2642)
!2660 = !DILocation(line: 0, scope: !2642)
!2661 = !DILocation(line: 880, column: 7, scope: !2642)
!2662 = !DILocation(line: 880, column: 26, scope: !2642)
!2663 = !DILocation(line: 880, column: 13, scope: !2642)
!2664 = !DILocation(line: 882, column: 31, scope: !2642)
!2665 = !DILocation(line: 883, column: 33, scope: !2642)
!2666 = !DILocation(line: 883, column: 42, scope: !2642)
!2667 = !DILocation(line: 883, column: 31, scope: !2642)
!2668 = !DILocation(line: 882, column: 22, scope: !2642)
!2669 = !DILocation(line: 882, column: 15, scope: !2642)
!2670 = !DILocation(line: 884, column: 11, scope: !2642)
!2671 = !DILocation(line: 885, column: 15, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2642, file: !501, line: 884, column: 11)
!2673 = !{i64 0, i64 8, !2583, i64 8, i64 8, !805}
!2674 = !DILocation(line: 885, column: 9, scope: !2672)
!2675 = !DILocation(line: 886, column: 20, scope: !2642)
!2676 = !DILocation(line: 886, column: 18, scope: !2642)
!2677 = !DILocation(line: 886, column: 32, scope: !2642)
!2678 = !DILocation(line: 886, column: 43, scope: !2642)
!2679 = !DILocation(line: 886, column: 53, scope: !2642)
!2680 = !DILocation(line: 0, scope: !2051, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 886, column: 7, scope: !2642)
!2682 = !DILocation(line: 59, column: 10, scope: !2051, inlinedAt: !2681)
!2683 = !DILocation(line: 887, column: 16, scope: !2642)
!2684 = !DILocation(line: 887, column: 14, scope: !2642)
!2685 = !DILocation(line: 888, column: 5, scope: !2643)
!2686 = !DILocation(line: 888, column: 5, scope: !2642)
!2687 = !DILocation(line: 891, column: 19, scope: !2646)
!2688 = !DILocation(line: 891, column: 25, scope: !2646)
!2689 = !DILocation(line: 0, scope: !2646)
!2690 = !DILocation(line: 892, column: 23, scope: !2646)
!2691 = !DILocation(line: 894, column: 26, scope: !2646)
!2692 = !DILocation(line: 894, column: 32, scope: !2646)
!2693 = !DILocation(line: 896, column: 55, scope: !2646)
!2694 = !DILocation(line: 897, column: 55, scope: !2646)
!2695 = !DILocation(line: 898, column: 55, scope: !2646)
!2696 = !DILocation(line: 899, column: 55, scope: !2646)
!2697 = !DILocation(line: 895, column: 20, scope: !2646)
!2698 = !DILocation(line: 901, column: 14, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2646, file: !501, line: 901, column: 9)
!2700 = !DILocation(line: 901, column: 9, scope: !2646)
!2701 = !DILocation(line: 903, column: 35, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2699, file: !501, line: 902, column: 7)
!2703 = !DILocation(line: 903, column: 20, scope: !2702)
!2704 = !DILocation(line: 904, column: 17, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2702, file: !501, line: 904, column: 13)
!2706 = !DILocation(line: 904, column: 13, scope: !2702)
!2707 = !DILocation(line: 905, column: 11, scope: !2705)
!2708 = !DILocation(line: 906, column: 27, scope: !2702)
!2709 = !DILocation(line: 906, column: 19, scope: !2702)
!2710 = !DILocation(line: 907, column: 69, scope: !2702)
!2711 = !DILocation(line: 909, column: 44, scope: !2702)
!2712 = !DILocation(line: 910, column: 44, scope: !2702)
!2713 = !DILocation(line: 907, column: 9, scope: !2702)
!2714 = !DILocation(line: 911, column: 7, scope: !2702)
!2715 = !DILocation(line: 913, column: 11, scope: !2646)
!2716 = !DILocation(line: 914, column: 5, scope: !2646)
!2717 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !501, file: !501, line: 925, type: !2718, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!116, !77, !122, !119}
!2720 = !{!2721, !2722, !2723}
!2721 = !DILocalVariable(name: "n", arg: 1, scope: !2717, file: !501, line: 925, type: !77)
!2722 = !DILocalVariable(name: "arg", arg: 2, scope: !2717, file: !501, line: 925, type: !122)
!2723 = !DILocalVariable(name: "argsize", arg: 3, scope: !2717, file: !501, line: 925, type: !119)
!2724 = !DILocation(line: 0, scope: !2717)
!2725 = !DILocation(line: 927, column: 10, scope: !2717)
!2726 = !DILocation(line: 927, column: 3, scope: !2717)
!2727 = distinct !DISubprogram(name: "quotearg", scope: !501, file: !501, line: 931, type: !996, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2728)
!2728 = !{!2729}
!2729 = !DILocalVariable(name: "arg", arg: 1, scope: !2727, file: !501, line: 931, type: !122)
!2730 = !DILocation(line: 0, scope: !2727)
!2731 = !DILocation(line: 0, scope: !2623, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 933, column: 10, scope: !2727)
!2733 = !DILocation(line: 921, column: 10, scope: !2623, inlinedAt: !2732)
!2734 = !DILocation(line: 933, column: 3, scope: !2727)
!2735 = distinct !DISubprogram(name: "quotearg_mem", scope: !501, file: !501, line: 937, type: !2736, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!116, !122, !119}
!2738 = !{!2739, !2740}
!2739 = !DILocalVariable(name: "arg", arg: 1, scope: !2735, file: !501, line: 937, type: !122)
!2740 = !DILocalVariable(name: "argsize", arg: 2, scope: !2735, file: !501, line: 937, type: !119)
!2741 = !DILocation(line: 0, scope: !2735)
!2742 = !DILocation(line: 0, scope: !2717, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 939, column: 10, scope: !2735)
!2744 = !DILocation(line: 927, column: 10, scope: !2717, inlinedAt: !2743)
!2745 = !DILocation(line: 939, column: 3, scope: !2735)
!2746 = distinct !DISubprogram(name: "quotearg_n_style", scope: !501, file: !501, line: 943, type: !2747, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!116, !77, !81, !122}
!2749 = !{!2750, !2751, !2752, !2753}
!2750 = !DILocalVariable(name: "n", arg: 1, scope: !2746, file: !501, line: 943, type: !77)
!2751 = !DILocalVariable(name: "s", arg: 2, scope: !2746, file: !501, line: 943, type: !81)
!2752 = !DILocalVariable(name: "arg", arg: 3, scope: !2746, file: !501, line: 943, type: !122)
!2753 = !DILocalVariable(name: "o", scope: !2746, file: !501, line: 945, type: !1837)
!2754 = !DILocation(line: 0, scope: !2746)
!2755 = !DILocation(line: 945, column: 3, scope: !2746)
!2756 = !DILocation(line: 945, column: 32, scope: !2746)
!2757 = !{!2758}
!2758 = distinct !{!2758, !2759, !"quoting_options_from_style: argument 0"}
!2759 = distinct !{!2759, !"quoting_options_from_style"}
!2760 = !DILocation(line: 945, column: 36, scope: !2746)
!2761 = !DILocalVariable(name: "style", arg: 1, scope: !2762, file: !501, line: 183, type: !81)
!2762 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !501, file: !501, line: 183, type: !2763, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2765)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!540, !81}
!2765 = !{!2761, !2766}
!2766 = !DILocalVariable(name: "o", scope: !2762, file: !501, line: 185, type: !540)
!2767 = !DILocation(line: 0, scope: !2762, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 945, column: 36, scope: !2746)
!2769 = !DILocation(line: 185, column: 26, scope: !2762, inlinedAt: !2768)
!2770 = !DILocation(line: 186, column: 13, scope: !2771, inlinedAt: !2768)
!2771 = distinct !DILexicalBlock(scope: !2762, file: !501, line: 186, column: 7)
!2772 = !DILocation(line: 186, column: 7, scope: !2762, inlinedAt: !2768)
!2773 = !DILocation(line: 187, column: 5, scope: !2771, inlinedAt: !2768)
!2774 = !DILocation(line: 188, column: 11, scope: !2762, inlinedAt: !2768)
!2775 = !DILocation(line: 946, column: 10, scope: !2746)
!2776 = !DILocation(line: 947, column: 1, scope: !2746)
!2777 = !DILocation(line: 946, column: 3, scope: !2746)
!2778 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !501, file: !501, line: 950, type: !2779, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2781)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!116, !77, !81, !122, !119}
!2781 = !{!2782, !2783, !2784, !2785, !2786}
!2782 = !DILocalVariable(name: "n", arg: 1, scope: !2778, file: !501, line: 950, type: !77)
!2783 = !DILocalVariable(name: "s", arg: 2, scope: !2778, file: !501, line: 950, type: !81)
!2784 = !DILocalVariable(name: "arg", arg: 3, scope: !2778, file: !501, line: 951, type: !122)
!2785 = !DILocalVariable(name: "argsize", arg: 4, scope: !2778, file: !501, line: 951, type: !119)
!2786 = !DILocalVariable(name: "o", scope: !2778, file: !501, line: 953, type: !1837)
!2787 = !DILocation(line: 0, scope: !2778)
!2788 = !DILocation(line: 953, column: 3, scope: !2778)
!2789 = !DILocation(line: 953, column: 32, scope: !2778)
!2790 = !{!2791}
!2791 = distinct !{!2791, !2792, !"quoting_options_from_style: argument 0"}
!2792 = distinct !{!2792, !"quoting_options_from_style"}
!2793 = !DILocation(line: 953, column: 36, scope: !2778)
!2794 = !DILocation(line: 0, scope: !2762, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 953, column: 36, scope: !2778)
!2796 = !DILocation(line: 185, column: 26, scope: !2762, inlinedAt: !2795)
!2797 = !DILocation(line: 186, column: 13, scope: !2771, inlinedAt: !2795)
!2798 = !DILocation(line: 186, column: 7, scope: !2762, inlinedAt: !2795)
!2799 = !DILocation(line: 187, column: 5, scope: !2771, inlinedAt: !2795)
!2800 = !DILocation(line: 188, column: 11, scope: !2762, inlinedAt: !2795)
!2801 = !DILocation(line: 954, column: 10, scope: !2778)
!2802 = !DILocation(line: 955, column: 1, scope: !2778)
!2803 = !DILocation(line: 954, column: 3, scope: !2778)
!2804 = distinct !DISubprogram(name: "quotearg_style", scope: !501, file: !501, line: 958, type: !2805, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!116, !81, !122}
!2807 = !{!2808, !2809}
!2808 = !DILocalVariable(name: "s", arg: 1, scope: !2804, file: !501, line: 958, type: !81)
!2809 = !DILocalVariable(name: "arg", arg: 2, scope: !2804, file: !501, line: 958, type: !122)
!2810 = !DILocation(line: 0, scope: !2804)
!2811 = !DILocation(line: 0, scope: !2746, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 960, column: 10, scope: !2804)
!2813 = !DILocation(line: 945, column: 3, scope: !2746, inlinedAt: !2812)
!2814 = !DILocation(line: 945, column: 32, scope: !2746, inlinedAt: !2812)
!2815 = !{!2816}
!2816 = distinct !{!2816, !2817, !"quoting_options_from_style: argument 0"}
!2817 = distinct !{!2817, !"quoting_options_from_style"}
!2818 = !DILocation(line: 945, column: 36, scope: !2746, inlinedAt: !2812)
!2819 = !DILocation(line: 0, scope: !2762, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 945, column: 36, scope: !2746, inlinedAt: !2812)
!2821 = !DILocation(line: 185, column: 26, scope: !2762, inlinedAt: !2820)
!2822 = !DILocation(line: 186, column: 13, scope: !2771, inlinedAt: !2820)
!2823 = !DILocation(line: 186, column: 7, scope: !2762, inlinedAt: !2820)
!2824 = !DILocation(line: 187, column: 5, scope: !2771, inlinedAt: !2820)
!2825 = !DILocation(line: 188, column: 11, scope: !2762, inlinedAt: !2820)
!2826 = !DILocation(line: 946, column: 10, scope: !2746, inlinedAt: !2812)
!2827 = !DILocation(line: 947, column: 1, scope: !2746, inlinedAt: !2812)
!2828 = !DILocation(line: 960, column: 3, scope: !2804)
!2829 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !501, file: !501, line: 964, type: !2830, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!116, !81, !122, !119}
!2832 = !{!2833, !2834, !2835}
!2833 = !DILocalVariable(name: "s", arg: 1, scope: !2829, file: !501, line: 964, type: !81)
!2834 = !DILocalVariable(name: "arg", arg: 2, scope: !2829, file: !501, line: 964, type: !122)
!2835 = !DILocalVariable(name: "argsize", arg: 3, scope: !2829, file: !501, line: 964, type: !119)
!2836 = !DILocation(line: 0, scope: !2829)
!2837 = !DILocation(line: 0, scope: !2778, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 966, column: 10, scope: !2829)
!2839 = !DILocation(line: 953, column: 3, scope: !2778, inlinedAt: !2838)
!2840 = !DILocation(line: 953, column: 32, scope: !2778, inlinedAt: !2838)
!2841 = !{!2842}
!2842 = distinct !{!2842, !2843, !"quoting_options_from_style: argument 0"}
!2843 = distinct !{!2843, !"quoting_options_from_style"}
!2844 = !DILocation(line: 953, column: 36, scope: !2778, inlinedAt: !2838)
!2845 = !DILocation(line: 0, scope: !2762, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 953, column: 36, scope: !2778, inlinedAt: !2838)
!2847 = !DILocation(line: 185, column: 26, scope: !2762, inlinedAt: !2846)
!2848 = !DILocation(line: 186, column: 13, scope: !2771, inlinedAt: !2846)
!2849 = !DILocation(line: 186, column: 7, scope: !2762, inlinedAt: !2846)
!2850 = !DILocation(line: 187, column: 5, scope: !2771, inlinedAt: !2846)
!2851 = !DILocation(line: 188, column: 11, scope: !2762, inlinedAt: !2846)
!2852 = !DILocation(line: 954, column: 10, scope: !2778, inlinedAt: !2838)
!2853 = !DILocation(line: 955, column: 1, scope: !2778, inlinedAt: !2838)
!2854 = !DILocation(line: 966, column: 3, scope: !2829)
!2855 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !501, file: !501, line: 970, type: !2856, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!116, !122, !119, !4}
!2858 = !{!2859, !2860, !2861, !2862}
!2859 = !DILocalVariable(name: "arg", arg: 1, scope: !2855, file: !501, line: 970, type: !122)
!2860 = !DILocalVariable(name: "argsize", arg: 2, scope: !2855, file: !501, line: 970, type: !119)
!2861 = !DILocalVariable(name: "ch", arg: 3, scope: !2855, file: !501, line: 970, type: !4)
!2862 = !DILocalVariable(name: "options", scope: !2855, file: !501, line: 972, type: !540)
!2863 = !DILocation(line: 0, scope: !2855)
!2864 = !DILocation(line: 972, column: 3, scope: !2855)
!2865 = !DILocation(line: 972, column: 26, scope: !2855)
!2866 = !DILocation(line: 973, column: 13, scope: !2855)
!2867 = !{i64 0, i64 4, !878, i64 4, i64 4, !869, i64 8, i64 32, !878, i64 40, i64 8, !805, i64 48, i64 8, !805}
!2868 = !DILocation(line: 0, scope: !1856, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 974, column: 3, scope: !2855)
!2870 = !DILocation(line: 147, column: 41, scope: !1856, inlinedAt: !2869)
!2871 = !DILocation(line: 147, column: 62, scope: !1856, inlinedAt: !2869)
!2872 = !DILocation(line: 147, column: 57, scope: !1856, inlinedAt: !2869)
!2873 = !DILocation(line: 148, column: 15, scope: !1856, inlinedAt: !2869)
!2874 = !DILocation(line: 149, column: 21, scope: !1856, inlinedAt: !2869)
!2875 = !DILocation(line: 149, column: 24, scope: !1856, inlinedAt: !2869)
!2876 = !DILocation(line: 150, column: 19, scope: !1856, inlinedAt: !2869)
!2877 = !DILocation(line: 150, column: 24, scope: !1856, inlinedAt: !2869)
!2878 = !DILocation(line: 150, column: 6, scope: !1856, inlinedAt: !2869)
!2879 = !DILocation(line: 975, column: 10, scope: !2855)
!2880 = !DILocation(line: 976, column: 1, scope: !2855)
!2881 = !DILocation(line: 975, column: 3, scope: !2855)
!2882 = distinct !DISubprogram(name: "quotearg_char", scope: !501, file: !501, line: 979, type: !2883, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!116, !122, !4}
!2885 = !{!2886, !2887}
!2886 = !DILocalVariable(name: "arg", arg: 1, scope: !2882, file: !501, line: 979, type: !122)
!2887 = !DILocalVariable(name: "ch", arg: 2, scope: !2882, file: !501, line: 979, type: !4)
!2888 = !DILocation(line: 0, scope: !2882)
!2889 = !DILocation(line: 0, scope: !2855, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 981, column: 10, scope: !2882)
!2891 = !DILocation(line: 972, column: 3, scope: !2855, inlinedAt: !2890)
!2892 = !DILocation(line: 972, column: 26, scope: !2855, inlinedAt: !2890)
!2893 = !DILocation(line: 973, column: 13, scope: !2855, inlinedAt: !2890)
!2894 = !DILocation(line: 0, scope: !1856, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 974, column: 3, scope: !2855, inlinedAt: !2890)
!2896 = !DILocation(line: 147, column: 41, scope: !1856, inlinedAt: !2895)
!2897 = !DILocation(line: 147, column: 62, scope: !1856, inlinedAt: !2895)
!2898 = !DILocation(line: 147, column: 57, scope: !1856, inlinedAt: !2895)
!2899 = !DILocation(line: 148, column: 15, scope: !1856, inlinedAt: !2895)
!2900 = !DILocation(line: 149, column: 21, scope: !1856, inlinedAt: !2895)
!2901 = !DILocation(line: 149, column: 24, scope: !1856, inlinedAt: !2895)
!2902 = !DILocation(line: 150, column: 19, scope: !1856, inlinedAt: !2895)
!2903 = !DILocation(line: 150, column: 24, scope: !1856, inlinedAt: !2895)
!2904 = !DILocation(line: 150, column: 6, scope: !1856, inlinedAt: !2895)
!2905 = !DILocation(line: 975, column: 10, scope: !2855, inlinedAt: !2890)
!2906 = !DILocation(line: 976, column: 1, scope: !2855, inlinedAt: !2890)
!2907 = !DILocation(line: 981, column: 3, scope: !2882)
!2908 = distinct !DISubprogram(name: "quotearg_colon", scope: !501, file: !501, line: 985, type: !996, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2909)
!2909 = !{!2910}
!2910 = !DILocalVariable(name: "arg", arg: 1, scope: !2908, file: !501, line: 985, type: !122)
!2911 = !DILocation(line: 0, scope: !2908)
!2912 = !DILocation(line: 0, scope: !2882, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 987, column: 10, scope: !2908)
!2914 = !DILocation(line: 0, scope: !2855, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 981, column: 10, scope: !2882, inlinedAt: !2913)
!2916 = !DILocation(line: 972, column: 3, scope: !2855, inlinedAt: !2915)
!2917 = !DILocation(line: 972, column: 26, scope: !2855, inlinedAt: !2915)
!2918 = !DILocation(line: 973, column: 13, scope: !2855, inlinedAt: !2915)
!2919 = !DILocation(line: 0, scope: !1856, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 974, column: 3, scope: !2855, inlinedAt: !2915)
!2921 = !DILocation(line: 147, column: 57, scope: !1856, inlinedAt: !2920)
!2922 = !DILocation(line: 149, column: 21, scope: !1856, inlinedAt: !2920)
!2923 = !DILocation(line: 150, column: 6, scope: !1856, inlinedAt: !2920)
!2924 = !DILocation(line: 975, column: 10, scope: !2855, inlinedAt: !2915)
!2925 = !DILocation(line: 976, column: 1, scope: !2855, inlinedAt: !2915)
!2926 = !DILocation(line: 987, column: 3, scope: !2908)
!2927 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !501, file: !501, line: 991, type: !2736, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2928)
!2928 = !{!2929, !2930}
!2929 = !DILocalVariable(name: "arg", arg: 1, scope: !2927, file: !501, line: 991, type: !122)
!2930 = !DILocalVariable(name: "argsize", arg: 2, scope: !2927, file: !501, line: 991, type: !119)
!2931 = !DILocation(line: 0, scope: !2927)
!2932 = !DILocation(line: 0, scope: !2855, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 993, column: 10, scope: !2927)
!2934 = !DILocation(line: 972, column: 3, scope: !2855, inlinedAt: !2933)
!2935 = !DILocation(line: 972, column: 26, scope: !2855, inlinedAt: !2933)
!2936 = !DILocation(line: 973, column: 13, scope: !2855, inlinedAt: !2933)
!2937 = !DILocation(line: 0, scope: !1856, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 974, column: 3, scope: !2855, inlinedAt: !2933)
!2939 = !DILocation(line: 147, column: 57, scope: !1856, inlinedAt: !2938)
!2940 = !DILocation(line: 149, column: 21, scope: !1856, inlinedAt: !2938)
!2941 = !DILocation(line: 150, column: 6, scope: !1856, inlinedAt: !2938)
!2942 = !DILocation(line: 975, column: 10, scope: !2855, inlinedAt: !2933)
!2943 = !DILocation(line: 976, column: 1, scope: !2855, inlinedAt: !2933)
!2944 = !DILocation(line: 993, column: 3, scope: !2927)
!2945 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !501, file: !501, line: 997, type: !2747, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2946)
!2946 = !{!2947, !2948, !2949, !2950}
!2947 = !DILocalVariable(name: "n", arg: 1, scope: !2945, file: !501, line: 997, type: !77)
!2948 = !DILocalVariable(name: "s", arg: 2, scope: !2945, file: !501, line: 997, type: !81)
!2949 = !DILocalVariable(name: "arg", arg: 3, scope: !2945, file: !501, line: 997, type: !122)
!2950 = !DILocalVariable(name: "options", scope: !2945, file: !501, line: 999, type: !540)
!2951 = !DILocation(line: 185, column: 26, scope: !2762, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 1000, column: 13, scope: !2945)
!2953 = !DILocation(line: 0, scope: !2945)
!2954 = !DILocation(line: 999, column: 3, scope: !2945)
!2955 = !DILocation(line: 999, column: 26, scope: !2945)
!2956 = !DILocation(line: 0, scope: !2762, inlinedAt: !2952)
!2957 = !DILocation(line: 186, column: 13, scope: !2771, inlinedAt: !2952)
!2958 = !DILocation(line: 186, column: 7, scope: !2762, inlinedAt: !2952)
!2959 = !DILocation(line: 187, column: 5, scope: !2771, inlinedAt: !2952)
!2960 = !{!2961}
!2961 = distinct !{!2961, !2962, !"quoting_options_from_style: argument 0"}
!2962 = distinct !{!2962, !"quoting_options_from_style"}
!2963 = !DILocation(line: 1000, column: 13, scope: !2945)
!2964 = !DILocation(line: 0, scope: !1856, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 1001, column: 3, scope: !2945)
!2966 = !DILocation(line: 147, column: 57, scope: !1856, inlinedAt: !2965)
!2967 = !DILocation(line: 149, column: 21, scope: !1856, inlinedAt: !2965)
!2968 = !DILocation(line: 150, column: 6, scope: !1856, inlinedAt: !2965)
!2969 = !DILocation(line: 1002, column: 10, scope: !2945)
!2970 = !DILocation(line: 1003, column: 1, scope: !2945)
!2971 = !DILocation(line: 1002, column: 3, scope: !2945)
!2972 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !501, file: !501, line: 1006, type: !2973, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2975)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!116, !77, !122, !122, !122}
!2975 = !{!2976, !2977, !2978, !2979}
!2976 = !DILocalVariable(name: "n", arg: 1, scope: !2972, file: !501, line: 1006, type: !77)
!2977 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2972, file: !501, line: 1006, type: !122)
!2978 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2972, file: !501, line: 1007, type: !122)
!2979 = !DILocalVariable(name: "arg", arg: 4, scope: !2972, file: !501, line: 1007, type: !122)
!2980 = !DILocation(line: 0, scope: !2972)
!2981 = !DILocalVariable(name: "n", arg: 1, scope: !2982, file: !501, line: 1014, type: !77)
!2982 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !501, file: !501, line: 1014, type: !2983, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !2985)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!116, !77, !122, !122, !122, !119}
!2985 = !{!2981, !2986, !2987, !2988, !2989, !2990}
!2986 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2982, file: !501, line: 1014, type: !122)
!2987 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2982, file: !501, line: 1015, type: !122)
!2988 = !DILocalVariable(name: "arg", arg: 4, scope: !2982, file: !501, line: 1016, type: !122)
!2989 = !DILocalVariable(name: "argsize", arg: 5, scope: !2982, file: !501, line: 1016, type: !119)
!2990 = !DILocalVariable(name: "o", scope: !2982, file: !501, line: 1018, type: !540)
!2991 = !DILocation(line: 0, scope: !2982, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 1009, column: 10, scope: !2972)
!2993 = !DILocation(line: 1018, column: 3, scope: !2982, inlinedAt: !2992)
!2994 = !DILocation(line: 1018, column: 26, scope: !2982, inlinedAt: !2992)
!2995 = !DILocation(line: 1018, column: 30, scope: !2982, inlinedAt: !2992)
!2996 = !DILocation(line: 0, scope: !1896, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 1019, column: 3, scope: !2982, inlinedAt: !2992)
!2998 = !DILocation(line: 174, column: 12, scope: !1896, inlinedAt: !2997)
!2999 = !DILocation(line: 175, column: 8, scope: !1909, inlinedAt: !2997)
!3000 = !DILocation(line: 175, column: 19, scope: !1909, inlinedAt: !2997)
!3001 = !DILocation(line: 176, column: 5, scope: !1909, inlinedAt: !2997)
!3002 = !DILocation(line: 177, column: 6, scope: !1896, inlinedAt: !2997)
!3003 = !DILocation(line: 177, column: 17, scope: !1896, inlinedAt: !2997)
!3004 = !DILocation(line: 178, column: 6, scope: !1896, inlinedAt: !2997)
!3005 = !DILocation(line: 178, column: 18, scope: !1896, inlinedAt: !2997)
!3006 = !DILocation(line: 1020, column: 10, scope: !2982, inlinedAt: !2992)
!3007 = !DILocation(line: 1021, column: 1, scope: !2982, inlinedAt: !2992)
!3008 = !DILocation(line: 1009, column: 3, scope: !2972)
!3009 = !DILocation(line: 0, scope: !2982)
!3010 = !DILocation(line: 1018, column: 3, scope: !2982)
!3011 = !DILocation(line: 1018, column: 26, scope: !2982)
!3012 = !DILocation(line: 1018, column: 30, scope: !2982)
!3013 = !DILocation(line: 0, scope: !1896, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 1019, column: 3, scope: !2982)
!3015 = !DILocation(line: 174, column: 12, scope: !1896, inlinedAt: !3014)
!3016 = !DILocation(line: 175, column: 8, scope: !1909, inlinedAt: !3014)
!3017 = !DILocation(line: 175, column: 19, scope: !1909, inlinedAt: !3014)
!3018 = !DILocation(line: 176, column: 5, scope: !1909, inlinedAt: !3014)
!3019 = !DILocation(line: 177, column: 6, scope: !1896, inlinedAt: !3014)
!3020 = !DILocation(line: 177, column: 17, scope: !1896, inlinedAt: !3014)
!3021 = !DILocation(line: 178, column: 6, scope: !1896, inlinedAt: !3014)
!3022 = !DILocation(line: 178, column: 18, scope: !1896, inlinedAt: !3014)
!3023 = !DILocation(line: 1020, column: 10, scope: !2982)
!3024 = !DILocation(line: 1021, column: 1, scope: !2982)
!3025 = !DILocation(line: 1020, column: 3, scope: !2982)
!3026 = distinct !DISubprogram(name: "quotearg_custom", scope: !501, file: !501, line: 1024, type: !3027, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!116, !122, !122, !122}
!3029 = !{!3030, !3031, !3032}
!3030 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3026, file: !501, line: 1024, type: !122)
!3031 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3026, file: !501, line: 1024, type: !122)
!3032 = !DILocalVariable(name: "arg", arg: 3, scope: !3026, file: !501, line: 1025, type: !122)
!3033 = !DILocation(line: 0, scope: !3026)
!3034 = !DILocation(line: 0, scope: !2972, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 1027, column: 10, scope: !3026)
!3036 = !DILocation(line: 0, scope: !2982, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 1009, column: 10, scope: !2972, inlinedAt: !3035)
!3038 = !DILocation(line: 1018, column: 3, scope: !2982, inlinedAt: !3037)
!3039 = !DILocation(line: 1018, column: 26, scope: !2982, inlinedAt: !3037)
!3040 = !DILocation(line: 1018, column: 30, scope: !2982, inlinedAt: !3037)
!3041 = !DILocation(line: 0, scope: !1896, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 1019, column: 3, scope: !2982, inlinedAt: !3037)
!3043 = !DILocation(line: 174, column: 12, scope: !1896, inlinedAt: !3042)
!3044 = !DILocation(line: 175, column: 8, scope: !1909, inlinedAt: !3042)
!3045 = !DILocation(line: 175, column: 19, scope: !1909, inlinedAt: !3042)
!3046 = !DILocation(line: 176, column: 5, scope: !1909, inlinedAt: !3042)
!3047 = !DILocation(line: 177, column: 6, scope: !1896, inlinedAt: !3042)
!3048 = !DILocation(line: 177, column: 17, scope: !1896, inlinedAt: !3042)
!3049 = !DILocation(line: 178, column: 6, scope: !1896, inlinedAt: !3042)
!3050 = !DILocation(line: 178, column: 18, scope: !1896, inlinedAt: !3042)
!3051 = !DILocation(line: 1020, column: 10, scope: !2982, inlinedAt: !3037)
!3052 = !DILocation(line: 1021, column: 1, scope: !2982, inlinedAt: !3037)
!3053 = !DILocation(line: 1027, column: 3, scope: !3026)
!3054 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !501, file: !501, line: 1031, type: !3055, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3057)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!116, !122, !122, !122, !119}
!3057 = !{!3058, !3059, !3060, !3061}
!3058 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3054, file: !501, line: 1031, type: !122)
!3059 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3054, file: !501, line: 1031, type: !122)
!3060 = !DILocalVariable(name: "arg", arg: 3, scope: !3054, file: !501, line: 1032, type: !122)
!3061 = !DILocalVariable(name: "argsize", arg: 4, scope: !3054, file: !501, line: 1032, type: !119)
!3062 = !DILocation(line: 0, scope: !3054)
!3063 = !DILocation(line: 0, scope: !2982, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 1034, column: 10, scope: !3054)
!3065 = !DILocation(line: 1018, column: 3, scope: !2982, inlinedAt: !3064)
!3066 = !DILocation(line: 1018, column: 26, scope: !2982, inlinedAt: !3064)
!3067 = !DILocation(line: 1018, column: 30, scope: !2982, inlinedAt: !3064)
!3068 = !DILocation(line: 0, scope: !1896, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 1019, column: 3, scope: !2982, inlinedAt: !3064)
!3070 = !DILocation(line: 174, column: 12, scope: !1896, inlinedAt: !3069)
!3071 = !DILocation(line: 175, column: 8, scope: !1909, inlinedAt: !3069)
!3072 = !DILocation(line: 175, column: 19, scope: !1909, inlinedAt: !3069)
!3073 = !DILocation(line: 176, column: 5, scope: !1909, inlinedAt: !3069)
!3074 = !DILocation(line: 177, column: 6, scope: !1896, inlinedAt: !3069)
!3075 = !DILocation(line: 177, column: 17, scope: !1896, inlinedAt: !3069)
!3076 = !DILocation(line: 178, column: 6, scope: !1896, inlinedAt: !3069)
!3077 = !DILocation(line: 178, column: 18, scope: !1896, inlinedAt: !3069)
!3078 = !DILocation(line: 1020, column: 10, scope: !2982, inlinedAt: !3064)
!3079 = !DILocation(line: 1021, column: 1, scope: !2982, inlinedAt: !3064)
!3080 = !DILocation(line: 1034, column: 3, scope: !3054)
!3081 = distinct !DISubprogram(name: "quote_n_mem", scope: !501, file: !501, line: 1049, type: !3082, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!122, !77, !122, !119}
!3084 = !{!3085, !3086, !3087}
!3085 = !DILocalVariable(name: "n", arg: 1, scope: !3081, file: !501, line: 1049, type: !77)
!3086 = !DILocalVariable(name: "arg", arg: 2, scope: !3081, file: !501, line: 1049, type: !122)
!3087 = !DILocalVariable(name: "argsize", arg: 3, scope: !3081, file: !501, line: 1049, type: !119)
!3088 = !DILocation(line: 0, scope: !3081)
!3089 = !DILocation(line: 1051, column: 10, scope: !3081)
!3090 = !DILocation(line: 1051, column: 3, scope: !3081)
!3091 = distinct !DISubprogram(name: "quote_mem", scope: !501, file: !501, line: 1055, type: !3092, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!122, !122, !119}
!3094 = !{!3095, !3096}
!3095 = !DILocalVariable(name: "arg", arg: 1, scope: !3091, file: !501, line: 1055, type: !122)
!3096 = !DILocalVariable(name: "argsize", arg: 2, scope: !3091, file: !501, line: 1055, type: !119)
!3097 = !DILocation(line: 0, scope: !3091)
!3098 = !DILocation(line: 0, scope: !3081, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 1057, column: 10, scope: !3091)
!3100 = !DILocation(line: 1051, column: 10, scope: !3081, inlinedAt: !3099)
!3101 = !DILocation(line: 1057, column: 3, scope: !3091)
!3102 = distinct !DISubprogram(name: "quote_n", scope: !501, file: !501, line: 1061, type: !3103, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!122, !77, !122}
!3105 = !{!3106, !3107}
!3106 = !DILocalVariable(name: "n", arg: 1, scope: !3102, file: !501, line: 1061, type: !77)
!3107 = !DILocalVariable(name: "arg", arg: 2, scope: !3102, file: !501, line: 1061, type: !122)
!3108 = !DILocation(line: 0, scope: !3102)
!3109 = !DILocation(line: 0, scope: !3081, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 1063, column: 10, scope: !3102)
!3111 = !DILocation(line: 1051, column: 10, scope: !3081, inlinedAt: !3110)
!3112 = !DILocation(line: 1063, column: 3, scope: !3102)
!3113 = distinct !DISubprogram(name: "quote", scope: !501, file: !501, line: 1067, type: !3114, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!122, !122}
!3116 = !{!3117}
!3117 = !DILocalVariable(name: "arg", arg: 1, scope: !3113, file: !501, line: 1067, type: !122)
!3118 = !DILocation(line: 0, scope: !3113)
!3119 = !DILocation(line: 0, scope: !3102, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 1069, column: 10, scope: !3113)
!3121 = !DILocation(line: 0, scope: !3081, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 1063, column: 10, scope: !3102, inlinedAt: !3120)
!3123 = !DILocation(line: 1051, column: 10, scope: !3081, inlinedAt: !3122)
!3124 = !DILocation(line: 1069, column: 3, scope: !3113)
!3125 = distinct !DISubprogram(name: "version_etc_arn", scope: !603, file: !603, line: 61, type: !3126, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3163)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !3128, !122, !122, !122, !3162, !119}
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3130)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3131)
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3130, file: !185, line: 51, baseType: !77, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3130, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3130, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3130, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3130, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3130, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3130, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3130, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3130, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3130, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3130, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3130, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3130, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3130, file: !185, line: 70, baseType: !3146, size: 64, offset: 832)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3130, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3130, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3130, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3130, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3130, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3130, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3130, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3130, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3130, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3130, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3130, file: !185, line: 93, baseType: !3146, size: 64, offset: 1344)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3130, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3130, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3130, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3130, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!3163 = !{!3164, !3165, !3166, !3167, !3168, !3169}
!3164 = !DILocalVariable(name: "stream", arg: 1, scope: !3125, file: !603, line: 61, type: !3128)
!3165 = !DILocalVariable(name: "command_name", arg: 2, scope: !3125, file: !603, line: 62, type: !122)
!3166 = !DILocalVariable(name: "package", arg: 3, scope: !3125, file: !603, line: 62, type: !122)
!3167 = !DILocalVariable(name: "version", arg: 4, scope: !3125, file: !603, line: 63, type: !122)
!3168 = !DILocalVariable(name: "authors", arg: 5, scope: !3125, file: !603, line: 64, type: !3162)
!3169 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3125, file: !603, line: 64, type: !119)
!3170 = !DILocation(line: 0, scope: !3125)
!3171 = !DILocation(line: 66, column: 7, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3125, file: !603, line: 66, column: 7)
!3173 = !DILocation(line: 66, column: 7, scope: !3125)
!3174 = !DILocation(line: 67, column: 5, scope: !3172)
!3175 = !DILocation(line: 69, column: 5, scope: !3172)
!3176 = !DILocation(line: 83, column: 3, scope: !3125)
!3177 = !DILocation(line: 85, column: 3, scope: !3125)
!3178 = !DILocation(line: 88, column: 3, scope: !3125)
!3179 = !DILocation(line: 95, column: 3, scope: !3125)
!3180 = !DILocation(line: 97, column: 3, scope: !3125)
!3181 = !DILocation(line: 105, column: 7, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3125, file: !603, line: 98, column: 5)
!3183 = !DILocation(line: 106, column: 7, scope: !3182)
!3184 = !DILocation(line: 109, column: 7, scope: !3182)
!3185 = !DILocation(line: 110, column: 7, scope: !3182)
!3186 = !DILocation(line: 113, column: 7, scope: !3182)
!3187 = !DILocation(line: 115, column: 7, scope: !3182)
!3188 = !DILocation(line: 120, column: 7, scope: !3182)
!3189 = !DILocation(line: 122, column: 7, scope: !3182)
!3190 = !DILocation(line: 127, column: 7, scope: !3182)
!3191 = !DILocation(line: 129, column: 7, scope: !3182)
!3192 = !DILocation(line: 134, column: 7, scope: !3182)
!3193 = !DILocation(line: 137, column: 7, scope: !3182)
!3194 = !DILocation(line: 142, column: 7, scope: !3182)
!3195 = !DILocation(line: 145, column: 7, scope: !3182)
!3196 = !DILocation(line: 150, column: 7, scope: !3182)
!3197 = !DILocation(line: 154, column: 7, scope: !3182)
!3198 = !DILocation(line: 159, column: 7, scope: !3182)
!3199 = !DILocation(line: 163, column: 7, scope: !3182)
!3200 = !DILocation(line: 170, column: 7, scope: !3182)
!3201 = !DILocation(line: 174, column: 7, scope: !3182)
!3202 = !DILocation(line: 176, column: 1, scope: !3125)
!3203 = distinct !DISubprogram(name: "version_etc_ar", scope: !603, file: !603, line: 183, type: !3204, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3206)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{null, !3128, !122, !122, !122, !3162}
!3206 = !{!3207, !3208, !3209, !3210, !3211, !3212}
!3207 = !DILocalVariable(name: "stream", arg: 1, scope: !3203, file: !603, line: 183, type: !3128)
!3208 = !DILocalVariable(name: "command_name", arg: 2, scope: !3203, file: !603, line: 184, type: !122)
!3209 = !DILocalVariable(name: "package", arg: 3, scope: !3203, file: !603, line: 184, type: !122)
!3210 = !DILocalVariable(name: "version", arg: 4, scope: !3203, file: !603, line: 185, type: !122)
!3211 = !DILocalVariable(name: "authors", arg: 5, scope: !3203, file: !603, line: 185, type: !3162)
!3212 = !DILocalVariable(name: "n_authors", scope: !3203, file: !603, line: 187, type: !119)
!3213 = !DILocation(line: 0, scope: !3203)
!3214 = !DILocation(line: 189, column: 8, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3203, file: !603, line: 189, column: 3)
!3216 = !DILocation(line: 189, scope: !3215)
!3217 = !DILocation(line: 189, column: 23, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3215, file: !603, line: 189, column: 3)
!3219 = !DILocation(line: 189, column: 3, scope: !3215)
!3220 = !DILocation(line: 189, column: 52, scope: !3218)
!3221 = distinct !{!3221, !3219, !3222, !916}
!3222 = !DILocation(line: 190, column: 5, scope: !3215)
!3223 = !DILocation(line: 191, column: 3, scope: !3203)
!3224 = !DILocation(line: 192, column: 1, scope: !3203)
!3225 = distinct !DISubprogram(name: "version_etc_va", scope: !603, file: !603, line: 199, type: !3226, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3236)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{null, !3128, !122, !122, !122, !3228}
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3230)
!3230 = !{!3231, !3233, !3234, !3235}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3229, file: !3232, line: 192, baseType: !72, size: 32)
!3232 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3229, file: !3232, line: 192, baseType: !72, size: 32, offset: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3229, file: !3232, line: 192, baseType: !117, size: 64, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3229, file: !3232, line: 192, baseType: !117, size: 64, offset: 128)
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243}
!3237 = !DILocalVariable(name: "stream", arg: 1, scope: !3225, file: !603, line: 199, type: !3128)
!3238 = !DILocalVariable(name: "command_name", arg: 2, scope: !3225, file: !603, line: 200, type: !122)
!3239 = !DILocalVariable(name: "package", arg: 3, scope: !3225, file: !603, line: 200, type: !122)
!3240 = !DILocalVariable(name: "version", arg: 4, scope: !3225, file: !603, line: 201, type: !122)
!3241 = !DILocalVariable(name: "authors", arg: 5, scope: !3225, file: !603, line: 201, type: !3228)
!3242 = !DILocalVariable(name: "n_authors", scope: !3225, file: !603, line: 203, type: !119)
!3243 = !DILocalVariable(name: "authtab", scope: !3225, file: !603, line: 204, type: !3244)
!3244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 640, elements: !55)
!3245 = !DILocation(line: 0, scope: !3225)
!3246 = !DILocation(line: 204, column: 3, scope: !3225)
!3247 = !DILocation(line: 204, column: 15, scope: !3225)
!3248 = !DILocation(line: 208, column: 35, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !603, line: 206, column: 3)
!3250 = distinct !DILexicalBlock(scope: !3225, file: !603, line: 206, column: 3)
!3251 = !DILocation(line: 208, column: 33, scope: !3249)
!3252 = !DILocation(line: 208, column: 67, scope: !3249)
!3253 = !DILocation(line: 206, column: 3, scope: !3250)
!3254 = !DILocation(line: 208, column: 14, scope: !3249)
!3255 = !DILocation(line: 0, scope: !3250)
!3256 = !DILocation(line: 211, column: 3, scope: !3225)
!3257 = !DILocation(line: 213, column: 1, scope: !3225)
!3258 = distinct !DISubprogram(name: "version_etc", scope: !603, file: !603, line: 230, type: !3259, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{null, !3128, !122, !122, !122, null}
!3261 = !{!3262, !3263, !3264, !3265, !3266}
!3262 = !DILocalVariable(name: "stream", arg: 1, scope: !3258, file: !603, line: 230, type: !3128)
!3263 = !DILocalVariable(name: "command_name", arg: 2, scope: !3258, file: !603, line: 231, type: !122)
!3264 = !DILocalVariable(name: "package", arg: 3, scope: !3258, file: !603, line: 231, type: !122)
!3265 = !DILocalVariable(name: "version", arg: 4, scope: !3258, file: !603, line: 232, type: !122)
!3266 = !DILocalVariable(name: "authors", scope: !3258, file: !603, line: 234, type: !3267)
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !864, line: 52, baseType: !3268)
!3268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1422, line: 14, baseType: !3269)
!3269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3232, baseType: !3270)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3229, size: 192, elements: !50)
!3271 = !DILocation(line: 0, scope: !3258)
!3272 = !DILocation(line: 234, column: 3, scope: !3258)
!3273 = !DILocation(line: 234, column: 11, scope: !3258)
!3274 = !DILocation(line: 235, column: 3, scope: !3258)
!3275 = !DILocation(line: 236, column: 3, scope: !3258)
!3276 = !DILocation(line: 237, column: 3, scope: !3258)
!3277 = !DILocation(line: 238, column: 1, scope: !3258)
!3278 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !603, file: !603, line: 241, type: !456, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !853)
!3279 = !DILocation(line: 243, column: 3, scope: !3278)
!3280 = !DILocation(line: 248, column: 3, scope: !3278)
!3281 = !DILocation(line: 254, column: 3, scope: !3278)
!3282 = !DILocation(line: 259, column: 3, scope: !3278)
!3283 = !DILocation(line: 261, column: 1, scope: !3278)
!3284 = distinct !DISubprogram(name: "xnrealloc", scope: !3285, file: !3285, line: 147, type: !3286, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3288)
!3285 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!117, !117, !119, !119}
!3288 = !{!3289, !3290, !3291}
!3289 = !DILocalVariable(name: "p", arg: 1, scope: !3284, file: !3285, line: 147, type: !117)
!3290 = !DILocalVariable(name: "n", arg: 2, scope: !3284, file: !3285, line: 147, type: !119)
!3291 = !DILocalVariable(name: "s", arg: 3, scope: !3284, file: !3285, line: 147, type: !119)
!3292 = !DILocation(line: 0, scope: !3284)
!3293 = !DILocalVariable(name: "p", arg: 1, scope: !3294, file: !731, line: 83, type: !117)
!3294 = distinct !DISubprogram(name: "xreallocarray", scope: !731, file: !731, line: 83, type: !3286, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3295)
!3295 = !{!3293, !3296, !3297}
!3296 = !DILocalVariable(name: "n", arg: 2, scope: !3294, file: !731, line: 83, type: !119)
!3297 = !DILocalVariable(name: "s", arg: 3, scope: !3294, file: !731, line: 83, type: !119)
!3298 = !DILocation(line: 0, scope: !3294, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 149, column: 10, scope: !3284)
!3300 = !DILocation(line: 85, column: 25, scope: !3294, inlinedAt: !3299)
!3301 = !DILocalVariable(name: "p", arg: 1, scope: !3302, file: !731, line: 37, type: !117)
!3302 = distinct !DISubprogram(name: "check_nonnull", scope: !731, file: !731, line: 37, type: !3303, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!117, !117}
!3305 = !{!3301}
!3306 = !DILocation(line: 0, scope: !3302, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 85, column: 10, scope: !3294, inlinedAt: !3299)
!3308 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3307)
!3309 = distinct !DILexicalBlock(scope: !3302, file: !731, line: 39, column: 7)
!3310 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3307)
!3311 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3307)
!3312 = !DILocation(line: 149, column: 3, scope: !3284)
!3313 = !DILocation(line: 0, scope: !3294)
!3314 = !DILocation(line: 85, column: 25, scope: !3294)
!3315 = !DILocation(line: 0, scope: !3302, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 85, column: 10, scope: !3294)
!3317 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3316)
!3318 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3316)
!3319 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3316)
!3320 = !DILocation(line: 85, column: 3, scope: !3294)
!3321 = distinct !DISubprogram(name: "xmalloc", scope: !731, file: !731, line: 47, type: !3322, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!117, !119}
!3324 = !{!3325}
!3325 = !DILocalVariable(name: "s", arg: 1, scope: !3321, file: !731, line: 47, type: !119)
!3326 = !DILocation(line: 0, scope: !3321)
!3327 = !DILocation(line: 49, column: 25, scope: !3321)
!3328 = !DILocation(line: 0, scope: !3302, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 49, column: 10, scope: !3321)
!3330 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3329)
!3331 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3329)
!3332 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3329)
!3333 = !DILocation(line: 49, column: 3, scope: !3321)
!3334 = !DISubprogram(name: "malloc", scope: !994, file: !994, line: 540, type: !3322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3335 = distinct !DISubprogram(name: "ximalloc", scope: !731, file: !731, line: 53, type: !3336, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3338)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!117, !750}
!3338 = !{!3339}
!3339 = !DILocalVariable(name: "s", arg: 1, scope: !3335, file: !731, line: 53, type: !750)
!3340 = !DILocation(line: 0, scope: !3335)
!3341 = !DILocalVariable(name: "s", arg: 1, scope: !3342, file: !3343, line: 55, type: !750)
!3342 = distinct !DISubprogram(name: "imalloc", scope: !3343, file: !3343, line: 55, type: !3336, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3344)
!3343 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3344 = !{!3341}
!3345 = !DILocation(line: 0, scope: !3342, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 55, column: 25, scope: !3335)
!3347 = !DILocation(line: 57, column: 26, scope: !3342, inlinedAt: !3346)
!3348 = !DILocation(line: 0, scope: !3302, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 55, column: 10, scope: !3335)
!3350 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3349)
!3351 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3349)
!3352 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3349)
!3353 = !DILocation(line: 55, column: 3, scope: !3335)
!3354 = distinct !DISubprogram(name: "xcharalloc", scope: !731, file: !731, line: 59, type: !3355, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3357)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!116, !119}
!3357 = !{!3358}
!3358 = !DILocalVariable(name: "n", arg: 1, scope: !3354, file: !731, line: 59, type: !119)
!3359 = !DILocation(line: 0, scope: !3354)
!3360 = !DILocation(line: 0, scope: !3321, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 61, column: 10, scope: !3354)
!3362 = !DILocation(line: 49, column: 25, scope: !3321, inlinedAt: !3361)
!3363 = !DILocation(line: 0, scope: !3302, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 49, column: 10, scope: !3321, inlinedAt: !3361)
!3365 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3364)
!3366 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3364)
!3367 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3364)
!3368 = !DILocation(line: 61, column: 3, scope: !3354)
!3369 = distinct !DISubprogram(name: "xrealloc", scope: !731, file: !731, line: 68, type: !3370, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3372)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!117, !117, !119}
!3372 = !{!3373, !3374}
!3373 = !DILocalVariable(name: "p", arg: 1, scope: !3369, file: !731, line: 68, type: !117)
!3374 = !DILocalVariable(name: "s", arg: 2, scope: !3369, file: !731, line: 68, type: !119)
!3375 = !DILocation(line: 0, scope: !3369)
!3376 = !DILocalVariable(name: "ptr", arg: 1, scope: !3377, file: !3378, line: 2057, type: !117)
!3377 = distinct !DISubprogram(name: "rpl_realloc", scope: !3378, file: !3378, line: 2057, type: !3370, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3379)
!3378 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3379 = !{!3376, !3380}
!3380 = !DILocalVariable(name: "size", arg: 2, scope: !3377, file: !3378, line: 2057, type: !119)
!3381 = !DILocation(line: 0, scope: !3377, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 70, column: 25, scope: !3369)
!3383 = !DILocation(line: 2059, column: 24, scope: !3377, inlinedAt: !3382)
!3384 = !DILocation(line: 2059, column: 10, scope: !3377, inlinedAt: !3382)
!3385 = !DILocation(line: 0, scope: !3302, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 70, column: 10, scope: !3369)
!3387 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3386)
!3388 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3386)
!3389 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3386)
!3390 = !DILocation(line: 70, column: 3, scope: !3369)
!3391 = !DISubprogram(name: "realloc", scope: !994, file: !994, line: 551, type: !3370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3392 = distinct !DISubprogram(name: "xirealloc", scope: !731, file: !731, line: 74, type: !3393, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3395)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!117, !117, !750}
!3395 = !{!3396, !3397}
!3396 = !DILocalVariable(name: "p", arg: 1, scope: !3392, file: !731, line: 74, type: !117)
!3397 = !DILocalVariable(name: "s", arg: 2, scope: !3392, file: !731, line: 74, type: !750)
!3398 = !DILocation(line: 0, scope: !3392)
!3399 = !DILocalVariable(name: "p", arg: 1, scope: !3400, file: !3343, line: 66, type: !117)
!3400 = distinct !DISubprogram(name: "irealloc", scope: !3343, file: !3343, line: 66, type: !3393, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3401)
!3401 = !{!3399, !3402}
!3402 = !DILocalVariable(name: "s", arg: 2, scope: !3400, file: !3343, line: 66, type: !750)
!3403 = !DILocation(line: 0, scope: !3400, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 76, column: 25, scope: !3392)
!3405 = !DILocation(line: 0, scope: !3377, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 68, column: 26, scope: !3400, inlinedAt: !3404)
!3407 = !DILocation(line: 2059, column: 24, scope: !3377, inlinedAt: !3406)
!3408 = !DILocation(line: 2059, column: 10, scope: !3377, inlinedAt: !3406)
!3409 = !DILocation(line: 0, scope: !3302, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 76, column: 10, scope: !3392)
!3411 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3410)
!3412 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3410)
!3413 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3410)
!3414 = !DILocation(line: 76, column: 3, scope: !3392)
!3415 = distinct !DISubprogram(name: "xireallocarray", scope: !731, file: !731, line: 89, type: !3416, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!117, !117, !750, !750}
!3418 = !{!3419, !3420, !3421}
!3419 = !DILocalVariable(name: "p", arg: 1, scope: !3415, file: !731, line: 89, type: !117)
!3420 = !DILocalVariable(name: "n", arg: 2, scope: !3415, file: !731, line: 89, type: !750)
!3421 = !DILocalVariable(name: "s", arg: 3, scope: !3415, file: !731, line: 89, type: !750)
!3422 = !DILocation(line: 0, scope: !3415)
!3423 = !DILocalVariable(name: "p", arg: 1, scope: !3424, file: !3343, line: 98, type: !117)
!3424 = distinct !DISubprogram(name: "ireallocarray", scope: !3343, file: !3343, line: 98, type: !3416, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3425)
!3425 = !{!3423, !3426, !3427}
!3426 = !DILocalVariable(name: "n", arg: 2, scope: !3424, file: !3343, line: 98, type: !750)
!3427 = !DILocalVariable(name: "s", arg: 3, scope: !3424, file: !3343, line: 98, type: !750)
!3428 = !DILocation(line: 0, scope: !3424, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 91, column: 25, scope: !3415)
!3430 = !DILocation(line: 101, column: 13, scope: !3424, inlinedAt: !3429)
!3431 = !DILocation(line: 0, scope: !3302, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 91, column: 10, scope: !3415)
!3433 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3432)
!3434 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3432)
!3435 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3432)
!3436 = !DILocation(line: 91, column: 3, scope: !3415)
!3437 = distinct !DISubprogram(name: "xnmalloc", scope: !731, file: !731, line: 98, type: !3438, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!117, !119, !119}
!3440 = !{!3441, !3442}
!3441 = !DILocalVariable(name: "n", arg: 1, scope: !3437, file: !731, line: 98, type: !119)
!3442 = !DILocalVariable(name: "s", arg: 2, scope: !3437, file: !731, line: 98, type: !119)
!3443 = !DILocation(line: 0, scope: !3437)
!3444 = !DILocation(line: 0, scope: !3294, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 100, column: 10, scope: !3437)
!3446 = !DILocation(line: 85, column: 25, scope: !3294, inlinedAt: !3445)
!3447 = !DILocation(line: 0, scope: !3302, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 85, column: 10, scope: !3294, inlinedAt: !3445)
!3449 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3448)
!3450 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3448)
!3451 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3448)
!3452 = !DILocation(line: 100, column: 3, scope: !3437)
!3453 = distinct !DISubprogram(name: "xinmalloc", scope: !731, file: !731, line: 104, type: !3454, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!117, !750, !750}
!3456 = !{!3457, !3458}
!3457 = !DILocalVariable(name: "n", arg: 1, scope: !3453, file: !731, line: 104, type: !750)
!3458 = !DILocalVariable(name: "s", arg: 2, scope: !3453, file: !731, line: 104, type: !750)
!3459 = !DILocation(line: 0, scope: !3453)
!3460 = !DILocation(line: 0, scope: !3415, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 106, column: 10, scope: !3453)
!3462 = !DILocation(line: 0, scope: !3424, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 91, column: 25, scope: !3415, inlinedAt: !3461)
!3464 = !DILocation(line: 101, column: 13, scope: !3424, inlinedAt: !3463)
!3465 = !DILocation(line: 0, scope: !3302, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 91, column: 10, scope: !3415, inlinedAt: !3461)
!3467 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3466)
!3468 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3466)
!3469 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3466)
!3470 = !DILocation(line: 106, column: 3, scope: !3453)
!3471 = distinct !DISubprogram(name: "x2realloc", scope: !731, file: !731, line: 116, type: !3472, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3474)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!117, !117, !737}
!3474 = !{!3475, !3476}
!3475 = !DILocalVariable(name: "p", arg: 1, scope: !3471, file: !731, line: 116, type: !117)
!3476 = !DILocalVariable(name: "ps", arg: 2, scope: !3471, file: !731, line: 116, type: !737)
!3477 = !DILocation(line: 0, scope: !3471)
!3478 = !DILocation(line: 0, scope: !734, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 118, column: 10, scope: !3471)
!3480 = !DILocation(line: 178, column: 14, scope: !734, inlinedAt: !3479)
!3481 = !DILocation(line: 180, column: 9, scope: !3482, inlinedAt: !3479)
!3482 = distinct !DILexicalBlock(scope: !734, file: !731, line: 180, column: 7)
!3483 = !DILocation(line: 180, column: 7, scope: !734, inlinedAt: !3479)
!3484 = !DILocation(line: 182, column: 13, scope: !3485, inlinedAt: !3479)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !731, line: 182, column: 11)
!3486 = distinct !DILexicalBlock(scope: !3482, file: !731, line: 181, column: 5)
!3487 = !DILocation(line: 182, column: 11, scope: !3486, inlinedAt: !3479)
!3488 = !DILocation(line: 197, column: 11, scope: !3489, inlinedAt: !3479)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !731, line: 197, column: 11)
!3490 = distinct !DILexicalBlock(scope: !3482, file: !731, line: 195, column: 5)
!3491 = !DILocation(line: 197, column: 11, scope: !3490, inlinedAt: !3479)
!3492 = !DILocation(line: 198, column: 9, scope: !3489, inlinedAt: !3479)
!3493 = !DILocation(line: 0, scope: !3294, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 201, column: 7, scope: !734, inlinedAt: !3479)
!3495 = !DILocation(line: 85, column: 25, scope: !3294, inlinedAt: !3494)
!3496 = !DILocation(line: 0, scope: !3302, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 85, column: 10, scope: !3294, inlinedAt: !3494)
!3498 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3497)
!3499 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3497)
!3500 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3497)
!3501 = !DILocation(line: 202, column: 7, scope: !734, inlinedAt: !3479)
!3502 = !DILocation(line: 118, column: 3, scope: !3471)
!3503 = !DILocation(line: 0, scope: !734)
!3504 = !DILocation(line: 178, column: 14, scope: !734)
!3505 = !DILocation(line: 180, column: 9, scope: !3482)
!3506 = !DILocation(line: 180, column: 7, scope: !734)
!3507 = !DILocation(line: 182, column: 13, scope: !3485)
!3508 = !DILocation(line: 182, column: 11, scope: !3486)
!3509 = !DILocation(line: 190, column: 30, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3485, file: !731, line: 183, column: 9)
!3511 = !DILocation(line: 191, column: 16, scope: !3510)
!3512 = !DILocation(line: 191, column: 13, scope: !3510)
!3513 = !DILocation(line: 192, column: 9, scope: !3510)
!3514 = !DILocation(line: 197, column: 11, scope: !3489)
!3515 = !DILocation(line: 197, column: 11, scope: !3490)
!3516 = !DILocation(line: 198, column: 9, scope: !3489)
!3517 = !DILocation(line: 0, scope: !3294, inlinedAt: !3518)
!3518 = distinct !DILocation(line: 201, column: 7, scope: !734)
!3519 = !DILocation(line: 85, column: 25, scope: !3294, inlinedAt: !3518)
!3520 = !DILocation(line: 0, scope: !3302, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 85, column: 10, scope: !3294, inlinedAt: !3518)
!3522 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3521)
!3523 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3521)
!3524 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3521)
!3525 = !DILocation(line: 202, column: 7, scope: !734)
!3526 = !DILocation(line: 203, column: 3, scope: !734)
!3527 = !DILocation(line: 0, scope: !746)
!3528 = !DILocation(line: 230, column: 14, scope: !746)
!3529 = !DILocation(line: 238, column: 7, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !746, file: !731, line: 238, column: 7)
!3531 = !DILocation(line: 238, column: 7, scope: !746)
!3532 = !DILocation(line: 240, column: 9, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !746, file: !731, line: 240, column: 7)
!3534 = !DILocation(line: 240, column: 18, scope: !3533)
!3535 = !DILocation(line: 253, column: 8, scope: !746)
!3536 = !DILocation(line: 258, column: 27, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !731, line: 257, column: 5)
!3538 = distinct !DILexicalBlock(scope: !746, file: !731, line: 256, column: 7)
!3539 = !DILocation(line: 259, column: 50, scope: !3537)
!3540 = !DILocation(line: 259, column: 32, scope: !3537)
!3541 = !DILocation(line: 260, column: 5, scope: !3537)
!3542 = !DILocation(line: 262, column: 9, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !746, file: !731, line: 262, column: 7)
!3544 = !DILocation(line: 262, column: 7, scope: !746)
!3545 = !DILocation(line: 263, column: 9, scope: !3543)
!3546 = !DILocation(line: 263, column: 5, scope: !3543)
!3547 = !DILocation(line: 264, column: 9, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !746, file: !731, line: 264, column: 7)
!3549 = !DILocation(line: 264, column: 14, scope: !3548)
!3550 = !DILocation(line: 265, column: 7, scope: !3548)
!3551 = !DILocation(line: 265, column: 11, scope: !3548)
!3552 = !DILocation(line: 266, column: 11, scope: !3548)
!3553 = !DILocation(line: 267, column: 14, scope: !3548)
!3554 = !DILocation(line: 264, column: 7, scope: !746)
!3555 = !DILocation(line: 268, column: 5, scope: !3548)
!3556 = !DILocation(line: 0, scope: !3369, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 269, column: 8, scope: !746)
!3558 = !DILocation(line: 0, scope: !3377, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 70, column: 25, scope: !3369, inlinedAt: !3557)
!3560 = !DILocation(line: 2059, column: 24, scope: !3377, inlinedAt: !3559)
!3561 = !DILocation(line: 2059, column: 10, scope: !3377, inlinedAt: !3559)
!3562 = !DILocation(line: 0, scope: !3302, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 70, column: 10, scope: !3369, inlinedAt: !3557)
!3564 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3563)
!3565 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3563)
!3566 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3563)
!3567 = !DILocation(line: 270, column: 7, scope: !746)
!3568 = !DILocation(line: 271, column: 3, scope: !746)
!3569 = distinct !DISubprogram(name: "xzalloc", scope: !731, file: !731, line: 279, type: !3322, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3570)
!3570 = !{!3571}
!3571 = !DILocalVariable(name: "s", arg: 1, scope: !3569, file: !731, line: 279, type: !119)
!3572 = !DILocation(line: 0, scope: !3569)
!3573 = !DILocalVariable(name: "n", arg: 1, scope: !3574, file: !731, line: 294, type: !119)
!3574 = distinct !DISubprogram(name: "xcalloc", scope: !731, file: !731, line: 294, type: !3438, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3575)
!3575 = !{!3573, !3576}
!3576 = !DILocalVariable(name: "s", arg: 2, scope: !3574, file: !731, line: 294, type: !119)
!3577 = !DILocation(line: 0, scope: !3574, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 281, column: 10, scope: !3569)
!3579 = !DILocation(line: 296, column: 25, scope: !3574, inlinedAt: !3578)
!3580 = !DILocation(line: 0, scope: !3302, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 296, column: 10, scope: !3574, inlinedAt: !3578)
!3582 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3581)
!3583 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3581)
!3584 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3581)
!3585 = !DILocation(line: 281, column: 3, scope: !3569)
!3586 = !DISubprogram(name: "calloc", scope: !994, file: !994, line: 543, type: !3438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3587 = !DILocation(line: 0, scope: !3574)
!3588 = !DILocation(line: 296, column: 25, scope: !3574)
!3589 = !DILocation(line: 0, scope: !3302, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 296, column: 10, scope: !3574)
!3591 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3590)
!3592 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3590)
!3593 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3590)
!3594 = !DILocation(line: 296, column: 3, scope: !3574)
!3595 = distinct !DISubprogram(name: "xizalloc", scope: !731, file: !731, line: 285, type: !3336, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3596)
!3596 = !{!3597}
!3597 = !DILocalVariable(name: "s", arg: 1, scope: !3595, file: !731, line: 285, type: !750)
!3598 = !DILocation(line: 0, scope: !3595)
!3599 = !DILocalVariable(name: "n", arg: 1, scope: !3600, file: !731, line: 300, type: !750)
!3600 = distinct !DISubprogram(name: "xicalloc", scope: !731, file: !731, line: 300, type: !3454, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3601)
!3601 = !{!3599, !3602}
!3602 = !DILocalVariable(name: "s", arg: 2, scope: !3600, file: !731, line: 300, type: !750)
!3603 = !DILocation(line: 0, scope: !3600, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 287, column: 10, scope: !3595)
!3605 = !DILocalVariable(name: "n", arg: 1, scope: !3606, file: !3343, line: 77, type: !750)
!3606 = distinct !DISubprogram(name: "icalloc", scope: !3343, file: !3343, line: 77, type: !3454, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3607)
!3607 = !{!3605, !3608}
!3608 = !DILocalVariable(name: "s", arg: 2, scope: !3606, file: !3343, line: 77, type: !750)
!3609 = !DILocation(line: 0, scope: !3606, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 302, column: 25, scope: !3600, inlinedAt: !3604)
!3611 = !DILocation(line: 91, column: 10, scope: !3606, inlinedAt: !3610)
!3612 = !DILocation(line: 0, scope: !3302, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 302, column: 10, scope: !3600, inlinedAt: !3604)
!3614 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3613)
!3615 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3613)
!3616 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3613)
!3617 = !DILocation(line: 287, column: 3, scope: !3595)
!3618 = !DILocation(line: 0, scope: !3600)
!3619 = !DILocation(line: 0, scope: !3606, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 302, column: 25, scope: !3600)
!3621 = !DILocation(line: 91, column: 10, scope: !3606, inlinedAt: !3620)
!3622 = !DILocation(line: 0, scope: !3302, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 302, column: 10, scope: !3600)
!3624 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3623)
!3625 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3623)
!3626 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3623)
!3627 = !DILocation(line: 302, column: 3, scope: !3600)
!3628 = distinct !DISubprogram(name: "xmemdup", scope: !731, file: !731, line: 310, type: !3629, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3631)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!117, !1018, !119}
!3631 = !{!3632, !3633}
!3632 = !DILocalVariable(name: "p", arg: 1, scope: !3628, file: !731, line: 310, type: !1018)
!3633 = !DILocalVariable(name: "s", arg: 2, scope: !3628, file: !731, line: 310, type: !119)
!3634 = !DILocation(line: 0, scope: !3628)
!3635 = !DILocation(line: 0, scope: !3321, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 312, column: 18, scope: !3628)
!3637 = !DILocation(line: 49, column: 25, scope: !3321, inlinedAt: !3636)
!3638 = !DILocation(line: 0, scope: !3302, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 49, column: 10, scope: !3321, inlinedAt: !3636)
!3640 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3639)
!3641 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3639)
!3642 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3639)
!3643 = !DILocalVariable(name: "__dest", arg: 1, scope: !3644, file: !1799, line: 26, type: !3647)
!3644 = distinct !DISubprogram(name: "memcpy", scope: !1799, file: !1799, line: 26, type: !3645, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3648)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!117, !3647, !1017, !119}
!3647 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!3648 = !{!3643, !3649, !3650}
!3649 = !DILocalVariable(name: "__src", arg: 2, scope: !3644, file: !1799, line: 26, type: !1017)
!3650 = !DILocalVariable(name: "__len", arg: 3, scope: !3644, file: !1799, line: 26, type: !119)
!3651 = !DILocation(line: 0, scope: !3644, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 312, column: 10, scope: !3628)
!3653 = !DILocation(line: 29, column: 10, scope: !3644, inlinedAt: !3652)
!3654 = !DILocation(line: 312, column: 3, scope: !3628)
!3655 = distinct !DISubprogram(name: "ximemdup", scope: !731, file: !731, line: 316, type: !3656, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3658)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!117, !1018, !750}
!3658 = !{!3659, !3660}
!3659 = !DILocalVariable(name: "p", arg: 1, scope: !3655, file: !731, line: 316, type: !1018)
!3660 = !DILocalVariable(name: "s", arg: 2, scope: !3655, file: !731, line: 316, type: !750)
!3661 = !DILocation(line: 0, scope: !3655)
!3662 = !DILocation(line: 0, scope: !3335, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 318, column: 18, scope: !3655)
!3664 = !DILocation(line: 0, scope: !3342, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 55, column: 25, scope: !3335, inlinedAt: !3663)
!3666 = !DILocation(line: 57, column: 26, scope: !3342, inlinedAt: !3665)
!3667 = !DILocation(line: 0, scope: !3302, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 55, column: 10, scope: !3335, inlinedAt: !3663)
!3669 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3668)
!3670 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3668)
!3671 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3668)
!3672 = !DILocation(line: 0, scope: !3644, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 318, column: 10, scope: !3655)
!3674 = !DILocation(line: 29, column: 10, scope: !3644, inlinedAt: !3673)
!3675 = !DILocation(line: 318, column: 3, scope: !3655)
!3676 = distinct !DISubprogram(name: "ximemdup0", scope: !731, file: !731, line: 325, type: !3677, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3679)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!116, !1018, !750}
!3679 = !{!3680, !3681, !3682}
!3680 = !DILocalVariable(name: "p", arg: 1, scope: !3676, file: !731, line: 325, type: !1018)
!3681 = !DILocalVariable(name: "s", arg: 2, scope: !3676, file: !731, line: 325, type: !750)
!3682 = !DILocalVariable(name: "result", scope: !3676, file: !731, line: 327, type: !116)
!3683 = !DILocation(line: 0, scope: !3676)
!3684 = !DILocation(line: 327, column: 30, scope: !3676)
!3685 = !DILocation(line: 0, scope: !3335, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 327, column: 18, scope: !3676)
!3687 = !DILocation(line: 0, scope: !3342, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 55, column: 25, scope: !3335, inlinedAt: !3686)
!3689 = !DILocation(line: 57, column: 26, scope: !3342, inlinedAt: !3688)
!3690 = !DILocation(line: 0, scope: !3302, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 55, column: 10, scope: !3335, inlinedAt: !3686)
!3692 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3691)
!3693 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3691)
!3694 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3691)
!3695 = !DILocation(line: 328, column: 3, scope: !3676)
!3696 = !DILocation(line: 328, column: 13, scope: !3676)
!3697 = !DILocation(line: 0, scope: !3644, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 329, column: 10, scope: !3676)
!3699 = !DILocation(line: 29, column: 10, scope: !3644, inlinedAt: !3698)
!3700 = !DILocation(line: 329, column: 3, scope: !3676)
!3701 = distinct !DISubprogram(name: "xstrdup", scope: !731, file: !731, line: 335, type: !996, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3702)
!3702 = !{!3703}
!3703 = !DILocalVariable(name: "string", arg: 1, scope: !3701, file: !731, line: 335, type: !122)
!3704 = !DILocation(line: 0, scope: !3701)
!3705 = !DILocation(line: 337, column: 27, scope: !3701)
!3706 = !DILocation(line: 337, column: 43, scope: !3701)
!3707 = !DILocation(line: 0, scope: !3628, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 337, column: 10, scope: !3701)
!3709 = !DILocation(line: 0, scope: !3321, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 312, column: 18, scope: !3628, inlinedAt: !3708)
!3711 = !DILocation(line: 49, column: 25, scope: !3321, inlinedAt: !3710)
!3712 = !DILocation(line: 0, scope: !3302, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 49, column: 10, scope: !3321, inlinedAt: !3710)
!3714 = !DILocation(line: 39, column: 8, scope: !3309, inlinedAt: !3713)
!3715 = !DILocation(line: 39, column: 7, scope: !3302, inlinedAt: !3713)
!3716 = !DILocation(line: 40, column: 5, scope: !3309, inlinedAt: !3713)
!3717 = !DILocation(line: 0, scope: !3644, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 312, column: 10, scope: !3628, inlinedAt: !3708)
!3719 = !DILocation(line: 29, column: 10, scope: !3644, inlinedAt: !3718)
!3720 = !DILocation(line: 337, column: 3, scope: !3701)
!3721 = distinct !DISubprogram(name: "xalloc_die", scope: !690, file: !690, line: 32, type: !456, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3722)
!3722 = !{!3723}
!3723 = !DILocalVariable(name: "__errstatus", scope: !3724, file: !690, line: 34, type: !3725)
!3724 = distinct !DILexicalBlock(scope: !3721, file: !690, line: 34, column: 3)
!3725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!3726 = !DILocation(line: 34, column: 3, scope: !3724)
!3727 = !DILocation(line: 0, scope: !3724)
!3728 = !DILocation(line: 40, column: 3, scope: !3721)
!3729 = distinct !DISubprogram(name: "last_component", scope: !767, file: !767, line: 29, type: !996, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !3730)
!3730 = !{!3731, !3732, !3733, !3734}
!3731 = !DILocalVariable(name: "name", arg: 1, scope: !3729, file: !767, line: 29, type: !122)
!3732 = !DILocalVariable(name: "base", scope: !3729, file: !767, line: 31, type: !122)
!3733 = !DILocalVariable(name: "last_was_slash", scope: !3729, file: !767, line: 35, type: !152)
!3734 = !DILocalVariable(name: "p", scope: !3735, file: !767, line: 36, type: !122)
!3735 = distinct !DILexicalBlock(scope: !3729, file: !767, line: 36, column: 3)
!3736 = !DILocation(line: 0, scope: !3729)
!3737 = !DILocation(line: 32, column: 3, scope: !3729)
!3738 = !DILocation(line: 32, column: 10, scope: !3729)
!3739 = !DILocation(line: 33, column: 9, scope: !3729)
!3740 = distinct !{!3740, !3737, !3739, !916}
!3741 = !DILocation(line: 36, column: 30, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3735, file: !767, line: 36, column: 3)
!3743 = !DILocation(line: 31, column: 15, scope: !3729)
!3744 = !DILocation(line: 36, scope: !3735)
!3745 = !DILocation(line: 0, scope: !3735)
!3746 = !DILocation(line: 36, column: 3, scope: !3735)
!3747 = !DILocation(line: 47, column: 3, scope: !3729)
!3748 = !DILocation(line: 40, column: 16, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !767, line: 40, column: 16)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !767, line: 38, column: 11)
!3751 = distinct !DILexicalBlock(scope: !3742, file: !767, line: 37, column: 5)
!3752 = !DILocation(line: 40, column: 16, scope: !3750)
!3753 = !DILocation(line: 36, column: 35, scope: !3742)
!3754 = !DILocation(line: 36, column: 3, scope: !3742)
!3755 = distinct !{!3755, !3746, !3756, !916}
!3756 = !DILocation(line: 45, column: 5, scope: !3735)
!3757 = distinct !DISubprogram(name: "base_len", scope: !767, file: !767, line: 51, type: !3758, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!119, !122}
!3760 = !{!3761, !3762, !3763}
!3761 = !DILocalVariable(name: "name", arg: 1, scope: !3757, file: !767, line: 51, type: !122)
!3762 = !DILocalVariable(name: "len", scope: !3757, file: !767, line: 53, type: !119)
!3763 = !DILocalVariable(name: "prefix_len", scope: !3757, file: !767, line: 61, type: !119)
!3764 = !DILocation(line: 0, scope: !3757)
!3765 = !DILocation(line: 54, column: 14, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3757, file: !767, line: 54, column: 3)
!3767 = !DILocation(line: 54, column: 8, scope: !3766)
!3768 = !DILocation(line: 54, scope: !3766)
!3769 = !DILocation(line: 54, column: 32, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3766, file: !767, line: 54, column: 3)
!3771 = !DILocation(line: 54, column: 38, scope: !3770)
!3772 = !DILocation(line: 54, column: 41, scope: !3770)
!3773 = !DILocation(line: 54, column: 3, scope: !3766)
!3774 = distinct !{!3774, !3773, !3775, !916}
!3775 = !DILocation(line: 55, column: 5, scope: !3766)
!3776 = !DILocation(line: 66, column: 3, scope: !3757)
!3777 = distinct !DISubprogram(name: "close_stream", scope: !769, file: !769, line: 55, type: !3778, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3814)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!77, !3780}
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3782)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3783)
!3783 = !{!3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3782, file: !185, line: 51, baseType: !77, size: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3782, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3782, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3782, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3782, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3782, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3782, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3782, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3782, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3782, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3782, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3782, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3782, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3782, file: !185, line: 70, baseType: !3798, size: 64, offset: 832)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3782, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3782, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3782, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3782, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3782, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3782, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3782, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3782, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3782, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3782, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3782, file: !185, line: 93, baseType: !3798, size: 64, offset: 1344)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3782, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3782, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3782, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3782, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!3814 = !{!3815, !3816, !3818, !3819}
!3815 = !DILocalVariable(name: "stream", arg: 1, scope: !3777, file: !769, line: 55, type: !3780)
!3816 = !DILocalVariable(name: "some_pending", scope: !3777, file: !769, line: 57, type: !3817)
!3817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!3818 = !DILocalVariable(name: "prev_fail", scope: !3777, file: !769, line: 58, type: !3817)
!3819 = !DILocalVariable(name: "fclose_fail", scope: !3777, file: !769, line: 59, type: !3817)
!3820 = !DILocation(line: 0, scope: !3777)
!3821 = !DILocation(line: 57, column: 30, scope: !3777)
!3822 = !DILocalVariable(name: "__stream", arg: 1, scope: !3823, file: !1453, line: 135, type: !3780)
!3823 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1453, file: !1453, line: 135, type: !3778, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3824)
!3824 = !{!3822}
!3825 = !DILocation(line: 0, scope: !3823, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 58, column: 27, scope: !3777)
!3827 = !DILocation(line: 137, column: 10, scope: !3823, inlinedAt: !3826)
!3828 = !{!1462, !870, i64 0}
!3829 = !DILocation(line: 58, column: 43, scope: !3777)
!3830 = !DILocation(line: 59, column: 29, scope: !3777)
!3831 = !DILocation(line: 59, column: 45, scope: !3777)
!3832 = !DILocation(line: 69, column: 17, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3777, file: !769, line: 69, column: 7)
!3834 = !DILocation(line: 57, column: 50, scope: !3777)
!3835 = !DILocation(line: 69, column: 33, scope: !3833)
!3836 = !DILocation(line: 69, column: 53, scope: !3833)
!3837 = !DILocation(line: 69, column: 59, scope: !3833)
!3838 = !DILocation(line: 69, column: 7, scope: !3777)
!3839 = !DILocation(line: 71, column: 11, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3833, file: !769, line: 70, column: 5)
!3841 = !DILocation(line: 72, column: 9, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3840, file: !769, line: 71, column: 11)
!3843 = !DILocation(line: 72, column: 15, scope: !3842)
!3844 = !DILocation(line: 77, column: 1, scope: !3777)
!3845 = !DISubprogram(name: "__fpending", scope: !3846, file: !3846, line: 75, type: !3847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3846 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!119, !3780}
!3849 = distinct !DISubprogram(name: "rpl_fclose", scope: !771, file: !771, line: 58, type: !3850, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3886)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!77, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3854)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3855)
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3854, file: !185, line: 51, baseType: !77, size: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3854, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3854, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3854, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3854, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3854, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3854, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3854, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3854, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3854, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3854, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3854, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3854, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3854, file: !185, line: 70, baseType: !3870, size: 64, offset: 832)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3854, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3854, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3854, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3854, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3854, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3854, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3854, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3854, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3854, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3854, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3854, file: !185, line: 93, baseType: !3870, size: 64, offset: 1344)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3854, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3854, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3854, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3854, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!3886 = !{!3887, !3888, !3889, !3890}
!3887 = !DILocalVariable(name: "fp", arg: 1, scope: !3849, file: !771, line: 58, type: !3852)
!3888 = !DILocalVariable(name: "saved_errno", scope: !3849, file: !771, line: 60, type: !77)
!3889 = !DILocalVariable(name: "fd", scope: !3849, file: !771, line: 63, type: !77)
!3890 = !DILocalVariable(name: "result", scope: !3849, file: !771, line: 74, type: !77)
!3891 = !DILocation(line: 0, scope: !3849)
!3892 = !DILocation(line: 63, column: 12, scope: !3849)
!3893 = !DILocation(line: 64, column: 10, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3849, file: !771, line: 64, column: 7)
!3895 = !DILocation(line: 64, column: 7, scope: !3849)
!3896 = !DILocation(line: 65, column: 12, scope: !3894)
!3897 = !DILocation(line: 65, column: 5, scope: !3894)
!3898 = !DILocation(line: 70, column: 9, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3849, file: !771, line: 70, column: 7)
!3900 = !DILocation(line: 70, column: 23, scope: !3899)
!3901 = !DILocation(line: 70, column: 33, scope: !3899)
!3902 = !DILocation(line: 70, column: 26, scope: !3899)
!3903 = !DILocation(line: 70, column: 59, scope: !3899)
!3904 = !DILocation(line: 71, column: 7, scope: !3899)
!3905 = !DILocation(line: 71, column: 10, scope: !3899)
!3906 = !DILocation(line: 70, column: 7, scope: !3849)
!3907 = !DILocation(line: 100, column: 12, scope: !3849)
!3908 = !DILocation(line: 105, column: 7, scope: !3849)
!3909 = !DILocation(line: 72, column: 19, scope: !3899)
!3910 = !DILocation(line: 105, column: 19, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3849, file: !771, line: 105, column: 7)
!3912 = !DILocation(line: 107, column: 13, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3911, file: !771, line: 106, column: 5)
!3914 = !DILocation(line: 109, column: 5, scope: !3913)
!3915 = !DILocation(line: 112, column: 1, scope: !3849)
!3916 = !DISubprogram(name: "fileno", scope: !864, file: !864, line: 809, type: !3850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3917 = !DISubprogram(name: "fclose", scope: !864, file: !864, line: 178, type: !3850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3918 = !DISubprogram(name: "__freading", scope: !3846, file: !3846, line: 51, type: !3850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3919 = !DISubprogram(name: "lseek", scope: !1253, file: !1253, line: 339, type: !3920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!207, !77, !207, !77}
!3922 = distinct !DISubprogram(name: "rpl_fflush", scope: !773, file: !773, line: 130, type: !3923, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !3959)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!77, !3925}
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3927)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3927, file: !185, line: 51, baseType: !77, size: 32)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3927, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3927, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3927, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3927, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3927, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3927, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3927, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3927, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3927, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3927, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3927, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3927, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3927, file: !185, line: 70, baseType: !3943, size: 64, offset: 832)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3927, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3927, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3927, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3927, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3927, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3927, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3927, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3927, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3927, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3927, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3927, file: !185, line: 93, baseType: !3943, size: 64, offset: 1344)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3927, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3927, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3927, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3927, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!3959 = !{!3960}
!3960 = !DILocalVariable(name: "stream", arg: 1, scope: !3922, file: !773, line: 130, type: !3925)
!3961 = !DILocation(line: 0, scope: !3922)
!3962 = !DILocation(line: 151, column: 14, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3922, file: !773, line: 151, column: 7)
!3964 = !DILocation(line: 151, column: 22, scope: !3963)
!3965 = !DILocation(line: 151, column: 27, scope: !3963)
!3966 = !DILocation(line: 151, column: 7, scope: !3922)
!3967 = !DILocation(line: 152, column: 12, scope: !3963)
!3968 = !DILocation(line: 152, column: 5, scope: !3963)
!3969 = !DILocalVariable(name: "fp", arg: 1, scope: !3970, file: !773, line: 42, type: !3925)
!3970 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !773, file: !773, line: 42, type: !3971, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{null, !3925}
!3973 = !{!3969}
!3974 = !DILocation(line: 0, scope: !3970, inlinedAt: !3975)
!3975 = distinct !DILocation(line: 157, column: 3, scope: !3922)
!3976 = !DILocation(line: 44, column: 12, scope: !3977, inlinedAt: !3975)
!3977 = distinct !DILexicalBlock(scope: !3970, file: !773, line: 44, column: 7)
!3978 = !DILocation(line: 44, column: 19, scope: !3977, inlinedAt: !3975)
!3979 = !DILocation(line: 44, column: 7, scope: !3970, inlinedAt: !3975)
!3980 = !DILocation(line: 46, column: 5, scope: !3977, inlinedAt: !3975)
!3981 = !DILocation(line: 159, column: 10, scope: !3922)
!3982 = !DILocation(line: 159, column: 3, scope: !3922)
!3983 = !DILocation(line: 236, column: 1, scope: !3922)
!3984 = !DISubprogram(name: "fflush", scope: !864, file: !864, line: 230, type: !3923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3985 = distinct !DISubprogram(name: "rpl_fseeko", scope: !775, file: !775, line: 28, type: !3986, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !4023)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!77, !3988, !4022, !77}
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !183, line: 7, baseType: !3990)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !185, line: 49, size: 1728, elements: !3991)
!3991 = !{!3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3990, file: !185, line: 51, baseType: !77, size: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3990, file: !185, line: 54, baseType: !116, size: 64, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3990, file: !185, line: 55, baseType: !116, size: 64, offset: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3990, file: !185, line: 56, baseType: !116, size: 64, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3990, file: !185, line: 57, baseType: !116, size: 64, offset: 256)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3990, file: !185, line: 58, baseType: !116, size: 64, offset: 320)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3990, file: !185, line: 59, baseType: !116, size: 64, offset: 384)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3990, file: !185, line: 60, baseType: !116, size: 64, offset: 448)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3990, file: !185, line: 61, baseType: !116, size: 64, offset: 512)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3990, file: !185, line: 64, baseType: !116, size: 64, offset: 576)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3990, file: !185, line: 65, baseType: !116, size: 64, offset: 640)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3990, file: !185, line: 66, baseType: !116, size: 64, offset: 704)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3990, file: !185, line: 68, baseType: !200, size: 64, offset: 768)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3990, file: !185, line: 70, baseType: !4006, size: 64, offset: 832)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3990, file: !185, line: 72, baseType: !77, size: 32, offset: 896)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3990, file: !185, line: 73, baseType: !77, size: 32, offset: 928)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3990, file: !185, line: 74, baseType: !207, size: 64, offset: 960)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3990, file: !185, line: 77, baseType: !118, size: 16, offset: 1024)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3990, file: !185, line: 78, baseType: !212, size: 8, offset: 1040)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3990, file: !185, line: 79, baseType: !49, size: 8, offset: 1048)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3990, file: !185, line: 81, baseType: !215, size: 64, offset: 1088)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3990, file: !185, line: 89, baseType: !218, size: 64, offset: 1152)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3990, file: !185, line: 91, baseType: !220, size: 64, offset: 1216)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3990, file: !185, line: 92, baseType: !223, size: 64, offset: 1280)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3990, file: !185, line: 93, baseType: !4006, size: 64, offset: 1344)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3990, file: !185, line: 94, baseType: !117, size: 64, offset: 1408)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3990, file: !185, line: 95, baseType: !119, size: 64, offset: 1472)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3990, file: !185, line: 96, baseType: !77, size: 32, offset: 1536)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3990, file: !185, line: 98, baseType: !147, size: 160, offset: 1568)
!4022 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !864, line: 63, baseType: !207)
!4023 = !{!4024, !4025, !4026, !4027}
!4024 = !DILocalVariable(name: "fp", arg: 1, scope: !3985, file: !775, line: 28, type: !3988)
!4025 = !DILocalVariable(name: "offset", arg: 2, scope: !3985, file: !775, line: 28, type: !4022)
!4026 = !DILocalVariable(name: "whence", arg: 3, scope: !3985, file: !775, line: 28, type: !77)
!4027 = !DILocalVariable(name: "pos", scope: !4028, file: !775, line: 123, type: !4022)
!4028 = distinct !DILexicalBlock(scope: !4029, file: !775, line: 119, column: 5)
!4029 = distinct !DILexicalBlock(scope: !3985, file: !775, line: 55, column: 7)
!4030 = !DILocation(line: 0, scope: !3985)
!4031 = !DILocation(line: 55, column: 12, scope: !4029)
!4032 = !{!1462, !806, i64 16}
!4033 = !DILocation(line: 55, column: 33, scope: !4029)
!4034 = !{!1462, !806, i64 8}
!4035 = !DILocation(line: 55, column: 25, scope: !4029)
!4036 = !DILocation(line: 56, column: 7, scope: !4029)
!4037 = !DILocation(line: 56, column: 15, scope: !4029)
!4038 = !DILocation(line: 56, column: 37, scope: !4029)
!4039 = !{!1462, !806, i64 32}
!4040 = !DILocation(line: 56, column: 29, scope: !4029)
!4041 = !DILocation(line: 57, column: 7, scope: !4029)
!4042 = !DILocation(line: 57, column: 15, scope: !4029)
!4043 = !{!1462, !806, i64 72}
!4044 = !DILocation(line: 57, column: 29, scope: !4029)
!4045 = !DILocation(line: 55, column: 7, scope: !3985)
!4046 = !DILocation(line: 123, column: 26, scope: !4028)
!4047 = !DILocation(line: 123, column: 19, scope: !4028)
!4048 = !DILocation(line: 0, scope: !4028)
!4049 = !DILocation(line: 124, column: 15, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4028, file: !775, line: 124, column: 11)
!4051 = !DILocation(line: 124, column: 11, scope: !4028)
!4052 = !DILocation(line: 135, column: 19, scope: !4028)
!4053 = !DILocation(line: 136, column: 12, scope: !4028)
!4054 = !DILocation(line: 136, column: 20, scope: !4028)
!4055 = !{!1462, !1147, i64 144}
!4056 = !DILocation(line: 167, column: 7, scope: !4028)
!4057 = !DILocation(line: 169, column: 10, scope: !3985)
!4058 = !DILocation(line: 169, column: 3, scope: !3985)
!4059 = !DILocation(line: 170, column: 1, scope: !3985)
!4060 = !DISubprogram(name: "fseeko", scope: !864, file: !864, line: 736, type: !4061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!77, !3988, !207, !77}
!4063 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !697, file: !697, line: 100, type: !4064, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !4067)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!119, !1817, !122, !119, !4066}
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!4067 = !{!4068, !4069, !4070, !4071, !4072}
!4068 = !DILocalVariable(name: "pwc", arg: 1, scope: !4063, file: !697, line: 100, type: !1817)
!4069 = !DILocalVariable(name: "s", arg: 2, scope: !4063, file: !697, line: 100, type: !122)
!4070 = !DILocalVariable(name: "n", arg: 3, scope: !4063, file: !697, line: 100, type: !119)
!4071 = !DILocalVariable(name: "ps", arg: 4, scope: !4063, file: !697, line: 100, type: !4066)
!4072 = !DILocalVariable(name: "ret", scope: !4063, file: !697, line: 130, type: !119)
!4073 = !DILocation(line: 0, scope: !4063)
!4074 = !DILocation(line: 105, column: 9, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4063, file: !697, line: 105, column: 7)
!4076 = !DILocation(line: 105, column: 7, scope: !4063)
!4077 = !DILocation(line: 117, column: 10, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4063, file: !697, line: 117, column: 7)
!4079 = !DILocation(line: 117, column: 7, scope: !4063)
!4080 = !DILocation(line: 130, column: 16, scope: !4063)
!4081 = !DILocation(line: 135, column: 11, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4063, file: !697, line: 135, column: 7)
!4083 = !DILocation(line: 135, column: 25, scope: !4082)
!4084 = !DILocation(line: 135, column: 30, scope: !4082)
!4085 = !DILocation(line: 135, column: 7, scope: !4063)
!4086 = !DILocalVariable(name: "ps", arg: 1, scope: !4087, file: !1790, line: 1135, type: !4066)
!4087 = distinct !DISubprogram(name: "mbszero", scope: !1790, file: !1790, line: 1135, type: !4088, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !4090)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{null, !4066}
!4090 = !{!4086}
!4091 = !DILocation(line: 0, scope: !4087, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 137, column: 5, scope: !4082)
!4093 = !DILocalVariable(name: "__dest", arg: 1, scope: !4094, file: !1799, line: 57, type: !117)
!4094 = distinct !DISubprogram(name: "memset", scope: !1799, file: !1799, line: 57, type: !1800, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !700, retainedNodes: !4095)
!4095 = !{!4093, !4096, !4097}
!4096 = !DILocalVariable(name: "__ch", arg: 2, scope: !4094, file: !1799, line: 57, type: !77)
!4097 = !DILocalVariable(name: "__len", arg: 3, scope: !4094, file: !1799, line: 57, type: !119)
!4098 = !DILocation(line: 0, scope: !4094, inlinedAt: !4099)
!4099 = distinct !DILocation(line: 1137, column: 3, scope: !4087, inlinedAt: !4092)
!4100 = !DILocation(line: 59, column: 10, scope: !4094, inlinedAt: !4099)
!4101 = !DILocation(line: 137, column: 5, scope: !4082)
!4102 = !DILocation(line: 138, column: 11, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4063, file: !697, line: 138, column: 7)
!4104 = !DILocation(line: 138, column: 7, scope: !4063)
!4105 = !DILocation(line: 139, column: 5, scope: !4103)
!4106 = !DILocation(line: 143, column: 26, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4063, file: !697, line: 143, column: 7)
!4108 = !DILocation(line: 143, column: 41, scope: !4107)
!4109 = !DILocation(line: 143, column: 7, scope: !4063)
!4110 = !DILocation(line: 145, column: 15, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4112, file: !697, line: 145, column: 11)
!4112 = distinct !DILexicalBlock(scope: !4107, file: !697, line: 144, column: 5)
!4113 = !DILocation(line: 145, column: 11, scope: !4112)
!4114 = !DILocation(line: 146, column: 32, scope: !4111)
!4115 = !DILocation(line: 146, column: 16, scope: !4111)
!4116 = !DILocation(line: 146, column: 14, scope: !4111)
!4117 = !DILocation(line: 146, column: 9, scope: !4111)
!4118 = !DILocation(line: 286, column: 1, scope: !4063)
!4119 = !DISubprogram(name: "mbsinit", scope: !4120, file: !4120, line: 293, type: !4121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!4120 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!77, !4123}
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!4125 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !777, file: !777, line: 27, type: !3286, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !4126)
!4126 = !{!4127, !4128, !4129, !4130}
!4127 = !DILocalVariable(name: "ptr", arg: 1, scope: !4125, file: !777, line: 27, type: !117)
!4128 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4125, file: !777, line: 27, type: !119)
!4129 = !DILocalVariable(name: "size", arg: 3, scope: !4125, file: !777, line: 27, type: !119)
!4130 = !DILocalVariable(name: "nbytes", scope: !4125, file: !777, line: 29, type: !119)
!4131 = !DILocation(line: 0, scope: !4125)
!4132 = !DILocation(line: 30, column: 7, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4125, file: !777, line: 30, column: 7)
!4134 = !DILocalVariable(name: "ptr", arg: 1, scope: !4135, file: !3378, line: 2057, type: !117)
!4135 = distinct !DISubprogram(name: "rpl_realloc", scope: !3378, file: !3378, line: 2057, type: !3370, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !4136)
!4136 = !{!4134, !4137}
!4137 = !DILocalVariable(name: "size", arg: 2, scope: !4135, file: !3378, line: 2057, type: !119)
!4138 = !DILocation(line: 0, scope: !4135, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 37, column: 10, scope: !4125)
!4140 = !DILocation(line: 2059, column: 24, scope: !4135, inlinedAt: !4139)
!4141 = !DILocation(line: 2059, column: 10, scope: !4135, inlinedAt: !4139)
!4142 = !DILocation(line: 37, column: 3, scope: !4125)
!4143 = !DILocation(line: 32, column: 7, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4133, file: !777, line: 31, column: 5)
!4145 = !DILocation(line: 32, column: 13, scope: !4144)
!4146 = !DILocation(line: 33, column: 7, scope: !4144)
!4147 = !DILocation(line: 38, column: 1, scope: !4125)
!4148 = distinct !DISubprogram(name: "hard_locale", scope: !715, file: !715, line: 28, type: !4149, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4151)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!152, !77}
!4151 = !{!4152, !4153}
!4152 = !DILocalVariable(name: "category", arg: 1, scope: !4148, file: !715, line: 28, type: !77)
!4153 = !DILocalVariable(name: "locale", scope: !4148, file: !715, line: 30, type: !4154)
!4154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4155)
!4155 = !{!4156}
!4156 = !DISubrange(count: 257)
!4157 = !DILocation(line: 0, scope: !4148)
!4158 = !DILocation(line: 30, column: 3, scope: !4148)
!4159 = !DILocation(line: 30, column: 8, scope: !4148)
!4160 = !DILocation(line: 32, column: 7, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4148, file: !715, line: 32, column: 7)
!4162 = !DILocation(line: 32, column: 7, scope: !4148)
!4163 = !DILocalVariable(name: "__s1", arg: 1, scope: !4164, file: !882, line: 1359, type: !122)
!4164 = distinct !DISubprogram(name: "streq", scope: !882, file: !882, line: 1359, type: !883, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4165)
!4165 = !{!4163, !4166}
!4166 = !DILocalVariable(name: "__s2", arg: 2, scope: !4164, file: !882, line: 1359, type: !122)
!4167 = !DILocation(line: 0, scope: !4164, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 35, column: 9, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4148, file: !715, line: 35, column: 7)
!4170 = !DILocation(line: 1361, column: 11, scope: !4164, inlinedAt: !4168)
!4171 = !DILocation(line: 35, column: 29, scope: !4169)
!4172 = !DILocation(line: 0, scope: !4164, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 35, column: 32, scope: !4169)
!4174 = !DILocation(line: 1361, column: 11, scope: !4164, inlinedAt: !4173)
!4175 = !DILocation(line: 1361, column: 10, scope: !4164, inlinedAt: !4173)
!4176 = !DILocation(line: 35, column: 7, scope: !4148)
!4177 = !DILocation(line: 46, column: 3, scope: !4148)
!4178 = !DILocation(line: 47, column: 1, scope: !4148)
!4179 = distinct !DISubprogram(name: "setlocale_null_r", scope: !784, file: !784, line: 154, type: !4180, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4182)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!77, !77, !116, !119}
!4182 = !{!4183, !4184, !4185}
!4183 = !DILocalVariable(name: "category", arg: 1, scope: !4179, file: !784, line: 154, type: !77)
!4184 = !DILocalVariable(name: "buf", arg: 2, scope: !4179, file: !784, line: 154, type: !116)
!4185 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4179, file: !784, line: 154, type: !119)
!4186 = !DILocation(line: 0, scope: !4179)
!4187 = !DILocation(line: 159, column: 10, scope: !4179)
!4188 = !DILocation(line: 159, column: 3, scope: !4179)
!4189 = distinct !DISubprogram(name: "setlocale_null", scope: !784, file: !784, line: 186, type: !4190, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4192)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!122, !77}
!4192 = !{!4193}
!4193 = !DILocalVariable(name: "category", arg: 1, scope: !4189, file: !784, line: 186, type: !77)
!4194 = !DILocation(line: 0, scope: !4189)
!4195 = !DILocation(line: 189, column: 10, scope: !4189)
!4196 = !DILocation(line: 189, column: 3, scope: !4189)
!4197 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !786, file: !786, line: 35, type: !4190, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4198)
!4198 = !{!4199, !4200}
!4199 = !DILocalVariable(name: "category", arg: 1, scope: !4197, file: !786, line: 35, type: !77)
!4200 = !DILocalVariable(name: "result", scope: !4197, file: !786, line: 37, type: !122)
!4201 = !DILocation(line: 0, scope: !4197)
!4202 = !DILocation(line: 37, column: 24, scope: !4197)
!4203 = !DILocation(line: 62, column: 3, scope: !4197)
!4204 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !786, file: !786, line: 66, type: !4180, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4205)
!4205 = !{!4206, !4207, !4208, !4209, !4210}
!4206 = !DILocalVariable(name: "category", arg: 1, scope: !4204, file: !786, line: 66, type: !77)
!4207 = !DILocalVariable(name: "buf", arg: 2, scope: !4204, file: !786, line: 66, type: !116)
!4208 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4204, file: !786, line: 66, type: !119)
!4209 = !DILocalVariable(name: "result", scope: !4204, file: !786, line: 111, type: !122)
!4210 = !DILocalVariable(name: "length", scope: !4211, file: !786, line: 125, type: !119)
!4211 = distinct !DILexicalBlock(scope: !4212, file: !786, line: 124, column: 5)
!4212 = distinct !DILexicalBlock(scope: !4204, file: !786, line: 113, column: 7)
!4213 = !DILocation(line: 0, scope: !4204)
!4214 = !DILocation(line: 0, scope: !4197, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 111, column: 24, scope: !4204)
!4216 = !DILocation(line: 37, column: 24, scope: !4197, inlinedAt: !4215)
!4217 = !DILocation(line: 113, column: 14, scope: !4212)
!4218 = !DILocation(line: 113, column: 7, scope: !4204)
!4219 = !DILocation(line: 116, column: 19, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !786, line: 116, column: 11)
!4221 = distinct !DILexicalBlock(scope: !4212, file: !786, line: 114, column: 5)
!4222 = !DILocation(line: 116, column: 11, scope: !4221)
!4223 = !DILocation(line: 120, column: 16, scope: !4220)
!4224 = !DILocation(line: 120, column: 9, scope: !4220)
!4225 = !DILocation(line: 125, column: 23, scope: !4211)
!4226 = !DILocation(line: 0, scope: !4211)
!4227 = !DILocation(line: 126, column: 18, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4211, file: !786, line: 126, column: 11)
!4229 = !DILocation(line: 126, column: 11, scope: !4211)
!4230 = !DILocation(line: 128, column: 39, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4228, file: !786, line: 127, column: 9)
!4232 = !DILocalVariable(name: "__dest", arg: 1, scope: !4233, file: !1799, line: 26, type: !3647)
!4233 = distinct !DISubprogram(name: "memcpy", scope: !1799, file: !1799, line: 26, type: !3645, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4234)
!4234 = !{!4232, !4235, !4236}
!4235 = !DILocalVariable(name: "__src", arg: 2, scope: !4233, file: !1799, line: 26, type: !1017)
!4236 = !DILocalVariable(name: "__len", arg: 3, scope: !4233, file: !1799, line: 26, type: !119)
!4237 = !DILocation(line: 0, scope: !4233, inlinedAt: !4238)
!4238 = distinct !DILocation(line: 128, column: 11, scope: !4231)
!4239 = !DILocation(line: 29, column: 10, scope: !4233, inlinedAt: !4238)
!4240 = !DILocation(line: 129, column: 11, scope: !4231)
!4241 = !DILocation(line: 133, column: 23, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !786, line: 133, column: 15)
!4243 = distinct !DILexicalBlock(scope: !4228, file: !786, line: 132, column: 9)
!4244 = !DILocation(line: 133, column: 15, scope: !4243)
!4245 = !DILocation(line: 138, column: 44, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4242, file: !786, line: 134, column: 13)
!4247 = !DILocation(line: 0, scope: !4233, inlinedAt: !4248)
!4248 = distinct !DILocation(line: 138, column: 15, scope: !4246)
!4249 = !DILocation(line: 29, column: 10, scope: !4233, inlinedAt: !4248)
!4250 = !DILocation(line: 139, column: 15, scope: !4246)
!4251 = !DILocation(line: 139, column: 32, scope: !4246)
!4252 = !DILocation(line: 140, column: 13, scope: !4246)
!4253 = !DILocation(line: 0, scope: !4212)
!4254 = !DILocation(line: 145, column: 1, scope: !4204)
