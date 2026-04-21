; ModuleID = 'src/sync.bc'
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

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION] [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [137 x i8] c"Synchronize cached writes to persistent storage\0A\0AIf one or more files are specified, sync only them,\0Aor their containing file systems.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [5 x i8] c"sync\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [68 x i8] c"  -d, --data             sync only file data, no unneeded metadata\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [71 x i8] c"  -f, --file-system      sync the file systems that contain the files\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !42
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [3 x i8] c"df\00", align 1, !dbg !57
@long_options = internal constant [5 x %struct.option] [%struct.option { ptr @.str.52, i32 0, ptr null, i32 100 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 102 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !62
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !119
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !124
@.str.14 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1, !dbg !129
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"cannot specify both --data and --file-system\00", align 1, !dbg !134
@.str.16 = private unnamed_addr constant [35 x i8] c"--data needs at least one argument\00", align 1, !dbg !139
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !144
@.str.17 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !227
@.str.18 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !229
@.str.19 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !231
@.str.20 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !236
@.str.34 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !276
@.str.35 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !278
@.str.36 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !280
@.str.37 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !285
@.str.38 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !290
@.str.39 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !295
@.str.40 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !300
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !302
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !304
@.str.43 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !306
@.str.47 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !320
@.str.48 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !322
@.str.49 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !324
@.str.50 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !329
@.str.51 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !334
@.str.52 = private unnamed_addr constant [5 x i8] c"data\00", align 1, !dbg !339
@.str.53 = private unnamed_addr constant [12 x i8] c"file-system\00", align 1, !dbg !341
@.str.54 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !343
@.str.55 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !345
@.str.56 = private unnamed_addr constant [17 x i8] c"error opening %s\00", align 1, !dbg !347
@.str.57 = private unnamed_addr constant [36 x i8] c"couldn't reset non-blocking mode %s\00", align 1, !dbg !349
@.str.58 = private unnamed_addr constant [17 x i8] c"error syncing %s\00", align 1, !dbg !354
@.str.59 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1, !dbg !356
@.str.21 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !371
@Version = dso_local local_unnamed_addr global ptr @.str.21, align 8, !dbg !374
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !378
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !391
@.str.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !383
@.str.1.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !385
@.str.2.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !387
@.str.3.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !389
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !393
@stderr = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !399
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !431
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !401
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !421
@.str.1.34 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !423
@.str.2.36 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !425
@.str.3.35 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !427
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !429
@.str.4.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !433
@.str.5.30 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !435
@.str.6.31 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !440
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !445
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !463
@.str.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !469
@.str.1.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !471
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !473
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !504
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !507
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !509
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !511
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !513
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !515
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !517
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !519
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !521
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !523
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.64, ptr @.str.1.65, ptr @.str.2.66, ptr @.str.3.67, ptr @.str.4.68, ptr @.str.5.69, ptr @.str.6.70, ptr @.str.7.71, ptr @.str.8.72, ptr @.str.9.73, ptr null], align 16, !dbg !525
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !536
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !550
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !588
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !595
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !552
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !597
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !540
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !557
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !559
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !561
@.str.13.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !563
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !565
@.str.82 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !603
@.str.1.83 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !606
@.str.2.84 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !608
@.str.3.85 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !610
@.str.4.86 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !612
@.str.5.87 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !614
@.str.6.88 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !619
@.str.7.89 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !624
@.str.8.90 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !626
@.str.9.91 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !631
@.str.10.92 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !636
@.str.11.93 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !641
@.str.12.94 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !643
@.str.13.95 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !645
@.str.14.96 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !650
@.str.15.97 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !655
@.str.16.98 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !660
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.103 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !665
@.str.18.104 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !667
@.str.19.105 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !669
@.str.20.106 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !671
@.str.21.107 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !673
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !675
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !677
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !682
@exit_failure = dso_local global i32 1, align 4, !dbg !690
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !696
@.str.1.118 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !699
@.str.2.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !701
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !703
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !706
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !721

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !795 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !799, metadata !DIExpression()), !dbg !800
  %2 = icmp eq i32 %0, 0, !dbg !801
  br i1 %2, label %8, label %3, !dbg !803

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !804, !tbaa !806
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !804
  %6 = load ptr, ptr @program_name, align 8, !dbg !804, !tbaa !806
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !804
  br label %33, !dbg !804

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !810
  %10 = load ptr, ptr @program_name, align 8, !dbg !810, !tbaa !806
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !810
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !812
  %13 = load ptr, ptr @stdout, align 8, !dbg !812, !tbaa !806
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !812
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !813
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !813
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !814
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !814
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !815
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !815
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !816
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !816
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !817, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !829, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr poison, metadata !829, metadata !DIExpression()), !dbg !834
  tail call void @emit_bug_reporting_address() #37, !dbg !836
  %19 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !837
  call void @llvm.dbg.value(metadata ptr %19, metadata !832, metadata !DIExpression()), !dbg !834
  %20 = icmp eq ptr %19, null, !dbg !838
  br i1 %20, label %28, label %21, !dbg !840

21:                                               ; preds = %8
  %22 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str.47, i64 noundef 3) #38, !dbg !841
  %23 = icmp eq i32 %22, 0, !dbg !841
  br i1 %23, label %28, label %24, !dbg !842

24:                                               ; preds = %21
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #37, !dbg !843
  %26 = load ptr, ptr @stdout, align 8, !dbg !843, !tbaa !806
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !843
  br label %28, !dbg !845

28:                                               ; preds = %8, %21, %24
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !829, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !833, metadata !DIExpression()), !dbg !834
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #37, !dbg !846
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3) #37, !dbg !846
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #37, !dbg !847
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51) #37, !dbg !847
  br label %33

33:                                               ; preds = %28, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !848
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
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !146 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !150, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata ptr %0, metadata !151, metadata !DIExpression()), !dbg !867
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !868, !tbaa !869
  %3 = icmp eq i32 %2, -1, !dbg !871
  br i1 %3, label %4, label %16, !dbg !872

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.17) #37, !dbg !873
  call void @llvm.dbg.value(metadata ptr %5, metadata !152, metadata !DIExpression()), !dbg !874
  %6 = icmp eq ptr %5, null, !dbg !875
  br i1 %6, label %14, label %7, !dbg !876

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !877, !tbaa !878
  %9 = icmp eq i8 %8, 0, !dbg !877
  br i1 %9, label %14, label %10, !dbg !879

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !880, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !886, metadata !DIExpression()), !dbg !887
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.18) #38, !dbg !889
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
  %20 = load ptr, ptr @stdout, align 8, !dbg !896, !tbaa !806
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !896
  br label %128, !dbg !898

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !155, metadata !DIExpression()), !dbg !867
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.19) #38, !dbg !899
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !900
  call void @llvm.dbg.value(metadata ptr %24, metadata !157, metadata !DIExpression()), !dbg !867
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !901
  call void @llvm.dbg.value(metadata ptr %25, metadata !158, metadata !DIExpression()), !dbg !867
  %26 = icmp eq ptr %25, null, !dbg !902
  br i1 %26, label %58, label %27, !dbg !903

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !904
  br i1 %28, label %58, label %29, !dbg !905

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !159, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 0, metadata !163, metadata !DIExpression()), !dbg !906
  %30 = icmp ult ptr %24, %25, !dbg !907
  br i1 %30, label %31, label %52, !dbg !908

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !867
  %33 = load ptr, ptr %32, align 8, !tbaa !806
  br label %34, !dbg !908

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !159, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %36, metadata !163, metadata !DIExpression()), !dbg !906
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !909
  call void @llvm.dbg.value(metadata ptr %37, metadata !159, metadata !DIExpression()), !dbg !906
  %38 = load i8, ptr %35, align 1, !dbg !909, !tbaa !878
  %39 = sext i8 %38 to i64, !dbg !909
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !909
  %41 = load i16, ptr %40, align 2, !dbg !909, !tbaa !910
  %42 = freeze i16 %41, !dbg !912
  %43 = lshr i16 %42, 13, !dbg !912
  %44 = and i16 %43, 1, !dbg !912
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !913
  call void @llvm.dbg.value(metadata i64 %46, metadata !163, metadata !DIExpression()), !dbg !906
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
  call void @llvm.dbg.value(metadata i8 %57, metadata !155, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata ptr %56, metadata !158, metadata !DIExpression()), !dbg !867
  br label %58, !dbg !920

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !867
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !867
  call void @llvm.dbg.value(metadata i8 %60, metadata !155, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata ptr %59, metadata !158, metadata !DIExpression()), !dbg !867
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.20) #38, !dbg !921
  call void @llvm.dbg.value(metadata i64 %61, metadata !164, metadata !DIExpression()), !dbg !867
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !922
  call void @llvm.dbg.value(metadata ptr %62, metadata !165, metadata !DIExpression()), !dbg !867
  br label %63, !dbg !923

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !867
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !867
  call void @llvm.dbg.value(metadata i8 %65, metadata !155, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata ptr %64, metadata !165, metadata !DIExpression()), !dbg !867
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
  call void @llvm.dbg.value(metadata i8 %73, metadata !155, metadata !DIExpression()), !dbg !867
  %74 = tail call ptr @__ctype_b_loc() #40, !dbg !932
  %75 = load ptr, ptr %74, align 8, !dbg !932, !tbaa !806
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
  call void @llvm.dbg.value(metadata ptr %97, metadata !165, metadata !DIExpression()), !dbg !867
  br label %63, !dbg !923, !llvm.loop !945

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !947
  %100 = load ptr, ptr @stdout, align 8, !dbg !947, !tbaa !806
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
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !222, metadata !DIExpression()), !dbg !867
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #38, !dbg !968
  %103 = icmp eq i32 %102, 0, !dbg !968
  br i1 %103, label %107, label %104, !dbg !970

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.35, i64 noundef 9) #38, !dbg !971
  %106 = icmp eq i32 %105, 0, !dbg !971
  br i1 %106, label %107, label %110, !dbg !972

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !973
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #37, !dbg !973
  br label %113, !dbg !975

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !976
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #37, !dbg !976
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !978, !tbaa !806
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %114), !dbg !978
  %116 = load ptr, ptr @stdout, align 8, !dbg !979, !tbaa !806
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %116), !dbg !979
  %118 = ptrtoint ptr %64 to i64, !dbg !980
  %119 = sub i64 %118, %99, !dbg !980
  %120 = load ptr, ptr @stdout, align 8, !dbg !980, !tbaa !806
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !980
  %122 = load ptr, ptr @stdout, align 8, !dbg !981, !tbaa !806
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %122), !dbg !981
  %124 = load ptr, ptr @stdout, align 8, !dbg !982, !tbaa !806
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %124), !dbg !982
  %126 = load ptr, ptr @stdout, align 8, !dbg !983, !tbaa !806
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !1025, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr %1, metadata !1026, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8 0, metadata !1027, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8 0, metadata !1028, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8 1, metadata !1029, metadata !DIExpression()), !dbg !1033
  %3 = load ptr, ptr %1, align 8, !dbg !1034, !tbaa !806
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !1035
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #37, !dbg !1036
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #37, !dbg !1037
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #37, !dbg !1038
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1039
  br label %8, !dbg !1040

8:                                                ; preds = %14, %2
  %9 = phi i1 [ false, %14 ], [ true, %2 ]
  %10 = phi i8 [ %15, %14 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i8 %10, metadata !1027, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8 poison, metadata !1028, metadata !DIExpression()), !dbg !1033
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %11, metadata !1030, metadata !DIExpression()), !dbg !1033
  switch i32 %11, label %22 [
    i32 -1, label %23
    i32 100, label %12
    i32 102, label %14
    i32 -130, label %16
    i32 -131, label %17
  ], !dbg !1040

12:                                               ; preds = %8, %12
  call void @llvm.dbg.value(metadata i8 1, metadata !1027, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata i8 poison, metadata !1028, metadata !DIExpression()), !dbg !1033
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %13, metadata !1030, metadata !DIExpression()), !dbg !1033
  switch i32 %13, label %22 [
    i32 -1, label %23
    i32 100, label %12
    i32 102, label %14
    i32 -130, label %16
    i32 -131, label %17
  ], !dbg !1040, !llvm.loop !1042

14:                                               ; preds = %12, %8
  %15 = phi i8 [ %10, %8 ], [ 1, %12 ], !dbg !1045
  call void @llvm.dbg.value(metadata i8 1, metadata !1028, metadata !DIExpression()), !dbg !1033
  br label %8, !dbg !1046, !llvm.loop !1049

16:                                               ; preds = %8, %12
  tail call void @usage(i32 noundef 0) #41, !dbg !1050
  unreachable, !dbg !1050

17:                                               ; preds = %8, %12
  %18 = load ptr, ptr @stdout, align 8, !dbg !1051, !tbaa !806
  %19 = load ptr, ptr @Version, align 8, !dbg !1051, !tbaa !806
  %20 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #37, !dbg !1051
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #37, !dbg !1051
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef null) #37, !dbg !1051
  tail call void @exit(i32 noundef 0) #39, !dbg !1051
  unreachable, !dbg !1051

22:                                               ; preds = %8, %12
  tail call void @usage(i32 noundef 1) #41, !dbg !1052
  unreachable, !dbg !1052

23:                                               ; preds = %8, %12
  %24 = phi i8 [ 1, %12 ], [ %10, %8 ], !dbg !1045
  %25 = load i32, ptr @optind, align 4, !dbg !1053, !tbaa !869
  %26 = icmp slt i32 %25, %0, !dbg !1054
  call void @llvm.dbg.value(metadata i1 %26, metadata !1031, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1033
  %27 = icmp eq i8 %24, 0, !dbg !1055
  %28 = or i1 %27, %9, !dbg !1057
  br i1 %28, label %31, label %29, !dbg !1057

29:                                               ; preds = %23
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #37, !dbg !1058
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %30) #37, !dbg !1058
  unreachable, !dbg !1058

31:                                               ; preds = %23
  %32 = select i1 %26, i1 true, i1 %27, !dbg !1059
  br i1 %32, label %35, label %33, !dbg !1059

33:                                               ; preds = %31
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #37, !dbg !1061
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %34) #37, !dbg !1061
  unreachable, !dbg !1061

35:                                               ; preds = %31
  %36 = xor i1 %27, true, !dbg !1062
  %37 = zext i1 %36 to i32, !dbg !1062
  %38 = select i1 %9, i32 %37, i32 2, !dbg !1062
  %39 = select i1 %26, i32 %38, i32 3, !dbg !1062
  call void @llvm.dbg.value(metadata i32 %39, metadata !1032, metadata !DIExpression()), !dbg !1033
  br i1 %26, label %41, label %40, !dbg !1064

40:                                               ; preds = %35
  tail call void @sync() #37, !dbg !1065
  br label %105, !dbg !1065

41:                                               ; preds = %35, %94
  %42 = phi i32 [ %100, %94 ], [ %25, %35 ]
  %43 = phi i8 [ %98, %94 ], [ 1, %35 ]
  call void @llvm.dbg.value(metadata i8 %43, metadata !1029, metadata !DIExpression()), !dbg !1033
  %44 = sext i32 %42 to i64, !dbg !1067
  %45 = getelementptr inbounds ptr, ptr %1, i64 %44, !dbg !1067
  %46 = load ptr, ptr %45, align 8, !dbg !1067, !tbaa !806
  call void @llvm.dbg.value(metadata i32 %39, metadata !1071, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata ptr %46, metadata !1076, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i32 2048, metadata !1077, metadata !DIExpression()), !dbg !1087
  %47 = tail call i32 (ptr, i32, ...) @open(ptr noundef %46, i32 noundef 2048) #37, !dbg !1089
  call void @llvm.dbg.value(metadata i32 %47, metadata !1078, metadata !DIExpression()), !dbg !1087
  %48 = icmp slt i32 %47, 0, !dbg !1090
  br i1 %48, label %49, label %57, !dbg !1091

49:                                               ; preds = %41
  %50 = tail call ptr @__errno_location() #40, !dbg !1092
  %51 = load i32, ptr %50, align 4, !dbg !1092, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %51, metadata !1079, metadata !DIExpression()), !dbg !1093
  %52 = tail call i32 (ptr, i32, ...) @open(ptr noundef %46, i32 noundef 2049) #37, !dbg !1094
  call void @llvm.dbg.value(metadata i32 %52, metadata !1078, metadata !DIExpression()), !dbg !1087
  %53 = icmp sgt i32 %52, -1, !dbg !1096
  br i1 %53, label %57, label %54, !dbg !1098

54:                                               ; preds = %49
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #37, !dbg !1099
  %56 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %46) #37, !dbg !1099
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %51, ptr noundef %55, ptr noundef %56) #37, !dbg !1099
  br label %94

57:                                               ; preds = %49, %41
  %58 = phi i32 [ %47, %41 ], [ %52, %49 ], !dbg !1087
  call void @llvm.dbg.value(metadata i32 %58, metadata !1078, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8 1, metadata !1082, metadata !DIExpression()), !dbg !1087
  %59 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %58, i32 noundef 3) #37, !dbg !1101
  call void @llvm.dbg.value(metadata i32 %59, metadata !1083, metadata !DIExpression()), !dbg !1087
  %60 = icmp eq i32 %59, -1, !dbg !1102
  br i1 %60, label %76, label %61, !dbg !1104

61:                                               ; preds = %57
  %62 = and i32 %59, -2049, !dbg !1105
  %63 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %58, i32 noundef 4, i32 noundef %62) #37, !dbg !1106
  %64 = icmp slt i32 %63, 0, !dbg !1107
  br i1 %64, label %76, label %65, !dbg !1108

65:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i8 1, metadata !1082, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i32 -1, metadata !1084, metadata !DIExpression()), !dbg !1109
  switch i32 %39, label %72 [
    i32 1, label %66
    i32 0, label %68
    i32 2, label %70
  ], !dbg !1110

66:                                               ; preds = %65
  %67 = tail call i32 @fdatasync(i32 noundef %58) #37, !dbg !1111
  call void @llvm.dbg.value(metadata i32 %67, metadata !1084, metadata !DIExpression()), !dbg !1109
  br label %73, !dbg !1113

68:                                               ; preds = %65
  %69 = tail call i32 @fsync(i32 noundef %58) #37, !dbg !1114
  call void @llvm.dbg.value(metadata i32 %69, metadata !1084, metadata !DIExpression()), !dbg !1109
  br label %73, !dbg !1115

70:                                               ; preds = %65
  %71 = tail call i32 @syncfs(i32 noundef %58) #37, !dbg !1116
  call void @llvm.dbg.value(metadata i32 %71, metadata !1084, metadata !DIExpression()), !dbg !1109
  br label %73, !dbg !1117

72:                                               ; preds = %65
  unreachable, !dbg !1118

73:                                               ; preds = %70, %68, %66
  %74 = phi i32 [ %71, %70 ], [ %69, %68 ], [ %67, %66 ], !dbg !1119
  call void @llvm.dbg.value(metadata i32 %74, metadata !1084, metadata !DIExpression()), !dbg !1109
  %75 = icmp slt i32 %74, 0, !dbg !1120
  br i1 %75, label %76, label %82, !dbg !1122

76:                                               ; preds = %73, %61, %57
  %77 = phi ptr [ @.str.57, %57 ], [ @.str.57, %61 ], [ @.str.58, %73 ]
  %78 = tail call ptr @__errno_location() #40, !dbg !1087
  %79 = load i32, ptr %78, align 4, !dbg !1087, !tbaa !869
  %80 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %77, i32 noundef 5) #37, !dbg !1087
  %81 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %46) #37, !dbg !1087
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %79, ptr noundef %80, ptr noundef %81) #37, !dbg !1087
  br label %82, !dbg !1123

82:                                               ; preds = %76, %73
  %83 = phi i8 [ 1, %73 ], [ 0, %76 ], !dbg !1087
  call void @llvm.dbg.value(metadata i8 %83, metadata !1082, metadata !DIExpression()), !dbg !1087
  %84 = tail call i32 @close(i32 noundef %58) #37, !dbg !1123
  %85 = icmp slt i32 %84, 0, !dbg !1125
  br i1 %85, label %86, label %91, !dbg !1126

86:                                               ; preds = %82
  %87 = tail call ptr @__errno_location() #40, !dbg !1127
  %88 = load i32, ptr %87, align 4, !dbg !1127, !tbaa !869
  %89 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #37, !dbg !1127
  %90 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %46) #37, !dbg !1127
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %88, ptr noundef %89, ptr noundef %90) #37, !dbg !1127
  call void @llvm.dbg.value(metadata i8 0, metadata !1082, metadata !DIExpression()), !dbg !1087
  br label %91, !dbg !1129

91:                                               ; preds = %86, %82
  %92 = phi i8 [ 0, %86 ], [ %83, %82 ], !dbg !1087
  call void @llvm.dbg.value(metadata i8 %92, metadata !1082, metadata !DIExpression()), !dbg !1087
  %93 = icmp ne i8 %92, 0, !dbg !1130
  br label %94

94:                                               ; preds = %54, %91
  %95 = phi i1 [ %93, %91 ], [ false, %54 ], !dbg !1087
  %96 = icmp ne i8 %43, 0, !dbg !1131
  %97 = and i1 %96, %95, !dbg !1131
  %98 = zext i1 %97 to i8, !dbg !1131
  call void @llvm.dbg.value(metadata i8 %98, metadata !1029, metadata !DIExpression()), !dbg !1033
  %99 = load i32, ptr @optind, align 4, !dbg !1132, !tbaa !869
  %100 = add nsw i32 %99, 1, !dbg !1132
  store i32 %100, ptr @optind, align 4, !dbg !1132, !tbaa !869
  %101 = icmp slt i32 %100, %0, !dbg !1133
  br i1 %101, label %41, label %102, !dbg !1134, !llvm.loop !1135

102:                                              ; preds = %94
  %103 = xor i1 %97, true, !dbg !1137
  %104 = zext i1 %103 to i32, !dbg !1137
  br label %105, !dbg !1137

105:                                              ; preds = %102, %40
  %106 = phi i32 [ 0, %40 ], [ %104, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1029, metadata !DIExpression()), !dbg !1033
  ret i32 %106, !dbg !1138
}

; Function Attrs: nounwind
declare !dbg !1139 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1142 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1143 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1146 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1152 void @sync() local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1154 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1158 ptr @__errno_location() local_unnamed_addr #9

declare !dbg !1162 i32 @fdatasync(i32 noundef) local_unnamed_addr #3

declare !dbg !1165 i32 @fsync(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1166 i32 @syncfs(i32 noundef) local_unnamed_addr #2

declare !dbg !1167 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #12 !dbg !1168 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1170, metadata !DIExpression()), !dbg !1171
  store ptr %0, ptr @file_name, align 8, !dbg !1172, !tbaa !806
  ret void, !dbg !1173
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #12 !dbg !1174 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1178, metadata !DIExpression()), !dbg !1179
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1180, !tbaa !1181
  ret void, !dbg !1183
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1184 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1189, !tbaa !806
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1190
  %3 = icmp eq i32 %2, 0, !dbg !1191
  br i1 %3, label %22, label %4, !dbg !1192

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1193, !tbaa !1181, !range !1194, !noundef !853
  %6 = icmp eq i8 %5, 0, !dbg !1193
  br i1 %6, label %11, label %7, !dbg !1195

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1196
  %9 = load i32, ptr %8, align 4, !dbg !1196, !tbaa !869
  %10 = icmp eq i32 %9, 32, !dbg !1197
  br i1 %10, label %22, label %11, !dbg !1198

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1.25, i32 noundef 5) #37, !dbg !1199
  call void @llvm.dbg.value(metadata ptr %12, metadata !1186, metadata !DIExpression()), !dbg !1200
  %13 = load ptr, ptr @file_name, align 8, !dbg !1201, !tbaa !806
  %14 = icmp eq ptr %13, null, !dbg !1201
  %15 = tail call ptr @__errno_location() #40, !dbg !1203
  %16 = load i32, ptr %15, align 4, !dbg !1203, !tbaa !869
  br i1 %14, label %19, label %17, !dbg !1204

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1205
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.26, ptr noundef %18, ptr noundef %12) #37, !dbg !1205
  br label %20, !dbg !1205

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.27, ptr noundef %12) #37, !dbg !1206
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1207, !tbaa !869
  tail call void @_exit(i32 noundef %21) #39, !dbg !1208
  unreachable, !dbg !1208

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1209, !tbaa !806
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1211
  %25 = icmp eq i32 %24, 0, !dbg !1212
  br i1 %25, label %28, label %26, !dbg !1213

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1214, !tbaa !869
  tail call void @_exit(i32 noundef %27) #39, !dbg !1215
  unreachable, !dbg !1215

28:                                               ; preds = %22
  ret void, !dbg !1216
}

; Function Attrs: noreturn
declare !dbg !1217 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 !dbg !1218 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1222, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i32 %1, metadata !1223, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata ptr %2, metadata !1224, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata ptr %3, metadata !1225, metadata !DIExpression()), !dbg !1226
  tail call fastcc void @flush_stdout(), !dbg !1227
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1228, !tbaa !806
  %6 = icmp eq ptr %5, null, !dbg !1228
  br i1 %6, label %8, label %7, !dbg !1230

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1231
  br label %12, !dbg !1231

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1232, !tbaa !806
  %10 = tail call ptr @getprogname() #38, !dbg !1232
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef %10) #37, !dbg !1232
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1234
  ret void, !dbg !1235
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1236 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1238, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i32 1, metadata !1240, metadata !DIExpression()), !dbg !1243
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1246
  %2 = icmp slt i32 %1, 0, !dbg !1247
  br i1 %2, label %6, label %3, !dbg !1248

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1249, !tbaa !806
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1249
  br label %6, !dbg !1249

6:                                                ; preds = %3, %0
  ret void, !dbg !1250
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1251 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1253, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i32 %1, metadata !1254, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata ptr %2, metadata !1255, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata ptr %3, metadata !1256, metadata !DIExpression()), !dbg !1257
  %6 = load ptr, ptr @stderr, align 8, !dbg !1258, !tbaa !806
  call void @llvm.dbg.value(metadata ptr %6, metadata !1259, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata ptr %2, metadata !1299, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata ptr %3, metadata !1300, metadata !DIExpression()), !dbg !1301
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1303
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1304, !tbaa !869
  %9 = add i32 %8, 1, !dbg !1304
  store i32 %9, ptr @error_message_count, align 4, !dbg !1304, !tbaa !869
  %10 = icmp eq i32 %1, 0, !dbg !1305
  br i1 %10, label %20, label %11, !dbg !1307

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1308, metadata !DIExpression()), !dbg !1316
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1318
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1312, metadata !DIExpression()), !dbg !1319
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1320
  call void @llvm.dbg.value(metadata ptr %12, metadata !1311, metadata !DIExpression()), !dbg !1316
  %13 = icmp eq ptr %12, null, !dbg !1321
  br i1 %13, label %14, label %16, !dbg !1323

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.29, ptr noundef nonnull @.str.5.30, i32 noundef 5) #37, !dbg !1324
  call void @llvm.dbg.value(metadata ptr %15, metadata !1311, metadata !DIExpression()), !dbg !1316
  br label %16, !dbg !1325

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1316
  call void @llvm.dbg.value(metadata ptr %17, metadata !1311, metadata !DIExpression()), !dbg !1316
  %18 = load ptr, ptr @stderr, align 8, !dbg !1326, !tbaa !806
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.31, ptr noundef %17) #37, !dbg !1326
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1327
  br label %20, !dbg !1328

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1329, !tbaa !806
  call void @llvm.dbg.value(metadata i32 10, metadata !1330, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata ptr %21, metadata !1336, metadata !DIExpression()), !dbg !1337
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1339
  %23 = load ptr, ptr %22, align 8, !dbg !1339, !tbaa !1340
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1339
  %25 = load ptr, ptr %24, align 8, !dbg !1339, !tbaa !1343
  %26 = icmp ult ptr %23, %25, !dbg !1339
  br i1 %26, label %29, label %27, !dbg !1339, !prof !1344

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1339
  br label %31, !dbg !1339

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1339
  store ptr %30, ptr %22, align 8, !dbg !1339, !tbaa !1340
  store i8 10, ptr %23, align 1, !dbg !1339, !tbaa !878
  br label %31, !dbg !1339

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1345, !tbaa !806
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1345
  %34 = icmp eq i32 %0, 0, !dbg !1346
  br i1 %34, label %36, label %35, !dbg !1348

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !1349
  unreachable, !dbg !1349

36:                                               ; preds = %31
  ret void, !dbg !1350
}

declare !dbg !1351 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1354 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #15

declare !dbg !1357 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1360 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1363 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1366 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1370, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata i32 %1, metadata !1371, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.value(metadata ptr %2, metadata !1372, metadata !DIExpression()), !dbg !1379
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1380
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1373, metadata !DIExpression()), !dbg !1381
  call void @llvm.va_start(ptr nonnull %4), !dbg !1382
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1383
  call void @llvm.va_end(ptr nonnull %4), !dbg !1384
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1385
  ret void, !dbg !1385
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #14 !dbg !403 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !415, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 %1, metadata !416, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata ptr %2, metadata !417, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata i32 %3, metadata !418, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata ptr %4, metadata !419, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata ptr %5, metadata !420, metadata !DIExpression()), !dbg !1386
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1387, !tbaa !869
  %8 = icmp eq i32 %7, 0, !dbg !1387
  br i1 %8, label %23, label %9, !dbg !1389

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1390, !tbaa !869
  %11 = icmp eq i32 %10, %3, !dbg !1393
  br i1 %11, label %12, label %22, !dbg !1394

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1395, !tbaa !806
  %14 = icmp eq ptr %13, %2, !dbg !1396
  br i1 %14, label %36, label %15, !dbg !1397

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1398
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1399
  br i1 %18, label %19, label %22, !dbg !1399

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1400
  %21 = icmp eq i32 %20, 0, !dbg !1401
  br i1 %21, label %36, label %22, !dbg !1402

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1403, !tbaa !806
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1404, !tbaa !869
  br label %23, !dbg !1405

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1406
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1407, !tbaa !806
  %25 = icmp eq ptr %24, null, !dbg !1407
  br i1 %25, label %27, label %26, !dbg !1409

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1410
  br label %31, !dbg !1410

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1411, !tbaa !806
  %29 = tail call ptr @getprogname() #38, !dbg !1411
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.34, ptr noundef %29) #37, !dbg !1411
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1413, !tbaa !806
  %33 = icmp eq ptr %2, null, !dbg !1413
  %34 = select i1 %33, ptr @.str.3.35, ptr @.str.2.36, !dbg !1413
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1413
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1414
  br label %36, !dbg !1415

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1415
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1416 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1420, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i32 %1, metadata !1421, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata ptr %2, metadata !1422, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i32 %3, metadata !1423, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata ptr %4, metadata !1424, metadata !DIExpression()), !dbg !1426
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1427
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1425, metadata !DIExpression()), !dbg !1428
  call void @llvm.va_start(ptr nonnull %6), !dbg !1429
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1430
  call void @llvm.va_end(ptr nonnull %6), !dbg !1431
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1432
  ret void, !dbg !1432
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !1433 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1435, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i32 %1, metadata !1436, metadata !DIExpression()), !dbg !1460
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #37, !dbg !1461
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1437, metadata !DIExpression()), !dbg !1462
  call void @llvm.va_start(ptr nonnull %3), !dbg !1463
  call void @llvm.dbg.value(metadata i32 -1, metadata !1448, metadata !DIExpression()), !dbg !1460
  switch i32 %1, label %90 [
    i32 0, label %4
    i32 1030, label %21
    i32 1, label %71
    i32 3, label %71
    i32 1025, label %71
    i32 9, label %71
    i32 1032, label %71
    i32 1034, label %71
    i32 11, label %71
    i32 1033, label %73
    i32 1031, label %73
    i32 10, label %73
    i32 1026, label %73
    i32 2, label %73
    i32 4, label %73
    i32 1024, label %73
    i32 8, label %73
  ], !dbg !1464

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !1465
  %6 = icmp ult i32 %5, 41, !dbg !1465
  br i1 %6, label %7, label %13, !dbg !1465

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1465
  %9 = load ptr, ptr %8, align 16, !dbg !1465
  %10 = zext i32 %5 to i64, !dbg !1465
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !1465
  %12 = add nuw nsw i32 %5, 8, !dbg !1465
  store i32 %12, ptr %3, align 16, !dbg !1465
  br label %17, !dbg !1465

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1465
  %15 = load ptr, ptr %14, align 8, !dbg !1465
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !1465
  store ptr %16, ptr %14, align 8, !dbg !1465
  br label %17, !dbg !1465

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !1465
  %19 = load i32, ptr %18, align 4, !dbg !1465
  call void @llvm.dbg.value(metadata i32 %19, metadata !1449, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i32 %0, metadata !1467, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i32 %19, metadata !1470, metadata !DIExpression()), !dbg !1472
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #37, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %20, metadata !1471, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i32 %20, metadata !1448, metadata !DIExpression()), !dbg !1460
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !1475
  %23 = icmp ult i32 %22, 41, !dbg !1475
  br i1 %23, label %24, label %30, !dbg !1475

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1475
  %26 = load ptr, ptr %25, align 16, !dbg !1475
  %27 = zext i32 %22 to i64, !dbg !1475
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !1475
  %29 = add nuw nsw i32 %22, 8, !dbg !1475
  store i32 %29, ptr %3, align 16, !dbg !1475
  br label %34, !dbg !1475

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1475
  %32 = load ptr, ptr %31, align 8, !dbg !1475
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !1475
  store ptr %33, ptr %31, align 8, !dbg !1475
  br label %34, !dbg !1475

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !1475
  %36 = load i32, ptr %35, align 4, !dbg !1475
  call void @llvm.dbg.value(metadata i32 %36, metadata !1452, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i32 %0, metadata !454, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 %36, metadata !455, metadata !DIExpression()), !dbg !1477
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1479, !tbaa !869
  %38 = icmp sgt i32 %37, -1, !dbg !1481
  br i1 %38, label %39, label %51, !dbg !1482

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #37, !dbg !1483
  call void @llvm.dbg.value(metadata i32 %40, metadata !456, metadata !DIExpression()), !dbg !1477
  %41 = icmp sgt i32 %40, -1, !dbg !1485
  br i1 %41, label %46, label %42, !dbg !1487

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #40, !dbg !1488
  %44 = load i32, ptr %43, align 4, !dbg !1488, !tbaa !869
  %45 = icmp eq i32 %44, 22, !dbg !1489
  br i1 %45, label %47, label %46, !dbg !1490

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1491, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %40, metadata !456, metadata !DIExpression()), !dbg !1477
  br label %107, !dbg !1493

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !1467, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i32 %36, metadata !1470, metadata !DIExpression()), !dbg !1494
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #37, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %48, metadata !1471, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i32 %48, metadata !456, metadata !DIExpression()), !dbg !1477
  %49 = icmp sgt i32 %48, -1, !dbg !1498
  br i1 %49, label %50, label %107, !dbg !1500

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1501, !tbaa !869
  br label %55, !dbg !1502

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !1467, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i32 %36, metadata !1470, metadata !DIExpression()), !dbg !1503
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #37, !dbg !1505
  call void @llvm.dbg.value(metadata i32 %52, metadata !1471, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i32 %52, metadata !456, metadata !DIExpression()), !dbg !1477
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !1506
  call void @llvm.dbg.value(metadata i32 %57, metadata !456, metadata !DIExpression()), !dbg !1477
  %58 = icmp sgt i32 %57, -1, !dbg !1507
  %59 = select i1 %58, i1 %56, i1 false, !dbg !1493
  br i1 %59, label %60, label %107, !dbg !1493

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #37, !dbg !1508
  call void @llvm.dbg.value(metadata i32 %61, metadata !457, metadata !DIExpression()), !dbg !1509
  %62 = icmp slt i32 %61, 0, !dbg !1510
  br i1 %62, label %67, label %63, !dbg !1511

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !1512
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #37, !dbg !1513
  %66 = icmp eq i32 %65, -1, !dbg !1514
  br i1 %66, label %67, label %107, !dbg !1515

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #40, !dbg !1516
  %69 = load i32, ptr %68, align 4, !dbg !1516, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %69, metadata !460, metadata !DIExpression()), !dbg !1517
  %70 = call i32 @close(i32 noundef %57) #37, !dbg !1518
  store i32 %69, ptr %68, align 4, !dbg !1519, !tbaa !869
  call void @llvm.dbg.value(metadata i32 -1, metadata !456, metadata !DIExpression()), !dbg !1477
  br label %107, !dbg !1520

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #37, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %72, metadata !1448, metadata !DIExpression()), !dbg !1460
  br label %107, !dbg !1522

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !1523
  %75 = icmp ult i32 %74, 41, !dbg !1523
  br i1 %75, label %76, label %82, !dbg !1523

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1523
  %78 = load ptr, ptr %77, align 16, !dbg !1523
  %79 = zext i32 %74 to i64, !dbg !1523
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !1523
  %81 = add nuw nsw i32 %74, 8, !dbg !1523
  store i32 %81, ptr %3, align 16, !dbg !1523
  br label %86, !dbg !1523

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1523
  %84 = load ptr, ptr %83, align 8, !dbg !1523
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !1523
  store ptr %85, ptr %83, align 8, !dbg !1523
  br label %86, !dbg !1523

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !1523
  %88 = load i32, ptr %87, align 4, !dbg !1523
  call void @llvm.dbg.value(metadata i32 %88, metadata !1454, metadata !DIExpression()), !dbg !1524
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #37, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %89, metadata !1448, metadata !DIExpression()), !dbg !1460
  br label %107, !dbg !1526

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !1527
  %92 = icmp ult i32 %91, 41, !dbg !1527
  br i1 %92, label %93, label %99, !dbg !1527

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1527
  %95 = load ptr, ptr %94, align 16, !dbg !1527
  %96 = zext i32 %91 to i64, !dbg !1527
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !1527
  %98 = add nuw nsw i32 %91, 8, !dbg !1527
  store i32 %98, ptr %3, align 16, !dbg !1527
  br label %103, !dbg !1527

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1527
  %101 = load ptr, ptr %100, align 8, !dbg !1527
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !1527
  store ptr %102, ptr %100, align 8, !dbg !1527
  br label %103, !dbg !1527

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !1527
  %105 = load ptr, ptr %104, align 8, !dbg !1527
  call void @llvm.dbg.value(metadata ptr %105, metadata !1458, metadata !DIExpression()), !dbg !1528
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #37, !dbg !1529
  call void @llvm.dbg.value(metadata i32 %106, metadata !1448, metadata !DIExpression()), !dbg !1460
  br label %107, !dbg !1530

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !1531
  call void @llvm.dbg.value(metadata i32 %108, metadata !1448, metadata !DIExpression()), !dbg !1460
  call void @llvm.va_end(ptr nonnull %3), !dbg !1532
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #37, !dbg !1533
  ret i32 %108, !dbg !1534
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1535 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1538, !tbaa !806
  ret ptr %1, !dbg !1539
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1540 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1542, metadata !DIExpression()), !dbg !1545
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1546
  call void @llvm.dbg.value(metadata ptr %2, metadata !1543, metadata !DIExpression()), !dbg !1545
  %3 = icmp eq ptr %2, null, !dbg !1547
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1547
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1547
  call void @llvm.dbg.value(metadata ptr %5, metadata !1544, metadata !DIExpression()), !dbg !1545
  %6 = ptrtoint ptr %5 to i64, !dbg !1548
  %7 = ptrtoint ptr %0 to i64, !dbg !1548
  %8 = sub i64 %6, %7, !dbg !1548
  %9 = icmp sgt i64 %8, 6, !dbg !1550
  br i1 %9, label %10, label %19, !dbg !1551

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1552
  call void @llvm.dbg.value(metadata ptr %11, metadata !1553, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata ptr @.str.60, metadata !1558, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i64 7, metadata !1559, metadata !DIExpression()), !dbg !1560
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.60, i64 7), !dbg !1562
  %13 = icmp eq i32 %12, 0, !dbg !1563
  br i1 %13, label %14, label %19, !dbg !1564

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1542, metadata !DIExpression()), !dbg !1545
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.61, i64 noundef 3) #38, !dbg !1565
  %16 = icmp eq i32 %15, 0, !dbg !1568
  %17 = select i1 %16, i64 3, i64 0, !dbg !1569
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1569
  br label %19, !dbg !1569

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1545
  call void @llvm.dbg.value(metadata ptr %21, metadata !1544, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata ptr %20, metadata !1542, metadata !DIExpression()), !dbg !1545
  store ptr %20, ptr @program_name, align 8, !dbg !1570, !tbaa !806
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1571, !tbaa !806
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1572, !tbaa !806
  ret void, !dbg !1573
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1574 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !475 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !482, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata ptr %1, metadata !483, metadata !DIExpression()), !dbg !1575
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %5, metadata !484, metadata !DIExpression()), !dbg !1575
  %6 = icmp eq ptr %5, %0, !dbg !1577
  br i1 %6, label %7, label %14, !dbg !1579

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1580
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1581
  call void @llvm.dbg.declare(metadata ptr %4, metadata !490, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata ptr %4, metadata !1583, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata ptr %4, metadata !1592, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 0, metadata !1598, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i64 8, metadata !1599, metadata !DIExpression()), !dbg !1600
  store i64 0, ptr %4, align 8, !dbg !1602
  call void @llvm.dbg.value(metadata ptr %3, metadata !485, metadata !DIExpression(DW_OP_deref)), !dbg !1575
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1603
  %9 = icmp eq i64 %8, 2, !dbg !1605
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !485, metadata !DIExpression()), !dbg !1575
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1606
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1575
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1607
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1607
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1575
  ret ptr %15, !dbg !1607
}

; Function Attrs: nounwind
declare !dbg !1608 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1614 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1619, metadata !DIExpression()), !dbg !1622
  %2 = tail call ptr @__errno_location() #40, !dbg !1623
  %3 = load i32, ptr %2, align 4, !dbg !1623, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %3, metadata !1620, metadata !DIExpression()), !dbg !1622
  %4 = icmp eq ptr %0, null, !dbg !1624
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1624
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #43, !dbg !1625
  call void @llvm.dbg.value(metadata ptr %6, metadata !1621, metadata !DIExpression()), !dbg !1622
  store i32 %3, ptr %2, align 4, !dbg !1626, !tbaa !869
  ret ptr %6, !dbg !1627
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1628 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1634, metadata !DIExpression()), !dbg !1635
  %2 = icmp eq ptr %0, null, !dbg !1636
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1636
  %4 = load i32, ptr %3, align 8, !dbg !1637, !tbaa !1638
  ret i32 %4, !dbg !1640
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1641 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 %1, metadata !1646, metadata !DIExpression()), !dbg !1647
  %3 = icmp eq ptr %0, null, !dbg !1648
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1648
  store i32 %1, ptr %4, align 8, !dbg !1649, !tbaa !1638
  ret void, !dbg !1650
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1651 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1655, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 %1, metadata !1656, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i32 %2, metadata !1657, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 %1, metadata !1658, metadata !DIExpression()), !dbg !1663
  %4 = icmp eq ptr %0, null, !dbg !1664
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1664
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1665
  %7 = lshr i8 %1, 5, !dbg !1666
  %8 = zext i8 %7 to i64, !dbg !1666
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1667
  call void @llvm.dbg.value(metadata ptr %9, metadata !1659, metadata !DIExpression()), !dbg !1663
  %10 = and i8 %1, 31, !dbg !1668
  %11 = zext i8 %10 to i32, !dbg !1668
  call void @llvm.dbg.value(metadata i32 %11, metadata !1661, metadata !DIExpression()), !dbg !1663
  %12 = load i32, ptr %9, align 4, !dbg !1669, !tbaa !869
  %13 = lshr i32 %12, %11, !dbg !1670
  %14 = and i32 %13, 1, !dbg !1671
  call void @llvm.dbg.value(metadata i32 %14, metadata !1662, metadata !DIExpression()), !dbg !1663
  %15 = xor i32 %13, %2, !dbg !1672
  %16 = and i32 %15, 1, !dbg !1672
  %17 = shl nuw i32 %16, %11, !dbg !1673
  %18 = xor i32 %17, %12, !dbg !1674
  store i32 %18, ptr %9, align 4, !dbg !1674, !tbaa !869
  ret i32 %14, !dbg !1675
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1676 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1680, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i32 %1, metadata !1681, metadata !DIExpression()), !dbg !1683
  %3 = icmp eq ptr %0, null, !dbg !1684
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1686
  call void @llvm.dbg.value(metadata ptr %4, metadata !1680, metadata !DIExpression()), !dbg !1683
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1687
  %6 = load i32, ptr %5, align 4, !dbg !1687, !tbaa !1688
  call void @llvm.dbg.value(metadata i32 %6, metadata !1682, metadata !DIExpression()), !dbg !1683
  store i32 %1, ptr %5, align 4, !dbg !1689, !tbaa !1688
  ret i32 %6, !dbg !1690
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1691 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1695, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata ptr %1, metadata !1696, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata ptr %2, metadata !1697, metadata !DIExpression()), !dbg !1698
  %4 = icmp eq ptr %0, null, !dbg !1699
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1701
  call void @llvm.dbg.value(metadata ptr %5, metadata !1695, metadata !DIExpression()), !dbg !1698
  store i32 10, ptr %5, align 8, !dbg !1702, !tbaa !1638
  %6 = icmp ne ptr %1, null, !dbg !1703
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1705
  br i1 %8, label %10, label %9, !dbg !1705

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1706
  unreachable, !dbg !1706

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1707
  store ptr %1, ptr %11, align 8, !dbg !1708, !tbaa !1709
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1710
  store ptr %2, ptr %12, align 8, !dbg !1711, !tbaa !1712
  ret void, !dbg !1713
}

; Function Attrs: noreturn nounwind
declare !dbg !1714 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1715 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1719, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i64 %1, metadata !1720, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata ptr %2, metadata !1721, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i64 %3, metadata !1722, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata ptr %4, metadata !1723, metadata !DIExpression()), !dbg !1727
  %6 = icmp eq ptr %4, null, !dbg !1728
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1728
  call void @llvm.dbg.value(metadata ptr %7, metadata !1724, metadata !DIExpression()), !dbg !1727
  %8 = tail call ptr @__errno_location() #40, !dbg !1729
  %9 = load i32, ptr %8, align 4, !dbg !1729, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %9, metadata !1725, metadata !DIExpression()), !dbg !1727
  %10 = load i32, ptr %7, align 8, !dbg !1730, !tbaa !1638
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1731
  %12 = load i32, ptr %11, align 4, !dbg !1731, !tbaa !1688
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1732
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1733
  %15 = load ptr, ptr %14, align 8, !dbg !1733, !tbaa !1709
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1734
  %17 = load ptr, ptr %16, align 8, !dbg !1734, !tbaa !1712
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1735
  call void @llvm.dbg.value(metadata i64 %18, metadata !1726, metadata !DIExpression()), !dbg !1727
  store i32 %9, ptr %8, align 4, !dbg !1736, !tbaa !869
  ret i64 %18, !dbg !1737
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1738 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1744, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %1, metadata !1745, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %2, metadata !1746, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %3, metadata !1747, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 %4, metadata !1748, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 %5, metadata !1749, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %6, metadata !1750, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %7, metadata !1751, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %8, metadata !1752, metadata !DIExpression()), !dbg !1806
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1807
  %17 = icmp eq i64 %16, 1, !dbg !1808
  call void @llvm.dbg.value(metadata i1 %17, metadata !1753, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1806
  call void @llvm.dbg.value(metadata i64 0, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 0, metadata !1755, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr null, metadata !1756, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 0, metadata !1757, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 0, metadata !1758, metadata !DIExpression()), !dbg !1806
  %18 = trunc i32 %5 to i8, !dbg !1809
  %19 = lshr i8 %18, 1, !dbg !1809
  %20 = and i8 %19, 1, !dbg !1809
  call void @llvm.dbg.value(metadata i8 %20, metadata !1759, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 0, metadata !1760, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1806
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1810

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1811
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1812
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1813
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1814
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1806
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1815
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1816
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1745, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %39, metadata !1761, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %38, metadata !1760, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %37, metadata !1759, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %36, metadata !1758, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %35, metadata !1757, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %34, metadata !1756, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %33, metadata !1755, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 0, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %32, metadata !1747, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %31, metadata !1752, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %30, metadata !1751, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 %29, metadata !1748, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.label(metadata !1799), !dbg !1817
  call void @llvm.dbg.value(metadata i8 0, metadata !1762, metadata !DIExpression()), !dbg !1806
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
  ], !dbg !1818

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1759, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 5, metadata !1748, metadata !DIExpression()), !dbg !1806
  br label %115, !dbg !1819

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1759, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 5, metadata !1748, metadata !DIExpression()), !dbg !1806
  %43 = and i8 %37, 1, !dbg !1820
  %44 = icmp eq i8 %43, 0, !dbg !1820
  br i1 %44, label %45, label %115, !dbg !1819

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1822
  br i1 %46, label %115, label %47, !dbg !1825

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1822, !tbaa !878
  br label %115, !dbg !1822

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.74, metadata !571, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i32 %29, metadata !572, metadata !DIExpression()), !dbg !1826
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.11.74, i32 noundef 5) #37, !dbg !1830
  call void @llvm.dbg.value(metadata ptr %49, metadata !573, metadata !DIExpression()), !dbg !1826
  %50 = icmp eq ptr %49, @.str.11.74, !dbg !1831
  br i1 %50, label %51, label %60, !dbg !1833

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1834
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1835
  call void @llvm.dbg.declare(metadata ptr %13, metadata !575, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata ptr %13, metadata !1837, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata ptr %13, metadata !1845, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i32 0, metadata !1848, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i64 8, metadata !1849, metadata !DIExpression()), !dbg !1850
  store i64 0, ptr %13, align 8, !dbg !1852
  call void @llvm.dbg.value(metadata ptr %12, metadata !574, metadata !DIExpression(DW_OP_deref)), !dbg !1826
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1853
  %53 = icmp eq i64 %52, 3, !dbg !1855
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !574, metadata !DIExpression()), !dbg !1826
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1856
  %57 = icmp eq i32 %29, 9, !dbg !1856
  %58 = select i1 %57, ptr @.str.10.76, ptr @.str.12.77, !dbg !1856
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1856
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1857
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1857
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1826
  call void @llvm.dbg.value(metadata ptr %61, metadata !1751, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr @.str.12.77, metadata !571, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i32 %29, metadata !572, metadata !DIExpression()), !dbg !1858
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.12.77, i32 noundef 5) #37, !dbg !1860
  call void @llvm.dbg.value(metadata ptr %62, metadata !573, metadata !DIExpression()), !dbg !1858
  %63 = icmp eq ptr %62, @.str.12.77, !dbg !1861
  br i1 %63, label %64, label %73, !dbg !1862

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1863
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1864
  call void @llvm.dbg.declare(metadata ptr %11, metadata !575, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata ptr %11, metadata !1837, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata ptr %11, metadata !1845, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 0, metadata !1848, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i64 8, metadata !1849, metadata !DIExpression()), !dbg !1868
  store i64 0, ptr %11, align 8, !dbg !1870
  call void @llvm.dbg.value(metadata ptr %10, metadata !574, metadata !DIExpression(DW_OP_deref)), !dbg !1858
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1871
  %66 = icmp eq i64 %65, 3, !dbg !1872
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !574, metadata !DIExpression()), !dbg !1858
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1873
  %70 = icmp eq i32 %29, 9, !dbg !1873
  %71 = select i1 %70, ptr @.str.10.76, ptr @.str.12.77, !dbg !1873
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1873
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1874
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1874
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1752, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %74, metadata !1751, metadata !DIExpression()), !dbg !1806
  %76 = and i8 %37, 1, !dbg !1875
  %77 = icmp eq i8 %76, 0, !dbg !1875
  br i1 %77, label %78, label %93, !dbg !1876

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1763, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i64 0, metadata !1754, metadata !DIExpression()), !dbg !1806
  %79 = load i8, ptr %74, align 1, !dbg !1878, !tbaa !878
  %80 = icmp eq i8 %79, 0, !dbg !1880
  br i1 %80, label %93, label %81, !dbg !1880

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1763, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i64 %84, metadata !1754, metadata !DIExpression()), !dbg !1806
  %85 = icmp ult i64 %84, %40, !dbg !1881
  br i1 %85, label %86, label %88, !dbg !1884

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1881
  store i8 %82, ptr %87, align 1, !dbg !1881, !tbaa !878
  br label %88, !dbg !1881

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %89, metadata !1754, metadata !DIExpression()), !dbg !1806
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1885
  call void @llvm.dbg.value(metadata ptr %90, metadata !1763, metadata !DIExpression()), !dbg !1877
  %91 = load i8, ptr %90, align 1, !dbg !1878, !tbaa !878
  %92 = icmp eq i8 %91, 0, !dbg !1880
  br i1 %92, label %93, label %81, !dbg !1880, !llvm.loop !1886

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1888
  call void @llvm.dbg.value(metadata i64 %94, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 1, metadata !1758, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %75, metadata !1756, metadata !DIExpression()), !dbg !1806
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %95, metadata !1757, metadata !DIExpression()), !dbg !1806
  br label %115, !dbg !1890

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1758, metadata !DIExpression()), !dbg !1806
  br label %97, !dbg !1891

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1806
  call void @llvm.dbg.value(metadata i8 %98, metadata !1758, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 1, metadata !1759, metadata !DIExpression()), !dbg !1806
  br label %99, !dbg !1892

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1814
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1806
  call void @llvm.dbg.value(metadata i8 %101, metadata !1759, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %100, metadata !1758, metadata !DIExpression()), !dbg !1806
  %102 = and i8 %101, 1, !dbg !1893
  %103 = icmp eq i8 %102, 0, !dbg !1893
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1895
  br label %105, !dbg !1895

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1806
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1809
  call void @llvm.dbg.value(metadata i8 %107, metadata !1759, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %106, metadata !1758, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 2, metadata !1748, metadata !DIExpression()), !dbg !1806
  %108 = and i8 %107, 1, !dbg !1896
  %109 = icmp eq i8 %108, 0, !dbg !1896
  br i1 %109, label %110, label %115, !dbg !1898

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1899
  br i1 %111, label %115, label %112, !dbg !1902

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1899, !tbaa !878
  br label %115, !dbg !1899

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1759, metadata !DIExpression()), !dbg !1806
  br label %115, !dbg !1903

114:                                              ; preds = %28
  call void @abort() #39, !dbg !1904
  unreachable, !dbg !1904

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1888
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.76, %45 ], [ @.str.10.76, %47 ], [ @.str.10.76, %42 ], [ %34, %28 ], [ @.str.12.77, %110 ], [ @.str.12.77, %112 ], [ @.str.12.77, %105 ], [ @.str.10.76, %41 ], !dbg !1806
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1806
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1806
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1806
  call void @llvm.dbg.value(metadata i8 %123, metadata !1759, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %122, metadata !1758, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %121, metadata !1757, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %120, metadata !1756, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %119, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %118, metadata !1752, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata ptr %117, metadata !1751, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i32 %116, metadata !1748, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 0, metadata !1768, metadata !DIExpression()), !dbg !1905
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
  br label %138, !dbg !1906

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1888
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1811
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1815
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1816
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1907
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1908
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1745, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %145, metadata !1768, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %144, metadata !1762, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %143, metadata !1761, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %142, metadata !1760, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %141, metadata !1755, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %140, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %139, metadata !1747, metadata !DIExpression()), !dbg !1806
  %147 = icmp eq i64 %139, -1, !dbg !1909
  br i1 %147, label %148, label %152, !dbg !1910

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1911
  %150 = load i8, ptr %149, align 1, !dbg !1911, !tbaa !878
  %151 = icmp eq i8 %150, 0, !dbg !1912
  br i1 %151, label %627, label %154, !dbg !1913

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1914
  br i1 %153, label %627, label %154, !dbg !1913

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1770, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 0, metadata !1773, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 0, metadata !1774, metadata !DIExpression()), !dbg !1915
  br i1 %129, label %155, label %170, !dbg !1916

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1918
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1919
  br i1 %157, label %158, label %160, !dbg !1919

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %159, metadata !1747, metadata !DIExpression()), !dbg !1806
  br label %160, !dbg !1921

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1921
  call void @llvm.dbg.value(metadata i64 %161, metadata !1747, metadata !DIExpression()), !dbg !1806
  %162 = icmp ugt i64 %156, %161, !dbg !1922
  br i1 %162, label %170, label %163, !dbg !1923

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1924
  call void @llvm.dbg.value(metadata ptr %164, metadata !1925, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata ptr %120, metadata !1928, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %121, metadata !1929, metadata !DIExpression()), !dbg !1930
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1932
  %166 = icmp ne i32 %165, 0, !dbg !1933
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1934
  %168 = xor i1 %166, true, !dbg !1934
  %169 = zext i1 %168 to i8, !dbg !1934
  br i1 %167, label %170, label %688, !dbg !1934

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1915
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1915
  call void @llvm.dbg.value(metadata i8 %173, metadata !1770, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %171, metadata !1747, metadata !DIExpression()), !dbg !1806
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1935
  %175 = load i8, ptr %174, align 1, !dbg !1935, !tbaa !878
  call void @llvm.dbg.value(metadata i8 %175, metadata !1775, metadata !DIExpression()), !dbg !1915
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
  ], !dbg !1936

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1937

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1938

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1773, metadata !DIExpression()), !dbg !1915
  %179 = and i8 %144, 1, !dbg !1942
  %180 = icmp eq i8 %179, 0, !dbg !1942
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1942
  br i1 %181, label %182, label %198, !dbg !1942

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1944
  br i1 %183, label %184, label %186, !dbg !1948

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1944
  store i8 39, ptr %185, align 1, !dbg !1944, !tbaa !878
  br label %186, !dbg !1944

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %187, metadata !1754, metadata !DIExpression()), !dbg !1806
  %188 = icmp ult i64 %187, %146, !dbg !1949
  br i1 %188, label %189, label %191, !dbg !1952

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1949
  store i8 36, ptr %190, align 1, !dbg !1949, !tbaa !878
  br label %191, !dbg !1949

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %192, metadata !1754, metadata !DIExpression()), !dbg !1806
  %193 = icmp ult i64 %192, %146, !dbg !1953
  br i1 %193, label %194, label %196, !dbg !1956

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1953
  store i8 39, ptr %195, align 1, !dbg !1953, !tbaa !878
  br label %196, !dbg !1953

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1956
  call void @llvm.dbg.value(metadata i64 %197, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 1, metadata !1762, metadata !DIExpression()), !dbg !1806
  br label %198, !dbg !1957

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1806
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1806
  call void @llvm.dbg.value(metadata i8 %200, metadata !1762, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %199, metadata !1754, metadata !DIExpression()), !dbg !1806
  %201 = icmp ult i64 %199, %146, !dbg !1958
  br i1 %201, label %202, label %204, !dbg !1961

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1958
  store i8 92, ptr %203, align 1, !dbg !1958, !tbaa !878
  br label %204, !dbg !1958

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %205, metadata !1754, metadata !DIExpression()), !dbg !1806
  br i1 %126, label %206, label %491, !dbg !1962

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1964
  %208 = icmp ult i64 %207, %171, !dbg !1965
  br i1 %208, label %209, label %480, !dbg !1966

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1967
  %211 = load i8, ptr %210, align 1, !dbg !1967, !tbaa !878
  %212 = add i8 %211, -48, !dbg !1968
  %213 = icmp ult i8 %212, 10, !dbg !1968
  br i1 %213, label %214, label %480, !dbg !1968

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1969
  br i1 %215, label %216, label %218, !dbg !1973

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1969
  store i8 48, ptr %217, align 1, !dbg !1969, !tbaa !878
  br label %218, !dbg !1969

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %219, metadata !1754, metadata !DIExpression()), !dbg !1806
  %220 = icmp ult i64 %219, %146, !dbg !1974
  br i1 %220, label %221, label %223, !dbg !1977

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1974
  store i8 48, ptr %222, align 1, !dbg !1974, !tbaa !878
  br label %223, !dbg !1974

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %224, metadata !1754, metadata !DIExpression()), !dbg !1806
  br label %480, !dbg !1978

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !1979

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1980

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !1981

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !1983

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1985
  %231 = icmp ult i64 %230, %171, !dbg !1986
  br i1 %231, label %232, label %480, !dbg !1987

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !1988
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !1989
  %235 = load i8, ptr %234, align 1, !dbg !1989, !tbaa !878
  %236 = icmp eq i8 %235, 63, !dbg !1990
  br i1 %236, label %237, label %480, !dbg !1991

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1992
  %239 = load i8, ptr %238, align 1, !dbg !1992, !tbaa !878
  %240 = sext i8 %239 to i32, !dbg !1992
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
  ], !dbg !1993

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !1994

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1775, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %230, metadata !1768, metadata !DIExpression()), !dbg !1905
  %243 = icmp ult i64 %140, %146, !dbg !1996
  br i1 %243, label %244, label %246, !dbg !1999

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1996
  store i8 63, ptr %245, align 1, !dbg !1996, !tbaa !878
  br label %246, !dbg !1996

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %247, metadata !1754, metadata !DIExpression()), !dbg !1806
  %248 = icmp ult i64 %247, %146, !dbg !2000
  br i1 %248, label %249, label %251, !dbg !2003

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2000
  store i8 34, ptr %250, align 1, !dbg !2000, !tbaa !878
  br label %251, !dbg !2000

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %252, metadata !1754, metadata !DIExpression()), !dbg !1806
  %253 = icmp ult i64 %252, %146, !dbg !2004
  br i1 %253, label %254, label %256, !dbg !2007

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2004
  store i8 34, ptr %255, align 1, !dbg !2004, !tbaa !878
  br label %256, !dbg !2004

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %257, metadata !1754, metadata !DIExpression()), !dbg !1806
  %258 = icmp ult i64 %257, %146, !dbg !2008
  br i1 %258, label %259, label %261, !dbg !2011

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2008
  store i8 63, ptr %260, align 1, !dbg !2008, !tbaa !878
  br label %261, !dbg !2008

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %262, metadata !1754, metadata !DIExpression()), !dbg !1806
  br label %480, !dbg !2012

263:                                              ; preds = %170
  br label %274, !dbg !2013

264:                                              ; preds = %170
  br label %274, !dbg !2014

265:                                              ; preds = %170
  br label %272, !dbg !2015

266:                                              ; preds = %170
  br label %272, !dbg !2016

267:                                              ; preds = %170
  br label %274, !dbg !2017

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2018

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2019

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2022

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2024

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2025
  call void @llvm.dbg.label(metadata !1800), !dbg !2026
  br i1 %134, label %274, label %670, !dbg !2027

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2025
  call void @llvm.dbg.label(metadata !1802), !dbg !2029
  br i1 %125, label %535, label %491, !dbg !2030

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2031

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2032, !tbaa !878
  %279 = icmp eq i8 %278, 0, !dbg !2034
  br i1 %279, label %280, label %480, !dbg !2035

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2036
  br i1 %281, label %282, label %480, !dbg !2038

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1774, metadata !DIExpression()), !dbg !1915
  br label %283, !dbg !2039

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1915
  call void @llvm.dbg.value(metadata i8 %284, metadata !1774, metadata !DIExpression()), !dbg !1915
  br i1 %134, label %480, label %670, !dbg !2040

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1760, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 1, metadata !1774, metadata !DIExpression()), !dbg !1915
  br i1 %133, label %286, label %480, !dbg !2042

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2043

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2046
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2048
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2048
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %292, metadata !1745, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %291, metadata !1755, metadata !DIExpression()), !dbg !1806
  %293 = icmp ult i64 %140, %292, !dbg !2049
  br i1 %293, label %294, label %296, !dbg !2052

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2049
  store i8 39, ptr %295, align 1, !dbg !2049, !tbaa !878
  br label %296, !dbg !2049

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %297, metadata !1754, metadata !DIExpression()), !dbg !1806
  %298 = icmp ult i64 %297, %292, !dbg !2053
  br i1 %298, label %299, label %301, !dbg !2056

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2053
  store i8 92, ptr %300, align 1, !dbg !2053, !tbaa !878
  br label %301, !dbg !2053

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %302, metadata !1754, metadata !DIExpression()), !dbg !1806
  %303 = icmp ult i64 %302, %292, !dbg !2057
  br i1 %303, label %304, label %306, !dbg !2060

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2057
  store i8 39, ptr %305, align 1, !dbg !2057, !tbaa !878
  br label %306, !dbg !2057

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %307, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 0, metadata !1762, metadata !DIExpression()), !dbg !1806
  br label %480, !dbg !2061

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2062

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1776, metadata !DIExpression()), !dbg !2063
  %310 = tail call ptr @__ctype_b_loc() #40, !dbg !2064
  %311 = load ptr, ptr %310, align 8, !dbg !2064, !tbaa !806
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2064
  %314 = load i16, ptr %313, align 2, !dbg !2064, !tbaa !910
  %315 = lshr i16 %314, 14, !dbg !2066
  %316 = trunc i16 %315 to i8, !dbg !2066
  %317 = and i8 %316, 1, !dbg !2066
  call void @llvm.dbg.value(metadata i8 %317, metadata !1779, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %171, metadata !1747, metadata !DIExpression()), !dbg !1806
  %318 = icmp eq i8 %317, 0, !dbg !2067
  call void @llvm.dbg.value(metadata i1 %318, metadata !1774, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1915
  br label %368, !dbg !2068

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2069
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1780, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata ptr %14, metadata !1837, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata ptr %14, metadata !1845, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 0, metadata !1848, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 8, metadata !1849, metadata !DIExpression()), !dbg !2073
  store i64 0, ptr %14, align 8, !dbg !2075
  call void @llvm.dbg.value(metadata i64 0, metadata !1776, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 1, metadata !1779, metadata !DIExpression()), !dbg !2063
  %320 = icmp eq i64 %171, -1, !dbg !2076
  br i1 %320, label %321, label %323, !dbg !2078

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %322, metadata !1747, metadata !DIExpression()), !dbg !1806
  br label %323, !dbg !2080

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1915
  call void @llvm.dbg.value(metadata i64 %324, metadata !1747, metadata !DIExpression()), !dbg !1806
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2081
  %325 = sub i64 %324, %145, !dbg !2082
  call void @llvm.dbg.value(metadata ptr %15, metadata !1783, metadata !DIExpression(DW_OP_deref)), !dbg !2083
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #37, !dbg !2084
  call void @llvm.dbg.value(metadata i64 %326, metadata !1787, metadata !DIExpression()), !dbg !2083
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2085

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1776, metadata !DIExpression()), !dbg !2063
  %328 = icmp ugt i64 %324, %145, !dbg !2086
  br i1 %328, label %331, label %329, !dbg !2088

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1779, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 0, metadata !1776, metadata !DIExpression()), !dbg !2063
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %324, metadata !1747, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i1 true, metadata !1774, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1915
  br label %368, !dbg !2068

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1779, metadata !DIExpression()), !dbg !2063
  br label %360, !dbg !2091

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1776, metadata !DIExpression()), !dbg !2063
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2093
  %335 = load i8, ptr %334, align 1, !dbg !2093, !tbaa !878
  %336 = icmp eq i8 %335, 0, !dbg !2088
  br i1 %336, label %363, label %337, !dbg !2094

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %338, metadata !1776, metadata !DIExpression()), !dbg !2063
  %339 = add i64 %338, %145, !dbg !2096
  %340 = icmp eq i64 %338, %325, !dbg !2086
  br i1 %340, label %363, label %331, !dbg !2088, !llvm.loop !2097

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2098
  %344 = and i1 %343, %133, !dbg !2098
  call void @llvm.dbg.value(metadata i64 1, metadata !1788, metadata !DIExpression()), !dbg !2099
  br i1 %344, label %345, label %354, !dbg !2098

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1788, metadata !DIExpression()), !dbg !2099
  %347 = add i64 %346, %145, !dbg !2100
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2102
  %349 = load i8, ptr %348, align 1, !dbg !2102, !tbaa !878
  %350 = sext i8 %349 to i32, !dbg !2102
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2103

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %352, metadata !1788, metadata !DIExpression()), !dbg !2099
  %353 = icmp eq i64 %352, %326, !dbg !2105
  br i1 %353, label %354, label %345, !dbg !2106, !llvm.loop !2107

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2109, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %355, metadata !1783, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.value(metadata i32 %355, metadata !2111, metadata !DIExpression()), !dbg !2119
  %356 = call i32 @iswprint(i32 noundef %355) #37, !dbg !2121
  %357 = icmp ne i32 %356, 0, !dbg !2122
  %358 = zext i1 %357 to i8, !dbg !2123
  call void @llvm.dbg.value(metadata i8 %358, metadata !1779, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %326, metadata !1776, metadata !DIExpression()), !dbg !2063
  br label %363, !dbg !2124

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1779, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 0, metadata !1776, metadata !DIExpression()), !dbg !2063
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2090
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1779, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 0, metadata !1776, metadata !DIExpression()), !dbg !2063
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %324, metadata !1747, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i1 %361, metadata !1774, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1915
  br label %368, !dbg !2068

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1779, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %364, metadata !1776, metadata !DIExpression()), !dbg !2063
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %324, metadata !1747, metadata !DIExpression()), !dbg !1806
  %366 = icmp eq i8 %365, 0, !dbg !2067
  call void @llvm.dbg.value(metadata i1 %366, metadata !1774, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1915
  %367 = icmp ugt i64 %364, 1, !dbg !2125
  br i1 %367, label %374, label %368, !dbg !2068

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2126
  br i1 %373, label %374, label %480, !dbg !2126

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %379, metadata !1796, metadata !DIExpression()), !dbg !2128
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2129

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1806
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1907
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1905
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1915
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2130
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1915
  call void @llvm.dbg.value(metadata i8 %387, metadata !1775, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %386, metadata !1773, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %385, metadata !1770, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %384, metadata !1768, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %383, metadata !1762, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %382, metadata !1754, metadata !DIExpression()), !dbg !1806
  br i1 %380, label %388, label %434, !dbg !2131

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2136

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1773, metadata !DIExpression()), !dbg !1915
  %390 = and i8 %383, 1, !dbg !2139
  %391 = icmp eq i8 %390, 0, !dbg !2139
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2139
  br i1 %392, label %393, label %409, !dbg !2139

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2141
  br i1 %394, label %395, label %397, !dbg !2145

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2141
  store i8 39, ptr %396, align 1, !dbg !2141, !tbaa !878
  br label %397, !dbg !2141

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %398, metadata !1754, metadata !DIExpression()), !dbg !1806
  %399 = icmp ult i64 %398, %146, !dbg !2146
  br i1 %399, label %400, label %402, !dbg !2149

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2146
  store i8 36, ptr %401, align 1, !dbg !2146, !tbaa !878
  br label %402, !dbg !2146

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %403, metadata !1754, metadata !DIExpression()), !dbg !1806
  %404 = icmp ult i64 %403, %146, !dbg !2150
  br i1 %404, label %405, label %407, !dbg !2153

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2150
  store i8 39, ptr %406, align 1, !dbg !2150, !tbaa !878
  br label %407, !dbg !2150

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2153
  call void @llvm.dbg.value(metadata i64 %408, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 1, metadata !1762, metadata !DIExpression()), !dbg !1806
  br label %409, !dbg !2154

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1806
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1806
  call void @llvm.dbg.value(metadata i8 %411, metadata !1762, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %410, metadata !1754, metadata !DIExpression()), !dbg !1806
  %412 = icmp ult i64 %410, %146, !dbg !2155
  br i1 %412, label %413, label %415, !dbg !2158

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2155
  store i8 92, ptr %414, align 1, !dbg !2155, !tbaa !878
  br label %415, !dbg !2155

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %416, metadata !1754, metadata !DIExpression()), !dbg !1806
  %417 = icmp ult i64 %416, %146, !dbg !2159
  br i1 %417, label %418, label %422, !dbg !2162

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2159
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2159
  store i8 %420, ptr %421, align 1, !dbg !2159, !tbaa !878
  br label %422, !dbg !2159

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %423, metadata !1754, metadata !DIExpression()), !dbg !1806
  %424 = icmp ult i64 %423, %146, !dbg !2163
  br i1 %424, label %425, label %430, !dbg !2166

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2163
  %428 = or i8 %427, 48, !dbg !2163
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2163
  store i8 %428, ptr %429, align 1, !dbg !2163, !tbaa !878
  br label %430, !dbg !2163

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %431, metadata !1754, metadata !DIExpression()), !dbg !1806
  %432 = and i8 %387, 7, !dbg !2167
  %433 = or i8 %432, 48, !dbg !2168
  call void @llvm.dbg.value(metadata i8 %433, metadata !1775, metadata !DIExpression()), !dbg !1915
  br label %443, !dbg !2169

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2170
  %436 = icmp eq i8 %435, 0, !dbg !2170
  br i1 %436, label %443, label %437, !dbg !2172

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2173
  br i1 %438, label %439, label %441, !dbg !2177

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2173
  store i8 92, ptr %440, align 1, !dbg !2173, !tbaa !878
  br label %441, !dbg !2173

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %442, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 0, metadata !1770, metadata !DIExpression()), !dbg !1915
  br label %443, !dbg !2178

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1806
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1907
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1915
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1915
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1915
  call void @llvm.dbg.value(metadata i8 %448, metadata !1775, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %447, metadata !1773, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %446, metadata !1770, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %445, metadata !1762, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %444, metadata !1754, metadata !DIExpression()), !dbg !1806
  %449 = add i64 %384, 1, !dbg !2179
  %450 = icmp ugt i64 %379, %449, !dbg !2181
  br i1 %450, label %451, label %478, !dbg !2182

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2183
  %453 = icmp ne i8 %452, 0, !dbg !2183
  %454 = and i8 %447, 1, !dbg !2183
  %455 = icmp eq i8 %454, 0, !dbg !2183
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2183
  br i1 %456, label %457, label %468, !dbg !2183

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2186
  br i1 %458, label %459, label %461, !dbg !2190

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2186
  store i8 39, ptr %460, align 1, !dbg !2186, !tbaa !878
  br label %461, !dbg !2186

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %462, metadata !1754, metadata !DIExpression()), !dbg !1806
  %463 = icmp ult i64 %462, %146, !dbg !2191
  br i1 %463, label %464, label %466, !dbg !2194

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2191
  store i8 39, ptr %465, align 1, !dbg !2191, !tbaa !878
  br label %466, !dbg !2191

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %467, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 0, metadata !1762, metadata !DIExpression()), !dbg !1806
  br label %468, !dbg !2195

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2196
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1806
  call void @llvm.dbg.value(metadata i8 %470, metadata !1762, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %469, metadata !1754, metadata !DIExpression()), !dbg !1806
  %471 = icmp ult i64 %469, %146, !dbg !2197
  br i1 %471, label %472, label %474, !dbg !2200

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2197
  store i8 %448, ptr %473, align 1, !dbg !2197, !tbaa !878
  br label %474, !dbg !2197

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %475, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %449, metadata !1768, metadata !DIExpression()), !dbg !1905
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2201
  %477 = load i8, ptr %476, align 1, !dbg !2201, !tbaa !878
  call void @llvm.dbg.value(metadata i8 %477, metadata !1775, metadata !DIExpression()), !dbg !1915
  br label %381, !dbg !2202, !llvm.loop !2203

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1915
  call void @llvm.dbg.value(metadata i8 %448, metadata !1775, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %479, metadata !1774, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %447, metadata !1773, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %446, metadata !1770, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %384, metadata !1768, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %445, metadata !1762, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %444, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %378, metadata !1747, metadata !DIExpression()), !dbg !1806
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2206
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1806
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1811
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1806
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1806
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1905
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1915
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1915
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1915
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1745, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %489, metadata !1775, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %488, metadata !1774, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %487, metadata !1773, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %173, metadata !1770, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %486, metadata !1768, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %485, metadata !1762, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %484, metadata !1760, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %483, metadata !1755, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %482, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %481, metadata !1747, metadata !DIExpression()), !dbg !1806
  br i1 %127, label %502, label %491, !dbg !2207

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
  br i1 %137, label %503, label %524, !dbg !2209

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2210

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
  %514 = lshr i8 %505, 5, !dbg !2211
  %515 = zext i8 %514 to i64, !dbg !2211
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2212
  %517 = load i32, ptr %516, align 4, !dbg !2212, !tbaa !869
  %518 = and i8 %505, 31, !dbg !2213
  %519 = zext i8 %518 to i32, !dbg !2213
  %520 = shl nuw i32 1, %519, !dbg !2214
  %521 = and i32 %517, %520, !dbg !2214
  %522 = icmp eq i32 %521, 0, !dbg !2214
  %523 = and i1 %172, %522, !dbg !2215
  br i1 %523, label %573, label %535, !dbg !2215

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
  br i1 %172, label %573, label %535, !dbg !2216

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2206
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1806
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1811
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1815
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1907
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2217
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1915
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1915
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1745, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %543, metadata !1775, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %542, metadata !1774, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %541, metadata !1768, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %540, metadata !1762, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %539, metadata !1760, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %538, metadata !1755, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %537, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %536, metadata !1747, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.label(metadata !1803), !dbg !2218
  br i1 %132, label %545, label %674, !dbg !2219

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1773, metadata !DIExpression()), !dbg !1915
  %546 = and i8 %540, 1, !dbg !2221
  %547 = icmp eq i8 %546, 0, !dbg !2221
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2221
  br i1 %548, label %549, label %565, !dbg !2221

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2223
  br i1 %550, label %551, label %553, !dbg !2227

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2223
  store i8 39, ptr %552, align 1, !dbg !2223, !tbaa !878
  br label %553, !dbg !2223

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %554, metadata !1754, metadata !DIExpression()), !dbg !1806
  %555 = icmp ult i64 %554, %544, !dbg !2228
  br i1 %555, label %556, label %558, !dbg !2231

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2228
  store i8 36, ptr %557, align 1, !dbg !2228, !tbaa !878
  br label %558, !dbg !2228

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %559, metadata !1754, metadata !DIExpression()), !dbg !1806
  %560 = icmp ult i64 %559, %544, !dbg !2232
  br i1 %560, label %561, label %563, !dbg !2235

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2232
  store i8 39, ptr %562, align 1, !dbg !2232, !tbaa !878
  br label %563, !dbg !2232

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %564, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 1, metadata !1762, metadata !DIExpression()), !dbg !1806
  br label %565, !dbg !2236

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1915
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1806
  call void @llvm.dbg.value(metadata i8 %567, metadata !1762, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %566, metadata !1754, metadata !DIExpression()), !dbg !1806
  %568 = icmp ult i64 %566, %544, !dbg !2237
  br i1 %568, label %569, label %571, !dbg !2240

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2237
  store i8 92, ptr %570, align 1, !dbg !2237, !tbaa !878
  br label %571, !dbg !2237

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %544, metadata !1745, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %543, metadata !1775, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %542, metadata !1774, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 1, metadata !1773, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %541, metadata !1768, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %567, metadata !1762, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %539, metadata !1760, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %538, metadata !1755, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %572, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %536, metadata !1747, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.label(metadata !1804), !dbg !2241
  br label %600, !dbg !2242

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2206
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1806
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1811
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1815
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1907
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2217
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1915
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1915
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2245
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1745, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %582, metadata !1775, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %581, metadata !1774, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i8 %580, metadata !1773, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 %579, metadata !1768, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %578, metadata !1762, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %577, metadata !1760, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %576, metadata !1755, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %575, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %574, metadata !1747, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.label(metadata !1804), !dbg !2241
  %584 = and i8 %578, 1, !dbg !2242
  %585 = icmp ne i8 %584, 0, !dbg !2242
  %586 = and i8 %580, 1, !dbg !2242
  %587 = icmp eq i8 %586, 0, !dbg !2242
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2242
  br i1 %588, label %589, label %600, !dbg !2242

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2246
  br i1 %590, label %591, label %593, !dbg !2250

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2246
  store i8 39, ptr %592, align 1, !dbg !2246, !tbaa !878
  br label %593, !dbg !2246

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %594, metadata !1754, metadata !DIExpression()), !dbg !1806
  %595 = icmp ult i64 %594, %583, !dbg !2251
  br i1 %595, label %596, label %598, !dbg !2254

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2251
  store i8 39, ptr %597, align 1, !dbg !2251, !tbaa !878
  br label %598, !dbg !2251

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %599, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 0, metadata !1762, metadata !DIExpression()), !dbg !1806
  br label %600, !dbg !2255

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1915
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1806
  call void @llvm.dbg.value(metadata i8 %609, metadata !1762, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %608, metadata !1754, metadata !DIExpression()), !dbg !1806
  %610 = icmp ult i64 %608, %601, !dbg !2256
  br i1 %610, label %611, label %613, !dbg !2259

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2256
  store i8 %602, ptr %612, align 1, !dbg !2256, !tbaa !878
  br label %613, !dbg !2256

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %614, metadata !1754, metadata !DIExpression()), !dbg !1806
  %615 = icmp eq i8 %603, 0, !dbg !2260
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2262
  call void @llvm.dbg.value(metadata i8 %616, metadata !1761, metadata !DIExpression()), !dbg !1806
  br label %617, !dbg !2263

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2206
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1806
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1811
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1815
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1816
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1907
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2217
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1745, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %624, metadata !1768, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 %623, metadata !1762, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %622, metadata !1761, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %621, metadata !1760, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %620, metadata !1755, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %619, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %618, metadata !1747, metadata !DIExpression()), !dbg !1806
  %626 = add i64 %624, 1, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %626, metadata !1768, metadata !DIExpression()), !dbg !1905
  br label %138, !dbg !2265, !llvm.loop !2266

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1745, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %143, metadata !1761, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %142, metadata !1760, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %141, metadata !1755, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %140, metadata !1754, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %139, metadata !1747, metadata !DIExpression()), !dbg !1806
  %628 = icmp eq i64 %140, 0, !dbg !2268
  %629 = and i1 %133, %628, !dbg !2270
  %630 = xor i1 %629, true, !dbg !2270
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2270
  br i1 %631, label %632, label %670, !dbg !2270

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2271
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2271
  br i1 %636, label %637, label %646, !dbg !2271

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2273
  %639 = icmp eq i8 %638, 0, !dbg !2273
  br i1 %639, label %642, label %640, !dbg !2276

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2277
  br label %694, !dbg !2278

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2279
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2281
  br i1 %645, label %28, label %646, !dbg !2281

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2282
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2284
  br i1 %649, label %650, label %665, !dbg !2284

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1756, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %140, metadata !1754, metadata !DIExpression()), !dbg !1806
  %651 = load i8, ptr %120, align 1, !dbg !2285, !tbaa !878
  %652 = icmp eq i8 %651, 0, !dbg !2288
  br i1 %652, label %665, label %653, !dbg !2288

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1756, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i64 %656, metadata !1754, metadata !DIExpression()), !dbg !1806
  %657 = icmp ult i64 %656, %146, !dbg !2289
  br i1 %657, label %658, label %660, !dbg !2292

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2289
  store i8 %654, ptr %659, align 1, !dbg !2289, !tbaa !878
  br label %660, !dbg !2289

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %661, metadata !1754, metadata !DIExpression()), !dbg !1806
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2293
  call void @llvm.dbg.value(metadata ptr %662, metadata !1756, metadata !DIExpression()), !dbg !1806
  %663 = load i8, ptr %662, align 1, !dbg !2285, !tbaa !878
  %664 = icmp eq i8 %663, 0, !dbg !2288
  br i1 %664, label %665, label %653, !dbg !2288, !llvm.loop !2294

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1888
  call void @llvm.dbg.value(metadata i64 %666, metadata !1754, metadata !DIExpression()), !dbg !1806
  %667 = icmp ult i64 %666, %146, !dbg !2296
  br i1 %667, label %668, label %694, !dbg !2298

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2299
  store i8 0, ptr %669, align 1, !dbg !2300, !tbaa !878
  br label %694, !dbg !2299

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1805), !dbg !2301
  %672 = icmp eq i8 %124, 0, !dbg !2302
  %673 = select i1 %672, i32 2, i32 4, !dbg !2302
  br label %684, !dbg !2302

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2302
  %678 = select i1 %677, i32 2, i32 4, !dbg !2302
  br label %679, !dbg !2304

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1805), !dbg !2301
  %683 = icmp eq i32 %116, 2, !dbg !2304
  br i1 %683, label %684, label %688, !dbg !2302

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2302

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1748, metadata !DIExpression()), !dbg !1806
  %692 = and i32 %5, -3, !dbg !2305
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2306
  br label %694, !dbg !2307

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2308
}

; Function Attrs: nounwind
declare !dbg !2309 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2312 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2315 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2317 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2321, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %1, metadata !2322, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata ptr %2, metadata !2323, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata ptr %0, metadata !2325, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %1, metadata !2330, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata ptr null, metadata !2331, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata ptr %2, metadata !2332, metadata !DIExpression()), !dbg !2338
  %4 = icmp eq ptr %2, null, !dbg !2340
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2340
  call void @llvm.dbg.value(metadata ptr %5, metadata !2333, metadata !DIExpression()), !dbg !2338
  %6 = tail call ptr @__errno_location() #40, !dbg !2341
  %7 = load i32, ptr %6, align 4, !dbg !2341, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %7, metadata !2334, metadata !DIExpression()), !dbg !2338
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2342
  %9 = load i32, ptr %8, align 4, !dbg !2342, !tbaa !1688
  %10 = or i32 %9, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i32 %10, metadata !2335, metadata !DIExpression()), !dbg !2338
  %11 = load i32, ptr %5, align 8, !dbg !2344, !tbaa !1638
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2345
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2346
  %14 = load ptr, ptr %13, align 8, !dbg !2346, !tbaa !1709
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2347
  %16 = load ptr, ptr %15, align 8, !dbg !2347, !tbaa !1712
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2348
  %18 = add i64 %17, 1, !dbg !2349
  call void @llvm.dbg.value(metadata i64 %18, metadata !2336, metadata !DIExpression()), !dbg !2338
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2350
  call void @llvm.dbg.value(metadata ptr %19, metadata !2337, metadata !DIExpression()), !dbg !2338
  %20 = load i32, ptr %5, align 8, !dbg !2351, !tbaa !1638
  %21 = load ptr, ptr %13, align 8, !dbg !2352, !tbaa !1709
  %22 = load ptr, ptr %15, align 8, !dbg !2353, !tbaa !1712
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2354
  store i32 %7, ptr %6, align 4, !dbg !2355, !tbaa !869
  ret ptr %19, !dbg !2356
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2326 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2325, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i64 %1, metadata !2330, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata ptr %2, metadata !2331, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata ptr %3, metadata !2332, metadata !DIExpression()), !dbg !2357
  %5 = icmp eq ptr %3, null, !dbg !2358
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2358
  call void @llvm.dbg.value(metadata ptr %6, metadata !2333, metadata !DIExpression()), !dbg !2357
  %7 = tail call ptr @__errno_location() #40, !dbg !2359
  %8 = load i32, ptr %7, align 4, !dbg !2359, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %8, metadata !2334, metadata !DIExpression()), !dbg !2357
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2360
  %10 = load i32, ptr %9, align 4, !dbg !2360, !tbaa !1688
  %11 = icmp eq ptr %2, null, !dbg !2361
  %12 = zext i1 %11 to i32, !dbg !2361
  %13 = or i32 %10, %12, !dbg !2362
  call void @llvm.dbg.value(metadata i32 %13, metadata !2335, metadata !DIExpression()), !dbg !2357
  %14 = load i32, ptr %6, align 8, !dbg !2363, !tbaa !1638
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2364
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2365
  %17 = load ptr, ptr %16, align 8, !dbg !2365, !tbaa !1709
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2366
  %19 = load ptr, ptr %18, align 8, !dbg !2366, !tbaa !1712
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2367
  %21 = add i64 %20, 1, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %21, metadata !2336, metadata !DIExpression()), !dbg !2357
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2369
  call void @llvm.dbg.value(metadata ptr %22, metadata !2337, metadata !DIExpression()), !dbg !2357
  %23 = load i32, ptr %6, align 8, !dbg !2370, !tbaa !1638
  %24 = load ptr, ptr %16, align 8, !dbg !2371, !tbaa !1709
  %25 = load ptr, ptr %18, align 8, !dbg !2372, !tbaa !1712
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2373
  store i32 %8, ptr %7, align 4, !dbg !2374, !tbaa !869
  br i1 %11, label %28, label %27, !dbg !2375

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2376, !tbaa !2378
  br label %28, !dbg !2379

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2380
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2381 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2386, !tbaa !806
  call void @llvm.dbg.value(metadata ptr %1, metadata !2383, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 1, metadata !2384, metadata !DIExpression()), !dbg !2388
  %2 = load i32, ptr @nslots, align 4, !tbaa !869
  call void @llvm.dbg.value(metadata i32 1, metadata !2384, metadata !DIExpression()), !dbg !2388
  %3 = icmp sgt i32 %2, 1, !dbg !2389
  br i1 %3, label %4, label %6, !dbg !2391

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2389
  br label %10, !dbg !2391

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2392
  %8 = load ptr, ptr %7, align 8, !dbg !2392, !tbaa !2394
  %9 = icmp eq ptr %8, @slot0, !dbg !2396
  br i1 %9, label %17, label %16, !dbg !2397

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2384, metadata !DIExpression()), !dbg !2388
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2398
  %13 = load ptr, ptr %12, align 8, !dbg !2398, !tbaa !2394
  tail call void @free(ptr noundef %13) #37, !dbg !2399
  %14 = add nuw nsw i64 %11, 1, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %14, metadata !2384, metadata !DIExpression()), !dbg !2388
  %15 = icmp eq i64 %14, %5, !dbg !2389
  br i1 %15, label %6, label %10, !dbg !2391, !llvm.loop !2401

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2403
  store i64 256, ptr @slotvec0, align 8, !dbg !2405, !tbaa !2406
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2407, !tbaa !2394
  br label %17, !dbg !2408

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2409
  br i1 %18, label %20, label %19, !dbg !2411

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2412
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2414, !tbaa !806
  br label %20, !dbg !2415

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2416, !tbaa !869
  ret void, !dbg !2417
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2418 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2421 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata ptr %1, metadata !2424, metadata !DIExpression()), !dbg !2425
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2426
  ret ptr %3, !dbg !2427
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2428 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2432, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata ptr %1, metadata !2433, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %2, metadata !2434, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata ptr %3, metadata !2435, metadata !DIExpression()), !dbg !2448
  %6 = tail call ptr @__errno_location() #40, !dbg !2449
  %7 = load i32, ptr %6, align 4, !dbg !2449, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %7, metadata !2436, metadata !DIExpression()), !dbg !2448
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2450, !tbaa !806
  call void @llvm.dbg.value(metadata ptr %8, metadata !2437, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2438, metadata !DIExpression()), !dbg !2448
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2451
  br i1 %9, label %10, label %11, !dbg !2451

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2453
  unreachable, !dbg !2453

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2454, !tbaa !869
  %13 = icmp sgt i32 %12, %0, !dbg !2455
  br i1 %13, label %32, label %14, !dbg !2456

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2457
  call void @llvm.dbg.value(metadata i1 %15, metadata !2439, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2458
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2459
  %16 = sext i32 %12 to i64, !dbg !2460
  call void @llvm.dbg.value(metadata i64 %16, metadata !2442, metadata !DIExpression()), !dbg !2458
  store i64 %16, ptr %5, align 8, !dbg !2461, !tbaa !2378
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2462
  %18 = add nuw nsw i32 %0, 1, !dbg !2463
  %19 = sub i32 %18, %12, !dbg !2464
  %20 = sext i32 %19 to i64, !dbg !2465
  call void @llvm.dbg.value(metadata ptr %5, metadata !2442, metadata !DIExpression(DW_OP_deref)), !dbg !2458
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2466
  call void @llvm.dbg.value(metadata ptr %21, metadata !2437, metadata !DIExpression()), !dbg !2448
  store ptr %21, ptr @slotvec, align 8, !dbg !2467, !tbaa !806
  br i1 %15, label %22, label %23, !dbg !2468

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2469, !tbaa.struct !2471
  br label %23, !dbg !2472

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2473, !tbaa !869
  %25 = sext i32 %24 to i64, !dbg !2474
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2474
  %27 = load i64, ptr %5, align 8, !dbg !2475, !tbaa !2378
  call void @llvm.dbg.value(metadata i64 %27, metadata !2442, metadata !DIExpression()), !dbg !2458
  %28 = sub nsw i64 %27, %25, !dbg !2476
  %29 = shl i64 %28, 4, !dbg !2477
  call void @llvm.dbg.value(metadata ptr %26, metadata !1845, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 0, metadata !1848, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i64 %29, metadata !1849, metadata !DIExpression()), !dbg !2478
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2480
  %30 = load i64, ptr %5, align 8, !dbg !2481, !tbaa !2378
  call void @llvm.dbg.value(metadata i64 %30, metadata !2442, metadata !DIExpression()), !dbg !2458
  %31 = trunc i64 %30 to i32, !dbg !2481
  store i32 %31, ptr @nslots, align 4, !dbg !2482, !tbaa !869
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2483
  br label %32, !dbg !2484

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2448
  call void @llvm.dbg.value(metadata ptr %33, metadata !2437, metadata !DIExpression()), !dbg !2448
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2485
  %36 = load i64, ptr %35, align 8, !dbg !2486, !tbaa !2406
  call void @llvm.dbg.value(metadata i64 %36, metadata !2443, metadata !DIExpression()), !dbg !2487
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2488
  %38 = load ptr, ptr %37, align 8, !dbg !2488, !tbaa !2394
  call void @llvm.dbg.value(metadata ptr %38, metadata !2445, metadata !DIExpression()), !dbg !2487
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2489
  %40 = load i32, ptr %39, align 4, !dbg !2489, !tbaa !1688
  %41 = or i32 %40, 1, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %41, metadata !2446, metadata !DIExpression()), !dbg !2487
  %42 = load i32, ptr %3, align 8, !dbg !2491, !tbaa !1638
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2492
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2493
  %45 = load ptr, ptr %44, align 8, !dbg !2493, !tbaa !1709
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2494
  %47 = load ptr, ptr %46, align 8, !dbg !2494, !tbaa !1712
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2495
  call void @llvm.dbg.value(metadata i64 %48, metadata !2447, metadata !DIExpression()), !dbg !2487
  %49 = icmp ugt i64 %36, %48, !dbg !2496
  br i1 %49, label %60, label %50, !dbg !2498

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %51, metadata !2443, metadata !DIExpression()), !dbg !2487
  store i64 %51, ptr %35, align 8, !dbg !2501, !tbaa !2406
  %52 = icmp eq ptr %38, @slot0, !dbg !2502
  br i1 %52, label %54, label %53, !dbg !2504

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2505
  br label %54, !dbg !2505

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2506
  call void @llvm.dbg.value(metadata ptr %55, metadata !2445, metadata !DIExpression()), !dbg !2487
  store ptr %55, ptr %37, align 8, !dbg !2507, !tbaa !2394
  %56 = load i32, ptr %3, align 8, !dbg !2508, !tbaa !1638
  %57 = load ptr, ptr %44, align 8, !dbg !2509, !tbaa !1709
  %58 = load ptr, ptr %46, align 8, !dbg !2510, !tbaa !1712
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2511
  br label %60, !dbg !2512

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2487
  call void @llvm.dbg.value(metadata ptr %61, metadata !2445, metadata !DIExpression()), !dbg !2487
  store i32 %7, ptr %6, align 4, !dbg !2513, !tbaa !869
  ret ptr %61, !dbg !2514
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2515 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2519, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata ptr %1, metadata !2520, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i64 %2, metadata !2521, metadata !DIExpression()), !dbg !2522
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2523
  ret ptr %4, !dbg !2524
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2525 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2527, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 0, metadata !2423, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata ptr %0, metadata !2424, metadata !DIExpression()), !dbg !2529
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2531
  ret ptr %2, !dbg !2532
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2533 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2537, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 %1, metadata !2538, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i32 0, metadata !2519, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata ptr %0, metadata !2520, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i64 %1, metadata !2521, metadata !DIExpression()), !dbg !2540
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2542
  ret ptr %3, !dbg !2543
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2544 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2548, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i32 %1, metadata !2549, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata ptr %2, metadata !2550, metadata !DIExpression()), !dbg !2552
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2553
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2551, metadata !DIExpression()), !dbg !2554
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2555), !dbg !2558
  call void @llvm.dbg.value(metadata i32 %1, metadata !2559, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2564, metadata !DIExpression()), !dbg !2567
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2567, !alias.scope !2555
  %5 = icmp eq i32 %1, 10, !dbg !2568
  br i1 %5, label %6, label %7, !dbg !2570

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2571, !noalias !2555
  unreachable, !dbg !2571

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2572, !tbaa !1638, !alias.scope !2555
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2573
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2574
  ret ptr %8, !dbg !2575
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2576 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2580, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 %1, metadata !2581, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata ptr %2, metadata !2582, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %3, metadata !2583, metadata !DIExpression()), !dbg !2585
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2586
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2584, metadata !DIExpression()), !dbg !2587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2588), !dbg !2591
  call void @llvm.dbg.value(metadata i32 %1, metadata !2559, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2564, metadata !DIExpression()), !dbg !2594
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2594, !alias.scope !2588
  %6 = icmp eq i32 %1, 10, !dbg !2595
  br i1 %6, label %7, label %8, !dbg !2596

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2597, !noalias !2588
  unreachable, !dbg !2597

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2598, !tbaa !1638, !alias.scope !2588
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2599
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2600
  ret ptr %9, !dbg !2601
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2602 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2606, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata ptr %1, metadata !2607, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 0, metadata !2548, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 %0, metadata !2549, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata ptr %1, metadata !2550, metadata !DIExpression()), !dbg !2609
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2611
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2551, metadata !DIExpression()), !dbg !2612
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613), !dbg !2616
  call void @llvm.dbg.value(metadata i32 %0, metadata !2559, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2564, metadata !DIExpression()), !dbg !2619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2619, !alias.scope !2613
  %4 = icmp eq i32 %0, 10, !dbg !2620
  br i1 %4, label %5, label %6, !dbg !2621

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2622, !noalias !2613
  unreachable, !dbg !2622

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2623, !tbaa !1638, !alias.scope !2613
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2624
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2625
  ret ptr %7, !dbg !2626
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2627 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2631, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata ptr %1, metadata !2632, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i64 %2, metadata !2633, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i32 0, metadata !2580, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %0, metadata !2581, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata ptr %1, metadata !2582, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i64 %2, metadata !2583, metadata !DIExpression()), !dbg !2635
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2637
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2584, metadata !DIExpression()), !dbg !2638
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2639), !dbg !2642
  call void @llvm.dbg.value(metadata i32 %0, metadata !2559, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2564, metadata !DIExpression()), !dbg !2645
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2645, !alias.scope !2639
  %5 = icmp eq i32 %0, 10, !dbg !2646
  br i1 %5, label %6, label %7, !dbg !2647

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2648, !noalias !2639
  unreachable, !dbg !2648

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2649, !tbaa !1638, !alias.scope !2639
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2650
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2651
  ret ptr %8, !dbg !2652
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2653 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2657, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 %1, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 %2, metadata !2659, metadata !DIExpression()), !dbg !2661
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2662
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2660, metadata !DIExpression()), !dbg !2663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2664, !tbaa.struct !2665
  call void @llvm.dbg.value(metadata ptr %4, metadata !1655, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 %2, metadata !1656, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i32 1, metadata !1657, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8 %2, metadata !1658, metadata !DIExpression()), !dbg !2666
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2668
  %6 = lshr i8 %2, 5, !dbg !2669
  %7 = zext i8 %6 to i64, !dbg !2669
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2670
  call void @llvm.dbg.value(metadata ptr %8, metadata !1659, metadata !DIExpression()), !dbg !2666
  %9 = and i8 %2, 31, !dbg !2671
  %10 = zext i8 %9 to i32, !dbg !2671
  call void @llvm.dbg.value(metadata i32 %10, metadata !1661, metadata !DIExpression()), !dbg !2666
  %11 = load i32, ptr %8, align 4, !dbg !2672, !tbaa !869
  %12 = lshr i32 %11, %10, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %12, metadata !1662, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2666
  %13 = and i32 %12, 1, !dbg !2674
  %14 = xor i32 %13, 1, !dbg !2674
  %15 = shl nuw i32 %14, %10, !dbg !2675
  %16 = xor i32 %15, %11, !dbg !2676
  store i32 %16, ptr %8, align 4, !dbg !2676, !tbaa !869
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2677
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2678
  ret ptr %17, !dbg !2679
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2680 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2684, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 %1, metadata !2685, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata ptr %0, metadata !2657, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i64 -1, metadata !2658, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8 %1, metadata !2659, metadata !DIExpression()), !dbg !2687
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2689
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2660, metadata !DIExpression()), !dbg !2690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2691, !tbaa.struct !2665
  call void @llvm.dbg.value(metadata ptr %3, metadata !1655, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 %1, metadata !1656, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i32 1, metadata !1657, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 %1, metadata !1658, metadata !DIExpression()), !dbg !2692
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2694
  %5 = lshr i8 %1, 5, !dbg !2695
  %6 = zext i8 %5 to i64, !dbg !2695
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2696
  call void @llvm.dbg.value(metadata ptr %7, metadata !1659, metadata !DIExpression()), !dbg !2692
  %8 = and i8 %1, 31, !dbg !2697
  %9 = zext i8 %8 to i32, !dbg !2697
  call void @llvm.dbg.value(metadata i32 %9, metadata !1661, metadata !DIExpression()), !dbg !2692
  %10 = load i32, ptr %7, align 4, !dbg !2698, !tbaa !869
  %11 = lshr i32 %10, %9, !dbg !2699
  call void @llvm.dbg.value(metadata i32 %11, metadata !1662, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2692
  %12 = and i32 %11, 1, !dbg !2700
  %13 = xor i32 %12, 1, !dbg !2700
  %14 = shl nuw i32 %13, %9, !dbg !2701
  %15 = xor i32 %14, %10, !dbg !2702
  store i32 %15, ptr %7, align 4, !dbg !2702, !tbaa !869
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2703
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2704
  ret ptr %16, !dbg !2705
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2706 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2708, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata ptr %0, metadata !2684, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 58, metadata !2685, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata ptr %0, metadata !2657, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i64 -1, metadata !2658, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 58, metadata !2659, metadata !DIExpression()), !dbg !2712
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2714
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2660, metadata !DIExpression()), !dbg !2715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2716, !tbaa.struct !2665
  call void @llvm.dbg.value(metadata ptr %2, metadata !1655, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8 58, metadata !1656, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32 1, metadata !1657, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8 58, metadata !1658, metadata !DIExpression()), !dbg !2717
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2719
  call void @llvm.dbg.value(metadata ptr %3, metadata !1659, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32 26, metadata !1661, metadata !DIExpression()), !dbg !2717
  %4 = load i32, ptr %3, align 4, !dbg !2720, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %4, metadata !1662, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2717
  %5 = or i32 %4, 67108864, !dbg !2721
  store i32 %5, ptr %3, align 4, !dbg !2721, !tbaa !869
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2722
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2723
  ret ptr %6, !dbg !2724
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2725 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2727, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i64 %1, metadata !2728, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %0, metadata !2657, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i64 %1, metadata !2658, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i8 58, metadata !2659, metadata !DIExpression()), !dbg !2730
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2732
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2660, metadata !DIExpression()), !dbg !2733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2734, !tbaa.struct !2665
  call void @llvm.dbg.value(metadata ptr %3, metadata !1655, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8 58, metadata !1656, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32 1, metadata !1657, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8 58, metadata !1658, metadata !DIExpression()), !dbg !2735
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2737
  call void @llvm.dbg.value(metadata ptr %4, metadata !1659, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32 26, metadata !1661, metadata !DIExpression()), !dbg !2735
  %5 = load i32, ptr %4, align 4, !dbg !2738, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %5, metadata !1662, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2735
  %6 = or i32 %5, 67108864, !dbg !2739
  store i32 %6, ptr %4, align 4, !dbg !2739, !tbaa !869
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2740
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2741
  ret ptr %7, !dbg !2742
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2743 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2564, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2749
  call void @llvm.dbg.value(metadata i32 %0, metadata !2745, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i32 %1, metadata !2746, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata ptr %2, metadata !2747, metadata !DIExpression()), !dbg !2751
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2752
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2748, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 %1, metadata !2559, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 0, metadata !2564, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2754
  %5 = icmp eq i32 %1, 10, !dbg !2755
  br i1 %5, label %6, label %7, !dbg !2756

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2757, !noalias !2758
  unreachable, !dbg !2757

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2564, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2754
  store i32 %1, ptr %4, align 8, !dbg !2761, !tbaa.struct !2665
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2761
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2761
  call void @llvm.dbg.value(metadata ptr %4, metadata !1655, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8 58, metadata !1656, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32 1, metadata !1657, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8 58, metadata !1658, metadata !DIExpression()), !dbg !2762
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2764
  call void @llvm.dbg.value(metadata ptr %9, metadata !1659, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32 26, metadata !1661, metadata !DIExpression()), !dbg !2762
  %10 = load i32, ptr %9, align 4, !dbg !2765, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %10, metadata !1662, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2762
  %11 = or i32 %10, 67108864, !dbg !2766
  store i32 %11, ptr %9, align 4, !dbg !2766, !tbaa !869
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2767
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2768
  ret ptr %12, !dbg !2769
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2770 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2774, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata ptr %1, metadata !2775, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata ptr %2, metadata !2776, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata ptr %3, metadata !2777, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i32 %0, metadata !2779, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata ptr %1, metadata !2784, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata ptr %2, metadata !2785, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata ptr %3, metadata !2786, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i64 -1, metadata !2787, metadata !DIExpression()), !dbg !2789
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2791
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2788, metadata !DIExpression()), !dbg !2792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2793, !tbaa.struct !2665
  call void @llvm.dbg.value(metadata ptr %5, metadata !1695, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %1, metadata !1696, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %2, metadata !1697, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %5, metadata !1695, metadata !DIExpression()), !dbg !2794
  store i32 10, ptr %5, align 8, !dbg !2796, !tbaa !1638
  %6 = icmp ne ptr %1, null, !dbg !2797
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2798
  br i1 %8, label %10, label %9, !dbg !2798

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2799
  unreachable, !dbg !2799

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2800
  store ptr %1, ptr %11, align 8, !dbg !2801, !tbaa !1709
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2802
  store ptr %2, ptr %12, align 8, !dbg !2803, !tbaa !1712
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2804
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2805
  ret ptr %13, !dbg !2806
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2780 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2779, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata ptr %1, metadata !2784, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata ptr %2, metadata !2785, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata ptr %3, metadata !2786, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %4, metadata !2787, metadata !DIExpression()), !dbg !2807
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2808
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2788, metadata !DIExpression()), !dbg !2809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2810, !tbaa.struct !2665
  call void @llvm.dbg.value(metadata ptr %6, metadata !1695, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata ptr %1, metadata !1696, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata ptr %2, metadata !1697, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata ptr %6, metadata !1695, metadata !DIExpression()), !dbg !2811
  store i32 10, ptr %6, align 8, !dbg !2813, !tbaa !1638
  %7 = icmp ne ptr %1, null, !dbg !2814
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2815
  br i1 %9, label %11, label %10, !dbg !2815

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2816
  unreachable, !dbg !2816

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2817
  store ptr %1, ptr %12, align 8, !dbg !2818, !tbaa !1709
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2819
  store ptr %2, ptr %13, align 8, !dbg !2820, !tbaa !1712
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2821
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2822
  ret ptr %14, !dbg !2823
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2824 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %1, metadata !2829, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata ptr %2, metadata !2830, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i32 0, metadata !2774, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata ptr %0, metadata !2775, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata ptr %1, metadata !2776, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata ptr %2, metadata !2777, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i32 0, metadata !2779, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %0, metadata !2784, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %1, metadata !2785, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %2, metadata !2786, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 -1, metadata !2787, metadata !DIExpression()), !dbg !2834
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2836
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2788, metadata !DIExpression()), !dbg !2837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2838, !tbaa.struct !2665
  call void @llvm.dbg.value(metadata ptr %4, metadata !1695, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata ptr %0, metadata !1696, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata ptr %1, metadata !1697, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata ptr %4, metadata !1695, metadata !DIExpression()), !dbg !2839
  store i32 10, ptr %4, align 8, !dbg !2841, !tbaa !1638
  %5 = icmp ne ptr %0, null, !dbg !2842
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2843
  br i1 %7, label %9, label %8, !dbg !2843

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2844
  unreachable, !dbg !2844

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2845
  store ptr %0, ptr %10, align 8, !dbg !2846, !tbaa !1709
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2847
  store ptr %1, ptr %11, align 8, !dbg !2848, !tbaa !1712
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2849
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2850
  ret ptr %12, !dbg !2851
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2852 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2856, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr %1, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr %2, metadata !2858, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 %3, metadata !2859, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i32 0, metadata !2779, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata ptr %0, metadata !2784, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata ptr %1, metadata !2785, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata ptr %2, metadata !2786, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 %3, metadata !2787, metadata !DIExpression()), !dbg !2861
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2863
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2788, metadata !DIExpression()), !dbg !2864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2865, !tbaa.struct !2665
  call void @llvm.dbg.value(metadata ptr %5, metadata !1695, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata ptr %0, metadata !1696, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata ptr %1, metadata !1697, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata ptr %5, metadata !1695, metadata !DIExpression()), !dbg !2866
  store i32 10, ptr %5, align 8, !dbg !2868, !tbaa !1638
  %6 = icmp ne ptr %0, null, !dbg !2869
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2870
  br i1 %8, label %10, label %9, !dbg !2870

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2871
  unreachable, !dbg !2871

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2872
  store ptr %0, ptr %11, align 8, !dbg !2873, !tbaa !1709
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2874
  store ptr %1, ptr %12, align 8, !dbg !2875, !tbaa !1712
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2876
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2877
  ret ptr %13, !dbg !2878
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2879 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2883, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata ptr %1, metadata !2884, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i64 %2, metadata !2885, metadata !DIExpression()), !dbg !2886
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2887
  ret ptr %4, !dbg !2888
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2889 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2893, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %1, metadata !2894, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i32 0, metadata !2883, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata ptr %0, metadata !2884, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i64 %1, metadata !2885, metadata !DIExpression()), !dbg !2896
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2898
  ret ptr %3, !dbg !2899
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2900 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2904, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %1, metadata !2905, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i32 %0, metadata !2883, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata ptr %1, metadata !2884, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 -1, metadata !2885, metadata !DIExpression()), !dbg !2907
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2909
  ret ptr %3, !dbg !2910
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2911 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2915, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i32 0, metadata !2904, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata ptr %0, metadata !2905, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i32 0, metadata !2883, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata ptr %0, metadata !2884, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i64 -1, metadata !2885, metadata !DIExpression()), !dbg !2919
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2921
  ret ptr %2, !dbg !2922
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2923 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2962, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr %1, metadata !2963, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr %2, metadata !2964, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr %3, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr %4, metadata !2966, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 %5, metadata !2967, metadata !DIExpression()), !dbg !2968
  %7 = icmp eq ptr %1, null, !dbg !2969
  br i1 %7, label %10, label %8, !dbg !2971

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.82, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2972
  br label %12, !dbg !2972

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.83, ptr noundef %2, ptr noundef %3) #37, !dbg !2973
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.3.85, i32 noundef 5) #37, !dbg !2974
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2974
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !2975
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.5.87, i32 noundef 5) #37, !dbg !2976
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.88) #37, !dbg !2976
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !2977
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
  ], !dbg !2978

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.7.89, i32 noundef 5) #37, !dbg !2979
  %21 = load ptr, ptr %4, align 8, !dbg !2979, !tbaa !806
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2979
  br label %147, !dbg !2981

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.8.90, i32 noundef 5) #37, !dbg !2982
  %25 = load ptr, ptr %4, align 8, !dbg !2982, !tbaa !806
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2982
  %27 = load ptr, ptr %26, align 8, !dbg !2982, !tbaa !806
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2982
  br label %147, !dbg !2983

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.9.91, i32 noundef 5) #37, !dbg !2984
  %31 = load ptr, ptr %4, align 8, !dbg !2984, !tbaa !806
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2984
  %33 = load ptr, ptr %32, align 8, !dbg !2984, !tbaa !806
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2984
  %35 = load ptr, ptr %34, align 8, !dbg !2984, !tbaa !806
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2984
  br label %147, !dbg !2985

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.10.92, i32 noundef 5) #37, !dbg !2986
  %39 = load ptr, ptr %4, align 8, !dbg !2986, !tbaa !806
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2986
  %41 = load ptr, ptr %40, align 8, !dbg !2986, !tbaa !806
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2986
  %43 = load ptr, ptr %42, align 8, !dbg !2986, !tbaa !806
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2986
  %45 = load ptr, ptr %44, align 8, !dbg !2986, !tbaa !806
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2986
  br label %147, !dbg !2987

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.11.93, i32 noundef 5) #37, !dbg !2988
  %49 = load ptr, ptr %4, align 8, !dbg !2988, !tbaa !806
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2988
  %51 = load ptr, ptr %50, align 8, !dbg !2988, !tbaa !806
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2988
  %53 = load ptr, ptr %52, align 8, !dbg !2988, !tbaa !806
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2988
  %55 = load ptr, ptr %54, align 8, !dbg !2988, !tbaa !806
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2988
  %57 = load ptr, ptr %56, align 8, !dbg !2988, !tbaa !806
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2988
  br label %147, !dbg !2989

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.12.94, i32 noundef 5) #37, !dbg !2990
  %61 = load ptr, ptr %4, align 8, !dbg !2990, !tbaa !806
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2990
  %63 = load ptr, ptr %62, align 8, !dbg !2990, !tbaa !806
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2990
  %65 = load ptr, ptr %64, align 8, !dbg !2990, !tbaa !806
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2990
  %67 = load ptr, ptr %66, align 8, !dbg !2990, !tbaa !806
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2990
  %69 = load ptr, ptr %68, align 8, !dbg !2990, !tbaa !806
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2990
  %71 = load ptr, ptr %70, align 8, !dbg !2990, !tbaa !806
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2990
  br label %147, !dbg !2991

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.13.95, i32 noundef 5) #37, !dbg !2992
  %75 = load ptr, ptr %4, align 8, !dbg !2992, !tbaa !806
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2992
  %77 = load ptr, ptr %76, align 8, !dbg !2992, !tbaa !806
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2992
  %79 = load ptr, ptr %78, align 8, !dbg !2992, !tbaa !806
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2992
  %81 = load ptr, ptr %80, align 8, !dbg !2992, !tbaa !806
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2992
  %83 = load ptr, ptr %82, align 8, !dbg !2992, !tbaa !806
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2992
  %85 = load ptr, ptr %84, align 8, !dbg !2992, !tbaa !806
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2992
  %87 = load ptr, ptr %86, align 8, !dbg !2992, !tbaa !806
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2992
  br label %147, !dbg !2993

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.14.96, i32 noundef 5) #37, !dbg !2994
  %91 = load ptr, ptr %4, align 8, !dbg !2994, !tbaa !806
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2994
  %93 = load ptr, ptr %92, align 8, !dbg !2994, !tbaa !806
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2994
  %95 = load ptr, ptr %94, align 8, !dbg !2994, !tbaa !806
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2994
  %97 = load ptr, ptr %96, align 8, !dbg !2994, !tbaa !806
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2994
  %99 = load ptr, ptr %98, align 8, !dbg !2994, !tbaa !806
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2994
  %101 = load ptr, ptr %100, align 8, !dbg !2994, !tbaa !806
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2994
  %103 = load ptr, ptr %102, align 8, !dbg !2994, !tbaa !806
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2994
  %105 = load ptr, ptr %104, align 8, !dbg !2994, !tbaa !806
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2994
  br label %147, !dbg !2995

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.15.97, i32 noundef 5) #37, !dbg !2996
  %109 = load ptr, ptr %4, align 8, !dbg !2996, !tbaa !806
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2996
  %111 = load ptr, ptr %110, align 8, !dbg !2996, !tbaa !806
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2996
  %113 = load ptr, ptr %112, align 8, !dbg !2996, !tbaa !806
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2996
  %115 = load ptr, ptr %114, align 8, !dbg !2996, !tbaa !806
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2996
  %117 = load ptr, ptr %116, align 8, !dbg !2996, !tbaa !806
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2996
  %119 = load ptr, ptr %118, align 8, !dbg !2996, !tbaa !806
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2996
  %121 = load ptr, ptr %120, align 8, !dbg !2996, !tbaa !806
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2996
  %123 = load ptr, ptr %122, align 8, !dbg !2996, !tbaa !806
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2996
  %125 = load ptr, ptr %124, align 8, !dbg !2996, !tbaa !806
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2996
  br label %147, !dbg !2997

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.16.98, i32 noundef 5) #37, !dbg !2998
  %129 = load ptr, ptr %4, align 8, !dbg !2998, !tbaa !806
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2998
  %131 = load ptr, ptr %130, align 8, !dbg !2998, !tbaa !806
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2998
  %133 = load ptr, ptr %132, align 8, !dbg !2998, !tbaa !806
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2998
  %135 = load ptr, ptr %134, align 8, !dbg !2998, !tbaa !806
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2998
  %137 = load ptr, ptr %136, align 8, !dbg !2998, !tbaa !806
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2998
  %139 = load ptr, ptr %138, align 8, !dbg !2998, !tbaa !806
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2998
  %141 = load ptr, ptr %140, align 8, !dbg !2998, !tbaa !806
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2998
  %143 = load ptr, ptr %142, align 8, !dbg !2998, !tbaa !806
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2998
  %145 = load ptr, ptr %144, align 8, !dbg !2998, !tbaa !806
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2998
  br label %147, !dbg !2999

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3000
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3001 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3005, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata ptr %1, metadata !3006, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata ptr %2, metadata !3007, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata ptr %3, metadata !3008, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata ptr %4, metadata !3009, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 0, metadata !3010, metadata !DIExpression()), !dbg !3011
  br label %6, !dbg !3012

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3014
  call void @llvm.dbg.value(metadata i64 %7, metadata !3010, metadata !DIExpression()), !dbg !3011
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3015
  %9 = load ptr, ptr %8, align 8, !dbg !3015, !tbaa !806
  %10 = icmp eq ptr %9, null, !dbg !3017
  %11 = add i64 %7, 1, !dbg !3018
  call void @llvm.dbg.value(metadata i64 %11, metadata !3010, metadata !DIExpression()), !dbg !3011
  br i1 %10, label %12, label %6, !dbg !3017, !llvm.loop !3019

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3021
  ret void, !dbg !3022
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3023 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3035, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %1, metadata !3036, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %2, metadata !3037, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %3, metadata !3038, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %4, metadata !3039, metadata !DIExpression()), !dbg !3043
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3044
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3041, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 0, metadata !3040, metadata !DIExpression()), !dbg !3043
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3040, metadata !DIExpression()), !dbg !3043
  %10 = icmp ult i32 %9, 41, !dbg !3046
  br i1 %10, label %11, label %16, !dbg !3046

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3046
  %13 = zext i32 %9 to i64, !dbg !3046
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3046
  %15 = add nuw nsw i32 %9, 8, !dbg !3046
  store i32 %15, ptr %4, align 8, !dbg !3046
  br label %19, !dbg !3046

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3046
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3046
  store ptr %18, ptr %7, align 8, !dbg !3046
  br label %19, !dbg !3046

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3046
  %22 = load ptr, ptr %21, align 8, !dbg !3046
  store ptr %22, ptr %6, align 16, !dbg !3049, !tbaa !806
  %23 = icmp eq ptr %22, null, !dbg !3050
  br i1 %23, label %128, label %24, !dbg !3051

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 1, metadata !3040, metadata !DIExpression()), !dbg !3043
  %25 = icmp ult i32 %20, 41, !dbg !3046
  br i1 %25, label %29, label %26, !dbg !3046

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3046
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3046
  store ptr %28, ptr %7, align 8, !dbg !3046
  br label %34, !dbg !3046

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3046
  %31 = zext i32 %20 to i64, !dbg !3046
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3046
  %33 = add nuw nsw i32 %20, 8, !dbg !3046
  store i32 %33, ptr %4, align 8, !dbg !3046
  br label %34, !dbg !3046

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3046
  %37 = load ptr, ptr %36, align 8, !dbg !3046
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3052
  store ptr %37, ptr %38, align 8, !dbg !3049, !tbaa !806
  %39 = icmp eq ptr %37, null, !dbg !3050
  br i1 %39, label %128, label %40, !dbg !3051

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 2, metadata !3040, metadata !DIExpression()), !dbg !3043
  %41 = icmp ult i32 %35, 41, !dbg !3046
  br i1 %41, label %45, label %42, !dbg !3046

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3046
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3046
  store ptr %44, ptr %7, align 8, !dbg !3046
  br label %50, !dbg !3046

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3046
  %47 = zext i32 %35 to i64, !dbg !3046
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3046
  %49 = add nuw nsw i32 %35, 8, !dbg !3046
  store i32 %49, ptr %4, align 8, !dbg !3046
  br label %50, !dbg !3046

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3046
  %53 = load ptr, ptr %52, align 8, !dbg !3046
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3052
  store ptr %53, ptr %54, align 16, !dbg !3049, !tbaa !806
  %55 = icmp eq ptr %53, null, !dbg !3050
  br i1 %55, label %128, label %56, !dbg !3051

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 3, metadata !3040, metadata !DIExpression()), !dbg !3043
  %57 = icmp ult i32 %51, 41, !dbg !3046
  br i1 %57, label %61, label %58, !dbg !3046

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3046
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3046
  store ptr %60, ptr %7, align 8, !dbg !3046
  br label %66, !dbg !3046

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3046
  %63 = zext i32 %51 to i64, !dbg !3046
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3046
  %65 = add nuw nsw i32 %51, 8, !dbg !3046
  store i32 %65, ptr %4, align 8, !dbg !3046
  br label %66, !dbg !3046

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3046
  %69 = load ptr, ptr %68, align 8, !dbg !3046
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3052
  store ptr %69, ptr %70, align 8, !dbg !3049, !tbaa !806
  %71 = icmp eq ptr %69, null, !dbg !3050
  br i1 %71, label %128, label %72, !dbg !3051

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 4, metadata !3040, metadata !DIExpression()), !dbg !3043
  %73 = icmp ult i32 %67, 41, !dbg !3046
  br i1 %73, label %77, label %74, !dbg !3046

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3046
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3046
  store ptr %76, ptr %7, align 8, !dbg !3046
  br label %82, !dbg !3046

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3046
  %79 = zext i32 %67 to i64, !dbg !3046
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3046
  %81 = add nuw nsw i32 %67, 8, !dbg !3046
  store i32 %81, ptr %4, align 8, !dbg !3046
  br label %82, !dbg !3046

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3046
  %85 = load ptr, ptr %84, align 8, !dbg !3046
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3052
  store ptr %85, ptr %86, align 16, !dbg !3049, !tbaa !806
  %87 = icmp eq ptr %85, null, !dbg !3050
  br i1 %87, label %128, label %88, !dbg !3051

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 5, metadata !3040, metadata !DIExpression()), !dbg !3043
  %89 = icmp ult i32 %83, 41, !dbg !3046
  br i1 %89, label %93, label %90, !dbg !3046

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3046
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3046
  store ptr %92, ptr %7, align 8, !dbg !3046
  br label %98, !dbg !3046

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3046
  %95 = zext i32 %83 to i64, !dbg !3046
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3046
  %97 = add nuw nsw i32 %83, 8, !dbg !3046
  store i32 %97, ptr %4, align 8, !dbg !3046
  br label %98, !dbg !3046

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3046
  %100 = load ptr, ptr %99, align 8, !dbg !3046
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3052
  store ptr %100, ptr %101, align 8, !dbg !3049, !tbaa !806
  %102 = icmp eq ptr %100, null, !dbg !3050
  br i1 %102, label %128, label %103, !dbg !3051

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3040, metadata !DIExpression()), !dbg !3043
  %104 = load ptr, ptr %7, align 8, !dbg !3046
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3046
  store ptr %105, ptr %7, align 8, !dbg !3046
  %106 = load ptr, ptr %104, align 8, !dbg !3046
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3052
  store ptr %106, ptr %107, align 16, !dbg !3049, !tbaa !806
  %108 = icmp eq ptr %106, null, !dbg !3050
  br i1 %108, label %128, label %109, !dbg !3051

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3040, metadata !DIExpression()), !dbg !3043
  %110 = load ptr, ptr %7, align 8, !dbg !3046
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3046
  store ptr %111, ptr %7, align 8, !dbg !3046
  %112 = load ptr, ptr %110, align 8, !dbg !3046
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3052
  store ptr %112, ptr %113, align 8, !dbg !3049, !tbaa !806
  %114 = icmp eq ptr %112, null, !dbg !3050
  br i1 %114, label %128, label %115, !dbg !3051

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3040, metadata !DIExpression()), !dbg !3043
  %116 = load ptr, ptr %7, align 8, !dbg !3046
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3046
  store ptr %117, ptr %7, align 8, !dbg !3046
  %118 = load ptr, ptr %116, align 8, !dbg !3046
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3052
  store ptr %118, ptr %119, align 16, !dbg !3049, !tbaa !806
  %120 = icmp eq ptr %118, null, !dbg !3050
  br i1 %120, label %128, label %121, !dbg !3051

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3040, metadata !DIExpression()), !dbg !3043
  %122 = load ptr, ptr %7, align 8, !dbg !3046
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3046
  store ptr %123, ptr %7, align 8, !dbg !3046
  %124 = load ptr, ptr %122, align 8, !dbg !3046
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3052
  store ptr %124, ptr %125, align 8, !dbg !3049, !tbaa !806
  %126 = icmp eq ptr %124, null, !dbg !3050
  %127 = select i1 %126, i64 9, i64 10, !dbg !3051
  br label %128, !dbg !3051

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3053
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3054
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3055
  ret void, !dbg !3055
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3056 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3060, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %1, metadata !3061, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %2, metadata !3062, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %3, metadata !3063, metadata !DIExpression()), !dbg !3069
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !3070
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3064, metadata !DIExpression()), !dbg !3071
  call void @llvm.va_start(ptr nonnull %5), !dbg !3072
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3073
  call void @llvm.va_end(ptr nonnull %5), !dbg !3074
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !3075
  ret void, !dbg !3075
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3076 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3077, !tbaa !806
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %1), !dbg !3077
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.17.103, i32 noundef 5) #37, !dbg !3078
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.104) #37, !dbg !3078
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.19.105, i32 noundef 5) #37, !dbg !3079
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.106, ptr noundef nonnull @.str.21.107) #37, !dbg !3079
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !3080
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !3080
  ret void, !dbg !3081
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3082 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3087, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %1, metadata !3088, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %2, metadata !3089, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %0, metadata !3091, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %1, metadata !3094, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %2, metadata !3095, metadata !DIExpression()), !dbg !3096
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3098
  call void @llvm.dbg.value(metadata ptr %4, metadata !3099, metadata !DIExpression()), !dbg !3104
  %5 = icmp eq ptr %4, null, !dbg !3106
  br i1 %5, label %6, label %7, !dbg !3108

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3109
  unreachable, !dbg !3109

7:                                                ; preds = %3
  ret ptr %4, !dbg !3110
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3092 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3091, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %1, metadata !3094, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %2, metadata !3095, metadata !DIExpression()), !dbg !3111
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %4, metadata !3099, metadata !DIExpression()), !dbg !3113
  %5 = icmp eq ptr %4, null, !dbg !3115
  br i1 %5, label %6, label %7, !dbg !3116

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3117
  unreachable, !dbg !3117

7:                                                ; preds = %3
  ret ptr %4, !dbg !3118
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3119 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3123, metadata !DIExpression()), !dbg !3124
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3125
  call void @llvm.dbg.value(metadata ptr %2, metadata !3099, metadata !DIExpression()), !dbg !3126
  %3 = icmp eq ptr %2, null, !dbg !3128
  br i1 %3, label %4, label %5, !dbg !3129

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3130
  unreachable, !dbg !3130

5:                                                ; preds = %1
  ret ptr %2, !dbg !3131
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3132 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3133 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3137, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %0, metadata !3139, metadata !DIExpression()), !dbg !3143
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3145
  call void @llvm.dbg.value(metadata ptr %2, metadata !3099, metadata !DIExpression()), !dbg !3146
  %3 = icmp eq ptr %2, null, !dbg !3148
  br i1 %3, label %4, label %5, !dbg !3149

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3150
  unreachable, !dbg !3150

5:                                                ; preds = %1
  ret ptr %2, !dbg !3151
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3152 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3156, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %0, metadata !3123, metadata !DIExpression()), !dbg !3158
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3160
  call void @llvm.dbg.value(metadata ptr %2, metadata !3099, metadata !DIExpression()), !dbg !3161
  %3 = icmp eq ptr %2, null, !dbg !3163
  br i1 %3, label %4, label %5, !dbg !3164

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3165
  unreachable, !dbg !3165

5:                                                ; preds = %1
  ret ptr %2, !dbg !3166
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3167 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3171, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %1, metadata !3172, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata ptr %0, metadata !3174, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i64 %1, metadata !3178, metadata !DIExpression()), !dbg !3179
  %3 = icmp eq i64 %1, 0, !dbg !3181
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3181
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #43, !dbg !3182
  call void @llvm.dbg.value(metadata ptr %5, metadata !3099, metadata !DIExpression()), !dbg !3183
  %6 = icmp eq ptr %5, null, !dbg !3185
  br i1 %6, label %7, label %8, !dbg !3186

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3187
  unreachable, !dbg !3187

8:                                                ; preds = %2
  ret ptr %5, !dbg !3188
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3189 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3190 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3194, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %1, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %0, metadata !3197, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %1, metadata !3200, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %0, metadata !3174, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %1, metadata !3178, metadata !DIExpression()), !dbg !3203
  %3 = icmp eq i64 %1, 0, !dbg !3205
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3205
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #43, !dbg !3206
  call void @llvm.dbg.value(metadata ptr %5, metadata !3099, metadata !DIExpression()), !dbg !3207
  %6 = icmp eq ptr %5, null, !dbg !3209
  br i1 %6, label %7, label %8, !dbg !3210

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3211
  unreachable, !dbg !3211

8:                                                ; preds = %2
  ret ptr %5, !dbg !3212
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3213 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3217, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %1, metadata !3218, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %2, metadata !3219, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata ptr %0, metadata !3221, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i64 %2, metadata !3225, metadata !DIExpression()), !dbg !3226
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3228
  call void @llvm.dbg.value(metadata ptr %4, metadata !3099, metadata !DIExpression()), !dbg !3229
  %5 = icmp eq ptr %4, null, !dbg !3231
  br i1 %5, label %6, label %7, !dbg !3232

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3233
  unreachable, !dbg !3233

7:                                                ; preds = %3
  ret ptr %4, !dbg !3234
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3235 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3239, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %1, metadata !3240, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata ptr null, metadata !3091, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %0, metadata !3094, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %1, metadata !3095, metadata !DIExpression()), !dbg !3242
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3244
  call void @llvm.dbg.value(metadata ptr %3, metadata !3099, metadata !DIExpression()), !dbg !3245
  %4 = icmp eq ptr %3, null, !dbg !3247
  br i1 %4, label %5, label %6, !dbg !3248

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3249
  unreachable, !dbg !3249

6:                                                ; preds = %2
  ret ptr %3, !dbg !3250
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3251 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3255, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %1, metadata !3256, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata ptr null, metadata !3217, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %0, metadata !3218, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %1, metadata !3219, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata ptr null, metadata !3221, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %0, metadata !3224, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %1, metadata !3225, metadata !DIExpression()), !dbg !3260
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3262
  call void @llvm.dbg.value(metadata ptr %3, metadata !3099, metadata !DIExpression()), !dbg !3263
  %4 = icmp eq ptr %3, null, !dbg !3265
  br i1 %4, label %5, label %6, !dbg !3266

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3267
  unreachable, !dbg !3267

6:                                                ; preds = %2
  ret ptr %3, !dbg !3268
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3269 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3273, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %1, metadata !3274, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %0, metadata !742, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata ptr %1, metadata !743, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 1, metadata !744, metadata !DIExpression()), !dbg !3276
  %3 = load i64, ptr %1, align 8, !dbg !3278, !tbaa !2378
  call void @llvm.dbg.value(metadata i64 %3, metadata !745, metadata !DIExpression()), !dbg !3276
  %4 = icmp eq ptr %0, null, !dbg !3279
  br i1 %4, label %5, label %8, !dbg !3281

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3282
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3285
  br label %15, !dbg !3285

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3286
  %10 = add nuw i64 %9, 1, !dbg !3286
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3286
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3286
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3286
  call void @llvm.dbg.value(metadata i64 %13, metadata !745, metadata !DIExpression()), !dbg !3276
  br i1 %12, label %14, label %15, !dbg !3289

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3290
  unreachable, !dbg !3290

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3276
  call void @llvm.dbg.value(metadata i64 %16, metadata !745, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata ptr %0, metadata !3091, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %16, metadata !3094, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 1, metadata !3095, metadata !DIExpression()), !dbg !3291
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3293
  call void @llvm.dbg.value(metadata ptr %17, metadata !3099, metadata !DIExpression()), !dbg !3294
  %18 = icmp eq ptr %17, null, !dbg !3296
  br i1 %18, label %19, label %20, !dbg !3297

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3298
  unreachable, !dbg !3298

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !742, metadata !DIExpression()), !dbg !3276
  store i64 %16, ptr %1, align 8, !dbg !3299, !tbaa !2378
  ret ptr %17, !dbg !3300
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !737 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !742, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata ptr %1, metadata !743, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %2, metadata !744, metadata !DIExpression()), !dbg !3301
  %4 = load i64, ptr %1, align 8, !dbg !3302, !tbaa !2378
  call void @llvm.dbg.value(metadata i64 %4, metadata !745, metadata !DIExpression()), !dbg !3301
  %5 = icmp eq ptr %0, null, !dbg !3303
  br i1 %5, label %6, label %13, !dbg !3304

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3305
  br i1 %7, label %8, label %20, !dbg !3306

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3307
  call void @llvm.dbg.value(metadata i64 %9, metadata !745, metadata !DIExpression()), !dbg !3301
  %10 = icmp ugt i64 %2, 128, !dbg !3309
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3310
  call void @llvm.dbg.value(metadata i64 %12, metadata !745, metadata !DIExpression()), !dbg !3301
  br label %20, !dbg !3311

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3312
  %15 = add nuw i64 %14, 1, !dbg !3312
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3312
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3312
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %18, metadata !745, metadata !DIExpression()), !dbg !3301
  br i1 %17, label %19, label %20, !dbg !3313

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3314
  unreachable, !dbg !3314

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3301
  call void @llvm.dbg.value(metadata i64 %21, metadata !745, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata ptr %0, metadata !3091, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i64 %21, metadata !3094, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i64 %2, metadata !3095, metadata !DIExpression()), !dbg !3315
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3317
  call void @llvm.dbg.value(metadata ptr %22, metadata !3099, metadata !DIExpression()), !dbg !3318
  %23 = icmp eq ptr %22, null, !dbg !3320
  br i1 %23, label %24, label %25, !dbg !3321

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3322
  unreachable, !dbg !3322

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !742, metadata !DIExpression()), !dbg !3301
  store i64 %21, ptr %1, align 8, !dbg !3323, !tbaa !2378
  ret ptr %22, !dbg !3324
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !749 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !757, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata ptr %1, metadata !758, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %2, metadata !759, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %3, metadata !760, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %4, metadata !761, metadata !DIExpression()), !dbg !3325
  %6 = load i64, ptr %1, align 8, !dbg !3326, !tbaa !2378
  call void @llvm.dbg.value(metadata i64 %6, metadata !762, metadata !DIExpression()), !dbg !3325
  %7 = ashr i64 %6, 1, !dbg !3327
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3327
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3327
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3327
  call void @llvm.dbg.value(metadata i64 %10, metadata !763, metadata !DIExpression()), !dbg !3325
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3329
  call void @llvm.dbg.value(metadata i64 %11, metadata !763, metadata !DIExpression()), !dbg !3325
  %12 = icmp sgt i64 %3, -1, !dbg !3330
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3332
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %15, metadata !763, metadata !DIExpression()), !dbg !3325
  %16 = icmp slt i64 %4, 0, !dbg !3333
  br i1 %16, label %17, label %30, !dbg !3333

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3333
  br i1 %18, label %19, label %24, !dbg !3333

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3333
  %21 = udiv i64 9223372036854775807, %20, !dbg !3333
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3333
  br i1 %23, label %46, label %43, !dbg !3333

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3333
  br i1 %25, label %43, label %26, !dbg !3333

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3333
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3333
  %29 = icmp ult i64 %28, %15, !dbg !3333
  br i1 %29, label %46, label %43, !dbg !3333

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3333
  br i1 %31, label %43, label %32, !dbg !3333

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3333
  br i1 %33, label %34, label %40, !dbg !3333

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3333
  br i1 %35, label %43, label %36, !dbg !3333

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3333
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3333
  %39 = icmp ult i64 %38, %4, !dbg !3333
  br i1 %39, label %46, label %43, !dbg !3333

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3333
  br i1 %42, label %46, label %43, !dbg !3333

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !764, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3325
  %44 = mul i64 %15, %4, !dbg !3333
  call void @llvm.dbg.value(metadata i64 %44, metadata !764, metadata !DIExpression()), !dbg !3325
  %45 = icmp slt i64 %44, 128, !dbg !3333
  br i1 %45, label %46, label %51, !dbg !3333

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !765, metadata !DIExpression()), !dbg !3325
  %48 = sdiv i64 %47, %4, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %48, metadata !763, metadata !DIExpression()), !dbg !3325
  %49 = srem i64 %47, %4, !dbg !3337
  %50 = sub nsw i64 %47, %49, !dbg !3338
  call void @llvm.dbg.value(metadata i64 %50, metadata !764, metadata !DIExpression()), !dbg !3325
  br label %51, !dbg !3339

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3325
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3325
  call void @llvm.dbg.value(metadata i64 %53, metadata !764, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %52, metadata !763, metadata !DIExpression()), !dbg !3325
  %54 = icmp eq ptr %0, null, !dbg !3340
  br i1 %54, label %55, label %56, !dbg !3342

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3343, !tbaa !2378
  br label %56, !dbg !3344

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3345
  %58 = icmp slt i64 %57, %2, !dbg !3347
  br i1 %58, label %59, label %96, !dbg !3348

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3349
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3349
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3349
  call void @llvm.dbg.value(metadata i64 %62, metadata !763, metadata !DIExpression()), !dbg !3325
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3350
  br i1 %65, label %95, label %66, !dbg !3350

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3351

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3351
  br i1 %68, label %69, label %74, !dbg !3351

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3351
  %71 = udiv i64 9223372036854775807, %70, !dbg !3351
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3351
  br i1 %73, label %95, label %93, !dbg !3351

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3351
  br i1 %75, label %93, label %76, !dbg !3351

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3351
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3351
  %79 = icmp ult i64 %78, %62, !dbg !3351
  br i1 %79, label %95, label %93, !dbg !3351

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3351
  br i1 %81, label %93, label %82, !dbg !3351

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3351
  br i1 %83, label %84, label %90, !dbg !3351

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3351
  br i1 %85, label %93, label %86, !dbg !3351

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3351
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3351
  %89 = icmp ult i64 %88, %4, !dbg !3351
  br i1 %89, label %95, label %93, !dbg !3351

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3351
  br i1 %92, label %95, label %93, !dbg !3351

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !764, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3325
  %94 = mul i64 %62, %4, !dbg !3351
  call void @llvm.dbg.value(metadata i64 %94, metadata !764, metadata !DIExpression()), !dbg !3325
  br label %96, !dbg !3352

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #39, !dbg !3353
  unreachable, !dbg !3353

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3325
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3325
  call void @llvm.dbg.value(metadata i64 %98, metadata !764, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %97, metadata !763, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata ptr %0, metadata !3171, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %98, metadata !3172, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata ptr %0, metadata !3174, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i64 %98, metadata !3178, metadata !DIExpression()), !dbg !3356
  %99 = icmp eq i64 %98, 0, !dbg !3358
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3358
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #43, !dbg !3359
  call void @llvm.dbg.value(metadata ptr %101, metadata !3099, metadata !DIExpression()), !dbg !3360
  %102 = icmp eq ptr %101, null, !dbg !3362
  br i1 %102, label %103, label %104, !dbg !3363

103:                                              ; preds = %96
  tail call void @xalloc_die() #39, !dbg !3364
  unreachable, !dbg !3364

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !757, metadata !DIExpression()), !dbg !3325
  store i64 %97, ptr %1, align 8, !dbg !3365, !tbaa !2378
  ret ptr %101, !dbg !3366
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3367 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3369, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i64 %0, metadata !3371, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i64 1, metadata !3374, metadata !DIExpression()), !dbg !3375
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3377
  call void @llvm.dbg.value(metadata ptr %2, metadata !3099, metadata !DIExpression()), !dbg !3378
  %3 = icmp eq ptr %2, null, !dbg !3380
  br i1 %3, label %4, label %5, !dbg !3381

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3382
  unreachable, !dbg !3382

5:                                                ; preds = %1
  ret ptr %2, !dbg !3383
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3384 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3372 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3371, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 %1, metadata !3374, metadata !DIExpression()), !dbg !3385
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3386
  call void @llvm.dbg.value(metadata ptr %3, metadata !3099, metadata !DIExpression()), !dbg !3387
  %4 = icmp eq ptr %3, null, !dbg !3389
  br i1 %4, label %5, label %6, !dbg !3390

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3391
  unreachable, !dbg !3391

6:                                                ; preds = %2
  ret ptr %3, !dbg !3392
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3393 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3395, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64 %0, metadata !3397, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 1, metadata !3400, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %0, metadata !3403, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 1, metadata !3406, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %0, metadata !3403, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 1, metadata !3406, metadata !DIExpression()), !dbg !3407
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3409
  call void @llvm.dbg.value(metadata ptr %2, metadata !3099, metadata !DIExpression()), !dbg !3410
  %3 = icmp eq ptr %2, null, !dbg !3412
  br i1 %3, label %4, label %5, !dbg !3413

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3414
  unreachable, !dbg !3414

5:                                                ; preds = %1
  ret ptr %2, !dbg !3415
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3398 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3397, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %1, metadata !3400, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %0, metadata !3403, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %1, metadata !3406, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %0, metadata !3403, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %1, metadata !3406, metadata !DIExpression()), !dbg !3417
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3419
  call void @llvm.dbg.value(metadata ptr %3, metadata !3099, metadata !DIExpression()), !dbg !3420
  %4 = icmp eq ptr %3, null, !dbg !3422
  br i1 %4, label %5, label %6, !dbg !3423

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3424
  unreachable, !dbg !3424

6:                                                ; preds = %2
  ret ptr %3, !dbg !3425
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3426 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3430, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %1, metadata !3431, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i64 %1, metadata !3123, metadata !DIExpression()), !dbg !3433
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3435
  call void @llvm.dbg.value(metadata ptr %3, metadata !3099, metadata !DIExpression()), !dbg !3436
  %4 = icmp eq ptr %3, null, !dbg !3438
  br i1 %4, label %5, label %6, !dbg !3439

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3440
  unreachable, !dbg !3440

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3441, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata ptr %0, metadata !3447, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %1, metadata !3448, metadata !DIExpression()), !dbg !3449
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3451
  ret ptr %3, !dbg !3452
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3453 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3457, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i64 %1, metadata !3458, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i64 %1, metadata !3137, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 %1, metadata !3139, metadata !DIExpression()), !dbg !3462
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3464
  call void @llvm.dbg.value(metadata ptr %3, metadata !3099, metadata !DIExpression()), !dbg !3465
  %4 = icmp eq ptr %3, null, !dbg !3467
  br i1 %4, label %5, label %6, !dbg !3468

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3469
  unreachable, !dbg !3469

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3441, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata ptr %0, metadata !3447, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i64 %1, metadata !3448, metadata !DIExpression()), !dbg !3470
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3472
  ret ptr %3, !dbg !3473
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3474 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3478, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i64 %1, metadata !3479, metadata !DIExpression()), !dbg !3481
  %3 = add nsw i64 %1, 1, !dbg !3482
  call void @llvm.dbg.value(metadata i64 %3, metadata !3137, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i64 %3, metadata !3139, metadata !DIExpression()), !dbg !3485
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3487
  call void @llvm.dbg.value(metadata ptr %4, metadata !3099, metadata !DIExpression()), !dbg !3488
  %5 = icmp eq ptr %4, null, !dbg !3490
  br i1 %5, label %6, label %7, !dbg !3491

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3492
  unreachable, !dbg !3492

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3480, metadata !DIExpression()), !dbg !3481
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3493
  store i8 0, ptr %8, align 1, !dbg !3494, !tbaa !878
  call void @llvm.dbg.value(metadata ptr %4, metadata !3441, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata ptr %0, metadata !3447, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %1, metadata !3448, metadata !DIExpression()), !dbg !3495
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3497
  ret ptr %4, !dbg !3498
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3499 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3501, metadata !DIExpression()), !dbg !3502
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3503
  %3 = add i64 %2, 1, !dbg !3504
  call void @llvm.dbg.value(metadata ptr %0, metadata !3430, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 %3, metadata !3431, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i64 %3, metadata !3123, metadata !DIExpression()), !dbg !3507
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3509
  call void @llvm.dbg.value(metadata ptr %4, metadata !3099, metadata !DIExpression()), !dbg !3510
  %5 = icmp eq ptr %4, null, !dbg !3512
  br i1 %5, label %6, label %7, !dbg !3513

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3514
  unreachable, !dbg !3514

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3441, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata ptr %0, metadata !3447, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 %3, metadata !3448, metadata !DIExpression()), !dbg !3515
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3517
  ret ptr %4, !dbg !3518
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3519 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3524, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %1, metadata !3521, metadata !DIExpression()), !dbg !3525
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.118, ptr noundef nonnull @.str.2.119, i32 noundef 5) #37, !dbg !3524
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.120, ptr noundef %2) #37, !dbg !3524
  %3 = icmp eq i32 %1, 0, !dbg !3524
  tail call void @llvm.assume(i1 %3), !dbg !3524
  tail call void @abort() #39, !dbg !3526
  unreachable, !dbg !3526
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3527 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3565, metadata !DIExpression()), !dbg !3570
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3571
  call void @llvm.dbg.value(metadata i1 poison, metadata !3566, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3570
  call void @llvm.dbg.value(metadata ptr %0, metadata !3572, metadata !DIExpression()), !dbg !3575
  %3 = load i32, ptr %0, align 8, !dbg !3577, !tbaa !3578
  %4 = and i32 %3, 32, !dbg !3579
  %5 = icmp eq i32 %4, 0, !dbg !3579
  call void @llvm.dbg.value(metadata i1 %5, metadata !3568, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3570
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3580
  %7 = icmp eq i32 %6, 0, !dbg !3581
  call void @llvm.dbg.value(metadata i1 %7, metadata !3569, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3570
  br i1 %5, label %8, label %18, !dbg !3582

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3584
  call void @llvm.dbg.value(metadata i1 %9, metadata !3566, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3570
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3585
  %11 = xor i1 %7, true, !dbg !3585
  %12 = sext i1 %11 to i32, !dbg !3585
  br i1 %10, label %21, label %13, !dbg !3585

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3586
  %15 = load i32, ptr %14, align 4, !dbg !3586, !tbaa !869
  %16 = icmp ne i32 %15, 9, !dbg !3587
  %17 = sext i1 %16 to i32, !dbg !3588
  br label %21, !dbg !3588

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3589

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3591
  store i32 0, ptr %20, align 4, !dbg !3593, !tbaa !869
  br label %21, !dbg !3591

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3570
  ret i32 %22, !dbg !3594
}

; Function Attrs: nounwind
declare !dbg !3595 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3599 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3637, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression()), !dbg !3641
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3642
  call void @llvm.dbg.value(metadata i32 %2, metadata !3639, metadata !DIExpression()), !dbg !3641
  %3 = icmp slt i32 %2, 0, !dbg !3643
  br i1 %3, label %4, label %6, !dbg !3645

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3646
  br label %24, !dbg !3647

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3648
  %8 = icmp eq i32 %7, 0, !dbg !3648
  br i1 %8, label %13, label %9, !dbg !3650

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3651
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3652
  %12 = icmp eq i64 %11, -1, !dbg !3653
  br i1 %12, label %16, label %13, !dbg !3654

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3655
  %15 = icmp eq i32 %14, 0, !dbg !3655
  br i1 %15, label %16, label %18, !dbg !3656

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 0, metadata !3640, metadata !DIExpression()), !dbg !3641
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3657
  call void @llvm.dbg.value(metadata i32 %17, metadata !3640, metadata !DIExpression()), !dbg !3641
  br label %24, !dbg !3658

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3659
  %20 = load i32, ptr %19, align 4, !dbg !3659, !tbaa !869
  call void @llvm.dbg.value(metadata i32 %20, metadata !3638, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata i32 0, metadata !3640, metadata !DIExpression()), !dbg !3641
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3657
  call void @llvm.dbg.value(metadata i32 %21, metadata !3640, metadata !DIExpression()), !dbg !3641
  %22 = icmp eq i32 %20, 0, !dbg !3660
  br i1 %22, label %24, label %23, !dbg !3658

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3662, !tbaa !869
  call void @llvm.dbg.value(metadata i32 -1, metadata !3640, metadata !DIExpression()), !dbg !3641
  br label %24, !dbg !3664

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3641
  ret i32 %25, !dbg !3665
}

; Function Attrs: nofree nounwind
declare !dbg !3666 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3667 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3668 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3669 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3672 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3710, metadata !DIExpression()), !dbg !3711
  %2 = icmp eq ptr %0, null, !dbg !3712
  br i1 %2, label %6, label %3, !dbg !3714

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3715
  %5 = icmp eq i32 %4, 0, !dbg !3715
  br i1 %5, label %6, label %8, !dbg !3716

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3717
  br label %16, !dbg !3718

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3719, metadata !DIExpression()), !dbg !3724
  %9 = load i32, ptr %0, align 8, !dbg !3726, !tbaa !3578
  %10 = and i32 %9, 256, !dbg !3728
  %11 = icmp eq i32 %10, 0, !dbg !3728
  br i1 %11, label %14, label %12, !dbg !3729

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3730
  br label %14, !dbg !3730

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3731
  br label %16, !dbg !3732

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3711
  ret i32 %17, !dbg !3733
}

; Function Attrs: nofree nounwind
declare !dbg !3734 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3735 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3774, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i64 %1, metadata !3775, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 %2, metadata !3776, metadata !DIExpression()), !dbg !3780
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3781
  %5 = load ptr, ptr %4, align 8, !dbg !3781, !tbaa !3782
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3783
  %7 = load ptr, ptr %6, align 8, !dbg !3783, !tbaa !3784
  %8 = icmp eq ptr %5, %7, !dbg !3785
  br i1 %8, label %9, label %27, !dbg !3786

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3787
  %11 = load ptr, ptr %10, align 8, !dbg !3787, !tbaa !1340
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3788
  %13 = load ptr, ptr %12, align 8, !dbg !3788, !tbaa !3789
  %14 = icmp eq ptr %11, %13, !dbg !3790
  br i1 %14, label %15, label %27, !dbg !3791

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3792
  %17 = load ptr, ptr %16, align 8, !dbg !3792, !tbaa !3793
  %18 = icmp eq ptr %17, null, !dbg !3794
  br i1 %18, label %19, label %27, !dbg !3795

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3796
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3797
  call void @llvm.dbg.value(metadata i64 %21, metadata !3777, metadata !DIExpression()), !dbg !3798
  %22 = icmp eq i64 %21, -1, !dbg !3799
  br i1 %22, label %29, label %23, !dbg !3801

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3802, !tbaa !3578
  %25 = and i32 %24, -17, !dbg !3802
  store i32 %25, ptr %0, align 8, !dbg !3802, !tbaa !3578
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3803
  store i64 %21, ptr %26, align 8, !dbg !3804, !tbaa !3805
  br label %29, !dbg !3806

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3807
  br label %29, !dbg !3808

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3780
  ret i32 %30, !dbg !3809
}

; Function Attrs: nofree nounwind
declare !dbg !3810 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3813 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3818, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata ptr %1, metadata !3819, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i64 %2, metadata !3820, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata ptr %3, metadata !3821, metadata !DIExpression()), !dbg !3823
  %5 = icmp eq ptr %1, null, !dbg !3824
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3826
  %7 = select i1 %5, ptr @.str.131, ptr %1, !dbg !3826
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3826
  call void @llvm.dbg.value(metadata i64 %8, metadata !3820, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata ptr %7, metadata !3819, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata ptr %6, metadata !3818, metadata !DIExpression()), !dbg !3823
  %9 = icmp eq ptr %3, null, !dbg !3827
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3829
  call void @llvm.dbg.value(metadata ptr %10, metadata !3821, metadata !DIExpression()), !dbg !3823
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #37, !dbg !3830
  call void @llvm.dbg.value(metadata i64 %11, metadata !3822, metadata !DIExpression()), !dbg !3823
  %12 = icmp ult i64 %11, -3, !dbg !3831
  br i1 %12, label %13, label %17, !dbg !3833

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !3834
  %15 = icmp eq i32 %14, 0, !dbg !3834
  br i1 %15, label %16, label %29, !dbg !3835

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3836, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata ptr %10, metadata !3843, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i32 0, metadata !3846, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i64 8, metadata !3847, metadata !DIExpression()), !dbg !3848
  store i64 0, ptr %10, align 1, !dbg !3850
  br label %29, !dbg !3851

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3852
  br i1 %18, label %19, label %20, !dbg !3854

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3855
  unreachable, !dbg !3855

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3856

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !3858
  br i1 %23, label %29, label %24, !dbg !3859

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3860
  br i1 %25, label %29, label %26, !dbg !3863

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3864, !tbaa !878
  %28 = zext i8 %27 to i32, !dbg !3865
  store i32 %28, ptr %6, align 4, !dbg !3866, !tbaa !869
  br label %29, !dbg !3867

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3823
  ret i64 %30, !dbg !3868
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3869 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3875 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3877, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i64 %1, metadata !3878, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i64 %2, metadata !3879, metadata !DIExpression()), !dbg !3881
  %4 = icmp eq i64 %2, 0, !dbg !3882
  br i1 %4, label %8, label %5, !dbg !3882

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3882
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3882
  br i1 %7, label %13, label %8, !dbg !3882

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3880, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3881
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3880, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3881
  %9 = mul i64 %2, %1, !dbg !3882
  call void @llvm.dbg.value(metadata i64 %9, metadata !3880, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata ptr %0, metadata !3884, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 %9, metadata !3887, metadata !DIExpression()), !dbg !3888
  %10 = icmp eq i64 %9, 0, !dbg !3890
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3890
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #43, !dbg !3891
  br label %15, !dbg !3892

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3880, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3881
  %14 = tail call ptr @__errno_location() #40, !dbg !3893
  store i32 12, ptr %14, align 4, !dbg !3895, !tbaa !869
  br label %15, !dbg !3896

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3881
  ret ptr %16, !dbg !3897
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3898 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3902, metadata !DIExpression()), !dbg !3907
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3908
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3903, metadata !DIExpression()), !dbg !3909
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3910
  %4 = icmp eq i32 %3, 0, !dbg !3910
  br i1 %4, label %5, label %12, !dbg !3912

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3913, metadata !DIExpression()), !dbg !3917
  %6 = load i16, ptr %2, align 16, !dbg !3920
  %7 = icmp eq i16 %6, 67, !dbg !3920
  br i1 %7, label %11, label %8, !dbg !3921

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3913, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata ptr @.str.1.136, metadata !3916, metadata !DIExpression()), !dbg !3922
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.136, i64 6), !dbg !3924
  %10 = icmp eq i32 %9, 0, !dbg !3925
  br i1 %10, label %11, label %12, !dbg !3926

11:                                               ; preds = %8, %5
  br label %12, !dbg !3927

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3907
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3928
  ret i1 %13, !dbg !3928
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3929 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3933, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata ptr %1, metadata !3934, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i64 %2, metadata !3935, metadata !DIExpression()), !dbg !3936
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3937
  ret i32 %4, !dbg !3938
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3939 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3943, metadata !DIExpression()), !dbg !3944
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3945
  ret ptr %2, !dbg !3946
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3947 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3949, metadata !DIExpression()), !dbg !3951
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3952
  call void @llvm.dbg.value(metadata ptr %2, metadata !3950, metadata !DIExpression()), !dbg !3951
  ret ptr %2, !dbg !3953
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3954 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3956, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr %1, metadata !3957, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %2, metadata !3958, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i32 %0, metadata !3949, metadata !DIExpression()), !dbg !3964
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3966
  call void @llvm.dbg.value(metadata ptr %4, metadata !3950, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata ptr %4, metadata !3959, metadata !DIExpression()), !dbg !3963
  %5 = icmp eq ptr %4, null, !dbg !3967
  br i1 %5, label %6, label %9, !dbg !3968

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3969
  br i1 %7, label %19, label %8, !dbg !3972

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3973, !tbaa !878
  br label %19, !dbg !3974

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3975
  call void @llvm.dbg.value(metadata i64 %10, metadata !3960, metadata !DIExpression()), !dbg !3976
  %11 = icmp ult i64 %10, %2, !dbg !3977
  br i1 %11, label %12, label %14, !dbg !3979

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3980
  call void @llvm.dbg.value(metadata ptr %1, metadata !3982, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata ptr %4, metadata !3985, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i64 %13, metadata !3986, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !3989
  br label %19, !dbg !3990

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3991
  br i1 %15, label %19, label %16, !dbg !3994

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3995
  call void @llvm.dbg.value(metadata ptr %1, metadata !3982, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata ptr %4, metadata !3985, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i64 %17, metadata !3986, metadata !DIExpression()), !dbg !3997
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3999
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4000
  store i8 0, ptr %18, align 1, !dbg !4001, !tbaa !878
  br label %19, !dbg !4002

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4003
  ret i32 %20, !dbg !4004
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
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!64, !376, !380, !395, !692, !451, !724, !465, !479, !527, !726, !684, !733, !767, !769, !771, !773, !775, !708, !777, !780, !784, !786}
!llvm.ident = !{!788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788, !788}
!llvm.module.flags = !{!789, !790, !791, !792, !793, !794}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/sync.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2b8dff623ed78e0f8980b4530e39b085")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1096, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 137)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 5)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 544, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 68)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 71)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 50)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 62)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 10)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 24)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 3)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "long_options", scope: !64, file: !2, line: 45, type: !361, isLocal: true, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !108, globals: !118, splitDebugInlining: false, nameTableKind: None)
!65 = !{!66, !72, !79, !94}
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 337, baseType: !68, size: 32, elements: !69)
!67 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !{!70, !71}
!70 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!71 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sync_mode", file: !2, line: 37, baseType: !73, size: 32, elements: !74)
!73 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "MODE_FILE", value: 0)
!76 = !DIEnumerator(name: "MODE_DATA", value: 1)
!77 = !DIEnumerator(name: "MODE_FILE_SYSTEM", value: 2)
!78 = !DIEnumerator(name: "MODE_SYNC", value: 3)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !80, line: 46, baseType: !73, size: 32, elements: !81)
!80 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!82 = !DIEnumerator(name: "_ISupper", value: 256)
!83 = !DIEnumerator(name: "_ISlower", value: 512)
!84 = !DIEnumerator(name: "_ISalpha", value: 1024)
!85 = !DIEnumerator(name: "_ISdigit", value: 2048)
!86 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!87 = !DIEnumerator(name: "_ISspace", value: 8192)
!88 = !DIEnumerator(name: "_ISprint", value: 16384)
!89 = !DIEnumerator(name: "_ISgraph", value: 32768)
!90 = !DIEnumerator(name: "_ISblank", value: 1)
!91 = !DIEnumerator(name: "_IScntrl", value: 2)
!92 = !DIEnumerator(name: "_ISpunct", value: 4)
!93 = !DIEnumerator(name: "_ISalnum", value: 8)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !95, line: 42, baseType: !73, size: 32, elements: !96)
!95 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!97 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!98 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!99 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!100 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!101 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!102 = !DIEnumerator(name: "c_quoting_style", value: 5)
!103 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!104 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!105 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!106 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!107 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!108 = !{!109, !110, !68, !111, !112, !115, !117}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!111 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 46, baseType: !114)
!113 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!114 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!117 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !119, !124, !129, !134, !139, !144, !227, !229, !231, !236, !241, !246, !248, !250, !252, !254, !256, !258, !263, !268, !270, !272, !274, !276, !278, !280, !285, !290, !295, !300, !302, !304, !306, !308, !313, !318, !320, !322, !324, !329, !334, !339, !341, !343, !345, !62, !347, !349, !354, !356}
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 14)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 13)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 18)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 205, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 45)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 209, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 35)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !146, file: !67, line: 575, type: !68, isLocal: true, isDefinition: true)
!146 = distinct !DISubprogram(name: "oputs_", scope: !67, file: !67, line: 573, type: !147, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !149)
!147 = !DISubroutineType(cc: DW_CC_nocall, types: !148)
!148 = !{null, !115, !115}
!149 = !{!150, !151, !152, !155, !157, !158, !159, !163, !164, !165, !166, !168, !221, !222, !223, !225, !226}
!150 = !DILocalVariable(name: "program", arg: 1, scope: !146, file: !67, line: 573, type: !115)
!151 = !DILocalVariable(name: "option", arg: 2, scope: !146, file: !67, line: 573, type: !115)
!152 = !DILocalVariable(name: "term", scope: !153, file: !67, line: 585, type: !115)
!153 = distinct !DILexicalBlock(scope: !154, file: !67, line: 582, column: 5)
!154 = distinct !DILexicalBlock(scope: !146, file: !67, line: 581, column: 7)
!155 = !DILocalVariable(name: "double_space", scope: !146, file: !67, line: 594, type: !156)
!156 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!157 = !DILocalVariable(name: "first_word", scope: !146, file: !67, line: 595, type: !115)
!158 = !DILocalVariable(name: "option_text", scope: !146, file: !67, line: 596, type: !115)
!159 = !DILocalVariable(name: "s", scope: !160, file: !67, line: 608, type: !115)
!160 = distinct !DILexicalBlock(scope: !161, file: !67, line: 605, column: 5)
!161 = distinct !DILexicalBlock(scope: !162, file: !67, line: 604, column: 12)
!162 = distinct !DILexicalBlock(scope: !146, file: !67, line: 597, column: 7)
!163 = !DILocalVariable(name: "spaces", scope: !160, file: !67, line: 609, type: !112)
!164 = !DILocalVariable(name: "anchor_len", scope: !146, file: !67, line: 620, type: !112)
!165 = !DILocalVariable(name: "desc_text", scope: !146, file: !67, line: 625, type: !115)
!166 = !DILocalVariable(name: "__ptr", scope: !167, file: !67, line: 644, type: !115)
!167 = distinct !DILexicalBlock(scope: !146, file: !67, line: 644, column: 3)
!168 = !DILocalVariable(name: "__stream", scope: !167, file: !67, line: 644, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !172)
!171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !174)
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !190, !192, !193, !194, !198, !199, !201, !202, !205, !207, !210, !213, !214, !215, !216, !217}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !172, file: !173, line: 51, baseType: !68, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !172, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !172, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !172, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !172, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !172, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !172, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !172, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !172, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !172, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !172, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !172, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !172, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !173, line: 36, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !172, file: !173, line: 70, baseType: !191, size: 64, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !172, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !172, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !172, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !196, line: 152, baseType: !197)
!196 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!197 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !172, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !172, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!200 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !172, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !172, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !173, line: 43, baseType: null)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !172, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !196, line: 153, baseType: !197)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !172, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !173, line: 37, flags: DIFlagFwdDecl)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !172, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !173, line: 38, flags: DIFlagFwdDecl)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !172, file: !173, line: 93, baseType: !191, size: 64, offset: 1344)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !172, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !172, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !172, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !172, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 20)
!221 = !DILocalVariable(name: "__cnt", scope: !167, file: !67, line: 644, type: !112)
!222 = !DILocalVariable(name: "url_program", scope: !146, file: !67, line: 648, type: !115)
!223 = !DILocalVariable(name: "__ptr", scope: !224, file: !67, line: 686, type: !115)
!224 = distinct !DILexicalBlock(scope: !146, file: !67, line: 686, column: 3)
!225 = !DILocalVariable(name: "__stream", scope: !224, file: !67, line: 686, type: !169)
!226 = !DILocalVariable(name: "__cnt", scope: !224, file: !67, line: 686, type: !112)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !67, line: 585, type: !19, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !67, line: 586, type: !19, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !67, line: 595, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 4)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !67, line: 620, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 6)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 2)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !19, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !233, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !59, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !67, line: 650, type: !19, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !238, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !238, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !67, line: 652, type: !260, isLocal: true, isDefinition: true)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 7)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !67, line: 653, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 8)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !67, line: 654, type: !49, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !67, line: 655, type: !49, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !67, line: 656, type: !49, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !67, line: 657, type: !49, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !67, line: 663, type: !260, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !67, line: 664, type: !49, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 17)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 40)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 15)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !297, isLocal: true, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 61)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !67, line: 679, type: !59, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !67, line: 683, type: !19, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !67, line: 688, type: !19, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !67, line: 691, type: !265, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !67, line: 839, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 16)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !67, line: 840, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 22)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !67, line: 841, type: !292, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !67, line: 862, type: !233, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !67, line: 868, type: !29, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !67, line: 875, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 27)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 51)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 12)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !19, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !336, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !19, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !265, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !282, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !351, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 36)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !282, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 19)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 1280, elements: !20)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !364, line: 50, size: 256, elements: !365)
!364 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!365 = !{!366, !367, !368, !370}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !363, file: !364, line: 52, baseType: !115, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !363, file: !364, line: 55, baseType: !68, size: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !363, file: !364, line: 56, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !363, file: !364, line: 57, baseType: !68, size: 32, offset: 192)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !373, line: 3, type: !292, isLocal: true, isDefinition: true)
!373 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "Version", scope: !376, file: !373, line: 3, type: !115, isLocal: false, isDefinition: true)
!376 = distinct !DICompileUnit(language: DW_LANG_C11, file: !373, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !377, splitDebugInlining: false, nameTableKind: None)
!377 = !{!371, !374}
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "file_name", scope: !380, file: !381, line: 45, type: !115, isLocal: true, isDefinition: true)
!380 = distinct !DICompileUnit(language: DW_LANG_C11, file: !381, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !382, splitDebugInlining: false, nameTableKind: None)
!381 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!382 = !{!383, !385, !387, !389, !378, !391}
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !381, line: 121, type: !260, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !381, line: 121, type: !336, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !381, line: 123, type: !260, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !381, line: 126, type: !59, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !380, file: !381, line: 55, type: !156, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !395, file: !396, line: 66, type: !442, isLocal: false, isDefinition: true)
!395 = distinct !DICompileUnit(language: DW_LANG_C11, file: !396, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, globals: !398, splitDebugInlining: false, nameTableKind: None)
!396 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!397 = !{!110, !117}
!398 = !{!399, !401, !421, !423, !425, !427, !393, !429, !431, !433, !435, !440}
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !396, line: 272, type: !19, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "old_file_name", scope: !403, file: !396, line: 304, type: !115, isLocal: true, isDefinition: true)
!403 = distinct !DISubprogram(name: "verror_at_line", scope: !396, file: !396, line: 298, type: !404, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !414)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !68, !68, !115, !73, !115, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !408)
!408 = !{!409, !411, !412, !413}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !407, file: !410, baseType: !73, size: 32)
!410 = !DIFile(filename: "lib/error.c", directory: "/src")
!411 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !407, file: !410, baseType: !73, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !407, file: !410, baseType: !110, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !407, file: !410, baseType: !110, size: 64, offset: 128)
!414 = !{!415, !416, !417, !418, !419, !420}
!415 = !DILocalVariable(name: "status", arg: 1, scope: !403, file: !396, line: 298, type: !68)
!416 = !DILocalVariable(name: "errnum", arg: 2, scope: !403, file: !396, line: 298, type: !68)
!417 = !DILocalVariable(name: "file_name", arg: 3, scope: !403, file: !396, line: 298, type: !115)
!418 = !DILocalVariable(name: "line_number", arg: 4, scope: !403, file: !396, line: 298, type: !73)
!419 = !DILocalVariable(name: "message", arg: 5, scope: !403, file: !396, line: 298, type: !115)
!420 = !DILocalVariable(name: "args", arg: 6, scope: !403, file: !396, line: 298, type: !406)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(name: "old_line_number", scope: !403, file: !396, line: 305, type: !73, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !396, line: 338, type: !233, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !396, line: 346, type: !265, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !396, line: 346, type: !243, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "error_message_count", scope: !395, file: !396, line: 69, type: !73, isLocal: false, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !395, file: !396, line: 295, type: !68, isLocal: false, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !396, line: 208, type: !260, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !396, line: 208, type: !437, isLocal: true, isDefinition: true)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 21)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !396, line: 214, type: !19, isLocal: true, isDefinition: true)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{null}
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !447, file: !448, line: 506, type: !68, isLocal: true, isDefinition: true)
!447 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !448, file: !448, line: 485, type: !449, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !453)
!448 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!449 = !DISubroutineType(types: !450)
!450 = !{!68, !68, !68}
!451 = distinct !DICompileUnit(language: DW_LANG_C11, file: !448, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !452, splitDebugInlining: false, nameTableKind: None)
!452 = !{!445}
!453 = !{!454, !455, !456, !457, !460}
!454 = !DILocalVariable(name: "fd", arg: 1, scope: !447, file: !448, line: 485, type: !68)
!455 = !DILocalVariable(name: "target", arg: 2, scope: !447, file: !448, line: 485, type: !68)
!456 = !DILocalVariable(name: "result", scope: !447, file: !448, line: 487, type: !68)
!457 = !DILocalVariable(name: "flags", scope: !458, file: !448, line: 530, type: !68)
!458 = distinct !DILexicalBlock(scope: !459, file: !448, line: 529, column: 5)
!459 = distinct !DILexicalBlock(scope: !447, file: !448, line: 528, column: 7)
!460 = !DILocalVariable(name: "saved_errno", scope: !461, file: !448, line: 533, type: !68)
!461 = distinct !DILexicalBlock(scope: !462, file: !448, line: 532, column: 9)
!462 = distinct !DILexicalBlock(scope: !458, file: !448, line: 531, column: 11)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "program_name", scope: !465, file: !466, line: 31, type: !115, isLocal: false, isDefinition: true)
!465 = distinct !DICompileUnit(language: DW_LANG_C11, file: !466, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !467, globals: !468, splitDebugInlining: false, nameTableKind: None)
!466 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!467 = !{!109}
!468 = !{!463, !469, !471}
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !466, line: 46, type: !265, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !466, line: 49, type: !233, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "utf07FF", scope: !475, file: !476, line: 46, type: !503, isLocal: true, isDefinition: true)
!475 = distinct !DISubprogram(name: "proper_name_lite", scope: !476, file: !476, line: 38, type: !477, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !481)
!476 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!477 = !DISubroutineType(types: !478)
!478 = !{!115, !115, !115}
!479 = distinct !DICompileUnit(language: DW_LANG_C11, file: !476, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !480, splitDebugInlining: false, nameTableKind: None)
!480 = !{!473}
!481 = !{!482, !483, !484, !485, !490}
!482 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !475, file: !476, line: 38, type: !115)
!483 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !475, file: !476, line: 38, type: !115)
!484 = !DILocalVariable(name: "translation", scope: !475, file: !476, line: 40, type: !115)
!485 = !DILocalVariable(name: "w", scope: !475, file: !476, line: 47, type: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !487, line: 37, baseType: !488)
!487 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !196, line: 57, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !196, line: 42, baseType: !73)
!490 = !DILocalVariable(name: "mbs", scope: !475, file: !476, line: 48, type: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !492, line: 6, baseType: !493)
!492 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !494, line: 21, baseType: !495)
!494 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 13, size: 64, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !495, file: !494, line: 15, baseType: !68, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !495, file: !494, line: 20, baseType: !499, size: 32, offset: 32)
!499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !495, file: !494, line: 16, size: 32, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !499, file: !494, line: 18, baseType: !73, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !499, file: !494, line: 19, baseType: !233, size: 32)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 16, elements: !244)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !506, line: 78, type: !265, isLocal: true, isDefinition: true)
!506 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !506, line: 79, type: !238, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !506, line: 80, type: !126, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !506, line: 81, type: !126, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !506, line: 82, type: !218, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !506, line: 83, type: !243, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !506, line: 84, type: !265, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !506, line: 85, type: !260, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !506, line: 86, type: !260, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !506, line: 87, type: !265, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !527, file: !506, line: 76, type: !599, isLocal: false, isDefinition: true)
!527 = distinct !DICompileUnit(language: DW_LANG_C11, file: !506, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !528, retainedTypes: !534, globals: !535, splitDebugInlining: false, nameTableKind: None)
!528 = !{!94, !529, !79}
!529 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !95, line: 254, baseType: !73, size: 32, elements: !530)
!530 = !{!531, !532, !533}
!531 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!532 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!533 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!534 = !{!68, !111, !112}
!535 = !{!504, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !536, !540, !550, !552, !557, !559, !561, !563, !565, !588, !595, !597}
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !527, file: !506, line: 92, type: !538, isLocal: false, isDefinition: true)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 320, elements: !50)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !527, file: !506, line: 1040, type: !542, isLocal: false, isDefinition: true)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !506, line: 56, size: 448, elements: !543)
!543 = !{!544, !545, !546, !548, !549}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !542, file: !506, line: 59, baseType: !94, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !542, file: !506, line: 62, baseType: !68, size: 32, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !542, file: !506, line: 66, baseType: !547, size: 256, offset: 64)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, elements: !266)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !542, file: !506, line: 69, baseType: !115, size: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !542, file: !506, line: 72, baseType: !115, size: 64, offset: 384)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !527, file: !506, line: 107, type: !542, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "slot0", scope: !527, file: !506, line: 831, type: !554, isLocal: true, isDefinition: true)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 256)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !506, line: 321, type: !243, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !506, line: 357, type: !243, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !506, line: 358, type: !243, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !506, line: 199, type: !260, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(name: "quote", scope: !567, file: !506, line: 228, type: !586, isLocal: true, isDefinition: true)
!567 = distinct !DISubprogram(name: "gettext_quote", scope: !506, file: !506, line: 197, type: !568, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !570)
!568 = !DISubroutineType(types: !569)
!569 = !{!115, !115, !94}
!570 = !{!571, !572, !573, !574, !575}
!571 = !DILocalVariable(name: "msgid", arg: 1, scope: !567, file: !506, line: 197, type: !115)
!572 = !DILocalVariable(name: "s", arg: 2, scope: !567, file: !506, line: 197, type: !94)
!573 = !DILocalVariable(name: "translation", scope: !567, file: !506, line: 199, type: !115)
!574 = !DILocalVariable(name: "w", scope: !567, file: !506, line: 229, type: !486)
!575 = !DILocalVariable(name: "mbs", scope: !567, file: !506, line: 230, type: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !492, line: 6, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !494, line: 21, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 13, size: 64, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !578, file: !494, line: 15, baseType: !68, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !578, file: !494, line: 20, baseType: !582, size: 32, offset: 32)
!582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !578, file: !494, line: 16, size: 32, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !582, file: !494, line: 18, baseType: !73, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !582, file: !494, line: 19, baseType: !233, size: 32)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 64, elements: !587)
!587 = !{!245, !235}
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(name: "slotvec", scope: !527, file: !506, line: 834, type: !590, isLocal: true, isDefinition: true)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !506, line: 823, size: 128, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !591, file: !506, line: 825, baseType: !112, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !591, file: !506, line: 826, baseType: !109, size: 64, offset: 64)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "nslots", scope: !527, file: !506, line: 832, type: !68, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "slotvec0", scope: !527, file: !506, line: 833, type: !591, isLocal: true, isDefinition: true)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 704, elements: !601)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!601 = !{!602}
!602 = !DISubrange(count: 11)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !605, line: 67, type: !336, isLocal: true, isDefinition: true)
!605 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !605, line: 69, type: !260, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !605, line: 83, type: !260, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !605, line: 83, type: !233, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !605, line: 85, type: !243, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !605, line: 88, type: !616, isLocal: true, isDefinition: true)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 171)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !605, line: 88, type: !621, isLocal: true, isDefinition: true)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 34)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !605, line: 105, type: !310, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !605, line: 109, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 23)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !605, line: 113, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 28)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !605, line: 120, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 32)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !605, line: 127, type: !351, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !605, line: 134, type: !287, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !605, line: 142, type: !647, isLocal: true, isDefinition: true)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 44)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !605, line: 150, type: !652, isLocal: true, isDefinition: true)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 48)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !605, line: 159, type: !657, isLocal: true, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 52)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !605, line: 170, type: !662, isLocal: true, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 60)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !605, line: 248, type: !218, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !605, line: 248, type: !315, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !605, line: 254, type: !218, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !605, line: 254, type: !121, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !605, line: 254, type: !287, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !605, line: 259, type: !3, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !605, line: 259, type: !679, isLocal: true, isDefinition: true)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 29)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !684, file: !685, line: 26, type: !687, isLocal: false, isDefinition: true)
!684 = distinct !DICompileUnit(language: DW_LANG_C11, file: !685, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !686, splitDebugInlining: false, nameTableKind: None)
!685 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!686 = !{!682}
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 376, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 47)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(name: "exit_failure", scope: !692, file: !693, line: 24, type: !695, isLocal: false, isDefinition: true)
!692 = distinct !DICompileUnit(language: DW_LANG_C11, file: !693, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !694, splitDebugInlining: false, nameTableKind: None)
!693 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!694 = !{!690}
!695 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !698, line: 34, type: !59, isLocal: true, isDefinition: true)
!698 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !698, line: 34, type: !260, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !698, line: 34, type: !282, isLocal: true, isDefinition: true)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !705, line: 108, type: !44, isLocal: true, isDefinition: true)
!705 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(name: "internal_state", scope: !708, file: !705, line: 97, type: !711, isLocal: true, isDefinition: true)
!708 = distinct !DICompileUnit(language: DW_LANG_C11, file: !705, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !709, globals: !710, splitDebugInlining: false, nameTableKind: None)
!709 = !{!110, !112, !117}
!710 = !{!703, !706}
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !492, line: 6, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !494, line: 21, baseType: !713)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 13, size: 64, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !713, file: !494, line: 15, baseType: !68, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !713, file: !494, line: 20, baseType: !717, size: 32, offset: 32)
!717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !713, file: !494, line: 16, size: 32, elements: !718)
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !717, file: !494, line: 18, baseType: !73, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !717, file: !494, line: 19, baseType: !233, size: 32)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !723, line: 35, type: !238, isLocal: true, isDefinition: true)
!723 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!726 = distinct !DICompileUnit(language: DW_LANG_C11, file: !605, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !727, retainedTypes: !731, globals: !732, splitDebugInlining: false, nameTableKind: None)
!727 = !{!728}
!728 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !605, line: 40, baseType: !73, size: 32, elements: !729)
!729 = !{!730}
!730 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!731 = !{!110}
!732 = !{!603, !606, !608, !610, !612, !614, !619, !624, !626, !631, !636, !641, !643, !645, !650, !655, !660, !665, !667, !669, !671, !673, !675, !677}
!733 = distinct !DICompileUnit(language: DW_LANG_C11, file: !734, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !735, retainedTypes: !766, splitDebugInlining: false, nameTableKind: None)
!734 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!735 = !{!736, !748}
!736 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !737, file: !734, line: 188, baseType: !73, size: 32, elements: !746)
!737 = distinct !DISubprogram(name: "x2nrealloc", scope: !734, file: !734, line: 176, type: !738, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !741)
!738 = !DISubroutineType(types: !739)
!739 = !{!110, !110, !740, !112}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!741 = !{!742, !743, !744, !745}
!742 = !DILocalVariable(name: "p", arg: 1, scope: !737, file: !734, line: 176, type: !110)
!743 = !DILocalVariable(name: "pn", arg: 2, scope: !737, file: !734, line: 176, type: !740)
!744 = !DILocalVariable(name: "s", arg: 3, scope: !737, file: !734, line: 176, type: !112)
!745 = !DILocalVariable(name: "n", scope: !737, file: !734, line: 178, type: !112)
!746 = !{!747}
!747 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!748 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !749, file: !734, line: 228, baseType: !73, size: 32, elements: !746)
!749 = distinct !DISubprogram(name: "xpalloc", scope: !734, file: !734, line: 223, type: !750, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !756)
!750 = !DISubroutineType(types: !751)
!751 = !{!110, !110, !752, !753, !755, !753}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !754, line: 130, baseType: !755)
!754 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !113, line: 35, baseType: !197)
!756 = !{!757, !758, !759, !760, !761, !762, !763, !764, !765}
!757 = !DILocalVariable(name: "pa", arg: 1, scope: !749, file: !734, line: 223, type: !110)
!758 = !DILocalVariable(name: "pn", arg: 2, scope: !749, file: !734, line: 223, type: !752)
!759 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !749, file: !734, line: 223, type: !753)
!760 = !DILocalVariable(name: "n_max", arg: 4, scope: !749, file: !734, line: 223, type: !755)
!761 = !DILocalVariable(name: "s", arg: 5, scope: !749, file: !734, line: 223, type: !753)
!762 = !DILocalVariable(name: "n0", scope: !749, file: !734, line: 230, type: !753)
!763 = !DILocalVariable(name: "n", scope: !749, file: !734, line: 237, type: !753)
!764 = !DILocalVariable(name: "nbytes", scope: !749, file: !734, line: 248, type: !753)
!765 = !DILocalVariable(name: "adjusted_nbytes", scope: !749, file: !734, line: 252, type: !753)
!766 = !{!109, !110, !156, !197, !114}
!767 = distinct !DICompileUnit(language: DW_LANG_C11, file: !698, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !768, splitDebugInlining: false, nameTableKind: None)
!768 = !{!696, !699, !701}
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !770, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!770 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!771 = distinct !DICompileUnit(language: DW_LANG_C11, file: !772, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!772 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!773 = distinct !DICompileUnit(language: DW_LANG_C11, file: !774, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !731, splitDebugInlining: false, nameTableKind: None)
!774 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!775 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !731, splitDebugInlining: false, nameTableKind: None)
!776 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!777 = distinct !DICompileUnit(language: DW_LANG_C11, file: !778, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !779, splitDebugInlining: false, nameTableKind: None)
!778 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!779 = !{!156, !114, !110}
!780 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !781, splitDebugInlining: false, nameTableKind: None)
!781 = !{!782, !721}
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !723, line: 35, type: !243, isLocal: true, isDefinition: true)
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !785, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!786 = distinct !DICompileUnit(language: DW_LANG_C11, file: !787, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !731, splitDebugInlining: false, nameTableKind: None)
!787 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!788 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!789 = !{i32 7, !"Dwarf Version", i32 5}
!790 = !{i32 2, !"Debug Info Version", i32 3}
!791 = !{i32 1, !"wchar_size", i32 4}
!792 = !{i32 8, !"PIC Level", i32 2}
!793 = !{i32 7, !"PIE Level", i32 2}
!794 = !{i32 7, !"uwtable", i32 2}
!795 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 55, type: !796, scopeLine: 56, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !798)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !68}
!798 = !{!799}
!799 = !DILocalVariable(name: "status", arg: 1, scope: !795, file: !2, line: 55, type: !68)
!800 = !DILocation(line: 0, scope: !795)
!801 = !DILocation(line: 57, column: 14, scope: !802)
!802 = distinct !DILexicalBlock(scope: !795, file: !2, line: 57, column: 7)
!803 = !DILocation(line: 57, column: 7, scope: !795)
!804 = !DILocation(line: 58, column: 5, scope: !805)
!805 = distinct !DILexicalBlock(scope: !802, file: !2, line: 58, column: 5)
!806 = !{!807, !807, i64 0}
!807 = !{!"any pointer", !808, i64 0}
!808 = !{!"omnipotent char", !809, i64 0}
!809 = !{!"Simple C/C++ TBAA"}
!810 = !DILocation(line: 61, column: 7, scope: !811)
!811 = distinct !DILexicalBlock(scope: !802, file: !2, line: 60, column: 5)
!812 = !DILocation(line: 62, column: 7, scope: !811)
!813 = !DILocation(line: 70, column: 7, scope: !811)
!814 = !DILocation(line: 73, column: 7, scope: !811)
!815 = !DILocation(line: 76, column: 7, scope: !811)
!816 = !DILocation(line: 77, column: 7, scope: !811)
!817 = !DILocalVariable(name: "program", arg: 1, scope: !818, file: !67, line: 836, type: !115)
!818 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !67, file: !67, line: 836, type: !819, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !115}
!821 = !{!817, !822, !829, !830, !832, !833}
!822 = !DILocalVariable(name: "infomap", scope: !818, file: !67, line: 838, type: !823)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 896, elements: !261)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !818, file: !67, line: 838, size: 128, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !825, file: !67, line: 838, baseType: !115, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !825, file: !67, line: 838, baseType: !115, size: 64, offset: 64)
!829 = !DILocalVariable(name: "node", scope: !818, file: !67, line: 848, type: !115)
!830 = !DILocalVariable(name: "map_prog", scope: !818, file: !67, line: 849, type: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!832 = !DILocalVariable(name: "lc_messages", scope: !818, file: !67, line: 861, type: !115)
!833 = !DILocalVariable(name: "url_program", scope: !818, file: !67, line: 874, type: !115)
!834 = !DILocation(line: 0, scope: !818, inlinedAt: !835)
!835 = distinct !DILocation(line: 78, column: 7, scope: !811)
!836 = !DILocation(line: 857, column: 3, scope: !818, inlinedAt: !835)
!837 = !DILocation(line: 861, column: 29, scope: !818, inlinedAt: !835)
!838 = !DILocation(line: 862, column: 7, scope: !839, inlinedAt: !835)
!839 = distinct !DILexicalBlock(scope: !818, file: !67, line: 862, column: 7)
!840 = !DILocation(line: 862, column: 19, scope: !839, inlinedAt: !835)
!841 = !DILocation(line: 862, column: 22, scope: !839, inlinedAt: !835)
!842 = !DILocation(line: 862, column: 7, scope: !818, inlinedAt: !835)
!843 = !DILocation(line: 868, column: 7, scope: !844, inlinedAt: !835)
!844 = distinct !DILexicalBlock(scope: !839, file: !67, line: 863, column: 5)
!845 = !DILocation(line: 870, column: 5, scope: !844, inlinedAt: !835)
!846 = !DILocation(line: 875, column: 3, scope: !818, inlinedAt: !835)
!847 = !DILocation(line: 877, column: 3, scope: !818, inlinedAt: !835)
!848 = !DILocation(line: 80, column: 3, scope: !795)
!849 = !DISubprogram(name: "dcgettext", scope: !850, file: !850, line: 51, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!850 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!851 = !DISubroutineType(types: !852)
!852 = !{!109, !115, !115, !68}
!853 = !{}
!854 = !DISubprogram(name: "__fprintf_chk", scope: !855, file: !855, line: 93, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!855 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!856 = !DISubroutineType(types: !857)
!857 = !{!68, !858, !68, !859, null}
!858 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !169)
!859 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!860 = !DISubprogram(name: "__printf_chk", scope: !855, file: !855, line: 95, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!861 = !DISubroutineType(types: !862)
!862 = !{!68, !68, !859, null}
!863 = !DISubprogram(name: "fputs_unlocked", scope: !864, file: !864, line: 691, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!864 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!865 = !DISubroutineType(types: !866)
!866 = !{!68, !859, !858}
!867 = !DILocation(line: 0, scope: !146)
!868 = !DILocation(line: 581, column: 7, scope: !154)
!869 = !{!870, !870, i64 0}
!870 = !{!"int", !808, i64 0}
!871 = !DILocation(line: 581, column: 19, scope: !154)
!872 = !DILocation(line: 581, column: 7, scope: !146)
!873 = !DILocation(line: 585, column: 26, scope: !153)
!874 = !DILocation(line: 0, scope: !153)
!875 = !DILocation(line: 586, column: 23, scope: !153)
!876 = !DILocation(line: 586, column: 28, scope: !153)
!877 = !DILocation(line: 586, column: 32, scope: !153)
!878 = !{!808, !808, i64 0}
!879 = !DILocation(line: 586, column: 38, scope: !153)
!880 = !DILocalVariable(name: "__s1", arg: 1, scope: !881, file: !882, line: 1359, type: !115)
!881 = distinct !DISubprogram(name: "streq", scope: !882, file: !882, line: 1359, type: !883, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !885)
!882 = !DIFile(filename: "./lib/string.h", directory: "/src")
!883 = !DISubroutineType(types: !884)
!884 = !{!156, !115, !115}
!885 = !{!880, !886}
!886 = !DILocalVariable(name: "__s2", arg: 2, scope: !881, file: !882, line: 1359, type: !115)
!887 = !DILocation(line: 0, scope: !881, inlinedAt: !888)
!888 = distinct !DILocation(line: 586, column: 41, scope: !153)
!889 = !DILocation(line: 1361, column: 11, scope: !881, inlinedAt: !888)
!890 = !DILocation(line: 1361, column: 10, scope: !881, inlinedAt: !888)
!891 = !DILocation(line: 586, column: 19, scope: !153)
!892 = !DILocation(line: 587, column: 5, scope: !153)
!893 = !DILocation(line: 588, column: 7, scope: !894)
!894 = distinct !DILexicalBlock(scope: !146, file: !67, line: 588, column: 7)
!895 = !DILocation(line: 588, column: 7, scope: !146)
!896 = !DILocation(line: 590, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !67, line: 589, column: 5)
!898 = !DILocation(line: 591, column: 7, scope: !897)
!899 = !DILocation(line: 595, column: 37, scope: !146)
!900 = !DILocation(line: 595, column: 35, scope: !146)
!901 = !DILocation(line: 596, column: 29, scope: !146)
!902 = !DILocation(line: 597, column: 8, scope: !162)
!903 = !DILocation(line: 597, column: 7, scope: !146)
!904 = !DILocation(line: 604, column: 24, scope: !161)
!905 = !DILocation(line: 604, column: 12, scope: !162)
!906 = !DILocation(line: 0, scope: !160)
!907 = !DILocation(line: 610, column: 16, scope: !160)
!908 = !DILocation(line: 610, column: 7, scope: !160)
!909 = !DILocation(line: 611, column: 21, scope: !160)
!910 = !{!911, !911, i64 0}
!911 = !{!"short", !808, i64 0}
!912 = !DILocation(line: 611, column: 19, scope: !160)
!913 = !DILocation(line: 611, column: 16, scope: !160)
!914 = !DILocation(line: 610, column: 30, scope: !160)
!915 = distinct !{!915, !908, !909, !916}
!916 = !{!"llvm.loop.mustprogress"}
!917 = !DILocation(line: 612, column: 18, scope: !918)
!918 = distinct !DILexicalBlock(scope: !160, file: !67, line: 612, column: 11)
!919 = !DILocation(line: 612, column: 11, scope: !160)
!920 = !DILocation(line: 618, column: 5, scope: !160)
!921 = !DILocation(line: 620, column: 23, scope: !146)
!922 = !DILocation(line: 625, column: 39, scope: !146)
!923 = !DILocation(line: 626, column: 3, scope: !146)
!924 = !DILocation(line: 626, column: 10, scope: !146)
!925 = !DILocation(line: 626, column: 21, scope: !146)
!926 = !DILocation(line: 628, column: 44, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !67, line: 628, column: 11)
!928 = distinct !DILexicalBlock(scope: !146, file: !67, line: 627, column: 5)
!929 = !DILocation(line: 628, column: 32, scope: !927)
!930 = !DILocation(line: 628, column: 49, scope: !927)
!931 = !DILocation(line: 628, column: 11, scope: !928)
!932 = !DILocation(line: 630, column: 11, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !67, line: 630, column: 11)
!934 = !DILocation(line: 630, column: 11, scope: !928)
!935 = !DILocation(line: 632, column: 26, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !67, line: 632, column: 15)
!937 = distinct !DILexicalBlock(scope: !933, file: !67, line: 631, column: 9)
!938 = !DILocation(line: 632, column: 34, scope: !936)
!939 = !DILocation(line: 632, column: 37, scope: !936)
!940 = !DILocation(line: 632, column: 15, scope: !937)
!941 = !DILocation(line: 636, column: 16, scope: !942)
!942 = distinct !DILexicalBlock(scope: !937, file: !67, line: 636, column: 15)
!943 = !DILocation(line: 636, column: 29, scope: !942)
!944 = !DILocation(line: 640, column: 16, scope: !928)
!945 = distinct !{!945, !923, !946, !916}
!946 = !DILocation(line: 641, column: 5, scope: !146)
!947 = !DILocation(line: 644, column: 3, scope: !146)
!948 = !DILocation(line: 0, scope: !881, inlinedAt: !949)
!949 = distinct !DILocation(line: 648, column: 31, scope: !146)
!950 = !DILocation(line: 0, scope: !881, inlinedAt: !951)
!951 = distinct !DILocation(line: 649, column: 31, scope: !146)
!952 = !DILocation(line: 0, scope: !881, inlinedAt: !953)
!953 = distinct !DILocation(line: 650, column: 31, scope: !146)
!954 = !DILocation(line: 0, scope: !881, inlinedAt: !955)
!955 = distinct !DILocation(line: 651, column: 31, scope: !146)
!956 = !DILocation(line: 0, scope: !881, inlinedAt: !957)
!957 = distinct !DILocation(line: 652, column: 31, scope: !146)
!958 = !DILocation(line: 0, scope: !881, inlinedAt: !959)
!959 = distinct !DILocation(line: 653, column: 31, scope: !146)
!960 = !DILocation(line: 0, scope: !881, inlinedAt: !961)
!961 = distinct !DILocation(line: 654, column: 31, scope: !146)
!962 = !DILocation(line: 0, scope: !881, inlinedAt: !963)
!963 = distinct !DILocation(line: 655, column: 31, scope: !146)
!964 = !DILocation(line: 0, scope: !881, inlinedAt: !965)
!965 = distinct !DILocation(line: 656, column: 31, scope: !146)
!966 = !DILocation(line: 0, scope: !881, inlinedAt: !967)
!967 = distinct !DILocation(line: 657, column: 31, scope: !146)
!968 = !DILocation(line: 663, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !146, file: !67, line: 663, column: 7)
!970 = !DILocation(line: 664, column: 7, scope: !969)
!971 = !DILocation(line: 664, column: 10, scope: !969)
!972 = !DILocation(line: 663, column: 7, scope: !146)
!973 = !DILocation(line: 669, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !969, file: !67, line: 665, column: 5)
!975 = !DILocation(line: 671, column: 5, scope: !974)
!976 = !DILocation(line: 676, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !969, file: !67, line: 673, column: 5)
!978 = !DILocation(line: 679, column: 3, scope: !146)
!979 = !DILocation(line: 683, column: 3, scope: !146)
!980 = !DILocation(line: 686, column: 3, scope: !146)
!981 = !DILocation(line: 688, column: 3, scope: !146)
!982 = !DILocation(line: 691, column: 3, scope: !146)
!983 = !DILocation(line: 695, column: 3, scope: !146)
!984 = !DILocation(line: 696, column: 1, scope: !146)
!985 = !DISubprogram(name: "setlocale", scope: !986, file: !986, line: 122, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!986 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!987 = !DISubroutineType(types: !988)
!988 = !{!109, !68, !115}
!989 = !DISubprogram(name: "strncmp", scope: !990, file: !990, line: 159, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!990 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!991 = !DISubroutineType(types: !992)
!992 = !{!68, !115, !115, !112}
!993 = !DISubprogram(name: "exit", scope: !994, file: !994, line: 624, type: !796, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !853)
!994 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!995 = !DISubprogram(name: "getenv", scope: !994, file: !994, line: 641, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!996 = !DISubroutineType(types: !997)
!997 = !{!109, !115}
!998 = !DISubprogram(name: "strcmp", scope: !990, file: !990, line: 156, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!68, !115, !115}
!1001 = !DISubprogram(name: "strspn", scope: !990, file: !990, line: 297, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!114, !115, !115}
!1004 = !DISubprogram(name: "strchr", scope: !990, file: !990, line: 246, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!109, !115, !68}
!1007 = !DISubprogram(name: "__ctype_b_loc", scope: !80, file: !80, line: 79, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!1010}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!1013 = !DISubprogram(name: "strcspn", scope: !990, file: !990, line: 293, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1014 = !DISubprogram(name: "fwrite_unlocked", scope: !864, file: !864, line: 704, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!112, !1017, !112, !112, !858}
!1017 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1018)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1020 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 166, type: !1021, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1024)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!68, !68, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032}
!1025 = !DILocalVariable(name: "argc", arg: 1, scope: !1020, file: !2, line: 166, type: !68)
!1026 = !DILocalVariable(name: "argv", arg: 2, scope: !1020, file: !2, line: 166, type: !1023)
!1027 = !DILocalVariable(name: "arg_data", scope: !1020, file: !2, line: 168, type: !156)
!1028 = !DILocalVariable(name: "arg_file_system", scope: !1020, file: !2, line: 168, type: !156)
!1029 = !DILocalVariable(name: "ok", scope: !1020, file: !2, line: 169, type: !156)
!1030 = !DILocalVariable(name: "c", scope: !1020, file: !2, line: 179, type: !68)
!1031 = !DILocalVariable(name: "args_specified", scope: !1020, file: !2, line: 202, type: !156)
!1032 = !DILocalVariable(name: "mode", scope: !1020, file: !2, line: 211, type: !72)
!1033 = !DILocation(line: 0, scope: !1020)
!1034 = !DILocation(line: 172, column: 21, scope: !1020)
!1035 = !DILocation(line: 172, column: 3, scope: !1020)
!1036 = !DILocation(line: 173, column: 3, scope: !1020)
!1037 = !DILocation(line: 174, column: 3, scope: !1020)
!1038 = !DILocation(line: 175, column: 3, scope: !1020)
!1039 = !DILocation(line: 177, column: 3, scope: !1020)
!1040 = !DILocation(line: 180, column: 3, scope: !1020)
!1041 = !DILocation(line: 180, column: 15, scope: !1020)
!1042 = distinct !{!1042, !1040, !1043, !916, !1044}
!1043 = !DILocation(line: 200, column: 5, scope: !1020)
!1044 = !{!"llvm.loop.peeled.count", i32 1}
!1045 = !DILocation(line: 168, column: 8, scope: !1020)
!1046 = !DILocation(line: 191, column: 11, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 184, column: 9)
!1048 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 182, column: 5)
!1049 = distinct !{!1049, !1040, !1043, !916}
!1050 = !DILocation(line: 193, column: 9, scope: !1047)
!1051 = !DILocation(line: 195, column: 9, scope: !1047)
!1052 = !DILocation(line: 198, column: 11, scope: !1047)
!1053 = !DILocation(line: 202, column: 25, scope: !1020)
!1054 = !DILocation(line: 202, column: 32, scope: !1020)
!1055 = !DILocation(line: 204, column: 7, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 204, column: 7)
!1057 = !DILocation(line: 204, column: 16, scope: !1056)
!1058 = !DILocation(line: 205, column: 5, scope: !1056)
!1059 = !DILocation(line: 208, column: 23, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 208, column: 7)
!1061 = !DILocation(line: 209, column: 5, scope: !1060)
!1062 = !DILocation(line: 212, column: 24, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 212, column: 7)
!1064 = !DILocation(line: 221, column: 7, scope: !1020)
!1065 = !DILocation(line: 222, column: 5, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 221, column: 7)
!1067 = !DILocation(line: 226, column: 31, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 225, column: 7)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 225, column: 7)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 224, column: 5)
!1071 = !DILocalVariable(name: "mode", arg: 1, scope: !1072, file: !2, line: 87, type: !72)
!1072 = distinct !DISubprogram(name: "sync_arg", scope: !2, file: !2, line: 87, type: !1073, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1075)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!156, !72, !115}
!1075 = !{!1071, !1076, !1077, !1078, !1079, !1082, !1083, !1084}
!1076 = !DILocalVariable(name: "file", arg: 2, scope: !1072, file: !2, line: 87, type: !115)
!1077 = !DILocalVariable(name: "open_flags", scope: !1072, file: !2, line: 89, type: !68)
!1078 = !DILocalVariable(name: "fd", scope: !1072, file: !2, line: 99, type: !68)
!1079 = !DILocalVariable(name: "rd_errno", scope: !1080, file: !2, line: 104, type: !68)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 101, column: 5)
!1081 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 100, column: 7)
!1082 = !DILocalVariable(name: "ret", scope: !1072, file: !2, line: 114, type: !156)
!1083 = !DILocalVariable(name: "fdflags", scope: !1072, file: !2, line: 117, type: !68)
!1084 = !DILocalVariable(name: "sync_status", scope: !1085, file: !2, line: 128, type: !68)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 127, column: 5)
!1086 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 126, column: 7)
!1087 = !DILocation(line: 0, scope: !1072, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 226, column: 15, scope: !1068)
!1089 = !DILocation(line: 99, column: 12, scope: !1072, inlinedAt: !1088)
!1090 = !DILocation(line: 100, column: 10, scope: !1081, inlinedAt: !1088)
!1091 = !DILocation(line: 100, column: 7, scope: !1072, inlinedAt: !1088)
!1092 = !DILocation(line: 104, column: 22, scope: !1080, inlinedAt: !1088)
!1093 = !DILocation(line: 0, scope: !1080, inlinedAt: !1088)
!1094 = !DILocation(line: 106, column: 14, scope: !1095, inlinedAt: !1088)
!1095 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 105, column: 11)
!1096 = !DILocation(line: 107, column: 14, scope: !1097, inlinedAt: !1088)
!1097 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 107, column: 11)
!1098 = !DILocation(line: 107, column: 11, scope: !1080, inlinedAt: !1088)
!1099 = !DILocation(line: 109, column: 11, scope: !1100, inlinedAt: !1088)
!1100 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 108, column: 9)
!1101 = !DILocation(line: 117, column: 17, scope: !1072, inlinedAt: !1088)
!1102 = !DILocation(line: 118, column: 15, scope: !1103, inlinedAt: !1088)
!1103 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 118, column: 7)
!1104 = !DILocation(line: 119, column: 7, scope: !1103, inlinedAt: !1088)
!1105 = !DILocation(line: 119, column: 38, scope: !1103, inlinedAt: !1088)
!1106 = !DILocation(line: 119, column: 10, scope: !1103, inlinedAt: !1088)
!1107 = !DILocation(line: 119, column: 53, scope: !1103, inlinedAt: !1088)
!1108 = !DILocation(line: 118, column: 7, scope: !1072, inlinedAt: !1088)
!1109 = !DILocation(line: 0, scope: !1085, inlinedAt: !1088)
!1110 = !DILocation(line: 130, column: 7, scope: !1085, inlinedAt: !1088)
!1111 = !DILocation(line: 133, column: 25, scope: !1112, inlinedAt: !1088)
!1112 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 131, column: 9)
!1113 = !DILocation(line: 134, column: 11, scope: !1112, inlinedAt: !1088)
!1114 = !DILocation(line: 137, column: 25, scope: !1112, inlinedAt: !1088)
!1115 = !DILocation(line: 138, column: 11, scope: !1112, inlinedAt: !1088)
!1116 = !DILocation(line: 142, column: 25, scope: !1112, inlinedAt: !1088)
!1117 = !DILocation(line: 143, column: 11, scope: !1112, inlinedAt: !1088)
!1118 = !DILocation(line: 146, column: 11, scope: !1112, inlinedAt: !1088)
!1119 = !DILocation(line: 0, scope: !1112, inlinedAt: !1088)
!1120 = !DILocation(line: 149, column: 23, scope: !1121, inlinedAt: !1088)
!1121 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 149, column: 11)
!1122 = !DILocation(line: 149, column: 11, scope: !1085, inlinedAt: !1088)
!1123 = !DILocation(line: 156, column: 7, scope: !1124, inlinedAt: !1088)
!1124 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 156, column: 7)
!1125 = !DILocation(line: 156, column: 18, scope: !1124, inlinedAt: !1088)
!1126 = !DILocation(line: 156, column: 7, scope: !1072, inlinedAt: !1088)
!1127 = !DILocation(line: 158, column: 7, scope: !1128, inlinedAt: !1088)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 157, column: 5)
!1129 = !DILocation(line: 160, column: 5, scope: !1128, inlinedAt: !1088)
!1130 = !DILocation(line: 162, column: 10, scope: !1072, inlinedAt: !1088)
!1131 = !DILocation(line: 226, column: 12, scope: !1068)
!1132 = !DILocation(line: 225, column: 35, scope: !1068)
!1133 = !DILocation(line: 225, column: 21, scope: !1068)
!1134 = !DILocation(line: 225, column: 7, scope: !1069)
!1135 = distinct !{!1135, !1134, !1136, !916}
!1136 = !DILocation(line: 226, column: 43, scope: !1069)
!1137 = !DILocation(line: 229, column: 10, scope: !1020)
!1138 = !DILocation(line: 229, column: 3, scope: !1020)
!1139 = !DISubprogram(name: "bindtextdomain", scope: !850, file: !850, line: 86, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!109, !115, !115}
!1142 = !DISubprogram(name: "textdomain", scope: !850, file: !850, line: 82, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1143 = !DISubprogram(name: "atexit", scope: !994, file: !994, line: 602, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!68, !442}
!1146 = !DISubprogram(name: "getopt_long", scope: !364, file: !364, line: 66, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!68, !68, !1149, !115, !1151, !369}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!1152 = !DISubprogram(name: "sync", scope: !1153, file: !1153, line: 1005, type: !443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1153 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1154 = !DISubprogram(name: "open", scope: !1155, file: !1155, line: 181, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1155 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!68, !115, !68, null}
!1158 = !DISubprogram(name: "__errno_location", scope: !1159, file: !1159, line: 37, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1159 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!369}
!1162 = !DISubprogram(name: "fdatasync", scope: !1153, file: !1153, line: 1150, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!68, !68}
!1165 = !DISubprogram(name: "fsync", scope: !1153, file: !1153, line: 989, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1166 = !DISubprogram(name: "syncfs", scope: !1153, file: !1153, line: 995, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1167 = !DISubprogram(name: "close", scope: !1153, file: !1153, line: 358, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1168 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !381, file: !381, line: 50, type: !819, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1169)
!1169 = !{!1170}
!1170 = !DILocalVariable(name: "file", arg: 1, scope: !1168, file: !381, line: 50, type: !115)
!1171 = !DILocation(line: 0, scope: !1168)
!1172 = !DILocation(line: 52, column: 13, scope: !1168)
!1173 = !DILocation(line: 53, column: 1, scope: !1168)
!1174 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !381, file: !381, line: 87, type: !1175, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1177)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !156}
!1177 = !{!1178}
!1178 = !DILocalVariable(name: "ignore", arg: 1, scope: !1174, file: !381, line: 87, type: !156)
!1179 = !DILocation(line: 0, scope: !1174)
!1180 = !DILocation(line: 89, column: 16, scope: !1174)
!1181 = !{!1182, !1182, i64 0}
!1182 = !{!"_Bool", !808, i64 0}
!1183 = !DILocation(line: 90, column: 1, scope: !1174)
!1184 = distinct !DISubprogram(name: "close_stdout", scope: !381, file: !381, line: 116, type: !443, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1185)
!1185 = !{!1186}
!1186 = !DILocalVariable(name: "write_error", scope: !1187, file: !381, line: 121, type: !115)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !381, line: 120, column: 5)
!1188 = distinct !DILexicalBlock(scope: !1184, file: !381, line: 118, column: 7)
!1189 = !DILocation(line: 118, column: 21, scope: !1188)
!1190 = !DILocation(line: 118, column: 7, scope: !1188)
!1191 = !DILocation(line: 118, column: 29, scope: !1188)
!1192 = !DILocation(line: 119, column: 7, scope: !1188)
!1193 = !DILocation(line: 119, column: 12, scope: !1188)
!1194 = !{i8 0, i8 2}
!1195 = !DILocation(line: 119, column: 25, scope: !1188)
!1196 = !DILocation(line: 119, column: 28, scope: !1188)
!1197 = !DILocation(line: 119, column: 34, scope: !1188)
!1198 = !DILocation(line: 118, column: 7, scope: !1184)
!1199 = !DILocation(line: 121, column: 33, scope: !1187)
!1200 = !DILocation(line: 0, scope: !1187)
!1201 = !DILocation(line: 122, column: 11, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1187, file: !381, line: 122, column: 11)
!1203 = !DILocation(line: 0, scope: !1202)
!1204 = !DILocation(line: 122, column: 11, scope: !1187)
!1205 = !DILocation(line: 123, column: 9, scope: !1202)
!1206 = !DILocation(line: 126, column: 9, scope: !1202)
!1207 = !DILocation(line: 128, column: 14, scope: !1187)
!1208 = !DILocation(line: 128, column: 7, scope: !1187)
!1209 = !DILocation(line: 133, column: 42, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1184, file: !381, line: 133, column: 7)
!1211 = !DILocation(line: 133, column: 28, scope: !1210)
!1212 = !DILocation(line: 133, column: 50, scope: !1210)
!1213 = !DILocation(line: 133, column: 7, scope: !1184)
!1214 = !DILocation(line: 134, column: 12, scope: !1210)
!1215 = !DILocation(line: 134, column: 5, scope: !1210)
!1216 = !DILocation(line: 135, column: 1, scope: !1184)
!1217 = !DISubprogram(name: "_exit", scope: !1153, file: !1153, line: 624, type: !796, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1218 = distinct !DISubprogram(name: "verror", scope: !396, file: !396, line: 251, type: !1219, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1221)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !68, !68, !115, !406}
!1221 = !{!1222, !1223, !1224, !1225}
!1222 = !DILocalVariable(name: "status", arg: 1, scope: !1218, file: !396, line: 251, type: !68)
!1223 = !DILocalVariable(name: "errnum", arg: 2, scope: !1218, file: !396, line: 251, type: !68)
!1224 = !DILocalVariable(name: "message", arg: 3, scope: !1218, file: !396, line: 251, type: !115)
!1225 = !DILocalVariable(name: "args", arg: 4, scope: !1218, file: !396, line: 251, type: !406)
!1226 = !DILocation(line: 0, scope: !1218)
!1227 = !DILocation(line: 261, column: 3, scope: !1218)
!1228 = !DILocation(line: 265, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1218, file: !396, line: 265, column: 7)
!1230 = !DILocation(line: 265, column: 7, scope: !1218)
!1231 = !DILocation(line: 266, column: 5, scope: !1229)
!1232 = !DILocation(line: 272, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1229, file: !396, line: 268, column: 5)
!1234 = !DILocation(line: 276, column: 3, scope: !1218)
!1235 = !DILocation(line: 282, column: 1, scope: !1218)
!1236 = distinct !DISubprogram(name: "flush_stdout", scope: !396, file: !396, line: 163, type: !443, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1237)
!1237 = !{!1238}
!1238 = !DILocalVariable(name: "stdout_fd", scope: !1236, file: !396, line: 166, type: !68)
!1239 = !DILocation(line: 0, scope: !1236)
!1240 = !DILocalVariable(name: "fd", arg: 1, scope: !1241, file: !396, line: 145, type: !68)
!1241 = distinct !DISubprogram(name: "is_open", scope: !396, file: !396, line: 145, type: !1163, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1242)
!1242 = !{!1240}
!1243 = !DILocation(line: 0, scope: !1241, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 182, column: 25, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1236, file: !396, line: 182, column: 7)
!1246 = !DILocation(line: 157, column: 15, scope: !1241, inlinedAt: !1244)
!1247 = !DILocation(line: 157, column: 12, scope: !1241, inlinedAt: !1244)
!1248 = !DILocation(line: 182, column: 7, scope: !1236)
!1249 = !DILocation(line: 184, column: 5, scope: !1245)
!1250 = !DILocation(line: 185, column: 1, scope: !1236)
!1251 = distinct !DISubprogram(name: "error_tail", scope: !396, file: !396, line: 219, type: !1219, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1252)
!1252 = !{!1253, !1254, !1255, !1256}
!1253 = !DILocalVariable(name: "status", arg: 1, scope: !1251, file: !396, line: 219, type: !68)
!1254 = !DILocalVariable(name: "errnum", arg: 2, scope: !1251, file: !396, line: 219, type: !68)
!1255 = !DILocalVariable(name: "message", arg: 3, scope: !1251, file: !396, line: 219, type: !115)
!1256 = !DILocalVariable(name: "args", arg: 4, scope: !1251, file: !396, line: 219, type: !406)
!1257 = !DILocation(line: 0, scope: !1251)
!1258 = !DILocation(line: 229, column: 13, scope: !1251)
!1259 = !DILocalVariable(name: "__stream", arg: 1, scope: !1260, file: !855, line: 132, type: !1263)
!1260 = distinct !DISubprogram(name: "vfprintf", scope: !855, file: !855, line: 132, type: !1261, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1298)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!68, !1263, !859, !406}
!1263 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1264)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !1267)
!1267 = !{!1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1266, file: !173, line: 51, baseType: !68, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1266, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1266, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1266, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1266, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1266, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1266, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1266, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1266, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1266, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1266, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1266, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1266, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1266, file: !173, line: 70, baseType: !1282, size: 64, offset: 832)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1266, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1266, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1266, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1266, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1266, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1266, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1266, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1266, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1266, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1266, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1266, file: !173, line: 93, baseType: !1282, size: 64, offset: 1344)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1266, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1266, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1266, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1266, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!1298 = !{!1259, !1299, !1300}
!1299 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1260, file: !855, line: 133, type: !859)
!1300 = !DILocalVariable(name: "__ap", arg: 3, scope: !1260, file: !855, line: 133, type: !406)
!1301 = !DILocation(line: 0, scope: !1260, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 229, column: 3, scope: !1251)
!1303 = !DILocation(line: 135, column: 10, scope: !1260, inlinedAt: !1302)
!1304 = !DILocation(line: 232, column: 3, scope: !1251)
!1305 = !DILocation(line: 233, column: 7, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1251, file: !396, line: 233, column: 7)
!1307 = !DILocation(line: 233, column: 7, scope: !1251)
!1308 = !DILocalVariable(name: "errnum", arg: 1, scope: !1309, file: !396, line: 188, type: !68)
!1309 = distinct !DISubprogram(name: "print_errno_message", scope: !396, file: !396, line: 188, type: !796, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1310)
!1310 = !{!1308, !1311, !1312}
!1311 = !DILocalVariable(name: "s", scope: !1309, file: !396, line: 190, type: !115)
!1312 = !DILocalVariable(name: "errbuf", scope: !1309, file: !396, line: 193, type: !1313)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1314)
!1314 = !{!1315}
!1315 = !DISubrange(count: 1024)
!1316 = !DILocation(line: 0, scope: !1309, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 234, column: 5, scope: !1306)
!1318 = !DILocation(line: 193, column: 3, scope: !1309, inlinedAt: !1317)
!1319 = !DILocation(line: 193, column: 8, scope: !1309, inlinedAt: !1317)
!1320 = !DILocation(line: 195, column: 7, scope: !1309, inlinedAt: !1317)
!1321 = !DILocation(line: 207, column: 9, scope: !1322, inlinedAt: !1317)
!1322 = distinct !DILexicalBlock(scope: !1309, file: !396, line: 207, column: 7)
!1323 = !DILocation(line: 207, column: 7, scope: !1309, inlinedAt: !1317)
!1324 = !DILocation(line: 208, column: 9, scope: !1322, inlinedAt: !1317)
!1325 = !DILocation(line: 208, column: 5, scope: !1322, inlinedAt: !1317)
!1326 = !DILocation(line: 214, column: 3, scope: !1309, inlinedAt: !1317)
!1327 = !DILocation(line: 216, column: 1, scope: !1309, inlinedAt: !1317)
!1328 = !DILocation(line: 234, column: 5, scope: !1306)
!1329 = !DILocation(line: 238, column: 3, scope: !1251)
!1330 = !DILocalVariable(name: "__c", arg: 1, scope: !1331, file: !1332, line: 101, type: !68)
!1331 = distinct !DISubprogram(name: "putc_unlocked", scope: !1332, file: !1332, line: 101, type: !1333, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1335)
!1332 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!68, !68, !1264}
!1335 = !{!1330, !1336}
!1336 = !DILocalVariable(name: "__stream", arg: 2, scope: !1331, file: !1332, line: 101, type: !1264)
!1337 = !DILocation(line: 0, scope: !1331, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 238, column: 3, scope: !1251)
!1339 = !DILocation(line: 103, column: 10, scope: !1331, inlinedAt: !1338)
!1340 = !{!1341, !807, i64 40}
!1341 = !{!"_IO_FILE", !870, i64 0, !807, i64 8, !807, i64 16, !807, i64 24, !807, i64 32, !807, i64 40, !807, i64 48, !807, i64 56, !807, i64 64, !807, i64 72, !807, i64 80, !807, i64 88, !807, i64 96, !807, i64 104, !870, i64 112, !870, i64 116, !1342, i64 120, !911, i64 128, !808, i64 130, !808, i64 131, !807, i64 136, !1342, i64 144, !807, i64 152, !807, i64 160, !807, i64 168, !807, i64 176, !1342, i64 184, !870, i64 192, !808, i64 196}
!1342 = !{!"long", !808, i64 0}
!1343 = !{!1341, !807, i64 48}
!1344 = !{!"branch_weights", i32 2000, i32 1}
!1345 = !DILocation(line: 240, column: 3, scope: !1251)
!1346 = !DILocation(line: 241, column: 7, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1251, file: !396, line: 241, column: 7)
!1348 = !DILocation(line: 241, column: 7, scope: !1251)
!1349 = !DILocation(line: 242, column: 5, scope: !1347)
!1350 = !DILocation(line: 243, column: 1, scope: !1251)
!1351 = !DISubprogram(name: "__vfprintf_chk", scope: !855, file: !855, line: 96, type: !1352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!68, !1263, !68, !859, !406}
!1354 = !DISubprogram(name: "strerror_r", scope: !990, file: !990, line: 444, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!109, !68, !109, !112}
!1357 = !DISubprogram(name: "__overflow", scope: !864, file: !864, line: 886, type: !1358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!68, !1264, !68}
!1360 = !DISubprogram(name: "fflush_unlocked", scope: !864, file: !864, line: 239, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!68, !1264}
!1363 = !DISubprogram(name: "fcntl", scope: !1155, file: !1155, line: 149, type: !1364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!68, !68, !68, null}
!1366 = distinct !DISubprogram(name: "error", scope: !396, file: !396, line: 285, type: !1367, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1369)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{null, !68, !68, !115, null}
!1369 = !{!1370, !1371, !1372, !1373}
!1370 = !DILocalVariable(name: "status", arg: 1, scope: !1366, file: !396, line: 285, type: !68)
!1371 = !DILocalVariable(name: "errnum", arg: 2, scope: !1366, file: !396, line: 285, type: !68)
!1372 = !DILocalVariable(name: "message", arg: 3, scope: !1366, file: !396, line: 285, type: !115)
!1373 = !DILocalVariable(name: "ap", scope: !1366, file: !396, line: 287, type: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !864, line: 52, baseType: !1375)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1376, line: 14, baseType: !1377)
!1376 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !410, baseType: !1378)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 192, elements: !45)
!1379 = !DILocation(line: 0, scope: !1366)
!1380 = !DILocation(line: 287, column: 3, scope: !1366)
!1381 = !DILocation(line: 287, column: 11, scope: !1366)
!1382 = !DILocation(line: 288, column: 3, scope: !1366)
!1383 = !DILocation(line: 289, column: 3, scope: !1366)
!1384 = !DILocation(line: 290, column: 3, scope: !1366)
!1385 = !DILocation(line: 291, column: 1, scope: !1366)
!1386 = !DILocation(line: 0, scope: !403)
!1387 = !DILocation(line: 302, column: 7, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !403, file: !396, line: 302, column: 7)
!1389 = !DILocation(line: 302, column: 7, scope: !403)
!1390 = !DILocation(line: 307, column: 11, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !396, line: 307, column: 11)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !396, line: 303, column: 5)
!1393 = !DILocation(line: 307, column: 27, scope: !1391)
!1394 = !DILocation(line: 308, column: 11, scope: !1391)
!1395 = !DILocation(line: 308, column: 28, scope: !1391)
!1396 = !DILocation(line: 308, column: 25, scope: !1391)
!1397 = !DILocation(line: 309, column: 15, scope: !1391)
!1398 = !DILocation(line: 309, column: 33, scope: !1391)
!1399 = !DILocation(line: 310, column: 19, scope: !1391)
!1400 = !DILocation(line: 311, column: 22, scope: !1391)
!1401 = !DILocation(line: 311, column: 56, scope: !1391)
!1402 = !DILocation(line: 307, column: 11, scope: !1392)
!1403 = !DILocation(line: 316, column: 21, scope: !1392)
!1404 = !DILocation(line: 317, column: 23, scope: !1392)
!1405 = !DILocation(line: 318, column: 5, scope: !1392)
!1406 = !DILocation(line: 327, column: 3, scope: !403)
!1407 = !DILocation(line: 331, column: 7, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !403, file: !396, line: 331, column: 7)
!1409 = !DILocation(line: 331, column: 7, scope: !403)
!1410 = !DILocation(line: 332, column: 5, scope: !1408)
!1411 = !DILocation(line: 338, column: 7, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !396, line: 334, column: 5)
!1413 = !DILocation(line: 346, column: 3, scope: !403)
!1414 = !DILocation(line: 350, column: 3, scope: !403)
!1415 = !DILocation(line: 356, column: 1, scope: !403)
!1416 = distinct !DISubprogram(name: "error_at_line", scope: !396, file: !396, line: 359, type: !1417, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1419)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !68, !68, !115, !73, !115, null}
!1419 = !{!1420, !1421, !1422, !1423, !1424, !1425}
!1420 = !DILocalVariable(name: "status", arg: 1, scope: !1416, file: !396, line: 359, type: !68)
!1421 = !DILocalVariable(name: "errnum", arg: 2, scope: !1416, file: !396, line: 359, type: !68)
!1422 = !DILocalVariable(name: "file_name", arg: 3, scope: !1416, file: !396, line: 359, type: !115)
!1423 = !DILocalVariable(name: "line_number", arg: 4, scope: !1416, file: !396, line: 360, type: !73)
!1424 = !DILocalVariable(name: "message", arg: 5, scope: !1416, file: !396, line: 360, type: !115)
!1425 = !DILocalVariable(name: "ap", scope: !1416, file: !396, line: 362, type: !1374)
!1426 = !DILocation(line: 0, scope: !1416)
!1427 = !DILocation(line: 362, column: 3, scope: !1416)
!1428 = !DILocation(line: 362, column: 11, scope: !1416)
!1429 = !DILocation(line: 363, column: 3, scope: !1416)
!1430 = !DILocation(line: 364, column: 3, scope: !1416)
!1431 = !DILocation(line: 366, column: 3, scope: !1416)
!1432 = !DILocation(line: 367, column: 1, scope: !1416)
!1433 = distinct !DISubprogram(name: "rpl_fcntl", scope: !448, file: !448, line: 202, type: !1364, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1434)
!1434 = !{!1435, !1436, !1437, !1448, !1449, !1452, !1454, !1458}
!1435 = !DILocalVariable(name: "fd", arg: 1, scope: !1433, file: !448, line: 202, type: !68)
!1436 = !DILocalVariable(name: "action", arg: 2, scope: !1433, file: !448, line: 202, type: !68)
!1437 = !DILocalVariable(name: "arg", scope: !1433, file: !448, line: 208, type: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1376, line: 22, baseType: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1440, baseType: !1441)
!1440 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1442, size: 192, elements: !45)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1443)
!1443 = !{!1444, !1445, !1446, !1447}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1442, file: !1440, line: 208, baseType: !73, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1442, file: !1440, line: 208, baseType: !73, size: 32, offset: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1442, file: !1440, line: 208, baseType: !110, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1442, file: !1440, line: 208, baseType: !110, size: 64, offset: 128)
!1448 = !DILocalVariable(name: "result", scope: !1433, file: !448, line: 211, type: !68)
!1449 = !DILocalVariable(name: "target", scope: !1450, file: !448, line: 216, type: !68)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !448, line: 215, column: 7)
!1451 = distinct !DILexicalBlock(scope: !1433, file: !448, line: 213, column: 5)
!1452 = !DILocalVariable(name: "target", scope: !1453, file: !448, line: 223, type: !68)
!1453 = distinct !DILexicalBlock(scope: !1451, file: !448, line: 222, column: 7)
!1454 = !DILocalVariable(name: "x", scope: !1455, file: !448, line: 418, type: !68)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !448, line: 417, column: 13)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !448, line: 261, column: 11)
!1457 = distinct !DILexicalBlock(scope: !1451, file: !448, line: 258, column: 7)
!1458 = !DILocalVariable(name: "p", scope: !1459, file: !448, line: 426, type: !110)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !448, line: 425, column: 13)
!1460 = !DILocation(line: 0, scope: !1433)
!1461 = !DILocation(line: 208, column: 3, scope: !1433)
!1462 = !DILocation(line: 208, column: 11, scope: !1433)
!1463 = !DILocation(line: 209, column: 3, scope: !1433)
!1464 = !DILocation(line: 212, column: 3, scope: !1433)
!1465 = !DILocation(line: 216, column: 22, scope: !1450)
!1466 = !DILocation(line: 0, scope: !1450)
!1467 = !DILocalVariable(name: "fd", arg: 1, scope: !1468, file: !448, line: 444, type: !68)
!1468 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !448, file: !448, line: 444, type: !449, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1469)
!1469 = !{!1467, !1470, !1471}
!1470 = !DILocalVariable(name: "target", arg: 2, scope: !1468, file: !448, line: 444, type: !68)
!1471 = !DILocalVariable(name: "result", scope: !1468, file: !448, line: 446, type: !68)
!1472 = !DILocation(line: 0, scope: !1468, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 217, column: 18, scope: !1450)
!1474 = !DILocation(line: 479, column: 12, scope: !1468, inlinedAt: !1473)
!1475 = !DILocation(line: 223, column: 22, scope: !1453)
!1476 = !DILocation(line: 0, scope: !1453)
!1477 = !DILocation(line: 0, scope: !447, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 224, column: 18, scope: !1453)
!1479 = !DILocation(line: 507, column: 12, scope: !1480, inlinedAt: !1478)
!1480 = distinct !DILexicalBlock(scope: !447, file: !448, line: 507, column: 7)
!1481 = !DILocation(line: 507, column: 9, scope: !1480, inlinedAt: !1478)
!1482 = !DILocation(line: 507, column: 7, scope: !447, inlinedAt: !1478)
!1483 = !DILocation(line: 509, column: 16, scope: !1484, inlinedAt: !1478)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !448, line: 508, column: 5)
!1485 = !DILocation(line: 510, column: 13, scope: !1486, inlinedAt: !1478)
!1486 = distinct !DILexicalBlock(scope: !1484, file: !448, line: 510, column: 11)
!1487 = !DILocation(line: 510, column: 23, scope: !1486, inlinedAt: !1478)
!1488 = !DILocation(line: 510, column: 26, scope: !1486, inlinedAt: !1478)
!1489 = !DILocation(line: 510, column: 32, scope: !1486, inlinedAt: !1478)
!1490 = !DILocation(line: 510, column: 11, scope: !1484, inlinedAt: !1478)
!1491 = !DILocation(line: 512, column: 30, scope: !1492, inlinedAt: !1478)
!1492 = distinct !DILexicalBlock(scope: !1486, file: !448, line: 511, column: 9)
!1493 = !DILocation(line: 528, column: 19, scope: !459, inlinedAt: !1478)
!1494 = !DILocation(line: 0, scope: !1468, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 520, column: 20, scope: !1496, inlinedAt: !1478)
!1496 = distinct !DILexicalBlock(scope: !1486, file: !448, line: 519, column: 9)
!1497 = !DILocation(line: 479, column: 12, scope: !1468, inlinedAt: !1495)
!1498 = !DILocation(line: 521, column: 22, scope: !1499, inlinedAt: !1478)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !448, line: 521, column: 15)
!1500 = !DILocation(line: 521, column: 15, scope: !1496, inlinedAt: !1478)
!1501 = !DILocation(line: 522, column: 32, scope: !1499, inlinedAt: !1478)
!1502 = !DILocation(line: 522, column: 13, scope: !1499, inlinedAt: !1478)
!1503 = !DILocation(line: 0, scope: !1468, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 527, column: 14, scope: !1480, inlinedAt: !1478)
!1505 = !DILocation(line: 479, column: 12, scope: !1468, inlinedAt: !1504)
!1506 = !DILocation(line: 0, scope: !1480, inlinedAt: !1478)
!1507 = !DILocation(line: 528, column: 9, scope: !459, inlinedAt: !1478)
!1508 = !DILocation(line: 530, column: 19, scope: !458, inlinedAt: !1478)
!1509 = !DILocation(line: 0, scope: !458, inlinedAt: !1478)
!1510 = !DILocation(line: 531, column: 17, scope: !462, inlinedAt: !1478)
!1511 = !DILocation(line: 531, column: 21, scope: !462, inlinedAt: !1478)
!1512 = !DILocation(line: 531, column: 54, scope: !462, inlinedAt: !1478)
!1513 = !DILocation(line: 531, column: 24, scope: !462, inlinedAt: !1478)
!1514 = !DILocation(line: 531, column: 68, scope: !462, inlinedAt: !1478)
!1515 = !DILocation(line: 531, column: 11, scope: !458, inlinedAt: !1478)
!1516 = !DILocation(line: 533, column: 29, scope: !461, inlinedAt: !1478)
!1517 = !DILocation(line: 0, scope: !461, inlinedAt: !1478)
!1518 = !DILocation(line: 534, column: 11, scope: !461, inlinedAt: !1478)
!1519 = !DILocation(line: 535, column: 17, scope: !461, inlinedAt: !1478)
!1520 = !DILocation(line: 537, column: 9, scope: !461, inlinedAt: !1478)
!1521 = !DILocation(line: 329, column: 22, scope: !1456)
!1522 = !DILocation(line: 330, column: 13, scope: !1456)
!1523 = !DILocation(line: 418, column: 23, scope: !1455)
!1524 = !DILocation(line: 0, scope: !1455)
!1525 = !DILocation(line: 419, column: 24, scope: !1455)
!1526 = !DILocation(line: 421, column: 13, scope: !1456)
!1527 = !DILocation(line: 426, column: 25, scope: !1459)
!1528 = !DILocation(line: 0, scope: !1459)
!1529 = !DILocation(line: 427, column: 24, scope: !1459)
!1530 = !DILocation(line: 429, column: 13, scope: !1456)
!1531 = !DILocation(line: 0, scope: !1451)
!1532 = !DILocation(line: 438, column: 3, scope: !1433)
!1533 = !DILocation(line: 441, column: 1, scope: !1433)
!1534 = !DILocation(line: 440, column: 3, scope: !1433)
!1535 = distinct !DISubprogram(name: "getprogname", scope: !725, file: !725, line: 54, type: !1536, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !853)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!115}
!1538 = !DILocation(line: 58, column: 10, scope: !1535)
!1539 = !DILocation(line: 58, column: 3, scope: !1535)
!1540 = distinct !DISubprogram(name: "set_program_name", scope: !466, file: !466, line: 37, type: !819, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1541)
!1541 = !{!1542, !1543, !1544}
!1542 = !DILocalVariable(name: "argv0", arg: 1, scope: !1540, file: !466, line: 37, type: !115)
!1543 = !DILocalVariable(name: "slash", scope: !1540, file: !466, line: 44, type: !115)
!1544 = !DILocalVariable(name: "base", scope: !1540, file: !466, line: 45, type: !115)
!1545 = !DILocation(line: 0, scope: !1540)
!1546 = !DILocation(line: 44, column: 23, scope: !1540)
!1547 = !DILocation(line: 45, column: 22, scope: !1540)
!1548 = !DILocation(line: 46, column: 17, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1540, file: !466, line: 46, column: 7)
!1550 = !DILocation(line: 46, column: 9, scope: !1549)
!1551 = !DILocation(line: 46, column: 25, scope: !1549)
!1552 = !DILocation(line: 46, column: 40, scope: !1549)
!1553 = !DILocalVariable(name: "__s1", arg: 1, scope: !1554, file: !882, line: 974, type: !1018)
!1554 = distinct !DISubprogram(name: "memeq", scope: !882, file: !882, line: 974, type: !1555, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1557)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!156, !1018, !1018, !112}
!1557 = !{!1553, !1558, !1559}
!1558 = !DILocalVariable(name: "__s2", arg: 2, scope: !1554, file: !882, line: 974, type: !1018)
!1559 = !DILocalVariable(name: "__n", arg: 3, scope: !1554, file: !882, line: 974, type: !112)
!1560 = !DILocation(line: 0, scope: !1554, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 46, column: 28, scope: !1549)
!1562 = !DILocation(line: 976, column: 11, scope: !1554, inlinedAt: !1561)
!1563 = !DILocation(line: 976, column: 10, scope: !1554, inlinedAt: !1561)
!1564 = !DILocation(line: 46, column: 7, scope: !1540)
!1565 = !DILocation(line: 49, column: 11, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !466, line: 49, column: 11)
!1567 = distinct !DILexicalBlock(scope: !1549, file: !466, line: 47, column: 5)
!1568 = !DILocation(line: 49, column: 36, scope: !1566)
!1569 = !DILocation(line: 49, column: 11, scope: !1567)
!1570 = !DILocation(line: 65, column: 16, scope: !1540)
!1571 = !DILocation(line: 71, column: 27, scope: !1540)
!1572 = !DILocation(line: 74, column: 33, scope: !1540)
!1573 = !DILocation(line: 76, column: 1, scope: !1540)
!1574 = !DISubprogram(name: "strrchr", scope: !990, file: !990, line: 273, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1575 = !DILocation(line: 0, scope: !475)
!1576 = !DILocation(line: 40, column: 29, scope: !475)
!1577 = !DILocation(line: 41, column: 19, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !475, file: !476, line: 41, column: 7)
!1579 = !DILocation(line: 41, column: 7, scope: !475)
!1580 = !DILocation(line: 47, column: 3, scope: !475)
!1581 = !DILocation(line: 48, column: 3, scope: !475)
!1582 = !DILocation(line: 48, column: 13, scope: !475)
!1583 = !DILocalVariable(name: "ps", arg: 1, scope: !1584, file: !1585, line: 1135, type: !1588)
!1584 = distinct !DISubprogram(name: "mbszero", scope: !1585, file: !1585, line: 1135, type: !1586, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1589)
!1585 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !1588}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!1589 = !{!1583}
!1590 = !DILocation(line: 0, scope: !1584, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 48, column: 18, scope: !475)
!1592 = !DILocalVariable(name: "__dest", arg: 1, scope: !1593, file: !1594, line: 57, type: !110)
!1593 = distinct !DISubprogram(name: "memset", scope: !1594, file: !1594, line: 57, type: !1595, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1597)
!1594 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!110, !110, !68, !112}
!1597 = !{!1592, !1598, !1599}
!1598 = !DILocalVariable(name: "__ch", arg: 2, scope: !1593, file: !1594, line: 57, type: !68)
!1599 = !DILocalVariable(name: "__len", arg: 3, scope: !1593, file: !1594, line: 57, type: !112)
!1600 = !DILocation(line: 0, scope: !1593, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 1137, column: 3, scope: !1584, inlinedAt: !1591)
!1602 = !DILocation(line: 59, column: 10, scope: !1593, inlinedAt: !1601)
!1603 = !DILocation(line: 49, column: 7, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !475, file: !476, line: 49, column: 7)
!1605 = !DILocation(line: 49, column: 39, scope: !1604)
!1606 = !DILocation(line: 49, column: 44, scope: !1604)
!1607 = !DILocation(line: 54, column: 1, scope: !475)
!1608 = !DISubprogram(name: "mbrtoc32", scope: !487, file: !487, line: 57, type: !1609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!112, !1611, !859, !112, !1613}
!1611 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1612)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1588)
!1614 = distinct !DISubprogram(name: "clone_quoting_options", scope: !506, file: !506, line: 113, type: !1615, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !1618)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1617, !1617}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!1618 = !{!1619, !1620, !1621}
!1619 = !DILocalVariable(name: "o", arg: 1, scope: !1614, file: !506, line: 113, type: !1617)
!1620 = !DILocalVariable(name: "saved_errno", scope: !1614, file: !506, line: 115, type: !68)
!1621 = !DILocalVariable(name: "p", scope: !1614, file: !506, line: 116, type: !1617)
!1622 = !DILocation(line: 0, scope: !1614)
!1623 = !DILocation(line: 115, column: 21, scope: !1614)
!1624 = !DILocation(line: 116, column: 40, scope: !1614)
!1625 = !DILocation(line: 116, column: 31, scope: !1614)
!1626 = !DILocation(line: 118, column: 9, scope: !1614)
!1627 = !DILocation(line: 119, column: 3, scope: !1614)
!1628 = distinct !DISubprogram(name: "get_quoting_style", scope: !506, file: !506, line: 124, type: !1629, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !1633)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!94, !1631}
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!1633 = !{!1634}
!1634 = !DILocalVariable(name: "o", arg: 1, scope: !1628, file: !506, line: 124, type: !1631)
!1635 = !DILocation(line: 0, scope: !1628)
!1636 = !DILocation(line: 126, column: 11, scope: !1628)
!1637 = !DILocation(line: 126, column: 46, scope: !1628)
!1638 = !{!1639, !808, i64 0}
!1639 = !{!"quoting_options", !808, i64 0, !870, i64 4, !808, i64 8, !807, i64 40, !807, i64 48}
!1640 = !DILocation(line: 126, column: 3, scope: !1628)
!1641 = distinct !DISubprogram(name: "set_quoting_style", scope: !506, file: !506, line: 132, type: !1642, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !1644)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !1617, !94}
!1644 = !{!1645, !1646}
!1645 = !DILocalVariable(name: "o", arg: 1, scope: !1641, file: !506, line: 132, type: !1617)
!1646 = !DILocalVariable(name: "s", arg: 2, scope: !1641, file: !506, line: 132, type: !94)
!1647 = !DILocation(line: 0, scope: !1641)
!1648 = !DILocation(line: 134, column: 4, scope: !1641)
!1649 = !DILocation(line: 134, column: 45, scope: !1641)
!1650 = !DILocation(line: 135, column: 1, scope: !1641)
!1651 = distinct !DISubprogram(name: "set_char_quoting", scope: !506, file: !506, line: 143, type: !1652, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !1654)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!68, !1617, !4, !68}
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1661, !1662}
!1655 = !DILocalVariable(name: "o", arg: 1, scope: !1651, file: !506, line: 143, type: !1617)
!1656 = !DILocalVariable(name: "c", arg: 2, scope: !1651, file: !506, line: 143, type: !4)
!1657 = !DILocalVariable(name: "i", arg: 3, scope: !1651, file: !506, line: 143, type: !68)
!1658 = !DILocalVariable(name: "uc", scope: !1651, file: !506, line: 145, type: !117)
!1659 = !DILocalVariable(name: "p", scope: !1651, file: !506, line: 146, type: !1660)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!1661 = !DILocalVariable(name: "shift", scope: !1651, file: !506, line: 148, type: !68)
!1662 = !DILocalVariable(name: "r", scope: !1651, file: !506, line: 149, type: !73)
!1663 = !DILocation(line: 0, scope: !1651)
!1664 = !DILocation(line: 147, column: 6, scope: !1651)
!1665 = !DILocation(line: 147, column: 41, scope: !1651)
!1666 = !DILocation(line: 147, column: 62, scope: !1651)
!1667 = !DILocation(line: 147, column: 57, scope: !1651)
!1668 = !DILocation(line: 148, column: 15, scope: !1651)
!1669 = !DILocation(line: 149, column: 21, scope: !1651)
!1670 = !DILocation(line: 149, column: 24, scope: !1651)
!1671 = !DILocation(line: 149, column: 34, scope: !1651)
!1672 = !DILocation(line: 150, column: 19, scope: !1651)
!1673 = !DILocation(line: 150, column: 24, scope: !1651)
!1674 = !DILocation(line: 150, column: 6, scope: !1651)
!1675 = !DILocation(line: 151, column: 3, scope: !1651)
!1676 = distinct !DISubprogram(name: "set_quoting_flags", scope: !506, file: !506, line: 159, type: !1677, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !1679)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!68, !1617, !68}
!1679 = !{!1680, !1681, !1682}
!1680 = !DILocalVariable(name: "o", arg: 1, scope: !1676, file: !506, line: 159, type: !1617)
!1681 = !DILocalVariable(name: "i", arg: 2, scope: !1676, file: !506, line: 159, type: !68)
!1682 = !DILocalVariable(name: "r", scope: !1676, file: !506, line: 163, type: !68)
!1683 = !DILocation(line: 0, scope: !1676)
!1684 = !DILocation(line: 161, column: 8, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1676, file: !506, line: 161, column: 7)
!1686 = !DILocation(line: 161, column: 7, scope: !1676)
!1687 = !DILocation(line: 163, column: 14, scope: !1676)
!1688 = !{!1639, !870, i64 4}
!1689 = !DILocation(line: 164, column: 12, scope: !1676)
!1690 = !DILocation(line: 165, column: 3, scope: !1676)
!1691 = distinct !DISubprogram(name: "set_custom_quoting", scope: !506, file: !506, line: 169, type: !1692, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !1694)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{null, !1617, !115, !115}
!1694 = !{!1695, !1696, !1697}
!1695 = !DILocalVariable(name: "o", arg: 1, scope: !1691, file: !506, line: 169, type: !1617)
!1696 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1691, file: !506, line: 170, type: !115)
!1697 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1691, file: !506, line: 170, type: !115)
!1698 = !DILocation(line: 0, scope: !1691)
!1699 = !DILocation(line: 172, column: 8, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1691, file: !506, line: 172, column: 7)
!1701 = !DILocation(line: 172, column: 7, scope: !1691)
!1702 = !DILocation(line: 174, column: 12, scope: !1691)
!1703 = !DILocation(line: 175, column: 8, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1691, file: !506, line: 175, column: 7)
!1705 = !DILocation(line: 175, column: 19, scope: !1704)
!1706 = !DILocation(line: 176, column: 5, scope: !1704)
!1707 = !DILocation(line: 177, column: 6, scope: !1691)
!1708 = !DILocation(line: 177, column: 17, scope: !1691)
!1709 = !{!1639, !807, i64 40}
!1710 = !DILocation(line: 178, column: 6, scope: !1691)
!1711 = !DILocation(line: 178, column: 18, scope: !1691)
!1712 = !{!1639, !807, i64 48}
!1713 = !DILocation(line: 179, column: 1, scope: !1691)
!1714 = !DISubprogram(name: "abort", scope: !994, file: !994, line: 598, type: !443, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !853)
!1715 = distinct !DISubprogram(name: "quotearg_buffer", scope: !506, file: !506, line: 774, type: !1716, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !1718)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!112, !109, !112, !115, !112, !1631}
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726}
!1719 = !DILocalVariable(name: "buffer", arg: 1, scope: !1715, file: !506, line: 774, type: !109)
!1720 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1715, file: !506, line: 774, type: !112)
!1721 = !DILocalVariable(name: "arg", arg: 3, scope: !1715, file: !506, line: 775, type: !115)
!1722 = !DILocalVariable(name: "argsize", arg: 4, scope: !1715, file: !506, line: 775, type: !112)
!1723 = !DILocalVariable(name: "o", arg: 5, scope: !1715, file: !506, line: 776, type: !1631)
!1724 = !DILocalVariable(name: "p", scope: !1715, file: !506, line: 778, type: !1631)
!1725 = !DILocalVariable(name: "saved_errno", scope: !1715, file: !506, line: 779, type: !68)
!1726 = !DILocalVariable(name: "r", scope: !1715, file: !506, line: 780, type: !112)
!1727 = !DILocation(line: 0, scope: !1715)
!1728 = !DILocation(line: 778, column: 37, scope: !1715)
!1729 = !DILocation(line: 779, column: 21, scope: !1715)
!1730 = !DILocation(line: 781, column: 43, scope: !1715)
!1731 = !DILocation(line: 781, column: 53, scope: !1715)
!1732 = !DILocation(line: 781, column: 63, scope: !1715)
!1733 = !DILocation(line: 782, column: 43, scope: !1715)
!1734 = !DILocation(line: 782, column: 58, scope: !1715)
!1735 = !DILocation(line: 780, column: 14, scope: !1715)
!1736 = !DILocation(line: 783, column: 9, scope: !1715)
!1737 = !DILocation(line: 784, column: 3, scope: !1715)
!1738 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !506, file: !506, line: 251, type: !1739, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !1743)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!112, !109, !112, !115, !112, !94, !68, !1741, !115, !115}
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1768, !1770, !1773, !1774, !1775, !1776, !1779, !1780, !1783, !1787, !1788, !1796, !1799, !1800, !1802, !1803, !1804, !1805}
!1744 = !DILocalVariable(name: "buffer", arg: 1, scope: !1738, file: !506, line: 251, type: !109)
!1745 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1738, file: !506, line: 251, type: !112)
!1746 = !DILocalVariable(name: "arg", arg: 3, scope: !1738, file: !506, line: 252, type: !115)
!1747 = !DILocalVariable(name: "argsize", arg: 4, scope: !1738, file: !506, line: 252, type: !112)
!1748 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1738, file: !506, line: 253, type: !94)
!1749 = !DILocalVariable(name: "flags", arg: 6, scope: !1738, file: !506, line: 253, type: !68)
!1750 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1738, file: !506, line: 254, type: !1741)
!1751 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1738, file: !506, line: 255, type: !115)
!1752 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1738, file: !506, line: 256, type: !115)
!1753 = !DILocalVariable(name: "unibyte_locale", scope: !1738, file: !506, line: 258, type: !156)
!1754 = !DILocalVariable(name: "len", scope: !1738, file: !506, line: 260, type: !112)
!1755 = !DILocalVariable(name: "orig_buffersize", scope: !1738, file: !506, line: 261, type: !112)
!1756 = !DILocalVariable(name: "quote_string", scope: !1738, file: !506, line: 262, type: !115)
!1757 = !DILocalVariable(name: "quote_string_len", scope: !1738, file: !506, line: 263, type: !112)
!1758 = !DILocalVariable(name: "backslash_escapes", scope: !1738, file: !506, line: 264, type: !156)
!1759 = !DILocalVariable(name: "elide_outer_quotes", scope: !1738, file: !506, line: 265, type: !156)
!1760 = !DILocalVariable(name: "encountered_single_quote", scope: !1738, file: !506, line: 266, type: !156)
!1761 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1738, file: !506, line: 267, type: !156)
!1762 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1738, file: !506, line: 309, type: !156)
!1763 = !DILocalVariable(name: "lq", scope: !1764, file: !506, line: 361, type: !115)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !506, line: 361, column: 11)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !506, line: 360, column: 13)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !506, line: 333, column: 7)
!1767 = distinct !DILexicalBlock(scope: !1738, file: !506, line: 312, column: 5)
!1768 = !DILocalVariable(name: "i", scope: !1769, file: !506, line: 395, type: !112)
!1769 = distinct !DILexicalBlock(scope: !1738, file: !506, line: 395, column: 3)
!1770 = !DILocalVariable(name: "is_right_quote", scope: !1771, file: !506, line: 397, type: !156)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !506, line: 396, column: 5)
!1772 = distinct !DILexicalBlock(scope: !1769, file: !506, line: 395, column: 3)
!1773 = !DILocalVariable(name: "escaping", scope: !1771, file: !506, line: 398, type: !156)
!1774 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1771, file: !506, line: 399, type: !156)
!1775 = !DILocalVariable(name: "c", scope: !1771, file: !506, line: 417, type: !117)
!1776 = !DILocalVariable(name: "m", scope: !1777, file: !506, line: 598, type: !112)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !506, line: 596, column: 11)
!1778 = distinct !DILexicalBlock(scope: !1771, file: !506, line: 419, column: 9)
!1779 = !DILocalVariable(name: "printable", scope: !1777, file: !506, line: 600, type: !156)
!1780 = !DILocalVariable(name: "mbs", scope: !1781, file: !506, line: 609, type: !576)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !506, line: 608, column: 15)
!1782 = distinct !DILexicalBlock(scope: !1777, file: !506, line: 602, column: 17)
!1783 = !DILocalVariable(name: "w", scope: !1784, file: !506, line: 618, type: !486)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !506, line: 617, column: 19)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !506, line: 616, column: 17)
!1786 = distinct !DILexicalBlock(scope: !1781, file: !506, line: 616, column: 17)
!1787 = !DILocalVariable(name: "bytes", scope: !1784, file: !506, line: 619, type: !112)
!1788 = !DILocalVariable(name: "j", scope: !1789, file: !506, line: 648, type: !112)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !506, line: 648, column: 29)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !506, line: 647, column: 27)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !506, line: 645, column: 29)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !506, line: 636, column: 23)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !506, line: 628, column: 30)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !506, line: 623, column: 30)
!1795 = distinct !DILexicalBlock(scope: !1784, file: !506, line: 621, column: 25)
!1796 = !DILocalVariable(name: "ilim", scope: !1797, file: !506, line: 674, type: !112)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !506, line: 671, column: 15)
!1798 = distinct !DILexicalBlock(scope: !1777, file: !506, line: 670, column: 17)
!1799 = !DILabel(scope: !1738, name: "process_input", file: !506, line: 308)
!1800 = !DILabel(scope: !1801, name: "c_and_shell_escape", file: !506, line: 502)
!1801 = distinct !DILexicalBlock(scope: !1778, file: !506, line: 478, column: 9)
!1802 = !DILabel(scope: !1801, name: "c_escape", file: !506, line: 507)
!1803 = !DILabel(scope: !1771, name: "store_escape", file: !506, line: 709)
!1804 = !DILabel(scope: !1771, name: "store_c", file: !506, line: 712)
!1805 = !DILabel(scope: !1738, name: "force_outer_quoting_style", file: !506, line: 753)
!1806 = !DILocation(line: 0, scope: !1738)
!1807 = !DILocation(line: 258, column: 25, scope: !1738)
!1808 = !DILocation(line: 258, column: 36, scope: !1738)
!1809 = !DILocation(line: 265, column: 8, scope: !1738)
!1810 = !DILocation(line: 267, column: 3, scope: !1738)
!1811 = !DILocation(line: 261, column: 10, scope: !1738)
!1812 = !DILocation(line: 262, column: 15, scope: !1738)
!1813 = !DILocation(line: 263, column: 10, scope: !1738)
!1814 = !DILocation(line: 264, column: 8, scope: !1738)
!1815 = !DILocation(line: 266, column: 8, scope: !1738)
!1816 = !DILocation(line: 267, column: 8, scope: !1738)
!1817 = !DILocation(line: 308, column: 2, scope: !1738)
!1818 = !DILocation(line: 311, column: 3, scope: !1738)
!1819 = !DILocation(line: 318, column: 11, scope: !1767)
!1820 = !DILocation(line: 318, column: 12, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1767, file: !506, line: 318, column: 11)
!1822 = !DILocation(line: 319, column: 9, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !506, line: 319, column: 9)
!1824 = distinct !DILexicalBlock(scope: !1821, file: !506, line: 319, column: 9)
!1825 = !DILocation(line: 319, column: 9, scope: !1824)
!1826 = !DILocation(line: 0, scope: !567, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 357, column: 26, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !506, line: 335, column: 11)
!1829 = distinct !DILexicalBlock(scope: !1766, file: !506, line: 334, column: 13)
!1830 = !DILocation(line: 199, column: 29, scope: !567, inlinedAt: !1827)
!1831 = !DILocation(line: 201, column: 19, scope: !1832, inlinedAt: !1827)
!1832 = distinct !DILexicalBlock(scope: !567, file: !506, line: 201, column: 7)
!1833 = !DILocation(line: 201, column: 7, scope: !567, inlinedAt: !1827)
!1834 = !DILocation(line: 229, column: 3, scope: !567, inlinedAt: !1827)
!1835 = !DILocation(line: 230, column: 3, scope: !567, inlinedAt: !1827)
!1836 = !DILocation(line: 230, column: 13, scope: !567, inlinedAt: !1827)
!1837 = !DILocalVariable(name: "ps", arg: 1, scope: !1838, file: !1585, line: 1135, type: !1841)
!1838 = distinct !DISubprogram(name: "mbszero", scope: !1585, file: !1585, line: 1135, type: !1839, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !1842)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{null, !1841}
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!1842 = !{!1837}
!1843 = !DILocation(line: 0, scope: !1838, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 230, column: 18, scope: !567, inlinedAt: !1827)
!1845 = !DILocalVariable(name: "__dest", arg: 1, scope: !1846, file: !1594, line: 57, type: !110)
!1846 = distinct !DISubprogram(name: "memset", scope: !1594, file: !1594, line: 57, type: !1595, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !1847)
!1847 = !{!1845, !1848, !1849}
!1848 = !DILocalVariable(name: "__ch", arg: 2, scope: !1846, file: !1594, line: 57, type: !68)
!1849 = !DILocalVariable(name: "__len", arg: 3, scope: !1846, file: !1594, line: 57, type: !112)
!1850 = !DILocation(line: 0, scope: !1846, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 1137, column: 3, scope: !1838, inlinedAt: !1844)
!1852 = !DILocation(line: 59, column: 10, scope: !1846, inlinedAt: !1851)
!1853 = !DILocation(line: 231, column: 7, scope: !1854, inlinedAt: !1827)
!1854 = distinct !DILexicalBlock(scope: !567, file: !506, line: 231, column: 7)
!1855 = !DILocation(line: 231, column: 40, scope: !1854, inlinedAt: !1827)
!1856 = !DILocation(line: 231, column: 45, scope: !1854, inlinedAt: !1827)
!1857 = !DILocation(line: 235, column: 1, scope: !567, inlinedAt: !1827)
!1858 = !DILocation(line: 0, scope: !567, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 358, column: 27, scope: !1828)
!1860 = !DILocation(line: 199, column: 29, scope: !567, inlinedAt: !1859)
!1861 = !DILocation(line: 201, column: 19, scope: !1832, inlinedAt: !1859)
!1862 = !DILocation(line: 201, column: 7, scope: !567, inlinedAt: !1859)
!1863 = !DILocation(line: 229, column: 3, scope: !567, inlinedAt: !1859)
!1864 = !DILocation(line: 230, column: 3, scope: !567, inlinedAt: !1859)
!1865 = !DILocation(line: 230, column: 13, scope: !567, inlinedAt: !1859)
!1866 = !DILocation(line: 0, scope: !1838, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 230, column: 18, scope: !567, inlinedAt: !1859)
!1868 = !DILocation(line: 0, scope: !1846, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 1137, column: 3, scope: !1838, inlinedAt: !1867)
!1870 = !DILocation(line: 59, column: 10, scope: !1846, inlinedAt: !1869)
!1871 = !DILocation(line: 231, column: 7, scope: !1854, inlinedAt: !1859)
!1872 = !DILocation(line: 231, column: 40, scope: !1854, inlinedAt: !1859)
!1873 = !DILocation(line: 231, column: 45, scope: !1854, inlinedAt: !1859)
!1874 = !DILocation(line: 235, column: 1, scope: !567, inlinedAt: !1859)
!1875 = !DILocation(line: 360, column: 14, scope: !1765)
!1876 = !DILocation(line: 360, column: 13, scope: !1766)
!1877 = !DILocation(line: 0, scope: !1764)
!1878 = !DILocation(line: 361, column: 45, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1764, file: !506, line: 361, column: 11)
!1880 = !DILocation(line: 361, column: 11, scope: !1764)
!1881 = !DILocation(line: 362, column: 13, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !506, line: 362, column: 13)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !506, line: 362, column: 13)
!1884 = !DILocation(line: 362, column: 13, scope: !1883)
!1885 = !DILocation(line: 361, column: 52, scope: !1879)
!1886 = distinct !{!1886, !1880, !1887, !916}
!1887 = !DILocation(line: 362, column: 13, scope: !1764)
!1888 = !DILocation(line: 260, column: 10, scope: !1738)
!1889 = !DILocation(line: 365, column: 28, scope: !1766)
!1890 = !DILocation(line: 367, column: 7, scope: !1767)
!1891 = !DILocation(line: 370, column: 7, scope: !1767)
!1892 = !DILocation(line: 373, column: 7, scope: !1767)
!1893 = !DILocation(line: 376, column: 12, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1767, file: !506, line: 376, column: 11)
!1895 = !DILocation(line: 376, column: 11, scope: !1767)
!1896 = !DILocation(line: 381, column: 12, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1767, file: !506, line: 381, column: 11)
!1898 = !DILocation(line: 381, column: 11, scope: !1767)
!1899 = !DILocation(line: 382, column: 9, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !506, line: 382, column: 9)
!1901 = distinct !DILexicalBlock(scope: !1897, file: !506, line: 382, column: 9)
!1902 = !DILocation(line: 382, column: 9, scope: !1901)
!1903 = !DILocation(line: 389, column: 7, scope: !1767)
!1904 = !DILocation(line: 392, column: 7, scope: !1767)
!1905 = !DILocation(line: 0, scope: !1769)
!1906 = !DILocation(line: 395, column: 8, scope: !1769)
!1907 = !DILocation(line: 309, column: 8, scope: !1738)
!1908 = !DILocation(line: 395, scope: !1769)
!1909 = !DILocation(line: 395, column: 34, scope: !1772)
!1910 = !DILocation(line: 395, column: 26, scope: !1772)
!1911 = !DILocation(line: 395, column: 48, scope: !1772)
!1912 = !DILocation(line: 395, column: 55, scope: !1772)
!1913 = !DILocation(line: 395, column: 3, scope: !1769)
!1914 = !DILocation(line: 395, column: 67, scope: !1772)
!1915 = !DILocation(line: 0, scope: !1771)
!1916 = !DILocation(line: 402, column: 11, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1771, file: !506, line: 401, column: 11)
!1918 = !DILocation(line: 404, column: 17, scope: !1917)
!1919 = !DILocation(line: 405, column: 39, scope: !1917)
!1920 = !DILocation(line: 409, column: 32, scope: !1917)
!1921 = !DILocation(line: 405, column: 19, scope: !1917)
!1922 = !DILocation(line: 405, column: 15, scope: !1917)
!1923 = !DILocation(line: 410, column: 11, scope: !1917)
!1924 = !DILocation(line: 410, column: 25, scope: !1917)
!1925 = !DILocalVariable(name: "__s1", arg: 1, scope: !1926, file: !882, line: 974, type: !1018)
!1926 = distinct !DISubprogram(name: "memeq", scope: !882, file: !882, line: 974, type: !1555, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !1927)
!1927 = !{!1925, !1928, !1929}
!1928 = !DILocalVariable(name: "__s2", arg: 2, scope: !1926, file: !882, line: 974, type: !1018)
!1929 = !DILocalVariable(name: "__n", arg: 3, scope: !1926, file: !882, line: 974, type: !112)
!1930 = !DILocation(line: 0, scope: !1926, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 410, column: 14, scope: !1917)
!1932 = !DILocation(line: 976, column: 11, scope: !1926, inlinedAt: !1931)
!1933 = !DILocation(line: 976, column: 10, scope: !1926, inlinedAt: !1931)
!1934 = !DILocation(line: 401, column: 11, scope: !1771)
!1935 = !DILocation(line: 417, column: 25, scope: !1771)
!1936 = !DILocation(line: 418, column: 7, scope: !1771)
!1937 = !DILocation(line: 421, column: 15, scope: !1778)
!1938 = !DILocation(line: 423, column: 15, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !506, line: 423, column: 15)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !506, line: 422, column: 13)
!1941 = distinct !DILexicalBlock(scope: !1778, file: !506, line: 421, column: 15)
!1942 = !DILocation(line: 423, column: 15, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !506, line: 423, column: 15)
!1944 = !DILocation(line: 423, column: 15, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !506, line: 423, column: 15)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !506, line: 423, column: 15)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !506, line: 423, column: 15)
!1948 = !DILocation(line: 423, column: 15, scope: !1946)
!1949 = !DILocation(line: 423, column: 15, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !506, line: 423, column: 15)
!1951 = distinct !DILexicalBlock(scope: !1947, file: !506, line: 423, column: 15)
!1952 = !DILocation(line: 423, column: 15, scope: !1951)
!1953 = !DILocation(line: 423, column: 15, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !506, line: 423, column: 15)
!1955 = distinct !DILexicalBlock(scope: !1947, file: !506, line: 423, column: 15)
!1956 = !DILocation(line: 423, column: 15, scope: !1955)
!1957 = !DILocation(line: 423, column: 15, scope: !1947)
!1958 = !DILocation(line: 423, column: 15, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !506, line: 423, column: 15)
!1960 = distinct !DILexicalBlock(scope: !1939, file: !506, line: 423, column: 15)
!1961 = !DILocation(line: 423, column: 15, scope: !1960)
!1962 = !DILocation(line: 431, column: 19, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1940, file: !506, line: 430, column: 19)
!1964 = !DILocation(line: 431, column: 24, scope: !1963)
!1965 = !DILocation(line: 431, column: 28, scope: !1963)
!1966 = !DILocation(line: 431, column: 38, scope: !1963)
!1967 = !DILocation(line: 431, column: 48, scope: !1963)
!1968 = !DILocation(line: 431, column: 59, scope: !1963)
!1969 = !DILocation(line: 433, column: 19, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !506, line: 433, column: 19)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !506, line: 433, column: 19)
!1972 = distinct !DILexicalBlock(scope: !1963, file: !506, line: 432, column: 17)
!1973 = !DILocation(line: 433, column: 19, scope: !1971)
!1974 = !DILocation(line: 434, column: 19, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !506, line: 434, column: 19)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !506, line: 434, column: 19)
!1977 = !DILocation(line: 434, column: 19, scope: !1976)
!1978 = !DILocation(line: 435, column: 17, scope: !1972)
!1979 = !DILocation(line: 442, column: 20, scope: !1941)
!1980 = !DILocation(line: 447, column: 11, scope: !1778)
!1981 = !DILocation(line: 450, column: 19, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1778, file: !506, line: 448, column: 13)
!1983 = !DILocation(line: 456, column: 19, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1982, file: !506, line: 455, column: 19)
!1985 = !DILocation(line: 456, column: 24, scope: !1984)
!1986 = !DILocation(line: 456, column: 28, scope: !1984)
!1987 = !DILocation(line: 456, column: 38, scope: !1984)
!1988 = !DILocation(line: 456, column: 47, scope: !1984)
!1989 = !DILocation(line: 456, column: 41, scope: !1984)
!1990 = !DILocation(line: 456, column: 52, scope: !1984)
!1991 = !DILocation(line: 455, column: 19, scope: !1982)
!1992 = !DILocation(line: 457, column: 25, scope: !1984)
!1993 = !DILocation(line: 457, column: 17, scope: !1984)
!1994 = !DILocation(line: 464, column: 25, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1984, file: !506, line: 458, column: 19)
!1996 = !DILocation(line: 468, column: 21, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !506, line: 468, column: 21)
!1998 = distinct !DILexicalBlock(scope: !1995, file: !506, line: 468, column: 21)
!1999 = !DILocation(line: 468, column: 21, scope: !1998)
!2000 = !DILocation(line: 469, column: 21, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !506, line: 469, column: 21)
!2002 = distinct !DILexicalBlock(scope: !1995, file: !506, line: 469, column: 21)
!2003 = !DILocation(line: 469, column: 21, scope: !2002)
!2004 = !DILocation(line: 470, column: 21, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !506, line: 470, column: 21)
!2006 = distinct !DILexicalBlock(scope: !1995, file: !506, line: 470, column: 21)
!2007 = !DILocation(line: 470, column: 21, scope: !2006)
!2008 = !DILocation(line: 471, column: 21, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !506, line: 471, column: 21)
!2010 = distinct !DILexicalBlock(scope: !1995, file: !506, line: 471, column: 21)
!2011 = !DILocation(line: 471, column: 21, scope: !2010)
!2012 = !DILocation(line: 472, column: 21, scope: !1995)
!2013 = !DILocation(line: 482, column: 33, scope: !1801)
!2014 = !DILocation(line: 483, column: 33, scope: !1801)
!2015 = !DILocation(line: 485, column: 33, scope: !1801)
!2016 = !DILocation(line: 486, column: 33, scope: !1801)
!2017 = !DILocation(line: 487, column: 33, scope: !1801)
!2018 = !DILocation(line: 490, column: 17, scope: !1801)
!2019 = !DILocation(line: 492, column: 21, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !506, line: 491, column: 15)
!2021 = distinct !DILexicalBlock(scope: !1801, file: !506, line: 490, column: 17)
!2022 = !DILocation(line: 499, column: 35, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1801, file: !506, line: 499, column: 17)
!2024 = !DILocation(line: 499, column: 57, scope: !2023)
!2025 = !DILocation(line: 0, scope: !1801)
!2026 = !DILocation(line: 502, column: 11, scope: !1801)
!2027 = !DILocation(line: 504, column: 17, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1801, file: !506, line: 503, column: 17)
!2029 = !DILocation(line: 507, column: 11, scope: !1801)
!2030 = !DILocation(line: 508, column: 17, scope: !1801)
!2031 = !DILocation(line: 517, column: 15, scope: !1778)
!2032 = !DILocation(line: 517, column: 40, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1778, file: !506, line: 517, column: 15)
!2034 = !DILocation(line: 517, column: 47, scope: !2033)
!2035 = !DILocation(line: 517, column: 18, scope: !2033)
!2036 = !DILocation(line: 521, column: 17, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1778, file: !506, line: 521, column: 15)
!2038 = !DILocation(line: 521, column: 15, scope: !1778)
!2039 = !DILocation(line: 525, column: 11, scope: !1778)
!2040 = !DILocation(line: 537, column: 15, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1778, file: !506, line: 536, column: 15)
!2042 = !DILocation(line: 544, column: 15, scope: !1778)
!2043 = !DILocation(line: 546, column: 19, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !506, line: 545, column: 13)
!2045 = distinct !DILexicalBlock(scope: !1778, file: !506, line: 544, column: 15)
!2046 = !DILocation(line: 549, column: 19, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2044, file: !506, line: 549, column: 19)
!2048 = !DILocation(line: 549, column: 30, scope: !2047)
!2049 = !DILocation(line: 558, column: 15, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !506, line: 558, column: 15)
!2051 = distinct !DILexicalBlock(scope: !2044, file: !506, line: 558, column: 15)
!2052 = !DILocation(line: 558, column: 15, scope: !2051)
!2053 = !DILocation(line: 559, column: 15, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !506, line: 559, column: 15)
!2055 = distinct !DILexicalBlock(scope: !2044, file: !506, line: 559, column: 15)
!2056 = !DILocation(line: 559, column: 15, scope: !2055)
!2057 = !DILocation(line: 560, column: 15, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !506, line: 560, column: 15)
!2059 = distinct !DILexicalBlock(scope: !2044, file: !506, line: 560, column: 15)
!2060 = !DILocation(line: 560, column: 15, scope: !2059)
!2061 = !DILocation(line: 562, column: 13, scope: !2044)
!2062 = !DILocation(line: 602, column: 17, scope: !1777)
!2063 = !DILocation(line: 0, scope: !1777)
!2064 = !DILocation(line: 605, column: 29, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1782, file: !506, line: 603, column: 15)
!2066 = !DILocation(line: 605, column: 27, scope: !2065)
!2067 = !DILocation(line: 668, column: 40, scope: !1777)
!2068 = !DILocation(line: 670, column: 23, scope: !1798)
!2069 = !DILocation(line: 609, column: 17, scope: !1781)
!2070 = !DILocation(line: 609, column: 27, scope: !1781)
!2071 = !DILocation(line: 0, scope: !1838, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 609, column: 32, scope: !1781)
!2073 = !DILocation(line: 0, scope: !1846, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 1137, column: 3, scope: !1838, inlinedAt: !2072)
!2075 = !DILocation(line: 59, column: 10, scope: !1846, inlinedAt: !2074)
!2076 = !DILocation(line: 613, column: 29, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !1781, file: !506, line: 613, column: 21)
!2078 = !DILocation(line: 613, column: 21, scope: !1781)
!2079 = !DILocation(line: 614, column: 29, scope: !2077)
!2080 = !DILocation(line: 614, column: 19, scope: !2077)
!2081 = !DILocation(line: 618, column: 21, scope: !1784)
!2082 = !DILocation(line: 620, column: 54, scope: !1784)
!2083 = !DILocation(line: 0, scope: !1784)
!2084 = !DILocation(line: 619, column: 36, scope: !1784)
!2085 = !DILocation(line: 621, column: 25, scope: !1784)
!2086 = !DILocation(line: 631, column: 38, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1793, file: !506, line: 629, column: 23)
!2088 = !DILocation(line: 631, column: 48, scope: !2087)
!2089 = !DILocation(line: 665, column: 19, scope: !1785)
!2090 = !DILocation(line: 666, column: 15, scope: !1782)
!2091 = !DILocation(line: 626, column: 25, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1794, file: !506, line: 624, column: 23)
!2093 = !DILocation(line: 631, column: 51, scope: !2087)
!2094 = !DILocation(line: 631, column: 25, scope: !2087)
!2095 = !DILocation(line: 632, column: 28, scope: !2087)
!2096 = !DILocation(line: 631, column: 34, scope: !2087)
!2097 = distinct !{!2097, !2094, !2095, !916}
!2098 = !DILocation(line: 646, column: 29, scope: !1791)
!2099 = !DILocation(line: 0, scope: !1789)
!2100 = !DILocation(line: 649, column: 49, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !1789, file: !506, line: 648, column: 29)
!2102 = !DILocation(line: 649, column: 39, scope: !2101)
!2103 = !DILocation(line: 649, column: 31, scope: !2101)
!2104 = !DILocation(line: 648, column: 60, scope: !2101)
!2105 = !DILocation(line: 648, column: 50, scope: !2101)
!2106 = !DILocation(line: 648, column: 29, scope: !1789)
!2107 = distinct !{!2107, !2106, !2108, !916}
!2108 = !DILocation(line: 654, column: 33, scope: !1789)
!2109 = !DILocation(line: 657, column: 43, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !1792, file: !506, line: 657, column: 29)
!2111 = !DILocalVariable(name: "wc", arg: 1, scope: !2112, file: !2113, line: 865, type: !2116)
!2112 = distinct !DISubprogram(name: "c32isprint", scope: !2113, file: !2113, line: 865, type: !2114, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2118)
!2113 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!68, !2116}
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2117, line: 20, baseType: !73)
!2117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2118 = !{!2111}
!2119 = !DILocation(line: 0, scope: !2112, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 657, column: 31, scope: !2110)
!2121 = !DILocation(line: 871, column: 10, scope: !2112, inlinedAt: !2120)
!2122 = !DILocation(line: 657, column: 31, scope: !2110)
!2123 = !DILocation(line: 657, column: 29, scope: !1792)
!2124 = !DILocation(line: 664, column: 23, scope: !1784)
!2125 = !DILocation(line: 670, column: 19, scope: !1798)
!2126 = !DILocation(line: 670, column: 45, scope: !1798)
!2127 = !DILocation(line: 674, column: 33, scope: !1797)
!2128 = !DILocation(line: 0, scope: !1797)
!2129 = !DILocation(line: 676, column: 17, scope: !1797)
!2130 = !DILocation(line: 398, column: 12, scope: !1771)
!2131 = !DILocation(line: 678, column: 43, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !506, line: 678, column: 25)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !506, line: 677, column: 19)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !506, line: 676, column: 17)
!2135 = distinct !DILexicalBlock(scope: !1797, file: !506, line: 676, column: 17)
!2136 = !DILocation(line: 680, column: 25, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !506, line: 680, column: 25)
!2138 = distinct !DILexicalBlock(scope: !2132, file: !506, line: 679, column: 23)
!2139 = !DILocation(line: 680, column: 25, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2137, file: !506, line: 680, column: 25)
!2141 = !DILocation(line: 680, column: 25, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !506, line: 680, column: 25)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !506, line: 680, column: 25)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !506, line: 680, column: 25)
!2145 = !DILocation(line: 680, column: 25, scope: !2143)
!2146 = !DILocation(line: 680, column: 25, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !506, line: 680, column: 25)
!2148 = distinct !DILexicalBlock(scope: !2144, file: !506, line: 680, column: 25)
!2149 = !DILocation(line: 680, column: 25, scope: !2148)
!2150 = !DILocation(line: 680, column: 25, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !506, line: 680, column: 25)
!2152 = distinct !DILexicalBlock(scope: !2144, file: !506, line: 680, column: 25)
!2153 = !DILocation(line: 680, column: 25, scope: !2152)
!2154 = !DILocation(line: 680, column: 25, scope: !2144)
!2155 = !DILocation(line: 680, column: 25, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !506, line: 680, column: 25)
!2157 = distinct !DILexicalBlock(scope: !2137, file: !506, line: 680, column: 25)
!2158 = !DILocation(line: 680, column: 25, scope: !2157)
!2159 = !DILocation(line: 681, column: 25, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !506, line: 681, column: 25)
!2161 = distinct !DILexicalBlock(scope: !2138, file: !506, line: 681, column: 25)
!2162 = !DILocation(line: 681, column: 25, scope: !2161)
!2163 = !DILocation(line: 682, column: 25, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !506, line: 682, column: 25)
!2165 = distinct !DILexicalBlock(scope: !2138, file: !506, line: 682, column: 25)
!2166 = !DILocation(line: 682, column: 25, scope: !2165)
!2167 = !DILocation(line: 683, column: 38, scope: !2138)
!2168 = !DILocation(line: 683, column: 33, scope: !2138)
!2169 = !DILocation(line: 684, column: 23, scope: !2138)
!2170 = !DILocation(line: 685, column: 30, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2132, file: !506, line: 685, column: 30)
!2172 = !DILocation(line: 685, column: 30, scope: !2132)
!2173 = !DILocation(line: 687, column: 25, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !506, line: 687, column: 25)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !506, line: 687, column: 25)
!2176 = distinct !DILexicalBlock(scope: !2171, file: !506, line: 686, column: 23)
!2177 = !DILocation(line: 687, column: 25, scope: !2175)
!2178 = !DILocation(line: 689, column: 23, scope: !2176)
!2179 = !DILocation(line: 690, column: 35, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2133, file: !506, line: 690, column: 25)
!2181 = !DILocation(line: 690, column: 30, scope: !2180)
!2182 = !DILocation(line: 690, column: 25, scope: !2133)
!2183 = !DILocation(line: 692, column: 21, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !506, line: 692, column: 21)
!2185 = distinct !DILexicalBlock(scope: !2133, file: !506, line: 692, column: 21)
!2186 = !DILocation(line: 692, column: 21, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !506, line: 692, column: 21)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !506, line: 692, column: 21)
!2189 = distinct !DILexicalBlock(scope: !2184, file: !506, line: 692, column: 21)
!2190 = !DILocation(line: 692, column: 21, scope: !2188)
!2191 = !DILocation(line: 692, column: 21, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !506, line: 692, column: 21)
!2193 = distinct !DILexicalBlock(scope: !2189, file: !506, line: 692, column: 21)
!2194 = !DILocation(line: 692, column: 21, scope: !2193)
!2195 = !DILocation(line: 692, column: 21, scope: !2189)
!2196 = !DILocation(line: 0, scope: !2133)
!2197 = !DILocation(line: 693, column: 21, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !506, line: 693, column: 21)
!2199 = distinct !DILexicalBlock(scope: !2133, file: !506, line: 693, column: 21)
!2200 = !DILocation(line: 693, column: 21, scope: !2199)
!2201 = !DILocation(line: 694, column: 25, scope: !2133)
!2202 = !DILocation(line: 676, column: 17, scope: !2134)
!2203 = distinct !{!2203, !2204, !2205}
!2204 = !DILocation(line: 676, column: 17, scope: !2135)
!2205 = !DILocation(line: 695, column: 19, scope: !2135)
!2206 = !DILocation(line: 409, column: 30, scope: !1917)
!2207 = !DILocation(line: 702, column: 34, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !1771, file: !506, line: 702, column: 11)
!2209 = !DILocation(line: 704, column: 14, scope: !2208)
!2210 = !DILocation(line: 705, column: 14, scope: !2208)
!2211 = !DILocation(line: 705, column: 35, scope: !2208)
!2212 = !DILocation(line: 705, column: 17, scope: !2208)
!2213 = !DILocation(line: 705, column: 47, scope: !2208)
!2214 = !DILocation(line: 705, column: 65, scope: !2208)
!2215 = !DILocation(line: 706, column: 11, scope: !2208)
!2216 = !DILocation(line: 702, column: 11, scope: !1771)
!2217 = !DILocation(line: 395, column: 15, scope: !1769)
!2218 = !DILocation(line: 709, column: 5, scope: !1771)
!2219 = !DILocation(line: 710, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !1771, file: !506, line: 710, column: 7)
!2221 = !DILocation(line: 710, column: 7, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2220, file: !506, line: 710, column: 7)
!2223 = !DILocation(line: 710, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !506, line: 710, column: 7)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !506, line: 710, column: 7)
!2226 = distinct !DILexicalBlock(scope: !2222, file: !506, line: 710, column: 7)
!2227 = !DILocation(line: 710, column: 7, scope: !2225)
!2228 = !DILocation(line: 710, column: 7, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !506, line: 710, column: 7)
!2230 = distinct !DILexicalBlock(scope: !2226, file: !506, line: 710, column: 7)
!2231 = !DILocation(line: 710, column: 7, scope: !2230)
!2232 = !DILocation(line: 710, column: 7, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !506, line: 710, column: 7)
!2234 = distinct !DILexicalBlock(scope: !2226, file: !506, line: 710, column: 7)
!2235 = !DILocation(line: 710, column: 7, scope: !2234)
!2236 = !DILocation(line: 710, column: 7, scope: !2226)
!2237 = !DILocation(line: 710, column: 7, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !506, line: 710, column: 7)
!2239 = distinct !DILexicalBlock(scope: !2220, file: !506, line: 710, column: 7)
!2240 = !DILocation(line: 710, column: 7, scope: !2239)
!2241 = !DILocation(line: 712, column: 5, scope: !1771)
!2242 = !DILocation(line: 713, column: 7, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !506, line: 713, column: 7)
!2244 = distinct !DILexicalBlock(scope: !1771, file: !506, line: 713, column: 7)
!2245 = !DILocation(line: 417, column: 21, scope: !1771)
!2246 = !DILocation(line: 713, column: 7, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !506, line: 713, column: 7)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !506, line: 713, column: 7)
!2249 = distinct !DILexicalBlock(scope: !2243, file: !506, line: 713, column: 7)
!2250 = !DILocation(line: 713, column: 7, scope: !2248)
!2251 = !DILocation(line: 713, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !506, line: 713, column: 7)
!2253 = distinct !DILexicalBlock(scope: !2249, file: !506, line: 713, column: 7)
!2254 = !DILocation(line: 713, column: 7, scope: !2253)
!2255 = !DILocation(line: 713, column: 7, scope: !2249)
!2256 = !DILocation(line: 714, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !506, line: 714, column: 7)
!2258 = distinct !DILexicalBlock(scope: !1771, file: !506, line: 714, column: 7)
!2259 = !DILocation(line: 714, column: 7, scope: !2258)
!2260 = !DILocation(line: 716, column: 13, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !1771, file: !506, line: 716, column: 11)
!2262 = !DILocation(line: 716, column: 11, scope: !1771)
!2263 = !DILocation(line: 718, column: 5, scope: !1772)
!2264 = !DILocation(line: 395, column: 82, scope: !1772)
!2265 = !DILocation(line: 395, column: 3, scope: !1772)
!2266 = distinct !{!2266, !1913, !2267, !916}
!2267 = !DILocation(line: 718, column: 5, scope: !1769)
!2268 = !DILocation(line: 720, column: 11, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !1738, file: !506, line: 720, column: 7)
!2270 = !DILocation(line: 720, column: 16, scope: !2269)
!2271 = !DILocation(line: 728, column: 51, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !1738, file: !506, line: 728, column: 7)
!2273 = !DILocation(line: 731, column: 11, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !506, line: 731, column: 11)
!2275 = distinct !DILexicalBlock(scope: !2272, file: !506, line: 730, column: 5)
!2276 = !DILocation(line: 731, column: 11, scope: !2275)
!2277 = !DILocation(line: 732, column: 16, scope: !2274)
!2278 = !DILocation(line: 732, column: 9, scope: !2274)
!2279 = !DILocation(line: 736, column: 18, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2274, file: !506, line: 736, column: 16)
!2281 = !DILocation(line: 736, column: 29, scope: !2280)
!2282 = !DILocation(line: 745, column: 7, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !1738, file: !506, line: 745, column: 7)
!2284 = !DILocation(line: 745, column: 20, scope: !2283)
!2285 = !DILocation(line: 746, column: 12, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !506, line: 746, column: 5)
!2287 = distinct !DILexicalBlock(scope: !2283, file: !506, line: 746, column: 5)
!2288 = !DILocation(line: 746, column: 5, scope: !2287)
!2289 = !DILocation(line: 747, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !506, line: 747, column: 7)
!2291 = distinct !DILexicalBlock(scope: !2286, file: !506, line: 747, column: 7)
!2292 = !DILocation(line: 747, column: 7, scope: !2291)
!2293 = !DILocation(line: 746, column: 39, scope: !2286)
!2294 = distinct !{!2294, !2288, !2295, !916}
!2295 = !DILocation(line: 747, column: 7, scope: !2287)
!2296 = !DILocation(line: 749, column: 11, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !1738, file: !506, line: 749, column: 7)
!2298 = !DILocation(line: 749, column: 7, scope: !1738)
!2299 = !DILocation(line: 750, column: 5, scope: !2297)
!2300 = !DILocation(line: 750, column: 17, scope: !2297)
!2301 = !DILocation(line: 753, column: 2, scope: !1738)
!2302 = !DILocation(line: 756, column: 51, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !1738, file: !506, line: 756, column: 7)
!2304 = !DILocation(line: 756, column: 21, scope: !2303)
!2305 = !DILocation(line: 760, column: 42, scope: !1738)
!2306 = !DILocation(line: 758, column: 10, scope: !1738)
!2307 = !DILocation(line: 758, column: 3, scope: !1738)
!2308 = !DILocation(line: 762, column: 1, scope: !1738)
!2309 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !994, file: !994, line: 98, type: !2310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!112}
!2312 = !DISubprogram(name: "strlen", scope: !990, file: !990, line: 407, type: !2313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!114, !115}
!2315 = !DISubprogram(name: "iswprint", scope: !2316, file: !2316, line: 120, type: !2114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2317 = distinct !DISubprogram(name: "quotearg_alloc", scope: !506, file: !506, line: 788, type: !2318, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!109, !115, !112, !1631}
!2320 = !{!2321, !2322, !2323}
!2321 = !DILocalVariable(name: "arg", arg: 1, scope: !2317, file: !506, line: 788, type: !115)
!2322 = !DILocalVariable(name: "argsize", arg: 2, scope: !2317, file: !506, line: 788, type: !112)
!2323 = !DILocalVariable(name: "o", arg: 3, scope: !2317, file: !506, line: 789, type: !1631)
!2324 = !DILocation(line: 0, scope: !2317)
!2325 = !DILocalVariable(name: "arg", arg: 1, scope: !2326, file: !506, line: 801, type: !115)
!2326 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !506, file: !506, line: 801, type: !2327, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!109, !115, !112, !740, !1631}
!2329 = !{!2325, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337}
!2330 = !DILocalVariable(name: "argsize", arg: 2, scope: !2326, file: !506, line: 801, type: !112)
!2331 = !DILocalVariable(name: "size", arg: 3, scope: !2326, file: !506, line: 801, type: !740)
!2332 = !DILocalVariable(name: "o", arg: 4, scope: !2326, file: !506, line: 802, type: !1631)
!2333 = !DILocalVariable(name: "p", scope: !2326, file: !506, line: 804, type: !1631)
!2334 = !DILocalVariable(name: "saved_errno", scope: !2326, file: !506, line: 805, type: !68)
!2335 = !DILocalVariable(name: "flags", scope: !2326, file: !506, line: 807, type: !68)
!2336 = !DILocalVariable(name: "bufsize", scope: !2326, file: !506, line: 808, type: !112)
!2337 = !DILocalVariable(name: "buf", scope: !2326, file: !506, line: 812, type: !109)
!2338 = !DILocation(line: 0, scope: !2326, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 791, column: 10, scope: !2317)
!2340 = !DILocation(line: 804, column: 37, scope: !2326, inlinedAt: !2339)
!2341 = !DILocation(line: 805, column: 21, scope: !2326, inlinedAt: !2339)
!2342 = !DILocation(line: 807, column: 18, scope: !2326, inlinedAt: !2339)
!2343 = !DILocation(line: 807, column: 24, scope: !2326, inlinedAt: !2339)
!2344 = !DILocation(line: 808, column: 72, scope: !2326, inlinedAt: !2339)
!2345 = !DILocation(line: 809, column: 56, scope: !2326, inlinedAt: !2339)
!2346 = !DILocation(line: 810, column: 49, scope: !2326, inlinedAt: !2339)
!2347 = !DILocation(line: 811, column: 49, scope: !2326, inlinedAt: !2339)
!2348 = !DILocation(line: 808, column: 20, scope: !2326, inlinedAt: !2339)
!2349 = !DILocation(line: 811, column: 62, scope: !2326, inlinedAt: !2339)
!2350 = !DILocation(line: 812, column: 15, scope: !2326, inlinedAt: !2339)
!2351 = !DILocation(line: 813, column: 60, scope: !2326, inlinedAt: !2339)
!2352 = !DILocation(line: 815, column: 32, scope: !2326, inlinedAt: !2339)
!2353 = !DILocation(line: 815, column: 47, scope: !2326, inlinedAt: !2339)
!2354 = !DILocation(line: 813, column: 3, scope: !2326, inlinedAt: !2339)
!2355 = !DILocation(line: 816, column: 9, scope: !2326, inlinedAt: !2339)
!2356 = !DILocation(line: 791, column: 3, scope: !2317)
!2357 = !DILocation(line: 0, scope: !2326)
!2358 = !DILocation(line: 804, column: 37, scope: !2326)
!2359 = !DILocation(line: 805, column: 21, scope: !2326)
!2360 = !DILocation(line: 807, column: 18, scope: !2326)
!2361 = !DILocation(line: 807, column: 27, scope: !2326)
!2362 = !DILocation(line: 807, column: 24, scope: !2326)
!2363 = !DILocation(line: 808, column: 72, scope: !2326)
!2364 = !DILocation(line: 809, column: 56, scope: !2326)
!2365 = !DILocation(line: 810, column: 49, scope: !2326)
!2366 = !DILocation(line: 811, column: 49, scope: !2326)
!2367 = !DILocation(line: 808, column: 20, scope: !2326)
!2368 = !DILocation(line: 811, column: 62, scope: !2326)
!2369 = !DILocation(line: 812, column: 15, scope: !2326)
!2370 = !DILocation(line: 813, column: 60, scope: !2326)
!2371 = !DILocation(line: 815, column: 32, scope: !2326)
!2372 = !DILocation(line: 815, column: 47, scope: !2326)
!2373 = !DILocation(line: 813, column: 3, scope: !2326)
!2374 = !DILocation(line: 816, column: 9, scope: !2326)
!2375 = !DILocation(line: 817, column: 7, scope: !2326)
!2376 = !DILocation(line: 818, column: 11, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2326, file: !506, line: 817, column: 7)
!2378 = !{!1342, !1342, i64 0}
!2379 = !DILocation(line: 818, column: 5, scope: !2377)
!2380 = !DILocation(line: 819, column: 3, scope: !2326)
!2381 = distinct !DISubprogram(name: "quotearg_free", scope: !506, file: !506, line: 837, type: !443, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2382)
!2382 = !{!2383, !2384}
!2383 = !DILocalVariable(name: "sv", scope: !2381, file: !506, line: 839, type: !590)
!2384 = !DILocalVariable(name: "i", scope: !2385, file: !506, line: 840, type: !68)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !506, line: 840, column: 3)
!2386 = !DILocation(line: 839, column: 24, scope: !2381)
!2387 = !DILocation(line: 0, scope: !2381)
!2388 = !DILocation(line: 0, scope: !2385)
!2389 = !DILocation(line: 840, column: 21, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2385, file: !506, line: 840, column: 3)
!2391 = !DILocation(line: 840, column: 3, scope: !2385)
!2392 = !DILocation(line: 842, column: 13, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2381, file: !506, line: 842, column: 7)
!2394 = !{!2395, !807, i64 8}
!2395 = !{!"slotvec", !1342, i64 0, !807, i64 8}
!2396 = !DILocation(line: 842, column: 17, scope: !2393)
!2397 = !DILocation(line: 842, column: 7, scope: !2381)
!2398 = !DILocation(line: 841, column: 17, scope: !2390)
!2399 = !DILocation(line: 841, column: 5, scope: !2390)
!2400 = !DILocation(line: 840, column: 32, scope: !2390)
!2401 = distinct !{!2401, !2391, !2402, !916}
!2402 = !DILocation(line: 841, column: 20, scope: !2385)
!2403 = !DILocation(line: 844, column: 7, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2393, file: !506, line: 843, column: 5)
!2405 = !DILocation(line: 845, column: 21, scope: !2404)
!2406 = !{!2395, !1342, i64 0}
!2407 = !DILocation(line: 846, column: 20, scope: !2404)
!2408 = !DILocation(line: 847, column: 5, scope: !2404)
!2409 = !DILocation(line: 848, column: 10, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2381, file: !506, line: 848, column: 7)
!2411 = !DILocation(line: 848, column: 7, scope: !2381)
!2412 = !DILocation(line: 850, column: 7, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2410, file: !506, line: 849, column: 5)
!2414 = !DILocation(line: 851, column: 15, scope: !2413)
!2415 = !DILocation(line: 852, column: 5, scope: !2413)
!2416 = !DILocation(line: 853, column: 10, scope: !2381)
!2417 = !DILocation(line: 854, column: 1, scope: !2381)
!2418 = !DISubprogram(name: "free", scope: !1585, file: !1585, line: 786, type: !2419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{null, !110}
!2421 = distinct !DISubprogram(name: "quotearg_n", scope: !506, file: !506, line: 919, type: !987, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2422)
!2422 = !{!2423, !2424}
!2423 = !DILocalVariable(name: "n", arg: 1, scope: !2421, file: !506, line: 919, type: !68)
!2424 = !DILocalVariable(name: "arg", arg: 2, scope: !2421, file: !506, line: 919, type: !115)
!2425 = !DILocation(line: 0, scope: !2421)
!2426 = !DILocation(line: 921, column: 10, scope: !2421)
!2427 = !DILocation(line: 921, column: 3, scope: !2421)
!2428 = distinct !DISubprogram(name: "quotearg_n_options", scope: !506, file: !506, line: 866, type: !2429, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2431)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!109, !68, !115, !112, !1631}
!2431 = !{!2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2442, !2443, !2445, !2446, !2447}
!2432 = !DILocalVariable(name: "n", arg: 1, scope: !2428, file: !506, line: 866, type: !68)
!2433 = !DILocalVariable(name: "arg", arg: 2, scope: !2428, file: !506, line: 866, type: !115)
!2434 = !DILocalVariable(name: "argsize", arg: 3, scope: !2428, file: !506, line: 866, type: !112)
!2435 = !DILocalVariable(name: "options", arg: 4, scope: !2428, file: !506, line: 867, type: !1631)
!2436 = !DILocalVariable(name: "saved_errno", scope: !2428, file: !506, line: 869, type: !68)
!2437 = !DILocalVariable(name: "sv", scope: !2428, file: !506, line: 871, type: !590)
!2438 = !DILocalVariable(name: "nslots_max", scope: !2428, file: !506, line: 873, type: !68)
!2439 = !DILocalVariable(name: "preallocated", scope: !2440, file: !506, line: 879, type: !156)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !506, line: 878, column: 5)
!2441 = distinct !DILexicalBlock(scope: !2428, file: !506, line: 877, column: 7)
!2442 = !DILocalVariable(name: "new_nslots", scope: !2440, file: !506, line: 880, type: !753)
!2443 = !DILocalVariable(name: "size", scope: !2444, file: !506, line: 891, type: !112)
!2444 = distinct !DILexicalBlock(scope: !2428, file: !506, line: 890, column: 3)
!2445 = !DILocalVariable(name: "val", scope: !2444, file: !506, line: 892, type: !109)
!2446 = !DILocalVariable(name: "flags", scope: !2444, file: !506, line: 894, type: !68)
!2447 = !DILocalVariable(name: "qsize", scope: !2444, file: !506, line: 895, type: !112)
!2448 = !DILocation(line: 0, scope: !2428)
!2449 = !DILocation(line: 869, column: 21, scope: !2428)
!2450 = !DILocation(line: 871, column: 24, scope: !2428)
!2451 = !DILocation(line: 874, column: 17, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2428, file: !506, line: 874, column: 7)
!2453 = !DILocation(line: 875, column: 5, scope: !2452)
!2454 = !DILocation(line: 877, column: 7, scope: !2441)
!2455 = !DILocation(line: 877, column: 14, scope: !2441)
!2456 = !DILocation(line: 877, column: 7, scope: !2428)
!2457 = !DILocation(line: 879, column: 31, scope: !2440)
!2458 = !DILocation(line: 0, scope: !2440)
!2459 = !DILocation(line: 880, column: 7, scope: !2440)
!2460 = !DILocation(line: 880, column: 26, scope: !2440)
!2461 = !DILocation(line: 880, column: 13, scope: !2440)
!2462 = !DILocation(line: 882, column: 31, scope: !2440)
!2463 = !DILocation(line: 883, column: 33, scope: !2440)
!2464 = !DILocation(line: 883, column: 42, scope: !2440)
!2465 = !DILocation(line: 883, column: 31, scope: !2440)
!2466 = !DILocation(line: 882, column: 22, scope: !2440)
!2467 = !DILocation(line: 882, column: 15, scope: !2440)
!2468 = !DILocation(line: 884, column: 11, scope: !2440)
!2469 = !DILocation(line: 885, column: 15, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2440, file: !506, line: 884, column: 11)
!2471 = !{i64 0, i64 8, !2378, i64 8, i64 8, !806}
!2472 = !DILocation(line: 885, column: 9, scope: !2470)
!2473 = !DILocation(line: 886, column: 20, scope: !2440)
!2474 = !DILocation(line: 886, column: 18, scope: !2440)
!2475 = !DILocation(line: 886, column: 32, scope: !2440)
!2476 = !DILocation(line: 886, column: 43, scope: !2440)
!2477 = !DILocation(line: 886, column: 53, scope: !2440)
!2478 = !DILocation(line: 0, scope: !1846, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 886, column: 7, scope: !2440)
!2480 = !DILocation(line: 59, column: 10, scope: !1846, inlinedAt: !2479)
!2481 = !DILocation(line: 887, column: 16, scope: !2440)
!2482 = !DILocation(line: 887, column: 14, scope: !2440)
!2483 = !DILocation(line: 888, column: 5, scope: !2441)
!2484 = !DILocation(line: 888, column: 5, scope: !2440)
!2485 = !DILocation(line: 891, column: 19, scope: !2444)
!2486 = !DILocation(line: 891, column: 25, scope: !2444)
!2487 = !DILocation(line: 0, scope: !2444)
!2488 = !DILocation(line: 892, column: 23, scope: !2444)
!2489 = !DILocation(line: 894, column: 26, scope: !2444)
!2490 = !DILocation(line: 894, column: 32, scope: !2444)
!2491 = !DILocation(line: 896, column: 55, scope: !2444)
!2492 = !DILocation(line: 897, column: 55, scope: !2444)
!2493 = !DILocation(line: 898, column: 55, scope: !2444)
!2494 = !DILocation(line: 899, column: 55, scope: !2444)
!2495 = !DILocation(line: 895, column: 20, scope: !2444)
!2496 = !DILocation(line: 901, column: 14, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2444, file: !506, line: 901, column: 9)
!2498 = !DILocation(line: 901, column: 9, scope: !2444)
!2499 = !DILocation(line: 903, column: 35, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2497, file: !506, line: 902, column: 7)
!2501 = !DILocation(line: 903, column: 20, scope: !2500)
!2502 = !DILocation(line: 904, column: 17, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2500, file: !506, line: 904, column: 13)
!2504 = !DILocation(line: 904, column: 13, scope: !2500)
!2505 = !DILocation(line: 905, column: 11, scope: !2503)
!2506 = !DILocation(line: 906, column: 27, scope: !2500)
!2507 = !DILocation(line: 906, column: 19, scope: !2500)
!2508 = !DILocation(line: 907, column: 69, scope: !2500)
!2509 = !DILocation(line: 909, column: 44, scope: !2500)
!2510 = !DILocation(line: 910, column: 44, scope: !2500)
!2511 = !DILocation(line: 907, column: 9, scope: !2500)
!2512 = !DILocation(line: 911, column: 7, scope: !2500)
!2513 = !DILocation(line: 913, column: 11, scope: !2444)
!2514 = !DILocation(line: 914, column: 5, scope: !2444)
!2515 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !506, file: !506, line: 925, type: !2516, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!109, !68, !115, !112}
!2518 = !{!2519, !2520, !2521}
!2519 = !DILocalVariable(name: "n", arg: 1, scope: !2515, file: !506, line: 925, type: !68)
!2520 = !DILocalVariable(name: "arg", arg: 2, scope: !2515, file: !506, line: 925, type: !115)
!2521 = !DILocalVariable(name: "argsize", arg: 3, scope: !2515, file: !506, line: 925, type: !112)
!2522 = !DILocation(line: 0, scope: !2515)
!2523 = !DILocation(line: 927, column: 10, scope: !2515)
!2524 = !DILocation(line: 927, column: 3, scope: !2515)
!2525 = distinct !DISubprogram(name: "quotearg", scope: !506, file: !506, line: 931, type: !996, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2526)
!2526 = !{!2527}
!2527 = !DILocalVariable(name: "arg", arg: 1, scope: !2525, file: !506, line: 931, type: !115)
!2528 = !DILocation(line: 0, scope: !2525)
!2529 = !DILocation(line: 0, scope: !2421, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 933, column: 10, scope: !2525)
!2531 = !DILocation(line: 921, column: 10, scope: !2421, inlinedAt: !2530)
!2532 = !DILocation(line: 933, column: 3, scope: !2525)
!2533 = distinct !DISubprogram(name: "quotearg_mem", scope: !506, file: !506, line: 937, type: !2534, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!109, !115, !112}
!2536 = !{!2537, !2538}
!2537 = !DILocalVariable(name: "arg", arg: 1, scope: !2533, file: !506, line: 937, type: !115)
!2538 = !DILocalVariable(name: "argsize", arg: 2, scope: !2533, file: !506, line: 937, type: !112)
!2539 = !DILocation(line: 0, scope: !2533)
!2540 = !DILocation(line: 0, scope: !2515, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 939, column: 10, scope: !2533)
!2542 = !DILocation(line: 927, column: 10, scope: !2515, inlinedAt: !2541)
!2543 = !DILocation(line: 939, column: 3, scope: !2533)
!2544 = distinct !DISubprogram(name: "quotearg_n_style", scope: !506, file: !506, line: 943, type: !2545, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!109, !68, !94, !115}
!2547 = !{!2548, !2549, !2550, !2551}
!2548 = !DILocalVariable(name: "n", arg: 1, scope: !2544, file: !506, line: 943, type: !68)
!2549 = !DILocalVariable(name: "s", arg: 2, scope: !2544, file: !506, line: 943, type: !94)
!2550 = !DILocalVariable(name: "arg", arg: 3, scope: !2544, file: !506, line: 943, type: !115)
!2551 = !DILocalVariable(name: "o", scope: !2544, file: !506, line: 945, type: !1632)
!2552 = !DILocation(line: 0, scope: !2544)
!2553 = !DILocation(line: 945, column: 3, scope: !2544)
!2554 = !DILocation(line: 945, column: 32, scope: !2544)
!2555 = !{!2556}
!2556 = distinct !{!2556, !2557, !"quoting_options_from_style: argument 0"}
!2557 = distinct !{!2557, !"quoting_options_from_style"}
!2558 = !DILocation(line: 945, column: 36, scope: !2544)
!2559 = !DILocalVariable(name: "style", arg: 1, scope: !2560, file: !506, line: 183, type: !94)
!2560 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !506, file: !506, line: 183, type: !2561, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!542, !94}
!2563 = !{!2559, !2564}
!2564 = !DILocalVariable(name: "o", scope: !2560, file: !506, line: 185, type: !542)
!2565 = !DILocation(line: 0, scope: !2560, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 945, column: 36, scope: !2544)
!2567 = !DILocation(line: 185, column: 26, scope: !2560, inlinedAt: !2566)
!2568 = !DILocation(line: 186, column: 13, scope: !2569, inlinedAt: !2566)
!2569 = distinct !DILexicalBlock(scope: !2560, file: !506, line: 186, column: 7)
!2570 = !DILocation(line: 186, column: 7, scope: !2560, inlinedAt: !2566)
!2571 = !DILocation(line: 187, column: 5, scope: !2569, inlinedAt: !2566)
!2572 = !DILocation(line: 188, column: 11, scope: !2560, inlinedAt: !2566)
!2573 = !DILocation(line: 946, column: 10, scope: !2544)
!2574 = !DILocation(line: 947, column: 1, scope: !2544)
!2575 = !DILocation(line: 946, column: 3, scope: !2544)
!2576 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !506, file: !506, line: 950, type: !2577, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!109, !68, !94, !115, !112}
!2579 = !{!2580, !2581, !2582, !2583, !2584}
!2580 = !DILocalVariable(name: "n", arg: 1, scope: !2576, file: !506, line: 950, type: !68)
!2581 = !DILocalVariable(name: "s", arg: 2, scope: !2576, file: !506, line: 950, type: !94)
!2582 = !DILocalVariable(name: "arg", arg: 3, scope: !2576, file: !506, line: 951, type: !115)
!2583 = !DILocalVariable(name: "argsize", arg: 4, scope: !2576, file: !506, line: 951, type: !112)
!2584 = !DILocalVariable(name: "o", scope: !2576, file: !506, line: 953, type: !1632)
!2585 = !DILocation(line: 0, scope: !2576)
!2586 = !DILocation(line: 953, column: 3, scope: !2576)
!2587 = !DILocation(line: 953, column: 32, scope: !2576)
!2588 = !{!2589}
!2589 = distinct !{!2589, !2590, !"quoting_options_from_style: argument 0"}
!2590 = distinct !{!2590, !"quoting_options_from_style"}
!2591 = !DILocation(line: 953, column: 36, scope: !2576)
!2592 = !DILocation(line: 0, scope: !2560, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 953, column: 36, scope: !2576)
!2594 = !DILocation(line: 185, column: 26, scope: !2560, inlinedAt: !2593)
!2595 = !DILocation(line: 186, column: 13, scope: !2569, inlinedAt: !2593)
!2596 = !DILocation(line: 186, column: 7, scope: !2560, inlinedAt: !2593)
!2597 = !DILocation(line: 187, column: 5, scope: !2569, inlinedAt: !2593)
!2598 = !DILocation(line: 188, column: 11, scope: !2560, inlinedAt: !2593)
!2599 = !DILocation(line: 954, column: 10, scope: !2576)
!2600 = !DILocation(line: 955, column: 1, scope: !2576)
!2601 = !DILocation(line: 954, column: 3, scope: !2576)
!2602 = distinct !DISubprogram(name: "quotearg_style", scope: !506, file: !506, line: 958, type: !2603, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!109, !94, !115}
!2605 = !{!2606, !2607}
!2606 = !DILocalVariable(name: "s", arg: 1, scope: !2602, file: !506, line: 958, type: !94)
!2607 = !DILocalVariable(name: "arg", arg: 2, scope: !2602, file: !506, line: 958, type: !115)
!2608 = !DILocation(line: 0, scope: !2602)
!2609 = !DILocation(line: 0, scope: !2544, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 960, column: 10, scope: !2602)
!2611 = !DILocation(line: 945, column: 3, scope: !2544, inlinedAt: !2610)
!2612 = !DILocation(line: 945, column: 32, scope: !2544, inlinedAt: !2610)
!2613 = !{!2614}
!2614 = distinct !{!2614, !2615, !"quoting_options_from_style: argument 0"}
!2615 = distinct !{!2615, !"quoting_options_from_style"}
!2616 = !DILocation(line: 945, column: 36, scope: !2544, inlinedAt: !2610)
!2617 = !DILocation(line: 0, scope: !2560, inlinedAt: !2618)
!2618 = distinct !DILocation(line: 945, column: 36, scope: !2544, inlinedAt: !2610)
!2619 = !DILocation(line: 185, column: 26, scope: !2560, inlinedAt: !2618)
!2620 = !DILocation(line: 186, column: 13, scope: !2569, inlinedAt: !2618)
!2621 = !DILocation(line: 186, column: 7, scope: !2560, inlinedAt: !2618)
!2622 = !DILocation(line: 187, column: 5, scope: !2569, inlinedAt: !2618)
!2623 = !DILocation(line: 188, column: 11, scope: !2560, inlinedAt: !2618)
!2624 = !DILocation(line: 946, column: 10, scope: !2544, inlinedAt: !2610)
!2625 = !DILocation(line: 947, column: 1, scope: !2544, inlinedAt: !2610)
!2626 = !DILocation(line: 960, column: 3, scope: !2602)
!2627 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !506, file: !506, line: 964, type: !2628, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!109, !94, !115, !112}
!2630 = !{!2631, !2632, !2633}
!2631 = !DILocalVariable(name: "s", arg: 1, scope: !2627, file: !506, line: 964, type: !94)
!2632 = !DILocalVariable(name: "arg", arg: 2, scope: !2627, file: !506, line: 964, type: !115)
!2633 = !DILocalVariable(name: "argsize", arg: 3, scope: !2627, file: !506, line: 964, type: !112)
!2634 = !DILocation(line: 0, scope: !2627)
!2635 = !DILocation(line: 0, scope: !2576, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 966, column: 10, scope: !2627)
!2637 = !DILocation(line: 953, column: 3, scope: !2576, inlinedAt: !2636)
!2638 = !DILocation(line: 953, column: 32, scope: !2576, inlinedAt: !2636)
!2639 = !{!2640}
!2640 = distinct !{!2640, !2641, !"quoting_options_from_style: argument 0"}
!2641 = distinct !{!2641, !"quoting_options_from_style"}
!2642 = !DILocation(line: 953, column: 36, scope: !2576, inlinedAt: !2636)
!2643 = !DILocation(line: 0, scope: !2560, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 953, column: 36, scope: !2576, inlinedAt: !2636)
!2645 = !DILocation(line: 185, column: 26, scope: !2560, inlinedAt: !2644)
!2646 = !DILocation(line: 186, column: 13, scope: !2569, inlinedAt: !2644)
!2647 = !DILocation(line: 186, column: 7, scope: !2560, inlinedAt: !2644)
!2648 = !DILocation(line: 187, column: 5, scope: !2569, inlinedAt: !2644)
!2649 = !DILocation(line: 188, column: 11, scope: !2560, inlinedAt: !2644)
!2650 = !DILocation(line: 954, column: 10, scope: !2576, inlinedAt: !2636)
!2651 = !DILocation(line: 955, column: 1, scope: !2576, inlinedAt: !2636)
!2652 = !DILocation(line: 966, column: 3, scope: !2627)
!2653 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !506, file: !506, line: 970, type: !2654, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!109, !115, !112, !4}
!2656 = !{!2657, !2658, !2659, !2660}
!2657 = !DILocalVariable(name: "arg", arg: 1, scope: !2653, file: !506, line: 970, type: !115)
!2658 = !DILocalVariable(name: "argsize", arg: 2, scope: !2653, file: !506, line: 970, type: !112)
!2659 = !DILocalVariable(name: "ch", arg: 3, scope: !2653, file: !506, line: 970, type: !4)
!2660 = !DILocalVariable(name: "options", scope: !2653, file: !506, line: 972, type: !542)
!2661 = !DILocation(line: 0, scope: !2653)
!2662 = !DILocation(line: 972, column: 3, scope: !2653)
!2663 = !DILocation(line: 972, column: 26, scope: !2653)
!2664 = !DILocation(line: 973, column: 13, scope: !2653)
!2665 = !{i64 0, i64 4, !878, i64 4, i64 4, !869, i64 8, i64 32, !878, i64 40, i64 8, !806, i64 48, i64 8, !806}
!2666 = !DILocation(line: 0, scope: !1651, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 974, column: 3, scope: !2653)
!2668 = !DILocation(line: 147, column: 41, scope: !1651, inlinedAt: !2667)
!2669 = !DILocation(line: 147, column: 62, scope: !1651, inlinedAt: !2667)
!2670 = !DILocation(line: 147, column: 57, scope: !1651, inlinedAt: !2667)
!2671 = !DILocation(line: 148, column: 15, scope: !1651, inlinedAt: !2667)
!2672 = !DILocation(line: 149, column: 21, scope: !1651, inlinedAt: !2667)
!2673 = !DILocation(line: 149, column: 24, scope: !1651, inlinedAt: !2667)
!2674 = !DILocation(line: 150, column: 19, scope: !1651, inlinedAt: !2667)
!2675 = !DILocation(line: 150, column: 24, scope: !1651, inlinedAt: !2667)
!2676 = !DILocation(line: 150, column: 6, scope: !1651, inlinedAt: !2667)
!2677 = !DILocation(line: 975, column: 10, scope: !2653)
!2678 = !DILocation(line: 976, column: 1, scope: !2653)
!2679 = !DILocation(line: 975, column: 3, scope: !2653)
!2680 = distinct !DISubprogram(name: "quotearg_char", scope: !506, file: !506, line: 979, type: !2681, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2683)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!109, !115, !4}
!2683 = !{!2684, !2685}
!2684 = !DILocalVariable(name: "arg", arg: 1, scope: !2680, file: !506, line: 979, type: !115)
!2685 = !DILocalVariable(name: "ch", arg: 2, scope: !2680, file: !506, line: 979, type: !4)
!2686 = !DILocation(line: 0, scope: !2680)
!2687 = !DILocation(line: 0, scope: !2653, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 981, column: 10, scope: !2680)
!2689 = !DILocation(line: 972, column: 3, scope: !2653, inlinedAt: !2688)
!2690 = !DILocation(line: 972, column: 26, scope: !2653, inlinedAt: !2688)
!2691 = !DILocation(line: 973, column: 13, scope: !2653, inlinedAt: !2688)
!2692 = !DILocation(line: 0, scope: !1651, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 974, column: 3, scope: !2653, inlinedAt: !2688)
!2694 = !DILocation(line: 147, column: 41, scope: !1651, inlinedAt: !2693)
!2695 = !DILocation(line: 147, column: 62, scope: !1651, inlinedAt: !2693)
!2696 = !DILocation(line: 147, column: 57, scope: !1651, inlinedAt: !2693)
!2697 = !DILocation(line: 148, column: 15, scope: !1651, inlinedAt: !2693)
!2698 = !DILocation(line: 149, column: 21, scope: !1651, inlinedAt: !2693)
!2699 = !DILocation(line: 149, column: 24, scope: !1651, inlinedAt: !2693)
!2700 = !DILocation(line: 150, column: 19, scope: !1651, inlinedAt: !2693)
!2701 = !DILocation(line: 150, column: 24, scope: !1651, inlinedAt: !2693)
!2702 = !DILocation(line: 150, column: 6, scope: !1651, inlinedAt: !2693)
!2703 = !DILocation(line: 975, column: 10, scope: !2653, inlinedAt: !2688)
!2704 = !DILocation(line: 976, column: 1, scope: !2653, inlinedAt: !2688)
!2705 = !DILocation(line: 981, column: 3, scope: !2680)
!2706 = distinct !DISubprogram(name: "quotearg_colon", scope: !506, file: !506, line: 985, type: !996, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2707)
!2707 = !{!2708}
!2708 = !DILocalVariable(name: "arg", arg: 1, scope: !2706, file: !506, line: 985, type: !115)
!2709 = !DILocation(line: 0, scope: !2706)
!2710 = !DILocation(line: 0, scope: !2680, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 987, column: 10, scope: !2706)
!2712 = !DILocation(line: 0, scope: !2653, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 981, column: 10, scope: !2680, inlinedAt: !2711)
!2714 = !DILocation(line: 972, column: 3, scope: !2653, inlinedAt: !2713)
!2715 = !DILocation(line: 972, column: 26, scope: !2653, inlinedAt: !2713)
!2716 = !DILocation(line: 973, column: 13, scope: !2653, inlinedAt: !2713)
!2717 = !DILocation(line: 0, scope: !1651, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 974, column: 3, scope: !2653, inlinedAt: !2713)
!2719 = !DILocation(line: 147, column: 57, scope: !1651, inlinedAt: !2718)
!2720 = !DILocation(line: 149, column: 21, scope: !1651, inlinedAt: !2718)
!2721 = !DILocation(line: 150, column: 6, scope: !1651, inlinedAt: !2718)
!2722 = !DILocation(line: 975, column: 10, scope: !2653, inlinedAt: !2713)
!2723 = !DILocation(line: 976, column: 1, scope: !2653, inlinedAt: !2713)
!2724 = !DILocation(line: 987, column: 3, scope: !2706)
!2725 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !506, file: !506, line: 991, type: !2534, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2726)
!2726 = !{!2727, !2728}
!2727 = !DILocalVariable(name: "arg", arg: 1, scope: !2725, file: !506, line: 991, type: !115)
!2728 = !DILocalVariable(name: "argsize", arg: 2, scope: !2725, file: !506, line: 991, type: !112)
!2729 = !DILocation(line: 0, scope: !2725)
!2730 = !DILocation(line: 0, scope: !2653, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 993, column: 10, scope: !2725)
!2732 = !DILocation(line: 972, column: 3, scope: !2653, inlinedAt: !2731)
!2733 = !DILocation(line: 972, column: 26, scope: !2653, inlinedAt: !2731)
!2734 = !DILocation(line: 973, column: 13, scope: !2653, inlinedAt: !2731)
!2735 = !DILocation(line: 0, scope: !1651, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 974, column: 3, scope: !2653, inlinedAt: !2731)
!2737 = !DILocation(line: 147, column: 57, scope: !1651, inlinedAt: !2736)
!2738 = !DILocation(line: 149, column: 21, scope: !1651, inlinedAt: !2736)
!2739 = !DILocation(line: 150, column: 6, scope: !1651, inlinedAt: !2736)
!2740 = !DILocation(line: 975, column: 10, scope: !2653, inlinedAt: !2731)
!2741 = !DILocation(line: 976, column: 1, scope: !2653, inlinedAt: !2731)
!2742 = !DILocation(line: 993, column: 3, scope: !2725)
!2743 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !506, file: !506, line: 997, type: !2545, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2744)
!2744 = !{!2745, !2746, !2747, !2748}
!2745 = !DILocalVariable(name: "n", arg: 1, scope: !2743, file: !506, line: 997, type: !68)
!2746 = !DILocalVariable(name: "s", arg: 2, scope: !2743, file: !506, line: 997, type: !94)
!2747 = !DILocalVariable(name: "arg", arg: 3, scope: !2743, file: !506, line: 997, type: !115)
!2748 = !DILocalVariable(name: "options", scope: !2743, file: !506, line: 999, type: !542)
!2749 = !DILocation(line: 185, column: 26, scope: !2560, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 1000, column: 13, scope: !2743)
!2751 = !DILocation(line: 0, scope: !2743)
!2752 = !DILocation(line: 999, column: 3, scope: !2743)
!2753 = !DILocation(line: 999, column: 26, scope: !2743)
!2754 = !DILocation(line: 0, scope: !2560, inlinedAt: !2750)
!2755 = !DILocation(line: 186, column: 13, scope: !2569, inlinedAt: !2750)
!2756 = !DILocation(line: 186, column: 7, scope: !2560, inlinedAt: !2750)
!2757 = !DILocation(line: 187, column: 5, scope: !2569, inlinedAt: !2750)
!2758 = !{!2759}
!2759 = distinct !{!2759, !2760, !"quoting_options_from_style: argument 0"}
!2760 = distinct !{!2760, !"quoting_options_from_style"}
!2761 = !DILocation(line: 1000, column: 13, scope: !2743)
!2762 = !DILocation(line: 0, scope: !1651, inlinedAt: !2763)
!2763 = distinct !DILocation(line: 1001, column: 3, scope: !2743)
!2764 = !DILocation(line: 147, column: 57, scope: !1651, inlinedAt: !2763)
!2765 = !DILocation(line: 149, column: 21, scope: !1651, inlinedAt: !2763)
!2766 = !DILocation(line: 150, column: 6, scope: !1651, inlinedAt: !2763)
!2767 = !DILocation(line: 1002, column: 10, scope: !2743)
!2768 = !DILocation(line: 1003, column: 1, scope: !2743)
!2769 = !DILocation(line: 1002, column: 3, scope: !2743)
!2770 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !506, file: !506, line: 1006, type: !2771, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!109, !68, !115, !115, !115}
!2773 = !{!2774, !2775, !2776, !2777}
!2774 = !DILocalVariable(name: "n", arg: 1, scope: !2770, file: !506, line: 1006, type: !68)
!2775 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2770, file: !506, line: 1006, type: !115)
!2776 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2770, file: !506, line: 1007, type: !115)
!2777 = !DILocalVariable(name: "arg", arg: 4, scope: !2770, file: !506, line: 1007, type: !115)
!2778 = !DILocation(line: 0, scope: !2770)
!2779 = !DILocalVariable(name: "n", arg: 1, scope: !2780, file: !506, line: 1014, type: !68)
!2780 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !506, file: !506, line: 1014, type: !2781, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!109, !68, !115, !115, !115, !112}
!2783 = !{!2779, !2784, !2785, !2786, !2787, !2788}
!2784 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2780, file: !506, line: 1014, type: !115)
!2785 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2780, file: !506, line: 1015, type: !115)
!2786 = !DILocalVariable(name: "arg", arg: 4, scope: !2780, file: !506, line: 1016, type: !115)
!2787 = !DILocalVariable(name: "argsize", arg: 5, scope: !2780, file: !506, line: 1016, type: !112)
!2788 = !DILocalVariable(name: "o", scope: !2780, file: !506, line: 1018, type: !542)
!2789 = !DILocation(line: 0, scope: !2780, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 1009, column: 10, scope: !2770)
!2791 = !DILocation(line: 1018, column: 3, scope: !2780, inlinedAt: !2790)
!2792 = !DILocation(line: 1018, column: 26, scope: !2780, inlinedAt: !2790)
!2793 = !DILocation(line: 1018, column: 30, scope: !2780, inlinedAt: !2790)
!2794 = !DILocation(line: 0, scope: !1691, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 1019, column: 3, scope: !2780, inlinedAt: !2790)
!2796 = !DILocation(line: 174, column: 12, scope: !1691, inlinedAt: !2795)
!2797 = !DILocation(line: 175, column: 8, scope: !1704, inlinedAt: !2795)
!2798 = !DILocation(line: 175, column: 19, scope: !1704, inlinedAt: !2795)
!2799 = !DILocation(line: 176, column: 5, scope: !1704, inlinedAt: !2795)
!2800 = !DILocation(line: 177, column: 6, scope: !1691, inlinedAt: !2795)
!2801 = !DILocation(line: 177, column: 17, scope: !1691, inlinedAt: !2795)
!2802 = !DILocation(line: 178, column: 6, scope: !1691, inlinedAt: !2795)
!2803 = !DILocation(line: 178, column: 18, scope: !1691, inlinedAt: !2795)
!2804 = !DILocation(line: 1020, column: 10, scope: !2780, inlinedAt: !2790)
!2805 = !DILocation(line: 1021, column: 1, scope: !2780, inlinedAt: !2790)
!2806 = !DILocation(line: 1009, column: 3, scope: !2770)
!2807 = !DILocation(line: 0, scope: !2780)
!2808 = !DILocation(line: 1018, column: 3, scope: !2780)
!2809 = !DILocation(line: 1018, column: 26, scope: !2780)
!2810 = !DILocation(line: 1018, column: 30, scope: !2780)
!2811 = !DILocation(line: 0, scope: !1691, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 1019, column: 3, scope: !2780)
!2813 = !DILocation(line: 174, column: 12, scope: !1691, inlinedAt: !2812)
!2814 = !DILocation(line: 175, column: 8, scope: !1704, inlinedAt: !2812)
!2815 = !DILocation(line: 175, column: 19, scope: !1704, inlinedAt: !2812)
!2816 = !DILocation(line: 176, column: 5, scope: !1704, inlinedAt: !2812)
!2817 = !DILocation(line: 177, column: 6, scope: !1691, inlinedAt: !2812)
!2818 = !DILocation(line: 177, column: 17, scope: !1691, inlinedAt: !2812)
!2819 = !DILocation(line: 178, column: 6, scope: !1691, inlinedAt: !2812)
!2820 = !DILocation(line: 178, column: 18, scope: !1691, inlinedAt: !2812)
!2821 = !DILocation(line: 1020, column: 10, scope: !2780)
!2822 = !DILocation(line: 1021, column: 1, scope: !2780)
!2823 = !DILocation(line: 1020, column: 3, scope: !2780)
!2824 = distinct !DISubprogram(name: "quotearg_custom", scope: !506, file: !506, line: 1024, type: !2825, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!109, !115, !115, !115}
!2827 = !{!2828, !2829, !2830}
!2828 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2824, file: !506, line: 1024, type: !115)
!2829 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2824, file: !506, line: 1024, type: !115)
!2830 = !DILocalVariable(name: "arg", arg: 3, scope: !2824, file: !506, line: 1025, type: !115)
!2831 = !DILocation(line: 0, scope: !2824)
!2832 = !DILocation(line: 0, scope: !2770, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 1027, column: 10, scope: !2824)
!2834 = !DILocation(line: 0, scope: !2780, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 1009, column: 10, scope: !2770, inlinedAt: !2833)
!2836 = !DILocation(line: 1018, column: 3, scope: !2780, inlinedAt: !2835)
!2837 = !DILocation(line: 1018, column: 26, scope: !2780, inlinedAt: !2835)
!2838 = !DILocation(line: 1018, column: 30, scope: !2780, inlinedAt: !2835)
!2839 = !DILocation(line: 0, scope: !1691, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 1019, column: 3, scope: !2780, inlinedAt: !2835)
!2841 = !DILocation(line: 174, column: 12, scope: !1691, inlinedAt: !2840)
!2842 = !DILocation(line: 175, column: 8, scope: !1704, inlinedAt: !2840)
!2843 = !DILocation(line: 175, column: 19, scope: !1704, inlinedAt: !2840)
!2844 = !DILocation(line: 176, column: 5, scope: !1704, inlinedAt: !2840)
!2845 = !DILocation(line: 177, column: 6, scope: !1691, inlinedAt: !2840)
!2846 = !DILocation(line: 177, column: 17, scope: !1691, inlinedAt: !2840)
!2847 = !DILocation(line: 178, column: 6, scope: !1691, inlinedAt: !2840)
!2848 = !DILocation(line: 178, column: 18, scope: !1691, inlinedAt: !2840)
!2849 = !DILocation(line: 1020, column: 10, scope: !2780, inlinedAt: !2835)
!2850 = !DILocation(line: 1021, column: 1, scope: !2780, inlinedAt: !2835)
!2851 = !DILocation(line: 1027, column: 3, scope: !2824)
!2852 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !506, file: !506, line: 1031, type: !2853, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!109, !115, !115, !115, !112}
!2855 = !{!2856, !2857, !2858, !2859}
!2856 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2852, file: !506, line: 1031, type: !115)
!2857 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2852, file: !506, line: 1031, type: !115)
!2858 = !DILocalVariable(name: "arg", arg: 3, scope: !2852, file: !506, line: 1032, type: !115)
!2859 = !DILocalVariable(name: "argsize", arg: 4, scope: !2852, file: !506, line: 1032, type: !112)
!2860 = !DILocation(line: 0, scope: !2852)
!2861 = !DILocation(line: 0, scope: !2780, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 1034, column: 10, scope: !2852)
!2863 = !DILocation(line: 1018, column: 3, scope: !2780, inlinedAt: !2862)
!2864 = !DILocation(line: 1018, column: 26, scope: !2780, inlinedAt: !2862)
!2865 = !DILocation(line: 1018, column: 30, scope: !2780, inlinedAt: !2862)
!2866 = !DILocation(line: 0, scope: !1691, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 1019, column: 3, scope: !2780, inlinedAt: !2862)
!2868 = !DILocation(line: 174, column: 12, scope: !1691, inlinedAt: !2867)
!2869 = !DILocation(line: 175, column: 8, scope: !1704, inlinedAt: !2867)
!2870 = !DILocation(line: 175, column: 19, scope: !1704, inlinedAt: !2867)
!2871 = !DILocation(line: 176, column: 5, scope: !1704, inlinedAt: !2867)
!2872 = !DILocation(line: 177, column: 6, scope: !1691, inlinedAt: !2867)
!2873 = !DILocation(line: 177, column: 17, scope: !1691, inlinedAt: !2867)
!2874 = !DILocation(line: 178, column: 6, scope: !1691, inlinedAt: !2867)
!2875 = !DILocation(line: 178, column: 18, scope: !1691, inlinedAt: !2867)
!2876 = !DILocation(line: 1020, column: 10, scope: !2780, inlinedAt: !2862)
!2877 = !DILocation(line: 1021, column: 1, scope: !2780, inlinedAt: !2862)
!2878 = !DILocation(line: 1034, column: 3, scope: !2852)
!2879 = distinct !DISubprogram(name: "quote_n_mem", scope: !506, file: !506, line: 1049, type: !2880, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2882)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!115, !68, !115, !112}
!2882 = !{!2883, !2884, !2885}
!2883 = !DILocalVariable(name: "n", arg: 1, scope: !2879, file: !506, line: 1049, type: !68)
!2884 = !DILocalVariable(name: "arg", arg: 2, scope: !2879, file: !506, line: 1049, type: !115)
!2885 = !DILocalVariable(name: "argsize", arg: 3, scope: !2879, file: !506, line: 1049, type: !112)
!2886 = !DILocation(line: 0, scope: !2879)
!2887 = !DILocation(line: 1051, column: 10, scope: !2879)
!2888 = !DILocation(line: 1051, column: 3, scope: !2879)
!2889 = distinct !DISubprogram(name: "quote_mem", scope: !506, file: !506, line: 1055, type: !2890, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!115, !115, !112}
!2892 = !{!2893, !2894}
!2893 = !DILocalVariable(name: "arg", arg: 1, scope: !2889, file: !506, line: 1055, type: !115)
!2894 = !DILocalVariable(name: "argsize", arg: 2, scope: !2889, file: !506, line: 1055, type: !112)
!2895 = !DILocation(line: 0, scope: !2889)
!2896 = !DILocation(line: 0, scope: !2879, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 1057, column: 10, scope: !2889)
!2898 = !DILocation(line: 1051, column: 10, scope: !2879, inlinedAt: !2897)
!2899 = !DILocation(line: 1057, column: 3, scope: !2889)
!2900 = distinct !DISubprogram(name: "quote_n", scope: !506, file: !506, line: 1061, type: !2901, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2903)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!115, !68, !115}
!2903 = !{!2904, !2905}
!2904 = !DILocalVariable(name: "n", arg: 1, scope: !2900, file: !506, line: 1061, type: !68)
!2905 = !DILocalVariable(name: "arg", arg: 2, scope: !2900, file: !506, line: 1061, type: !115)
!2906 = !DILocation(line: 0, scope: !2900)
!2907 = !DILocation(line: 0, scope: !2879, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 1063, column: 10, scope: !2900)
!2909 = !DILocation(line: 1051, column: 10, scope: !2879, inlinedAt: !2908)
!2910 = !DILocation(line: 1063, column: 3, scope: !2900)
!2911 = distinct !DISubprogram(name: "quote", scope: !506, file: !506, line: 1067, type: !2912, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!115, !115}
!2914 = !{!2915}
!2915 = !DILocalVariable(name: "arg", arg: 1, scope: !2911, file: !506, line: 1067, type: !115)
!2916 = !DILocation(line: 0, scope: !2911)
!2917 = !DILocation(line: 0, scope: !2900, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 1069, column: 10, scope: !2911)
!2919 = !DILocation(line: 0, scope: !2879, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 1063, column: 10, scope: !2900, inlinedAt: !2918)
!2921 = !DILocation(line: 1051, column: 10, scope: !2879, inlinedAt: !2920)
!2922 = !DILocation(line: 1069, column: 3, scope: !2911)
!2923 = distinct !DISubprogram(name: "version_etc_arn", scope: !605, file: !605, line: 61, type: !2924, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !2961)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{null, !2926, !115, !115, !115, !2960, !112}
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !2928)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !2929)
!2929 = !{!2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2928, file: !173, line: 51, baseType: !68, size: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2928, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2928, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2928, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2928, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2928, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2928, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2928, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2928, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2928, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2928, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2928, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2928, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2928, file: !173, line: 70, baseType: !2944, size: 64, offset: 832)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2928, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2928, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2928, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2928, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2928, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2928, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2928, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2928, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2928, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2928, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2928, file: !173, line: 93, baseType: !2944, size: 64, offset: 1344)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2928, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2928, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2928, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2928, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!2961 = !{!2962, !2963, !2964, !2965, !2966, !2967}
!2962 = !DILocalVariable(name: "stream", arg: 1, scope: !2923, file: !605, line: 61, type: !2926)
!2963 = !DILocalVariable(name: "command_name", arg: 2, scope: !2923, file: !605, line: 62, type: !115)
!2964 = !DILocalVariable(name: "package", arg: 3, scope: !2923, file: !605, line: 62, type: !115)
!2965 = !DILocalVariable(name: "version", arg: 4, scope: !2923, file: !605, line: 63, type: !115)
!2966 = !DILocalVariable(name: "authors", arg: 5, scope: !2923, file: !605, line: 64, type: !2960)
!2967 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2923, file: !605, line: 64, type: !112)
!2968 = !DILocation(line: 0, scope: !2923)
!2969 = !DILocation(line: 66, column: 7, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2923, file: !605, line: 66, column: 7)
!2971 = !DILocation(line: 66, column: 7, scope: !2923)
!2972 = !DILocation(line: 67, column: 5, scope: !2970)
!2973 = !DILocation(line: 69, column: 5, scope: !2970)
!2974 = !DILocation(line: 83, column: 3, scope: !2923)
!2975 = !DILocation(line: 85, column: 3, scope: !2923)
!2976 = !DILocation(line: 88, column: 3, scope: !2923)
!2977 = !DILocation(line: 95, column: 3, scope: !2923)
!2978 = !DILocation(line: 97, column: 3, scope: !2923)
!2979 = !DILocation(line: 105, column: 7, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2923, file: !605, line: 98, column: 5)
!2981 = !DILocation(line: 106, column: 7, scope: !2980)
!2982 = !DILocation(line: 109, column: 7, scope: !2980)
!2983 = !DILocation(line: 110, column: 7, scope: !2980)
!2984 = !DILocation(line: 113, column: 7, scope: !2980)
!2985 = !DILocation(line: 115, column: 7, scope: !2980)
!2986 = !DILocation(line: 120, column: 7, scope: !2980)
!2987 = !DILocation(line: 122, column: 7, scope: !2980)
!2988 = !DILocation(line: 127, column: 7, scope: !2980)
!2989 = !DILocation(line: 129, column: 7, scope: !2980)
!2990 = !DILocation(line: 134, column: 7, scope: !2980)
!2991 = !DILocation(line: 137, column: 7, scope: !2980)
!2992 = !DILocation(line: 142, column: 7, scope: !2980)
!2993 = !DILocation(line: 145, column: 7, scope: !2980)
!2994 = !DILocation(line: 150, column: 7, scope: !2980)
!2995 = !DILocation(line: 154, column: 7, scope: !2980)
!2996 = !DILocation(line: 159, column: 7, scope: !2980)
!2997 = !DILocation(line: 163, column: 7, scope: !2980)
!2998 = !DILocation(line: 170, column: 7, scope: !2980)
!2999 = !DILocation(line: 174, column: 7, scope: !2980)
!3000 = !DILocation(line: 176, column: 1, scope: !2923)
!3001 = distinct !DISubprogram(name: "version_etc_ar", scope: !605, file: !605, line: 183, type: !3002, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{null, !2926, !115, !115, !115, !2960}
!3004 = !{!3005, !3006, !3007, !3008, !3009, !3010}
!3005 = !DILocalVariable(name: "stream", arg: 1, scope: !3001, file: !605, line: 183, type: !2926)
!3006 = !DILocalVariable(name: "command_name", arg: 2, scope: !3001, file: !605, line: 184, type: !115)
!3007 = !DILocalVariable(name: "package", arg: 3, scope: !3001, file: !605, line: 184, type: !115)
!3008 = !DILocalVariable(name: "version", arg: 4, scope: !3001, file: !605, line: 185, type: !115)
!3009 = !DILocalVariable(name: "authors", arg: 5, scope: !3001, file: !605, line: 185, type: !2960)
!3010 = !DILocalVariable(name: "n_authors", scope: !3001, file: !605, line: 187, type: !112)
!3011 = !DILocation(line: 0, scope: !3001)
!3012 = !DILocation(line: 189, column: 8, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3001, file: !605, line: 189, column: 3)
!3014 = !DILocation(line: 189, scope: !3013)
!3015 = !DILocation(line: 189, column: 23, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3013, file: !605, line: 189, column: 3)
!3017 = !DILocation(line: 189, column: 3, scope: !3013)
!3018 = !DILocation(line: 189, column: 52, scope: !3016)
!3019 = distinct !{!3019, !3017, !3020, !916}
!3020 = !DILocation(line: 190, column: 5, scope: !3013)
!3021 = !DILocation(line: 191, column: 3, scope: !3001)
!3022 = !DILocation(line: 192, column: 1, scope: !3001)
!3023 = distinct !DISubprogram(name: "version_etc_va", scope: !605, file: !605, line: 199, type: !3024, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3034)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{null, !2926, !115, !115, !115, !3026}
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3028)
!3028 = !{!3029, !3031, !3032, !3033}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3027, file: !3030, line: 192, baseType: !73, size: 32)
!3030 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3027, file: !3030, line: 192, baseType: !73, size: 32, offset: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3027, file: !3030, line: 192, baseType: !110, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3027, file: !3030, line: 192, baseType: !110, size: 64, offset: 128)
!3034 = !{!3035, !3036, !3037, !3038, !3039, !3040, !3041}
!3035 = !DILocalVariable(name: "stream", arg: 1, scope: !3023, file: !605, line: 199, type: !2926)
!3036 = !DILocalVariable(name: "command_name", arg: 2, scope: !3023, file: !605, line: 200, type: !115)
!3037 = !DILocalVariable(name: "package", arg: 3, scope: !3023, file: !605, line: 200, type: !115)
!3038 = !DILocalVariable(name: "version", arg: 4, scope: !3023, file: !605, line: 201, type: !115)
!3039 = !DILocalVariable(name: "authors", arg: 5, scope: !3023, file: !605, line: 201, type: !3026)
!3040 = !DILocalVariable(name: "n_authors", scope: !3023, file: !605, line: 203, type: !112)
!3041 = !DILocalVariable(name: "authtab", scope: !3023, file: !605, line: 204, type: !3042)
!3042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 640, elements: !50)
!3043 = !DILocation(line: 0, scope: !3023)
!3044 = !DILocation(line: 204, column: 3, scope: !3023)
!3045 = !DILocation(line: 204, column: 15, scope: !3023)
!3046 = !DILocation(line: 208, column: 35, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !605, line: 206, column: 3)
!3048 = distinct !DILexicalBlock(scope: !3023, file: !605, line: 206, column: 3)
!3049 = !DILocation(line: 208, column: 33, scope: !3047)
!3050 = !DILocation(line: 208, column: 67, scope: !3047)
!3051 = !DILocation(line: 206, column: 3, scope: !3048)
!3052 = !DILocation(line: 208, column: 14, scope: !3047)
!3053 = !DILocation(line: 0, scope: !3048)
!3054 = !DILocation(line: 211, column: 3, scope: !3023)
!3055 = !DILocation(line: 213, column: 1, scope: !3023)
!3056 = distinct !DISubprogram(name: "version_etc", scope: !605, file: !605, line: 230, type: !3057, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3059)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{null, !2926, !115, !115, !115, null}
!3059 = !{!3060, !3061, !3062, !3063, !3064}
!3060 = !DILocalVariable(name: "stream", arg: 1, scope: !3056, file: !605, line: 230, type: !2926)
!3061 = !DILocalVariable(name: "command_name", arg: 2, scope: !3056, file: !605, line: 231, type: !115)
!3062 = !DILocalVariable(name: "package", arg: 3, scope: !3056, file: !605, line: 231, type: !115)
!3063 = !DILocalVariable(name: "version", arg: 4, scope: !3056, file: !605, line: 232, type: !115)
!3064 = !DILocalVariable(name: "authors", scope: !3056, file: !605, line: 234, type: !3065)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !864, line: 52, baseType: !3066)
!3066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1376, line: 14, baseType: !3067)
!3067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3030, baseType: !3068)
!3068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3027, size: 192, elements: !45)
!3069 = !DILocation(line: 0, scope: !3056)
!3070 = !DILocation(line: 234, column: 3, scope: !3056)
!3071 = !DILocation(line: 234, column: 11, scope: !3056)
!3072 = !DILocation(line: 235, column: 3, scope: !3056)
!3073 = !DILocation(line: 236, column: 3, scope: !3056)
!3074 = !DILocation(line: 237, column: 3, scope: !3056)
!3075 = !DILocation(line: 238, column: 1, scope: !3056)
!3076 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !605, file: !605, line: 241, type: !443, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !853)
!3077 = !DILocation(line: 243, column: 3, scope: !3076)
!3078 = !DILocation(line: 248, column: 3, scope: !3076)
!3079 = !DILocation(line: 254, column: 3, scope: !3076)
!3080 = !DILocation(line: 259, column: 3, scope: !3076)
!3081 = !DILocation(line: 261, column: 1, scope: !3076)
!3082 = distinct !DISubprogram(name: "xnrealloc", scope: !3083, file: !3083, line: 147, type: !3084, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3086)
!3083 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!110, !110, !112, !112}
!3086 = !{!3087, !3088, !3089}
!3087 = !DILocalVariable(name: "p", arg: 1, scope: !3082, file: !3083, line: 147, type: !110)
!3088 = !DILocalVariable(name: "n", arg: 2, scope: !3082, file: !3083, line: 147, type: !112)
!3089 = !DILocalVariable(name: "s", arg: 3, scope: !3082, file: !3083, line: 147, type: !112)
!3090 = !DILocation(line: 0, scope: !3082)
!3091 = !DILocalVariable(name: "p", arg: 1, scope: !3092, file: !734, line: 83, type: !110)
!3092 = distinct !DISubprogram(name: "xreallocarray", scope: !734, file: !734, line: 83, type: !3084, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3093)
!3093 = !{!3091, !3094, !3095}
!3094 = !DILocalVariable(name: "n", arg: 2, scope: !3092, file: !734, line: 83, type: !112)
!3095 = !DILocalVariable(name: "s", arg: 3, scope: !3092, file: !734, line: 83, type: !112)
!3096 = !DILocation(line: 0, scope: !3092, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 149, column: 10, scope: !3082)
!3098 = !DILocation(line: 85, column: 25, scope: !3092, inlinedAt: !3097)
!3099 = !DILocalVariable(name: "p", arg: 1, scope: !3100, file: !734, line: 37, type: !110)
!3100 = distinct !DISubprogram(name: "check_nonnull", scope: !734, file: !734, line: 37, type: !3101, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!110, !110}
!3103 = !{!3099}
!3104 = !DILocation(line: 0, scope: !3100, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 85, column: 10, scope: !3092, inlinedAt: !3097)
!3106 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3105)
!3107 = distinct !DILexicalBlock(scope: !3100, file: !734, line: 39, column: 7)
!3108 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3105)
!3109 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3105)
!3110 = !DILocation(line: 149, column: 3, scope: !3082)
!3111 = !DILocation(line: 0, scope: !3092)
!3112 = !DILocation(line: 85, column: 25, scope: !3092)
!3113 = !DILocation(line: 0, scope: !3100, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 85, column: 10, scope: !3092)
!3115 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3114)
!3116 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3114)
!3117 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3114)
!3118 = !DILocation(line: 85, column: 3, scope: !3092)
!3119 = distinct !DISubprogram(name: "xmalloc", scope: !734, file: !734, line: 47, type: !3120, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!110, !112}
!3122 = !{!3123}
!3123 = !DILocalVariable(name: "s", arg: 1, scope: !3119, file: !734, line: 47, type: !112)
!3124 = !DILocation(line: 0, scope: !3119)
!3125 = !DILocation(line: 49, column: 25, scope: !3119)
!3126 = !DILocation(line: 0, scope: !3100, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 49, column: 10, scope: !3119)
!3128 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3127)
!3129 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3127)
!3130 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3127)
!3131 = !DILocation(line: 49, column: 3, scope: !3119)
!3132 = !DISubprogram(name: "malloc", scope: !994, file: !994, line: 540, type: !3120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3133 = distinct !DISubprogram(name: "ximalloc", scope: !734, file: !734, line: 53, type: !3134, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!110, !753}
!3136 = !{!3137}
!3137 = !DILocalVariable(name: "s", arg: 1, scope: !3133, file: !734, line: 53, type: !753)
!3138 = !DILocation(line: 0, scope: !3133)
!3139 = !DILocalVariable(name: "s", arg: 1, scope: !3140, file: !3141, line: 55, type: !753)
!3140 = distinct !DISubprogram(name: "imalloc", scope: !3141, file: !3141, line: 55, type: !3134, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3142)
!3141 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3142 = !{!3139}
!3143 = !DILocation(line: 0, scope: !3140, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 55, column: 25, scope: !3133)
!3145 = !DILocation(line: 57, column: 26, scope: !3140, inlinedAt: !3144)
!3146 = !DILocation(line: 0, scope: !3100, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 55, column: 10, scope: !3133)
!3148 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3147)
!3149 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3147)
!3150 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3147)
!3151 = !DILocation(line: 55, column: 3, scope: !3133)
!3152 = distinct !DISubprogram(name: "xcharalloc", scope: !734, file: !734, line: 59, type: !3153, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!109, !112}
!3155 = !{!3156}
!3156 = !DILocalVariable(name: "n", arg: 1, scope: !3152, file: !734, line: 59, type: !112)
!3157 = !DILocation(line: 0, scope: !3152)
!3158 = !DILocation(line: 0, scope: !3119, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 61, column: 10, scope: !3152)
!3160 = !DILocation(line: 49, column: 25, scope: !3119, inlinedAt: !3159)
!3161 = !DILocation(line: 0, scope: !3100, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 49, column: 10, scope: !3119, inlinedAt: !3159)
!3163 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3162)
!3164 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3162)
!3165 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3162)
!3166 = !DILocation(line: 61, column: 3, scope: !3152)
!3167 = distinct !DISubprogram(name: "xrealloc", scope: !734, file: !734, line: 68, type: !3168, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!110, !110, !112}
!3170 = !{!3171, !3172}
!3171 = !DILocalVariable(name: "p", arg: 1, scope: !3167, file: !734, line: 68, type: !110)
!3172 = !DILocalVariable(name: "s", arg: 2, scope: !3167, file: !734, line: 68, type: !112)
!3173 = !DILocation(line: 0, scope: !3167)
!3174 = !DILocalVariable(name: "ptr", arg: 1, scope: !3175, file: !3176, line: 2057, type: !110)
!3175 = distinct !DISubprogram(name: "rpl_realloc", scope: !3176, file: !3176, line: 2057, type: !3168, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3177)
!3176 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3177 = !{!3174, !3178}
!3178 = !DILocalVariable(name: "size", arg: 2, scope: !3175, file: !3176, line: 2057, type: !112)
!3179 = !DILocation(line: 0, scope: !3175, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 70, column: 25, scope: !3167)
!3181 = !DILocation(line: 2059, column: 24, scope: !3175, inlinedAt: !3180)
!3182 = !DILocation(line: 2059, column: 10, scope: !3175, inlinedAt: !3180)
!3183 = !DILocation(line: 0, scope: !3100, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 70, column: 10, scope: !3167)
!3185 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3184)
!3186 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3184)
!3187 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3184)
!3188 = !DILocation(line: 70, column: 3, scope: !3167)
!3189 = !DISubprogram(name: "realloc", scope: !994, file: !994, line: 551, type: !3168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3190 = distinct !DISubprogram(name: "xirealloc", scope: !734, file: !734, line: 74, type: !3191, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!110, !110, !753}
!3193 = !{!3194, !3195}
!3194 = !DILocalVariable(name: "p", arg: 1, scope: !3190, file: !734, line: 74, type: !110)
!3195 = !DILocalVariable(name: "s", arg: 2, scope: !3190, file: !734, line: 74, type: !753)
!3196 = !DILocation(line: 0, scope: !3190)
!3197 = !DILocalVariable(name: "p", arg: 1, scope: !3198, file: !3141, line: 66, type: !110)
!3198 = distinct !DISubprogram(name: "irealloc", scope: !3141, file: !3141, line: 66, type: !3191, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3199)
!3199 = !{!3197, !3200}
!3200 = !DILocalVariable(name: "s", arg: 2, scope: !3198, file: !3141, line: 66, type: !753)
!3201 = !DILocation(line: 0, scope: !3198, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 76, column: 25, scope: !3190)
!3203 = !DILocation(line: 0, scope: !3175, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 68, column: 26, scope: !3198, inlinedAt: !3202)
!3205 = !DILocation(line: 2059, column: 24, scope: !3175, inlinedAt: !3204)
!3206 = !DILocation(line: 2059, column: 10, scope: !3175, inlinedAt: !3204)
!3207 = !DILocation(line: 0, scope: !3100, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 76, column: 10, scope: !3190)
!3209 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3208)
!3210 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3208)
!3211 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3208)
!3212 = !DILocation(line: 76, column: 3, scope: !3190)
!3213 = distinct !DISubprogram(name: "xireallocarray", scope: !734, file: !734, line: 89, type: !3214, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!110, !110, !753, !753}
!3216 = !{!3217, !3218, !3219}
!3217 = !DILocalVariable(name: "p", arg: 1, scope: !3213, file: !734, line: 89, type: !110)
!3218 = !DILocalVariable(name: "n", arg: 2, scope: !3213, file: !734, line: 89, type: !753)
!3219 = !DILocalVariable(name: "s", arg: 3, scope: !3213, file: !734, line: 89, type: !753)
!3220 = !DILocation(line: 0, scope: !3213)
!3221 = !DILocalVariable(name: "p", arg: 1, scope: !3222, file: !3141, line: 98, type: !110)
!3222 = distinct !DISubprogram(name: "ireallocarray", scope: !3141, file: !3141, line: 98, type: !3214, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3223)
!3223 = !{!3221, !3224, !3225}
!3224 = !DILocalVariable(name: "n", arg: 2, scope: !3222, file: !3141, line: 98, type: !753)
!3225 = !DILocalVariable(name: "s", arg: 3, scope: !3222, file: !3141, line: 98, type: !753)
!3226 = !DILocation(line: 0, scope: !3222, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 91, column: 25, scope: !3213)
!3228 = !DILocation(line: 101, column: 13, scope: !3222, inlinedAt: !3227)
!3229 = !DILocation(line: 0, scope: !3100, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 91, column: 10, scope: !3213)
!3231 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3230)
!3232 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3230)
!3233 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3230)
!3234 = !DILocation(line: 91, column: 3, scope: !3213)
!3235 = distinct !DISubprogram(name: "xnmalloc", scope: !734, file: !734, line: 98, type: !3236, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3238)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!110, !112, !112}
!3238 = !{!3239, !3240}
!3239 = !DILocalVariable(name: "n", arg: 1, scope: !3235, file: !734, line: 98, type: !112)
!3240 = !DILocalVariable(name: "s", arg: 2, scope: !3235, file: !734, line: 98, type: !112)
!3241 = !DILocation(line: 0, scope: !3235)
!3242 = !DILocation(line: 0, scope: !3092, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 100, column: 10, scope: !3235)
!3244 = !DILocation(line: 85, column: 25, scope: !3092, inlinedAt: !3243)
!3245 = !DILocation(line: 0, scope: !3100, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 85, column: 10, scope: !3092, inlinedAt: !3243)
!3247 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3246)
!3248 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3246)
!3249 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3246)
!3250 = !DILocation(line: 100, column: 3, scope: !3235)
!3251 = distinct !DISubprogram(name: "xinmalloc", scope: !734, file: !734, line: 104, type: !3252, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3254)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!110, !753, !753}
!3254 = !{!3255, !3256}
!3255 = !DILocalVariable(name: "n", arg: 1, scope: !3251, file: !734, line: 104, type: !753)
!3256 = !DILocalVariable(name: "s", arg: 2, scope: !3251, file: !734, line: 104, type: !753)
!3257 = !DILocation(line: 0, scope: !3251)
!3258 = !DILocation(line: 0, scope: !3213, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 106, column: 10, scope: !3251)
!3260 = !DILocation(line: 0, scope: !3222, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 91, column: 25, scope: !3213, inlinedAt: !3259)
!3262 = !DILocation(line: 101, column: 13, scope: !3222, inlinedAt: !3261)
!3263 = !DILocation(line: 0, scope: !3100, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 91, column: 10, scope: !3213, inlinedAt: !3259)
!3265 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3264)
!3266 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3264)
!3267 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3264)
!3268 = !DILocation(line: 106, column: 3, scope: !3251)
!3269 = distinct !DISubprogram(name: "x2realloc", scope: !734, file: !734, line: 116, type: !3270, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3272)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!110, !110, !740}
!3272 = !{!3273, !3274}
!3273 = !DILocalVariable(name: "p", arg: 1, scope: !3269, file: !734, line: 116, type: !110)
!3274 = !DILocalVariable(name: "ps", arg: 2, scope: !3269, file: !734, line: 116, type: !740)
!3275 = !DILocation(line: 0, scope: !3269)
!3276 = !DILocation(line: 0, scope: !737, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 118, column: 10, scope: !3269)
!3278 = !DILocation(line: 178, column: 14, scope: !737, inlinedAt: !3277)
!3279 = !DILocation(line: 180, column: 9, scope: !3280, inlinedAt: !3277)
!3280 = distinct !DILexicalBlock(scope: !737, file: !734, line: 180, column: 7)
!3281 = !DILocation(line: 180, column: 7, scope: !737, inlinedAt: !3277)
!3282 = !DILocation(line: 182, column: 13, scope: !3283, inlinedAt: !3277)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !734, line: 182, column: 11)
!3284 = distinct !DILexicalBlock(scope: !3280, file: !734, line: 181, column: 5)
!3285 = !DILocation(line: 182, column: 11, scope: !3284, inlinedAt: !3277)
!3286 = !DILocation(line: 197, column: 11, scope: !3287, inlinedAt: !3277)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !734, line: 197, column: 11)
!3288 = distinct !DILexicalBlock(scope: !3280, file: !734, line: 195, column: 5)
!3289 = !DILocation(line: 197, column: 11, scope: !3288, inlinedAt: !3277)
!3290 = !DILocation(line: 198, column: 9, scope: !3287, inlinedAt: !3277)
!3291 = !DILocation(line: 0, scope: !3092, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 201, column: 7, scope: !737, inlinedAt: !3277)
!3293 = !DILocation(line: 85, column: 25, scope: !3092, inlinedAt: !3292)
!3294 = !DILocation(line: 0, scope: !3100, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 85, column: 10, scope: !3092, inlinedAt: !3292)
!3296 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3295)
!3297 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3295)
!3298 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3295)
!3299 = !DILocation(line: 202, column: 7, scope: !737, inlinedAt: !3277)
!3300 = !DILocation(line: 118, column: 3, scope: !3269)
!3301 = !DILocation(line: 0, scope: !737)
!3302 = !DILocation(line: 178, column: 14, scope: !737)
!3303 = !DILocation(line: 180, column: 9, scope: !3280)
!3304 = !DILocation(line: 180, column: 7, scope: !737)
!3305 = !DILocation(line: 182, column: 13, scope: !3283)
!3306 = !DILocation(line: 182, column: 11, scope: !3284)
!3307 = !DILocation(line: 190, column: 30, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3283, file: !734, line: 183, column: 9)
!3309 = !DILocation(line: 191, column: 16, scope: !3308)
!3310 = !DILocation(line: 191, column: 13, scope: !3308)
!3311 = !DILocation(line: 192, column: 9, scope: !3308)
!3312 = !DILocation(line: 197, column: 11, scope: !3287)
!3313 = !DILocation(line: 197, column: 11, scope: !3288)
!3314 = !DILocation(line: 198, column: 9, scope: !3287)
!3315 = !DILocation(line: 0, scope: !3092, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 201, column: 7, scope: !737)
!3317 = !DILocation(line: 85, column: 25, scope: !3092, inlinedAt: !3316)
!3318 = !DILocation(line: 0, scope: !3100, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 85, column: 10, scope: !3092, inlinedAt: !3316)
!3320 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3319)
!3321 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3319)
!3322 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3319)
!3323 = !DILocation(line: 202, column: 7, scope: !737)
!3324 = !DILocation(line: 203, column: 3, scope: !737)
!3325 = !DILocation(line: 0, scope: !749)
!3326 = !DILocation(line: 230, column: 14, scope: !749)
!3327 = !DILocation(line: 238, column: 7, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !749, file: !734, line: 238, column: 7)
!3329 = !DILocation(line: 238, column: 7, scope: !749)
!3330 = !DILocation(line: 240, column: 9, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !749, file: !734, line: 240, column: 7)
!3332 = !DILocation(line: 240, column: 18, scope: !3331)
!3333 = !DILocation(line: 253, column: 8, scope: !749)
!3334 = !DILocation(line: 258, column: 27, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !734, line: 257, column: 5)
!3336 = distinct !DILexicalBlock(scope: !749, file: !734, line: 256, column: 7)
!3337 = !DILocation(line: 259, column: 50, scope: !3335)
!3338 = !DILocation(line: 259, column: 32, scope: !3335)
!3339 = !DILocation(line: 260, column: 5, scope: !3335)
!3340 = !DILocation(line: 262, column: 9, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !749, file: !734, line: 262, column: 7)
!3342 = !DILocation(line: 262, column: 7, scope: !749)
!3343 = !DILocation(line: 263, column: 9, scope: !3341)
!3344 = !DILocation(line: 263, column: 5, scope: !3341)
!3345 = !DILocation(line: 264, column: 9, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !749, file: !734, line: 264, column: 7)
!3347 = !DILocation(line: 264, column: 14, scope: !3346)
!3348 = !DILocation(line: 265, column: 7, scope: !3346)
!3349 = !DILocation(line: 265, column: 11, scope: !3346)
!3350 = !DILocation(line: 266, column: 11, scope: !3346)
!3351 = !DILocation(line: 267, column: 14, scope: !3346)
!3352 = !DILocation(line: 264, column: 7, scope: !749)
!3353 = !DILocation(line: 268, column: 5, scope: !3346)
!3354 = !DILocation(line: 0, scope: !3167, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 269, column: 8, scope: !749)
!3356 = !DILocation(line: 0, scope: !3175, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 70, column: 25, scope: !3167, inlinedAt: !3355)
!3358 = !DILocation(line: 2059, column: 24, scope: !3175, inlinedAt: !3357)
!3359 = !DILocation(line: 2059, column: 10, scope: !3175, inlinedAt: !3357)
!3360 = !DILocation(line: 0, scope: !3100, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 70, column: 10, scope: !3167, inlinedAt: !3355)
!3362 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3361)
!3363 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3361)
!3364 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3361)
!3365 = !DILocation(line: 270, column: 7, scope: !749)
!3366 = !DILocation(line: 271, column: 3, scope: !749)
!3367 = distinct !DISubprogram(name: "xzalloc", scope: !734, file: !734, line: 279, type: !3120, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3368)
!3368 = !{!3369}
!3369 = !DILocalVariable(name: "s", arg: 1, scope: !3367, file: !734, line: 279, type: !112)
!3370 = !DILocation(line: 0, scope: !3367)
!3371 = !DILocalVariable(name: "n", arg: 1, scope: !3372, file: !734, line: 294, type: !112)
!3372 = distinct !DISubprogram(name: "xcalloc", scope: !734, file: !734, line: 294, type: !3236, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3373)
!3373 = !{!3371, !3374}
!3374 = !DILocalVariable(name: "s", arg: 2, scope: !3372, file: !734, line: 294, type: !112)
!3375 = !DILocation(line: 0, scope: !3372, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 281, column: 10, scope: !3367)
!3377 = !DILocation(line: 296, column: 25, scope: !3372, inlinedAt: !3376)
!3378 = !DILocation(line: 0, scope: !3100, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 296, column: 10, scope: !3372, inlinedAt: !3376)
!3380 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3379)
!3381 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3379)
!3382 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3379)
!3383 = !DILocation(line: 281, column: 3, scope: !3367)
!3384 = !DISubprogram(name: "calloc", scope: !994, file: !994, line: 543, type: !3236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3385 = !DILocation(line: 0, scope: !3372)
!3386 = !DILocation(line: 296, column: 25, scope: !3372)
!3387 = !DILocation(line: 0, scope: !3100, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 296, column: 10, scope: !3372)
!3389 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3388)
!3390 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3388)
!3391 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3388)
!3392 = !DILocation(line: 296, column: 3, scope: !3372)
!3393 = distinct !DISubprogram(name: "xizalloc", scope: !734, file: !734, line: 285, type: !3134, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3394)
!3394 = !{!3395}
!3395 = !DILocalVariable(name: "s", arg: 1, scope: !3393, file: !734, line: 285, type: !753)
!3396 = !DILocation(line: 0, scope: !3393)
!3397 = !DILocalVariable(name: "n", arg: 1, scope: !3398, file: !734, line: 300, type: !753)
!3398 = distinct !DISubprogram(name: "xicalloc", scope: !734, file: !734, line: 300, type: !3252, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3399)
!3399 = !{!3397, !3400}
!3400 = !DILocalVariable(name: "s", arg: 2, scope: !3398, file: !734, line: 300, type: !753)
!3401 = !DILocation(line: 0, scope: !3398, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 287, column: 10, scope: !3393)
!3403 = !DILocalVariable(name: "n", arg: 1, scope: !3404, file: !3141, line: 77, type: !753)
!3404 = distinct !DISubprogram(name: "icalloc", scope: !3141, file: !3141, line: 77, type: !3252, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3405)
!3405 = !{!3403, !3406}
!3406 = !DILocalVariable(name: "s", arg: 2, scope: !3404, file: !3141, line: 77, type: !753)
!3407 = !DILocation(line: 0, scope: !3404, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 302, column: 25, scope: !3398, inlinedAt: !3402)
!3409 = !DILocation(line: 91, column: 10, scope: !3404, inlinedAt: !3408)
!3410 = !DILocation(line: 0, scope: !3100, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 302, column: 10, scope: !3398, inlinedAt: !3402)
!3412 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3411)
!3413 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3411)
!3414 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3411)
!3415 = !DILocation(line: 287, column: 3, scope: !3393)
!3416 = !DILocation(line: 0, scope: !3398)
!3417 = !DILocation(line: 0, scope: !3404, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 302, column: 25, scope: !3398)
!3419 = !DILocation(line: 91, column: 10, scope: !3404, inlinedAt: !3418)
!3420 = !DILocation(line: 0, scope: !3100, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 302, column: 10, scope: !3398)
!3422 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3421)
!3423 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3421)
!3424 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3421)
!3425 = !DILocation(line: 302, column: 3, scope: !3398)
!3426 = distinct !DISubprogram(name: "xmemdup", scope: !734, file: !734, line: 310, type: !3427, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!110, !1018, !112}
!3429 = !{!3430, !3431}
!3430 = !DILocalVariable(name: "p", arg: 1, scope: !3426, file: !734, line: 310, type: !1018)
!3431 = !DILocalVariable(name: "s", arg: 2, scope: !3426, file: !734, line: 310, type: !112)
!3432 = !DILocation(line: 0, scope: !3426)
!3433 = !DILocation(line: 0, scope: !3119, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 312, column: 18, scope: !3426)
!3435 = !DILocation(line: 49, column: 25, scope: !3119, inlinedAt: !3434)
!3436 = !DILocation(line: 0, scope: !3100, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 49, column: 10, scope: !3119, inlinedAt: !3434)
!3438 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3437)
!3439 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3437)
!3440 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3437)
!3441 = !DILocalVariable(name: "__dest", arg: 1, scope: !3442, file: !1594, line: 26, type: !3445)
!3442 = distinct !DISubprogram(name: "memcpy", scope: !1594, file: !1594, line: 26, type: !3443, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3446)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!110, !3445, !1017, !112}
!3445 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!3446 = !{!3441, !3447, !3448}
!3447 = !DILocalVariable(name: "__src", arg: 2, scope: !3442, file: !1594, line: 26, type: !1017)
!3448 = !DILocalVariable(name: "__len", arg: 3, scope: !3442, file: !1594, line: 26, type: !112)
!3449 = !DILocation(line: 0, scope: !3442, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 312, column: 10, scope: !3426)
!3451 = !DILocation(line: 29, column: 10, scope: !3442, inlinedAt: !3450)
!3452 = !DILocation(line: 312, column: 3, scope: !3426)
!3453 = distinct !DISubprogram(name: "ximemdup", scope: !734, file: !734, line: 316, type: !3454, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!110, !1018, !753}
!3456 = !{!3457, !3458}
!3457 = !DILocalVariable(name: "p", arg: 1, scope: !3453, file: !734, line: 316, type: !1018)
!3458 = !DILocalVariable(name: "s", arg: 2, scope: !3453, file: !734, line: 316, type: !753)
!3459 = !DILocation(line: 0, scope: !3453)
!3460 = !DILocation(line: 0, scope: !3133, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 318, column: 18, scope: !3453)
!3462 = !DILocation(line: 0, scope: !3140, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 55, column: 25, scope: !3133, inlinedAt: !3461)
!3464 = !DILocation(line: 57, column: 26, scope: !3140, inlinedAt: !3463)
!3465 = !DILocation(line: 0, scope: !3100, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 55, column: 10, scope: !3133, inlinedAt: !3461)
!3467 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3466)
!3468 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3466)
!3469 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3466)
!3470 = !DILocation(line: 0, scope: !3442, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 318, column: 10, scope: !3453)
!3472 = !DILocation(line: 29, column: 10, scope: !3442, inlinedAt: !3471)
!3473 = !DILocation(line: 318, column: 3, scope: !3453)
!3474 = distinct !DISubprogram(name: "ximemdup0", scope: !734, file: !734, line: 325, type: !3475, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!109, !1018, !753}
!3477 = !{!3478, !3479, !3480}
!3478 = !DILocalVariable(name: "p", arg: 1, scope: !3474, file: !734, line: 325, type: !1018)
!3479 = !DILocalVariable(name: "s", arg: 2, scope: !3474, file: !734, line: 325, type: !753)
!3480 = !DILocalVariable(name: "result", scope: !3474, file: !734, line: 327, type: !109)
!3481 = !DILocation(line: 0, scope: !3474)
!3482 = !DILocation(line: 327, column: 30, scope: !3474)
!3483 = !DILocation(line: 0, scope: !3133, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 327, column: 18, scope: !3474)
!3485 = !DILocation(line: 0, scope: !3140, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 55, column: 25, scope: !3133, inlinedAt: !3484)
!3487 = !DILocation(line: 57, column: 26, scope: !3140, inlinedAt: !3486)
!3488 = !DILocation(line: 0, scope: !3100, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 55, column: 10, scope: !3133, inlinedAt: !3484)
!3490 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3489)
!3491 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3489)
!3492 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3489)
!3493 = !DILocation(line: 328, column: 3, scope: !3474)
!3494 = !DILocation(line: 328, column: 13, scope: !3474)
!3495 = !DILocation(line: 0, scope: !3442, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 329, column: 10, scope: !3474)
!3497 = !DILocation(line: 29, column: 10, scope: !3442, inlinedAt: !3496)
!3498 = !DILocation(line: 329, column: 3, scope: !3474)
!3499 = distinct !DISubprogram(name: "xstrdup", scope: !734, file: !734, line: 335, type: !996, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3500)
!3500 = !{!3501}
!3501 = !DILocalVariable(name: "string", arg: 1, scope: !3499, file: !734, line: 335, type: !115)
!3502 = !DILocation(line: 0, scope: !3499)
!3503 = !DILocation(line: 337, column: 27, scope: !3499)
!3504 = !DILocation(line: 337, column: 43, scope: !3499)
!3505 = !DILocation(line: 0, scope: !3426, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 337, column: 10, scope: !3499)
!3507 = !DILocation(line: 0, scope: !3119, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 312, column: 18, scope: !3426, inlinedAt: !3506)
!3509 = !DILocation(line: 49, column: 25, scope: !3119, inlinedAt: !3508)
!3510 = !DILocation(line: 0, scope: !3100, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 49, column: 10, scope: !3119, inlinedAt: !3508)
!3512 = !DILocation(line: 39, column: 8, scope: !3107, inlinedAt: !3511)
!3513 = !DILocation(line: 39, column: 7, scope: !3100, inlinedAt: !3511)
!3514 = !DILocation(line: 40, column: 5, scope: !3107, inlinedAt: !3511)
!3515 = !DILocation(line: 0, scope: !3442, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 312, column: 10, scope: !3426, inlinedAt: !3506)
!3517 = !DILocation(line: 29, column: 10, scope: !3442, inlinedAt: !3516)
!3518 = !DILocation(line: 337, column: 3, scope: !3499)
!3519 = distinct !DISubprogram(name: "xalloc_die", scope: !698, file: !698, line: 32, type: !443, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !767, retainedNodes: !3520)
!3520 = !{!3521}
!3521 = !DILocalVariable(name: "__errstatus", scope: !3522, file: !698, line: 34, type: !3523)
!3522 = distinct !DILexicalBlock(scope: !3519, file: !698, line: 34, column: 3)
!3523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!3524 = !DILocation(line: 34, column: 3, scope: !3522)
!3525 = !DILocation(line: 0, scope: !3522)
!3526 = !DILocation(line: 40, column: 3, scope: !3519)
!3527 = distinct !DISubprogram(name: "close_stream", scope: !770, file: !770, line: 55, type: !3528, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3564)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!68, !3530}
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3532)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3533)
!3533 = !{!3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3532, file: !173, line: 51, baseType: !68, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3532, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3532, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3532, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3532, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3532, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3532, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3532, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3532, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3532, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3532, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3532, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3532, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3532, file: !173, line: 70, baseType: !3548, size: 64, offset: 832)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3532, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3532, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3532, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3532, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3532, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3532, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3532, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3532, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3532, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3532, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3532, file: !173, line: 93, baseType: !3548, size: 64, offset: 1344)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3532, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3532, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3532, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3532, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3564 = !{!3565, !3566, !3568, !3569}
!3565 = !DILocalVariable(name: "stream", arg: 1, scope: !3527, file: !770, line: 55, type: !3530)
!3566 = !DILocalVariable(name: "some_pending", scope: !3527, file: !770, line: 57, type: !3567)
!3567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!3568 = !DILocalVariable(name: "prev_fail", scope: !3527, file: !770, line: 58, type: !3567)
!3569 = !DILocalVariable(name: "fclose_fail", scope: !3527, file: !770, line: 59, type: !3567)
!3570 = !DILocation(line: 0, scope: !3527)
!3571 = !DILocation(line: 57, column: 30, scope: !3527)
!3572 = !DILocalVariable(name: "__stream", arg: 1, scope: !3573, file: !1332, line: 135, type: !3530)
!3573 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1332, file: !1332, line: 135, type: !3528, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3574)
!3574 = !{!3572}
!3575 = !DILocation(line: 0, scope: !3573, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 58, column: 27, scope: !3527)
!3577 = !DILocation(line: 137, column: 10, scope: !3573, inlinedAt: !3576)
!3578 = !{!1341, !870, i64 0}
!3579 = !DILocation(line: 58, column: 43, scope: !3527)
!3580 = !DILocation(line: 59, column: 29, scope: !3527)
!3581 = !DILocation(line: 59, column: 45, scope: !3527)
!3582 = !DILocation(line: 69, column: 17, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3527, file: !770, line: 69, column: 7)
!3584 = !DILocation(line: 57, column: 50, scope: !3527)
!3585 = !DILocation(line: 69, column: 33, scope: !3583)
!3586 = !DILocation(line: 69, column: 53, scope: !3583)
!3587 = !DILocation(line: 69, column: 59, scope: !3583)
!3588 = !DILocation(line: 69, column: 7, scope: !3527)
!3589 = !DILocation(line: 71, column: 11, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3583, file: !770, line: 70, column: 5)
!3591 = !DILocation(line: 72, column: 9, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3590, file: !770, line: 71, column: 11)
!3593 = !DILocation(line: 72, column: 15, scope: !3592)
!3594 = !DILocation(line: 77, column: 1, scope: !3527)
!3595 = !DISubprogram(name: "__fpending", scope: !3596, file: !3596, line: 75, type: !3597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3596 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!112, !3530}
!3599 = distinct !DISubprogram(name: "rpl_fclose", scope: !772, file: !772, line: 58, type: !3600, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3636)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!68, !3602}
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3604)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3605)
!3605 = !{!3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3604, file: !173, line: 51, baseType: !68, size: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3604, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3604, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3604, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3604, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3604, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3604, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3604, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3604, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3604, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3604, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3604, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3604, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3604, file: !173, line: 70, baseType: !3620, size: 64, offset: 832)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3604, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3604, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3604, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3604, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3604, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3604, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3604, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3604, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3604, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3604, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3604, file: !173, line: 93, baseType: !3620, size: 64, offset: 1344)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3604, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3604, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3604, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3604, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3636 = !{!3637, !3638, !3639, !3640}
!3637 = !DILocalVariable(name: "fp", arg: 1, scope: !3599, file: !772, line: 58, type: !3602)
!3638 = !DILocalVariable(name: "saved_errno", scope: !3599, file: !772, line: 60, type: !68)
!3639 = !DILocalVariable(name: "fd", scope: !3599, file: !772, line: 63, type: !68)
!3640 = !DILocalVariable(name: "result", scope: !3599, file: !772, line: 74, type: !68)
!3641 = !DILocation(line: 0, scope: !3599)
!3642 = !DILocation(line: 63, column: 12, scope: !3599)
!3643 = !DILocation(line: 64, column: 10, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3599, file: !772, line: 64, column: 7)
!3645 = !DILocation(line: 64, column: 7, scope: !3599)
!3646 = !DILocation(line: 65, column: 12, scope: !3644)
!3647 = !DILocation(line: 65, column: 5, scope: !3644)
!3648 = !DILocation(line: 70, column: 9, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3599, file: !772, line: 70, column: 7)
!3650 = !DILocation(line: 70, column: 23, scope: !3649)
!3651 = !DILocation(line: 70, column: 33, scope: !3649)
!3652 = !DILocation(line: 70, column: 26, scope: !3649)
!3653 = !DILocation(line: 70, column: 59, scope: !3649)
!3654 = !DILocation(line: 71, column: 7, scope: !3649)
!3655 = !DILocation(line: 71, column: 10, scope: !3649)
!3656 = !DILocation(line: 70, column: 7, scope: !3599)
!3657 = !DILocation(line: 100, column: 12, scope: !3599)
!3658 = !DILocation(line: 105, column: 7, scope: !3599)
!3659 = !DILocation(line: 72, column: 19, scope: !3649)
!3660 = !DILocation(line: 105, column: 19, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3599, file: !772, line: 105, column: 7)
!3662 = !DILocation(line: 107, column: 13, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3661, file: !772, line: 106, column: 5)
!3664 = !DILocation(line: 109, column: 5, scope: !3663)
!3665 = !DILocation(line: 112, column: 1, scope: !3599)
!3666 = !DISubprogram(name: "fileno", scope: !864, file: !864, line: 809, type: !3600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3667 = !DISubprogram(name: "fclose", scope: !864, file: !864, line: 178, type: !3600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3668 = !DISubprogram(name: "__freading", scope: !3596, file: !3596, line: 51, type: !3600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3669 = !DISubprogram(name: "lseek", scope: !1153, file: !1153, line: 339, type: !3670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!195, !68, !195, !68}
!3672 = distinct !DISubprogram(name: "rpl_fflush", scope: !774, file: !774, line: 130, type: !3673, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !3709)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!68, !3675}
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3677)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3677, file: !173, line: 51, baseType: !68, size: 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3677, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3677, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3677, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3677, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3677, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3677, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3677, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3677, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3677, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3677, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3677, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3677, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3677, file: !173, line: 70, baseType: !3693, size: 64, offset: 832)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3677, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3677, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3677, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3677, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3677, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3677, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3677, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3677, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3677, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3677, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3677, file: !173, line: 93, baseType: !3693, size: 64, offset: 1344)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3677, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3677, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3677, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3677, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3709 = !{!3710}
!3710 = !DILocalVariable(name: "stream", arg: 1, scope: !3672, file: !774, line: 130, type: !3675)
!3711 = !DILocation(line: 0, scope: !3672)
!3712 = !DILocation(line: 151, column: 14, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3672, file: !774, line: 151, column: 7)
!3714 = !DILocation(line: 151, column: 22, scope: !3713)
!3715 = !DILocation(line: 151, column: 27, scope: !3713)
!3716 = !DILocation(line: 151, column: 7, scope: !3672)
!3717 = !DILocation(line: 152, column: 12, scope: !3713)
!3718 = !DILocation(line: 152, column: 5, scope: !3713)
!3719 = !DILocalVariable(name: "fp", arg: 1, scope: !3720, file: !774, line: 42, type: !3675)
!3720 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !774, file: !774, line: 42, type: !3721, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{null, !3675}
!3723 = !{!3719}
!3724 = !DILocation(line: 0, scope: !3720, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 157, column: 3, scope: !3672)
!3726 = !DILocation(line: 44, column: 12, scope: !3727, inlinedAt: !3725)
!3727 = distinct !DILexicalBlock(scope: !3720, file: !774, line: 44, column: 7)
!3728 = !DILocation(line: 44, column: 19, scope: !3727, inlinedAt: !3725)
!3729 = !DILocation(line: 44, column: 7, scope: !3720, inlinedAt: !3725)
!3730 = !DILocation(line: 46, column: 5, scope: !3727, inlinedAt: !3725)
!3731 = !DILocation(line: 159, column: 10, scope: !3672)
!3732 = !DILocation(line: 159, column: 3, scope: !3672)
!3733 = !DILocation(line: 236, column: 1, scope: !3672)
!3734 = !DISubprogram(name: "fflush", scope: !864, file: !864, line: 230, type: !3673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3735 = distinct !DISubprogram(name: "rpl_fseeko", scope: !776, file: !776, line: 28, type: !3736, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3773)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!68, !3738, !3772, !68}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3740)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3741)
!3741 = !{!3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3740, file: !173, line: 51, baseType: !68, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3740, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3740, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3740, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3740, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3740, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3740, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3740, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3740, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3740, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3740, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3740, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3740, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3740, file: !173, line: 70, baseType: !3756, size: 64, offset: 832)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3740, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3740, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3740, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3740, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3740, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3740, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3740, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3740, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3740, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3740, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3740, file: !173, line: 93, baseType: !3756, size: 64, offset: 1344)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3740, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3740, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3740, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3740, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3772 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !864, line: 63, baseType: !195)
!3773 = !{!3774, !3775, !3776, !3777}
!3774 = !DILocalVariable(name: "fp", arg: 1, scope: !3735, file: !776, line: 28, type: !3738)
!3775 = !DILocalVariable(name: "offset", arg: 2, scope: !3735, file: !776, line: 28, type: !3772)
!3776 = !DILocalVariable(name: "whence", arg: 3, scope: !3735, file: !776, line: 28, type: !68)
!3777 = !DILocalVariable(name: "pos", scope: !3778, file: !776, line: 123, type: !3772)
!3778 = distinct !DILexicalBlock(scope: !3779, file: !776, line: 119, column: 5)
!3779 = distinct !DILexicalBlock(scope: !3735, file: !776, line: 55, column: 7)
!3780 = !DILocation(line: 0, scope: !3735)
!3781 = !DILocation(line: 55, column: 12, scope: !3779)
!3782 = !{!1341, !807, i64 16}
!3783 = !DILocation(line: 55, column: 33, scope: !3779)
!3784 = !{!1341, !807, i64 8}
!3785 = !DILocation(line: 55, column: 25, scope: !3779)
!3786 = !DILocation(line: 56, column: 7, scope: !3779)
!3787 = !DILocation(line: 56, column: 15, scope: !3779)
!3788 = !DILocation(line: 56, column: 37, scope: !3779)
!3789 = !{!1341, !807, i64 32}
!3790 = !DILocation(line: 56, column: 29, scope: !3779)
!3791 = !DILocation(line: 57, column: 7, scope: !3779)
!3792 = !DILocation(line: 57, column: 15, scope: !3779)
!3793 = !{!1341, !807, i64 72}
!3794 = !DILocation(line: 57, column: 29, scope: !3779)
!3795 = !DILocation(line: 55, column: 7, scope: !3735)
!3796 = !DILocation(line: 123, column: 26, scope: !3778)
!3797 = !DILocation(line: 123, column: 19, scope: !3778)
!3798 = !DILocation(line: 0, scope: !3778)
!3799 = !DILocation(line: 124, column: 15, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3778, file: !776, line: 124, column: 11)
!3801 = !DILocation(line: 124, column: 11, scope: !3778)
!3802 = !DILocation(line: 135, column: 19, scope: !3778)
!3803 = !DILocation(line: 136, column: 12, scope: !3778)
!3804 = !DILocation(line: 136, column: 20, scope: !3778)
!3805 = !{!1341, !1342, i64 144}
!3806 = !DILocation(line: 167, column: 7, scope: !3778)
!3807 = !DILocation(line: 169, column: 10, scope: !3735)
!3808 = !DILocation(line: 169, column: 3, scope: !3735)
!3809 = !DILocation(line: 170, column: 1, scope: !3735)
!3810 = !DISubprogram(name: "fseeko", scope: !864, file: !864, line: 736, type: !3811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!68, !3738, !195, !68}
!3813 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !705, file: !705, line: 100, type: !3814, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3817)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!112, !1612, !115, !112, !3816}
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!3817 = !{!3818, !3819, !3820, !3821, !3822}
!3818 = !DILocalVariable(name: "pwc", arg: 1, scope: !3813, file: !705, line: 100, type: !1612)
!3819 = !DILocalVariable(name: "s", arg: 2, scope: !3813, file: !705, line: 100, type: !115)
!3820 = !DILocalVariable(name: "n", arg: 3, scope: !3813, file: !705, line: 100, type: !112)
!3821 = !DILocalVariable(name: "ps", arg: 4, scope: !3813, file: !705, line: 100, type: !3816)
!3822 = !DILocalVariable(name: "ret", scope: !3813, file: !705, line: 130, type: !112)
!3823 = !DILocation(line: 0, scope: !3813)
!3824 = !DILocation(line: 105, column: 9, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3813, file: !705, line: 105, column: 7)
!3826 = !DILocation(line: 105, column: 7, scope: !3813)
!3827 = !DILocation(line: 117, column: 10, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3813, file: !705, line: 117, column: 7)
!3829 = !DILocation(line: 117, column: 7, scope: !3813)
!3830 = !DILocation(line: 130, column: 16, scope: !3813)
!3831 = !DILocation(line: 135, column: 11, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3813, file: !705, line: 135, column: 7)
!3833 = !DILocation(line: 135, column: 25, scope: !3832)
!3834 = !DILocation(line: 135, column: 30, scope: !3832)
!3835 = !DILocation(line: 135, column: 7, scope: !3813)
!3836 = !DILocalVariable(name: "ps", arg: 1, scope: !3837, file: !1585, line: 1135, type: !3816)
!3837 = distinct !DISubprogram(name: "mbszero", scope: !1585, file: !1585, line: 1135, type: !3838, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3840)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{null, !3816}
!3840 = !{!3836}
!3841 = !DILocation(line: 0, scope: !3837, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 137, column: 5, scope: !3832)
!3843 = !DILocalVariable(name: "__dest", arg: 1, scope: !3844, file: !1594, line: 57, type: !110)
!3844 = distinct !DISubprogram(name: "memset", scope: !1594, file: !1594, line: 57, type: !1595, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3845)
!3845 = !{!3843, !3846, !3847}
!3846 = !DILocalVariable(name: "__ch", arg: 2, scope: !3844, file: !1594, line: 57, type: !68)
!3847 = !DILocalVariable(name: "__len", arg: 3, scope: !3844, file: !1594, line: 57, type: !112)
!3848 = !DILocation(line: 0, scope: !3844, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 1137, column: 3, scope: !3837, inlinedAt: !3842)
!3850 = !DILocation(line: 59, column: 10, scope: !3844, inlinedAt: !3849)
!3851 = !DILocation(line: 137, column: 5, scope: !3832)
!3852 = !DILocation(line: 138, column: 11, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3813, file: !705, line: 138, column: 7)
!3854 = !DILocation(line: 138, column: 7, scope: !3813)
!3855 = !DILocation(line: 139, column: 5, scope: !3853)
!3856 = !DILocation(line: 143, column: 26, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3813, file: !705, line: 143, column: 7)
!3858 = !DILocation(line: 143, column: 41, scope: !3857)
!3859 = !DILocation(line: 143, column: 7, scope: !3813)
!3860 = !DILocation(line: 145, column: 15, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !705, line: 145, column: 11)
!3862 = distinct !DILexicalBlock(scope: !3857, file: !705, line: 144, column: 5)
!3863 = !DILocation(line: 145, column: 11, scope: !3862)
!3864 = !DILocation(line: 146, column: 32, scope: !3861)
!3865 = !DILocation(line: 146, column: 16, scope: !3861)
!3866 = !DILocation(line: 146, column: 14, scope: !3861)
!3867 = !DILocation(line: 146, column: 9, scope: !3861)
!3868 = !DILocation(line: 286, column: 1, scope: !3813)
!3869 = !DISubprogram(name: "mbsinit", scope: !3870, file: !3870, line: 293, type: !3871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !853)
!3870 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!68, !3873}
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!3875 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !778, file: !778, line: 27, type: !3084, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3876)
!3876 = !{!3877, !3878, !3879, !3880}
!3877 = !DILocalVariable(name: "ptr", arg: 1, scope: !3875, file: !778, line: 27, type: !110)
!3878 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3875, file: !778, line: 27, type: !112)
!3879 = !DILocalVariable(name: "size", arg: 3, scope: !3875, file: !778, line: 27, type: !112)
!3880 = !DILocalVariable(name: "nbytes", scope: !3875, file: !778, line: 29, type: !112)
!3881 = !DILocation(line: 0, scope: !3875)
!3882 = !DILocation(line: 30, column: 7, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3875, file: !778, line: 30, column: 7)
!3884 = !DILocalVariable(name: "ptr", arg: 1, scope: !3885, file: !3176, line: 2057, type: !110)
!3885 = distinct !DISubprogram(name: "rpl_realloc", scope: !3176, file: !3176, line: 2057, type: !3168, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3886)
!3886 = !{!3884, !3887}
!3887 = !DILocalVariable(name: "size", arg: 2, scope: !3885, file: !3176, line: 2057, type: !112)
!3888 = !DILocation(line: 0, scope: !3885, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 37, column: 10, scope: !3875)
!3890 = !DILocation(line: 2059, column: 24, scope: !3885, inlinedAt: !3889)
!3891 = !DILocation(line: 2059, column: 10, scope: !3885, inlinedAt: !3889)
!3892 = !DILocation(line: 37, column: 3, scope: !3875)
!3893 = !DILocation(line: 32, column: 7, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3883, file: !778, line: 31, column: 5)
!3895 = !DILocation(line: 32, column: 13, scope: !3894)
!3896 = !DILocation(line: 33, column: 7, scope: !3894)
!3897 = !DILocation(line: 38, column: 1, scope: !3875)
!3898 = distinct !DISubprogram(name: "hard_locale", scope: !723, file: !723, line: 28, type: !3899, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !3901)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!156, !68}
!3901 = !{!3902, !3903}
!3902 = !DILocalVariable(name: "category", arg: 1, scope: !3898, file: !723, line: 28, type: !68)
!3903 = !DILocalVariable(name: "locale", scope: !3898, file: !723, line: 30, type: !3904)
!3904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3905)
!3905 = !{!3906}
!3906 = !DISubrange(count: 257)
!3907 = !DILocation(line: 0, scope: !3898)
!3908 = !DILocation(line: 30, column: 3, scope: !3898)
!3909 = !DILocation(line: 30, column: 8, scope: !3898)
!3910 = !DILocation(line: 32, column: 7, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3898, file: !723, line: 32, column: 7)
!3912 = !DILocation(line: 32, column: 7, scope: !3898)
!3913 = !DILocalVariable(name: "__s1", arg: 1, scope: !3914, file: !882, line: 1359, type: !115)
!3914 = distinct !DISubprogram(name: "streq", scope: !882, file: !882, line: 1359, type: !883, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !3915)
!3915 = !{!3913, !3916}
!3916 = !DILocalVariable(name: "__s2", arg: 2, scope: !3914, file: !882, line: 1359, type: !115)
!3917 = !DILocation(line: 0, scope: !3914, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 35, column: 9, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3898, file: !723, line: 35, column: 7)
!3920 = !DILocation(line: 1361, column: 11, scope: !3914, inlinedAt: !3918)
!3921 = !DILocation(line: 35, column: 29, scope: !3919)
!3922 = !DILocation(line: 0, scope: !3914, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 35, column: 32, scope: !3919)
!3924 = !DILocation(line: 1361, column: 11, scope: !3914, inlinedAt: !3923)
!3925 = !DILocation(line: 1361, column: 10, scope: !3914, inlinedAt: !3923)
!3926 = !DILocation(line: 35, column: 7, scope: !3898)
!3927 = !DILocation(line: 46, column: 3, scope: !3898)
!3928 = !DILocation(line: 47, column: 1, scope: !3898)
!3929 = distinct !DISubprogram(name: "setlocale_null_r", scope: !785, file: !785, line: 154, type: !3930, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3932)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!68, !68, !109, !112}
!3932 = !{!3933, !3934, !3935}
!3933 = !DILocalVariable(name: "category", arg: 1, scope: !3929, file: !785, line: 154, type: !68)
!3934 = !DILocalVariable(name: "buf", arg: 2, scope: !3929, file: !785, line: 154, type: !109)
!3935 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3929, file: !785, line: 154, type: !112)
!3936 = !DILocation(line: 0, scope: !3929)
!3937 = !DILocation(line: 159, column: 10, scope: !3929)
!3938 = !DILocation(line: 159, column: 3, scope: !3929)
!3939 = distinct !DISubprogram(name: "setlocale_null", scope: !785, file: !785, line: 186, type: !3940, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3942)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!115, !68}
!3942 = !{!3943}
!3943 = !DILocalVariable(name: "category", arg: 1, scope: !3939, file: !785, line: 186, type: !68)
!3944 = !DILocation(line: 0, scope: !3939)
!3945 = !DILocation(line: 189, column: 10, scope: !3939)
!3946 = !DILocation(line: 189, column: 3, scope: !3939)
!3947 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !787, file: !787, line: 35, type: !3940, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !3948)
!3948 = !{!3949, !3950}
!3949 = !DILocalVariable(name: "category", arg: 1, scope: !3947, file: !787, line: 35, type: !68)
!3950 = !DILocalVariable(name: "result", scope: !3947, file: !787, line: 37, type: !115)
!3951 = !DILocation(line: 0, scope: !3947)
!3952 = !DILocation(line: 37, column: 24, scope: !3947)
!3953 = !DILocation(line: 62, column: 3, scope: !3947)
!3954 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !787, file: !787, line: 66, type: !3930, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !3955)
!3955 = !{!3956, !3957, !3958, !3959, !3960}
!3956 = !DILocalVariable(name: "category", arg: 1, scope: !3954, file: !787, line: 66, type: !68)
!3957 = !DILocalVariable(name: "buf", arg: 2, scope: !3954, file: !787, line: 66, type: !109)
!3958 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3954, file: !787, line: 66, type: !112)
!3959 = !DILocalVariable(name: "result", scope: !3954, file: !787, line: 111, type: !115)
!3960 = !DILocalVariable(name: "length", scope: !3961, file: !787, line: 125, type: !112)
!3961 = distinct !DILexicalBlock(scope: !3962, file: !787, line: 124, column: 5)
!3962 = distinct !DILexicalBlock(scope: !3954, file: !787, line: 113, column: 7)
!3963 = !DILocation(line: 0, scope: !3954)
!3964 = !DILocation(line: 0, scope: !3947, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 111, column: 24, scope: !3954)
!3966 = !DILocation(line: 37, column: 24, scope: !3947, inlinedAt: !3965)
!3967 = !DILocation(line: 113, column: 14, scope: !3962)
!3968 = !DILocation(line: 113, column: 7, scope: !3954)
!3969 = !DILocation(line: 116, column: 19, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !787, line: 116, column: 11)
!3971 = distinct !DILexicalBlock(scope: !3962, file: !787, line: 114, column: 5)
!3972 = !DILocation(line: 116, column: 11, scope: !3971)
!3973 = !DILocation(line: 120, column: 16, scope: !3970)
!3974 = !DILocation(line: 120, column: 9, scope: !3970)
!3975 = !DILocation(line: 125, column: 23, scope: !3961)
!3976 = !DILocation(line: 0, scope: !3961)
!3977 = !DILocation(line: 126, column: 18, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3961, file: !787, line: 126, column: 11)
!3979 = !DILocation(line: 126, column: 11, scope: !3961)
!3980 = !DILocation(line: 128, column: 39, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3978, file: !787, line: 127, column: 9)
!3982 = !DILocalVariable(name: "__dest", arg: 1, scope: !3983, file: !1594, line: 26, type: !3445)
!3983 = distinct !DISubprogram(name: "memcpy", scope: !1594, file: !1594, line: 26, type: !3443, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !3984)
!3984 = !{!3982, !3985, !3986}
!3985 = !DILocalVariable(name: "__src", arg: 2, scope: !3983, file: !1594, line: 26, type: !1017)
!3986 = !DILocalVariable(name: "__len", arg: 3, scope: !3983, file: !1594, line: 26, type: !112)
!3987 = !DILocation(line: 0, scope: !3983, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 128, column: 11, scope: !3981)
!3989 = !DILocation(line: 29, column: 10, scope: !3983, inlinedAt: !3988)
!3990 = !DILocation(line: 129, column: 11, scope: !3981)
!3991 = !DILocation(line: 133, column: 23, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !787, line: 133, column: 15)
!3993 = distinct !DILexicalBlock(scope: !3978, file: !787, line: 132, column: 9)
!3994 = !DILocation(line: 133, column: 15, scope: !3993)
!3995 = !DILocation(line: 138, column: 44, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3992, file: !787, line: 134, column: 13)
!3997 = !DILocation(line: 0, scope: !3983, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 138, column: 15, scope: !3996)
!3999 = !DILocation(line: 29, column: 10, scope: !3983, inlinedAt: !3998)
!4000 = !DILocation(line: 139, column: 15, scope: !3996)
!4001 = !DILocation(line: 139, column: 32, scope: !3996)
!4002 = !DILocation(line: 140, column: 13, scope: !3996)
!4003 = !DILocation(line: 0, scope: !3962)
!4004 = !DILocation(line: 145, column: 1, scope: !3954)
