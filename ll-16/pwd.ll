; ModuleID = 'src/pwd.bc'
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
%struct.file_name = type { ptr, i64, ptr }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [60 x i8] c"Print the full filename of the current working directory.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [81 x i8] c"  -L, --logical\0A         use PWD from environment, even if it contains symlinks\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [48 x i8] c"  -P, --physical\0A         resolve all symlinks\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [44 x i8] c"\0AIf no option is specified, -P is assumed.\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !57
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [3 x i8] c"LP\00", align 1, !dbg !72
@longopts = internal constant [5 x %struct.option] [%struct.option { ptr @.str.53, i32 0, ptr null, i32 76 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 80 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !77
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !131
@.str.16 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !136
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"ignoring non-option arguments\00", align 1, !dbg !141
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !146
@.str.18 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !229
@.str.19 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !234
@.str.20 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !236
@.str.21 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !238
@.str.35 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !278
@.str.36 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !280
@.str.37 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !282
@.str.38 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !287
@.str.39 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !292
@.str.40 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !297
@.str.41 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !302
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !304
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !306
@.str.44 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !308
@.str.48 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !319
@.str.49 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !321
@.str.50 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !326
@.str.51 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !331
@.str.52 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !336
@.str.53 = private unnamed_addr constant [8 x i8] c"logical\00", align 1, !dbg !341
@.str.54 = private unnamed_addr constant [9 x i8] c"physical\00", align 1, !dbg !343
@.str.55 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !348
@.str.56 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !350
@.str.57 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1, !dbg !352
@.str.58 = private unnamed_addr constant [3 x i8] c"/.\00", align 1, !dbg !354
@.str.59 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !356
@.str.60 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1, !dbg !358
@.str.61 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !363
@.str.62 = private unnamed_addr constant [18 x i8] c"failed to stat %s\00", align 1, !dbg !365
@.str.63 = private unnamed_addr constant [3 x i8] c"..\00", align 1, !dbg !370
@.str.64 = private unnamed_addr constant [25 x i8] c"cannot open directory %s\00", align 1, !dbg !372
@.str.65 = private unnamed_addr constant [22 x i8] c"failed to chdir to %s\00", align 1, !dbg !377
@.str.66 = private unnamed_addr constant [21 x i8] c"reading directory %s\00", align 1, !dbg !379
@.str.67 = private unnamed_addr constant [57 x i8] c"couldn't find directory entry in %s with matching i-node\00", align 1, !dbg !384
@.str.68 = private unnamed_addr constant [4 x i8] c"../\00", align 1, !dbg !389
@.str.22 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !401
@Version = dso_local local_unnamed_addr global ptr @.str.22, align 8, !dbg !404
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !408
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !421
@.str.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !413
@.str.1.26 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !415
@.str.2.27 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !417
@.str.3.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !419
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !423
@stderr = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !429
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !466
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !431
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !456
@.str.1.35 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !458
@.str.2.37 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !460
@.str.3.36 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !462
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !464
@.str.4.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !468
@.str.5.31 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !470
@.str.6.32 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !472
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !477
@.str.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !483
@.str.1.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !485
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !487
@.str.69 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !518
@.str.1.70 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !521
@.str.2.71 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !523
@.str.3.72 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !525
@.str.4.73 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !527
@.str.5.74 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !529
@.str.6.75 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !531
@.str.7.76 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !533
@.str.8.77 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !535
@.str.9.78 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !537
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.69, ptr @.str.1.70, ptr @.str.2.71, ptr @.str.3.72, ptr @.str.4.73, ptr @.str.5.74, ptr @.str.6.75, ptr @.str.7.76, ptr @.str.8.77, ptr @.str.9.78, ptr null], align 8, !dbg !539
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !550
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !564
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !602
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !609
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !566
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !611
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !554
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !571
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !573
@.str.12.82 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !575
@.str.13.80 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !577
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !579
@.str.91 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !617
@.str.92 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !620
@.str.1.93 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !623
@.str.2.94 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !625
@.str.3.95 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !627
@.str.4.96 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !629
@.str.5.97 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !631
@.str.6.98 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !636
@.str.7.99 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !641
@.str.8.100 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !643
@.str.9.101 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !645
@.str.10.102 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !650
@.str.11.103 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !655
@.str.12.104 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !660
@.str.13.105 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !662
@.str.14.106 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !664
@.str.15.107 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !666
@.str.16.108 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !671
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.113 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !673
@.str.18.114 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !675
@.str.19.115 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !677
@.str.20.116 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !679
@.str.21.117 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !681
@.str.22.118 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !683
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !685
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !690
@exit_failure = dso_local global i32 1, align 4, !dbg !698
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !704
@.str.1.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !707
@.str.2.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !709
@.str.148 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !711
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !714
@.str.153 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !729
@.str.1.154 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !732

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !808 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !812, metadata !DIExpression()), !dbg !813
  %2 = icmp eq i32 %0, 0, !dbg !814
  br i1 %2, label %8, label %3, !dbg !816

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !817, !tbaa !819
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !817
  %6 = load ptr, ptr @program_name, align 8, !dbg !817, !tbaa !819
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !817
  br label %38, !dbg !817

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !823
  %10 = load ptr, ptr @program_name, align 8, !dbg !823, !tbaa !819
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !823
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !825
  %13 = load ptr, ptr @stdout, align 8, !dbg !825, !tbaa !819
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !825
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !826
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !826
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !827
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !827
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !828
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !828
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !829
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !829
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !830
  %20 = load ptr, ptr @stdout, align 8, !dbg !830, !tbaa !819
  %21 = tail call i32 @fputs_unlocked(ptr noundef %19, ptr noundef %20), !dbg !830
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #37, !dbg !831
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %22, ptr noundef nonnull @.str.3) #37, !dbg !831
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !832, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata ptr poison, metadata !844, metadata !DIExpression()), !dbg !849
  tail call void @emit_bug_reporting_address() #37, !dbg !851
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !852
  call void @llvm.dbg.value(metadata ptr %24, metadata !847, metadata !DIExpression()), !dbg !849
  %25 = icmp eq ptr %24, null, !dbg !853
  br i1 %25, label %33, label %26, !dbg !855

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.48, i64 noundef 3) #38, !dbg !856
  %28 = icmp eq i32 %27, 0, !dbg !856
  br i1 %28, label %33, label %29, !dbg !857

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #37, !dbg !858
  %31 = load ptr, ptr @stdout, align 8, !dbg !858, !tbaa !819
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !858
  br label %33, !dbg !860

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !848, metadata !DIExpression()), !dbg !849
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #37, !dbg !861
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #37, !dbg !861
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #37, !dbg !862
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52) #37, !dbg !862
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !863
  unreachable, !dbg !863
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !864 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !869 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !875 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !878 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !148 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !152, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata ptr %0, metadata !153, metadata !DIExpression()), !dbg !881
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !882, !tbaa !883
  %3 = icmp eq i32 %2, -1, !dbg !885
  br i1 %3, label %4, label %16, !dbg !886

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.18) #37, !dbg !887
  call void @llvm.dbg.value(metadata ptr %5, metadata !154, metadata !DIExpression()), !dbg !888
  %6 = icmp eq ptr %5, null, !dbg !889
  br i1 %6, label %14, label %7, !dbg !890

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !891, !tbaa !892
  %9 = icmp eq i8 %8, 0, !dbg !891
  br i1 %9, label %14, label %10, !dbg !893

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !894, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !900, metadata !DIExpression()), !dbg !901
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.19) #38, !dbg !903
  %12 = icmp eq i32 %11, 0, !dbg !904
  %13 = zext i1 %12 to i32, !dbg !893
  br label %14, !dbg !893

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !905, !tbaa !883
  br label %16, !dbg !906

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !907
  %18 = icmp eq i32 %17, 0, !dbg !907
  br i1 %18, label %22, label %19, !dbg !909

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !910, !tbaa !819
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !910
  br label %122, !dbg !912

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !157, metadata !DIExpression()), !dbg !881
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.20) #38, !dbg !913
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !914
  call void @llvm.dbg.value(metadata ptr %24, metadata !159, metadata !DIExpression()), !dbg !881
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !915
  call void @llvm.dbg.value(metadata ptr %25, metadata !160, metadata !DIExpression()), !dbg !881
  %26 = icmp eq ptr %25, null, !dbg !916
  br i1 %26, label %54, label %27, !dbg !917

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !918
  br i1 %28, label %54, label %29, !dbg !919

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !161, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !920
  %30 = icmp ult ptr %24, %25, !dbg !921
  br i1 %30, label %31, label %52, !dbg !922

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !881
  %33 = load ptr, ptr %32, align 8, !tbaa !819
  br label %34, !dbg !922

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !161, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i64 %36, metadata !165, metadata !DIExpression()), !dbg !920
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !923
  call void @llvm.dbg.value(metadata ptr %37, metadata !161, metadata !DIExpression()), !dbg !920
  %38 = load i8, ptr %35, align 1, !dbg !923, !tbaa !892
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !923
  %41 = load i16, ptr %40, align 2, !dbg !923, !tbaa !924
  %42 = freeze i16 %41, !dbg !926
  %43 = lshr i16 %42, 13, !dbg !926
  %44 = and i16 %43, 1, !dbg !926
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !927
  call void @llvm.dbg.value(metadata i64 %46, metadata !165, metadata !DIExpression()), !dbg !920
  %47 = icmp ult ptr %37, %25, !dbg !921
  %48 = icmp ult i64 %46, 2, !dbg !928
  %49 = select i1 %47, i1 %48, i1 false, !dbg !928
  br i1 %49, label %34, label %50, !dbg !922, !llvm.loop !929

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !931
  br i1 %51, label %52, label %54, !dbg !933

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !933

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !881
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !157, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata ptr %55, metadata !160, metadata !DIExpression()), !dbg !881
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.21) #38, !dbg !934
  call void @llvm.dbg.value(metadata i64 %57, metadata !166, metadata !DIExpression()), !dbg !881
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !935
  call void @llvm.dbg.value(metadata ptr %58, metadata !167, metadata !DIExpression()), !dbg !881
  br label %59, !dbg !936

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !881
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !157, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.value(metadata ptr %60, metadata !167, metadata !DIExpression()), !dbg !881
  %62 = load i8, ptr %60, align 1, !dbg !937, !tbaa !892
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !938

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !939
  %65 = load i8, ptr %64, align 1, !dbg !942, !tbaa !892
  %66 = icmp ne i8 %65, 45, !dbg !943
  %67 = select i1 %66, i1 %61, i1 false, !dbg !944
  br label %68, !dbg !944

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !157, metadata !DIExpression()), !dbg !881
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !945
  %71 = load ptr, ptr %70, align 8, !dbg !945, !tbaa !819
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !945
  %74 = load i16, ptr %73, align 2, !dbg !945, !tbaa !924
  %75 = and i16 %74, 8192, !dbg !945
  %76 = icmp eq i16 %75, 0, !dbg !945
  br i1 %76, label %90, label %77, !dbg !947

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !948
  br i1 %78, label %92, label %79, !dbg !951

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !952
  %81 = load i8, ptr %80, align 1, !dbg !952, !tbaa !892
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !952
  %84 = load i16, ptr %83, align 2, !dbg !952, !tbaa !924
  %85 = and i16 %84, 8192, !dbg !952
  %86 = icmp eq i16 %85, 0, !dbg !952
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !953
  br i1 %89, label %90, label %92, !dbg !953

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !954
  call void @llvm.dbg.value(metadata ptr %91, metadata !167, metadata !DIExpression()), !dbg !881
  br label %59, !dbg !936, !llvm.loop !955

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !957
  %94 = load ptr, ptr @stdout, align 8, !dbg !957, !tbaa !819
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !957
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !894, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !894, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !894, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !894, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !894, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !894, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !894, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !894, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !894, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !894, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !224, metadata !DIExpression()), !dbg !881
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.35, i64 noundef 6) #38, !dbg !978
  %97 = icmp eq i32 %96, 0, !dbg !978
  br i1 %97, label %101, label %98, !dbg !980

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.36, i64 noundef 9) #38, !dbg !981
  %100 = icmp eq i32 %99, 0, !dbg !981
  br i1 %100, label %101, label %104, !dbg !982

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !983
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #37, !dbg !983
  br label %107, !dbg !985

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !986
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #37, !dbg !986
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !988, !tbaa !819
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %108), !dbg !988
  %110 = load ptr, ptr @stdout, align 8, !dbg !989, !tbaa !819
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %110), !dbg !989
  %112 = ptrtoint ptr %60 to i64, !dbg !990
  %113 = sub i64 %112, %93, !dbg !990
  %114 = load ptr, ptr @stdout, align 8, !dbg !990, !tbaa !819
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !990
  %116 = load ptr, ptr @stdout, align 8, !dbg !991, !tbaa !819
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %116), !dbg !991
  %118 = load ptr, ptr @stdout, align 8, !dbg !992, !tbaa !819
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %118), !dbg !992
  %120 = load ptr, ptr @stdout, align 8, !dbg !993, !tbaa !819
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !993
  br label %122, !dbg !994

122:                                              ; preds = %107, %19
  ret void, !dbg !994
}

; Function Attrs: nounwind
declare !dbg !995 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !999 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1003 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1005 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1008 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1011 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1014 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1017 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1023 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1024 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1030 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1035, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr %1, metadata !1036, metadata !DIExpression()), !dbg !1053
  %9 = tail call ptr @getenv(ptr noundef nonnull @.str.10) #37, !dbg !1054
  %10 = icmp ne ptr %9, null, !dbg !1055
  call void @llvm.dbg.value(metadata i1 %10, metadata !1037, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1053
  %11 = load ptr, ptr %1, align 8, !dbg !1056, !tbaa !819
  tail call void @set_program_name(ptr noundef %11) #37, !dbg !1057
  %12 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #37, !dbg !1058
  %13 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #37, !dbg !1059
  %14 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #37, !dbg !1060
  %15 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1061
  br label %16, !dbg !1062

16:                                               ; preds = %20, %2
  %17 = phi i1 [ %10, %2 ], [ %21, %20 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1037, metadata !DIExpression()), !dbg !1053
  %18 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1063
  call void @llvm.dbg.value(metadata i32 %18, metadata !1038, metadata !DIExpression()), !dbg !1064
  switch i32 %18, label %27 [
    i32 -1, label %28
    i32 76, label %20
    i32 80, label %19
    i32 -2, label %22
    i32 -3, label %23
  ], !dbg !1065

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 0, metadata !1037, metadata !DIExpression()), !dbg !1053
  br label %20, !dbg !1066

20:                                               ; preds = %19, %16
  %21 = phi i1 [ false, %19 ], [ true, %16 ]
  br label %16, !dbg !1053

22:                                               ; preds = %16
  tail call void @usage(i32 noundef 0) #41, !dbg !1068
  unreachable, !dbg !1068

23:                                               ; preds = %16
  %24 = load ptr, ptr @stdout, align 8, !dbg !1069, !tbaa !819
  %25 = load ptr, ptr @Version, align 8, !dbg !1069, !tbaa !819
  %26 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #37, !dbg !1069
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %25, ptr noundef %26, ptr noundef null) #37, !dbg !1069
  tail call void @exit(i32 noundef 0) #39, !dbg !1069
  unreachable, !dbg !1069

27:                                               ; preds = %16
  tail call void @usage(i32 noundef 1) #41, !dbg !1070
  unreachable, !dbg !1070

28:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 poison, metadata !1037, metadata !DIExpression()), !dbg !1053
  %29 = load i32, ptr @optind, align 4, !dbg !1071, !tbaa !883
  %30 = icmp slt i32 %29, %0, !dbg !1073
  br i1 %30, label %31, label %33, !dbg !1074

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #37, !dbg !1075
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %32) #37, !dbg !1075
  br label %33, !dbg !1075

33:                                               ; preds = %31, %28
  br i1 %17, label %34, label %73, !dbg !1076

34:                                               ; preds = %33
  %35 = tail call ptr @getenv(ptr noundef nonnull @.str.57) #37, !dbg !1077
  call void @llvm.dbg.value(metadata ptr %35, metadata !1082, metadata !DIExpression()), !dbg !1122
  %36 = icmp eq ptr %35, null, !dbg !1123
  br i1 %36, label %73, label %37, !dbg !1125

37:                                               ; preds = %34
  %38 = load i8, ptr %35, align 1, !dbg !1126, !tbaa !892
  %39 = icmp eq i8 %38, 47, !dbg !1127
  br i1 %39, label %40, label %73, !dbg !1128

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata ptr %35, metadata !1083, metadata !DIExpression()), !dbg !1122
  %41 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) @.str.58) #38, !dbg !1129
  call void @llvm.dbg.value(metadata ptr %41, metadata !1083, metadata !DIExpression()), !dbg !1122
  %42 = icmp eq ptr %41, null, !dbg !1130
  br i1 %42, label %54, label %43, !dbg !1130

43:                                               ; preds = %40, %50
  %44 = phi ptr [ %52, %50 ], [ %41, %40 ]
  %45 = getelementptr inbounds i8, ptr %44, i64 2, !dbg !1131
  %46 = load i8, ptr %45, align 1, !dbg !1131, !tbaa !892
  switch i8 %46, label %50 [
    i8 0, label %73
    i8 47, label %73
    i8 46, label %47
  ], !dbg !1134

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %44, i64 3, !dbg !1135
  %49 = load i8, ptr %48, align 1, !dbg !1135, !tbaa !892
  switch i8 %49, label %50 [
    i8 0, label %73
    i8 47, label %73
  ], !dbg !1136

50:                                               ; preds = %47, %43
  %51 = getelementptr inbounds i8, ptr %44, i64 1, !dbg !1137
  call void @llvm.dbg.value(metadata ptr %51, metadata !1083, metadata !DIExpression()), !dbg !1122
  %52 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(1) @.str.58) #38, !dbg !1129
  call void @llvm.dbg.value(metadata ptr %52, metadata !1083, metadata !DIExpression()), !dbg !1122
  %53 = icmp eq ptr %52, null, !dbg !1130
  br i1 %53, label %54, label %43, !dbg !1130, !llvm.loop !1138

54:                                               ; preds = %50, %40
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #37, !dbg !1140
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1084, metadata !DIExpression()), !dbg !1141
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #37, !dbg !1142
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1120, metadata !DIExpression()), !dbg !1143
  %55 = call i32 @stat(ptr noundef nonnull %35, ptr noundef nonnull %7) #37, !dbg !1144
  %56 = icmp eq i32 %55, 0, !dbg !1146
  br i1 %56, label %57, label %70, !dbg !1147

57:                                               ; preds = %54
  %58 = call i32 @stat(ptr noundef nonnull @.str.59, ptr noundef nonnull %8) #37, !dbg !1148
  %59 = icmp eq i32 %58, 0, !dbg !1149
  br i1 %59, label %60, label %70, !dbg !1150

60:                                               ; preds = %57
  call void @llvm.dbg.value(metadata ptr %7, metadata !1151, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata ptr %8, metadata !1159, metadata !DIExpression()), !dbg !1160
  %61 = load i64, ptr %7, align 8, !dbg !1162, !tbaa !1163
  %62 = load i64, ptr %8, align 8, !dbg !1162, !tbaa !1163
  %63 = icmp eq i64 %61, %62, !dbg !1162
  %64 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 1, !dbg !1162
  %65 = load i64, ptr %64, align 8, !dbg !1162, !tbaa !1167
  %66 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 1, !dbg !1162
  %67 = load i64, ptr %66, align 8, !dbg !1162, !tbaa !1167
  %68 = icmp eq i64 %65, %67, !dbg !1162
  %69 = and i1 %63, %68, !dbg !1162
  br i1 %69, label %71, label %70, !dbg !1168

70:                                               ; preds = %54, %57, %60
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #37, !dbg !1169
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #37, !dbg !1169
  call void @llvm.dbg.value(metadata ptr null, metadata !1040, metadata !DIExpression()), !dbg !1170
  br label %73, !dbg !1171

71:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #37, !dbg !1169
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #37, !dbg !1169
  call void @llvm.dbg.value(metadata ptr %35, metadata !1040, metadata !DIExpression()), !dbg !1170
  %72 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %35), !dbg !1172
  br label %232

73:                                               ; preds = %47, %47, %43, %43, %34, %37, %70, %33
  %74 = tail call noalias ptr @xgetcwd() #37, !dbg !1175
  call void @llvm.dbg.value(metadata ptr %74, metadata !1043, metadata !DIExpression()), !dbg !1053
  %75 = icmp eq ptr %74, null, !dbg !1176
  br i1 %75, label %78, label %76, !dbg !1177

76:                                               ; preds = %73
  %77 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %74), !dbg !1178
  tail call void @free(ptr noundef nonnull %74) #37, !dbg !1180
  br label %232, !dbg !1181

78:                                               ; preds = %73
  %79 = tail call noalias nonnull dereferenceable(24) ptr @xmalloc(i64 noundef 24) #42, !dbg !1182
  call void @llvm.dbg.value(metadata ptr %79, metadata !1187, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i32 8192, metadata !1188, metadata !DIExpression()), !dbg !1190
  %80 = getelementptr inbounds %struct.file_name, ptr %79, i64 0, i32 1, !dbg !1191
  store i64 8192, ptr %80, align 8, !dbg !1192, !tbaa !1193
  %81 = tail call noalias nonnull dereferenceable(8192) ptr @xmalloc(i64 noundef 8192) #42, !dbg !1195
  store ptr %81, ptr %79, align 8, !dbg !1196, !tbaa !1197
  %82 = getelementptr inbounds i8, ptr %81, i64 8191, !dbg !1198
  %83 = getelementptr inbounds %struct.file_name, ptr %79, i64 0, i32 2, !dbg !1199
  store ptr %82, ptr %83, align 8, !dbg !1200, !tbaa !1201
  store i8 0, ptr %82, align 1, !dbg !1202, !tbaa !892
  call void @llvm.dbg.value(metadata ptr %79, metadata !1044, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata ptr %79, metadata !1204, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 1, metadata !1209, metadata !DIExpression()), !dbg !1222
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #37, !dbg !1224
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1210, metadata !DIExpression()), !dbg !1225
  %84 = call ptr @get_root_dev_ino(ptr noundef nonnull %5) #37, !dbg !1226
  call void @llvm.dbg.value(metadata ptr %84, metadata !1219, metadata !DIExpression()), !dbg !1222
  %85 = icmp eq ptr %84, null, !dbg !1227
  br i1 %85, label %86, label %91, !dbg !1229

86:                                               ; preds = %78
  %87 = tail call ptr @__errno_location() #40, !dbg !1230
  %88 = load i32, ptr %87, align 4, !dbg !1230, !tbaa !883
  %89 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #37, !dbg !1230
  %90 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull @.str.61) #37, !dbg !1230
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %88, ptr noundef %89, ptr noundef %90) #37, !dbg !1230
  unreachable, !dbg !1230

91:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #37, !dbg !1231
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1221, metadata !DIExpression()), !dbg !1232
  %92 = call i32 @stat(ptr noundef nonnull @.str.59, ptr noundef nonnull %6) #37, !dbg !1233
  %93 = icmp slt i32 %92, 0, !dbg !1235
  br i1 %93, label %106, label %94, !dbg !1236

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.timespec, ptr %84, i64 0, i32 1
  %96 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 1
  call void @llvm.dbg.value(metadata i64 1, metadata !1209, metadata !DIExpression()), !dbg !1222
  %97 = load i64, ptr %6, align 8, !dbg !1237, !tbaa !1163
  %98 = load i64, ptr %95, align 8, !dbg !1237, !tbaa !1240
  %99 = load i64, ptr %96, align 8, !dbg !1237, !tbaa !1167
  %100 = load i64, ptr %84, align 8, !dbg !1237, !tbaa !1242
  %101 = icmp eq i64 %97, %98, !dbg !1237
  %102 = icmp eq i64 %99, %100, !dbg !1237
  %103 = and i1 %101, %102, !dbg !1237
  br i1 %103, label %222, label %104, !dbg !1243

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 1
  br label %111, !dbg !1243

106:                                              ; preds = %91
  %107 = tail call ptr @__errno_location() #40, !dbg !1244
  %108 = load i32, ptr %107, align 4, !dbg !1244, !tbaa !883
  %109 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #37, !dbg !1244
  %110 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull @.str.59) #37, !dbg !1244
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %108, ptr noundef %109, ptr noundef %110) #37, !dbg !1244
  unreachable, !dbg !1244

111:                                              ; preds = %214, %104
  %112 = phi i64 [ %99, %104 ], [ %217, %214 ]
  %113 = phi i64 [ %97, %104 ], [ %215, %214 ]
  %114 = phi i64 [ 1, %104 ], [ %115, %214 ]
  call void @llvm.dbg.value(metadata i64 %114, metadata !1209, metadata !DIExpression()), !dbg !1222
  %115 = add i64 %114, 1, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %115, metadata !1209, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata ptr %6, metadata !1246, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata ptr %79, metadata !1252, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %114, metadata !1253, metadata !DIExpression()), !dbg !1282
  %116 = call ptr @opendir(ptr noundef nonnull @.str.63), !dbg !1284
  call void @llvm.dbg.value(metadata ptr %116, metadata !1254, metadata !DIExpression()), !dbg !1282
  %117 = icmp eq ptr %116, null, !dbg !1285
  br i1 %117, label %118, label %124, !dbg !1287

118:                                              ; preds = %111
  %119 = tail call ptr @__errno_location() #40, !dbg !1288
  %120 = load i32, ptr %119, align 4, !dbg !1288, !tbaa !883
  %121 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1288
  %122 = call fastcc ptr @nth_parent(i64 noundef %114), !dbg !1288
  %123 = call ptr @quote(ptr noundef nonnull %122) #37, !dbg !1288
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %120, ptr noundef %121, ptr noundef %123) #37, !dbg !1288
  unreachable, !dbg !1288

124:                                              ; preds = %111
  %125 = call i32 @dirfd(ptr noundef nonnull %116) #37, !dbg !1289
  call void @llvm.dbg.value(metadata i32 %125, metadata !1259, metadata !DIExpression()), !dbg !1282
  %126 = icmp sgt i32 %125, -1, !dbg !1290
  br i1 %126, label %127, label %130, !dbg !1292

127:                                              ; preds = %124
  %128 = call i32 @fchdir(i32 noundef %125) #37, !dbg !1293
  %129 = icmp slt i32 %128, 0, !dbg !1294
  br i1 %129, label %133, label %139, !dbg !1295

130:                                              ; preds = %124
  %131 = call i32 @chdir(ptr noundef nonnull @.str.63) #37, !dbg !1296
  %132 = icmp slt i32 %131, 0, !dbg !1294
  br i1 %132, label %133, label %141, !dbg !1295

133:                                              ; preds = %130, %127
  %134 = tail call ptr @__errno_location() #40, !dbg !1297
  %135 = load i32, ptr %134, align 4, !dbg !1297, !tbaa !883
  %136 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #37, !dbg !1297
  %137 = call fastcc ptr @nth_parent(i64 noundef %114), !dbg !1297
  %138 = call ptr @quote(ptr noundef nonnull %137) #37, !dbg !1297
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %135, ptr noundef %136, ptr noundef %138) #37, !dbg !1297
  unreachable, !dbg !1297

139:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #37, !dbg !1298
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1260, metadata !DIExpression()), !dbg !1299
  %140 = call i32 @fstat(i32 noundef %125, ptr noundef nonnull %3) #37, !dbg !1300
  br label %143, !dbg !1302

141:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #37, !dbg !1298
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1260, metadata !DIExpression()), !dbg !1299
  %142 = call i32 @stat(ptr noundef nonnull @.str.59, ptr noundef nonnull %3) #37, !dbg !1303
  br label %143, !dbg !1302

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ], !dbg !1302
  %145 = icmp slt i32 %144, 0, !dbg !1304
  br i1 %145, label %146, label %152, !dbg !1305

146:                                              ; preds = %143
  %147 = tail call ptr @__errno_location() #40, !dbg !1306
  %148 = load i32, ptr %147, align 4, !dbg !1306, !tbaa !883
  %149 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #37, !dbg !1306
  %150 = call fastcc ptr @nth_parent(i64 noundef %114), !dbg !1306
  %151 = call ptr @quote(ptr noundef nonnull %150) #37, !dbg !1306
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %148, ptr noundef %149, ptr noundef %151) #37, !dbg !1306
  unreachable, !dbg !1306

152:                                              ; preds = %143
  %153 = load i64, ptr %3, align 8, !dbg !1307, !tbaa !1163
  %154 = icmp ne i64 %153, %113, !dbg !1308
  call void @llvm.dbg.value(metadata i1 %154, metadata !1261, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1282
  call void @llvm.dbg.value(metadata i8 0, metadata !1262, metadata !DIExpression()), !dbg !1282
  %155 = tail call ptr @__errno_location() #40, !dbg !1282
  br label %156, !dbg !1309

156:                                              ; preds = %196, %152
  call void @llvm.dbg.value(metadata ptr %116, metadata !1254, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i8 poison, metadata !1262, metadata !DIExpression()), !dbg !1282
  store i32 0, ptr %155, align 4, !dbg !1310, !tbaa !883
  call void @llvm.dbg.value(metadata ptr %116, metadata !1311, metadata !DIExpression()), !dbg !1318
  br label %157, !dbg !1320

157:                                              ; preds = %164, %156
  %158 = call ptr @readdir(ptr noundef nonnull %116) #37, !dbg !1321
  call void @llvm.dbg.value(metadata ptr %158, metadata !1316, metadata !DIExpression()), !dbg !1322
  %159 = icmp eq ptr %158, null, !dbg !1323
  br i1 %159, label %175, label %160, !dbg !1325

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.dirent, ptr %158, i64 0, i32 4, !dbg !1326
  call void @llvm.dbg.value(metadata ptr %161, metadata !1327, metadata !DIExpression()), !dbg !1335
  %162 = load i8, ptr %161, align 1, !dbg !1337, !tbaa !892
  %163 = icmp eq i8 %162, 46, !dbg !1338
  br i1 %163, label %164, label %180, !dbg !1339

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.dirent, ptr %158, i64 0, i32 4, i64 1, !dbg !1340
  %166 = load i8, ptr %165, align 1, !dbg !1340, !tbaa !892
  %167 = icmp eq i8 %166, 46, !dbg !1341
  %168 = select i1 %167, i64 2, i64 1, !dbg !1342
  %169 = getelementptr inbounds i8, ptr %161, i64 %168, !dbg !1343
  %170 = load i8, ptr %169, align 1, !dbg !1343, !tbaa !892
  call void @llvm.dbg.value(metadata i8 %170, metadata !1332, metadata !DIExpression()), !dbg !1344
  %171 = icmp eq i8 %170, 0, !dbg !1345
  %172 = icmp eq i8 %170, 47, !dbg !1346
  %173 = or i1 %171, %172, !dbg !1346
  %174 = freeze i1 %173
  br i1 %174, label %157, label %180, !dbg !1347

175:                                              ; preds = %157
  call void @llvm.dbg.value(metadata ptr undef, metadata !1263, metadata !DIExpression()), !dbg !1348
  %176 = load i32, ptr %155, align 4, !dbg !1349, !tbaa !883
  %177 = icmp eq i32 %176, 0, !dbg !1349
  %178 = call i32 @closedir(ptr noundef nonnull %116), !dbg !1282
  br i1 %177, label %197, label %179, !dbg !1350

179:                                              ; preds = %175
  call void @llvm.dbg.value(metadata i32 %176, metadata !1275, metadata !DIExpression()), !dbg !1351
  store i32 %176, ptr %155, align 4, !dbg !1352, !tbaa !883
  call void @llvm.dbg.value(metadata ptr null, metadata !1254, metadata !DIExpression()), !dbg !1282
  br label %205, !dbg !1353

180:                                              ; preds = %164, %160
  call void @llvm.dbg.value(metadata ptr %158, metadata !1263, metadata !DIExpression()), !dbg !1348
  %181 = load i64, ptr %158, align 8, !dbg !1355, !tbaa !1356
  call void @llvm.dbg.value(metadata i64 %181, metadata !1280, metadata !DIExpression()), !dbg !1348
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #37, !dbg !1358
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1281, metadata !DIExpression()), !dbg !1359
  %182 = icmp eq i64 %181, 0, !dbg !1360
  %183 = select i1 %182, i1 true, i1 %154, !dbg !1362
  br i1 %183, label %184, label %189, !dbg !1362

184:                                              ; preds = %180
  %185 = call i32 @lstat(ptr noundef nonnull %161, ptr noundef nonnull %4) #37, !dbg !1363
  %186 = icmp slt i32 %185, 0, !dbg !1366
  br i1 %186, label %196, label %187, !dbg !1367, !llvm.loop !1368

187:                                              ; preds = %184
  %188 = load i64, ptr %105, align 8, !dbg !1370, !tbaa !1167
  call void @llvm.dbg.value(metadata i64 %188, metadata !1280, metadata !DIExpression()), !dbg !1348
  br label %189, !dbg !1371

189:                                              ; preds = %187, %180
  %190 = phi i64 [ %188, %187 ], [ %181, %180 ], !dbg !1348
  call void @llvm.dbg.value(metadata i64 %190, metadata !1280, metadata !DIExpression()), !dbg !1348
  %191 = icmp eq i64 %190, %112, !dbg !1372
  br i1 %191, label %192, label %196, !dbg !1374, !llvm.loop !1375

192:                                              ; preds = %189
  %193 = load i64, ptr %4, align 8
  %194 = icmp ne i64 %193, %113
  %195 = select i1 %154, i1 %194, i1 false, !dbg !1376
  br i1 %195, label %196, label %199, !dbg !1376

196:                                              ; preds = %192, %189, %184
  call void @llvm.dbg.value(metadata i8 poison, metadata !1262, metadata !DIExpression()), !dbg !1282
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #37, !dbg !1369
  call void @llvm.dbg.value(metadata ptr %116, metadata !1254, metadata !DIExpression()), !dbg !1282
  br label %156

197:                                              ; preds = %175
  %198 = icmp eq i32 %178, 0, !dbg !1378
  br i1 %198, label %210, label %203, !dbg !1379

199:                                              ; preds = %192
  %200 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %161) #38, !dbg !1380
  call fastcc void @file_name_prepend(ptr noundef nonnull %79, ptr noundef nonnull %161, i64 noundef %200), !dbg !1382
  call void @llvm.dbg.value(metadata i8 poison, metadata !1262, metadata !DIExpression()), !dbg !1282
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #37, !dbg !1369
  call void @llvm.dbg.value(metadata ptr %116, metadata !1254, metadata !DIExpression()), !dbg !1282
  %201 = call i32 @closedir(ptr noundef nonnull %116), !dbg !1383
  %202 = icmp eq i32 %201, 0, !dbg !1378
  br i1 %202, label %214, label %203, !dbg !1379

203:                                              ; preds = %199, %197
  %204 = load i32, ptr %155, align 4, !dbg !1384, !tbaa !883
  br label %205, !dbg !1379

205:                                              ; preds = %203, %179
  %206 = phi i32 [ %204, %203 ], [ %176, %179 ], !dbg !1384
  %207 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #37, !dbg !1384
  %208 = call fastcc ptr @nth_parent(i64 noundef %114), !dbg !1384
  %209 = call ptr @quote(ptr noundef nonnull %208) #37, !dbg !1384
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %206, ptr noundef %207, ptr noundef %209) #37, !dbg !1384
  unreachable, !dbg !1384

210:                                              ; preds = %197
  %211 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #37, !dbg !1386
  %212 = call fastcc ptr @nth_parent(i64 noundef %114), !dbg !1386
  %213 = call ptr @quote(ptr noundef nonnull %212) #37, !dbg !1386
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %211, ptr noundef %213) #37, !dbg !1386
  unreachable, !dbg !1386

214:                                              ; preds = %199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 128, i1 false), !dbg !1388, !tbaa.struct !1389
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #37, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %115, metadata !1209, metadata !DIExpression()), !dbg !1222
  %215 = load i64, ptr %6, align 8, !dbg !1237, !tbaa !1163
  %216 = load i64, ptr %95, align 8, !dbg !1237, !tbaa !1240
  %217 = load i64, ptr %96, align 8, !dbg !1237, !tbaa !1167
  %218 = load i64, ptr %84, align 8, !dbg !1237, !tbaa !1242
  %219 = icmp eq i64 %215, %216, !dbg !1237
  %220 = icmp eq i64 %217, %218, !dbg !1237
  %221 = and i1 %219, %220, !dbg !1237
  br i1 %221, label %222, label %111, !dbg !1243, !llvm.loop !1392

222:                                              ; preds = %214, %94
  %223 = load ptr, ptr %83, align 8, !dbg !1395, !tbaa !1201
  %224 = load i8, ptr %223, align 1, !dbg !1397, !tbaa !892
  %225 = icmp eq i8 %224, 0, !dbg !1398
  br i1 %225, label %226, label %228, !dbg !1399

226:                                              ; preds = %222
  call fastcc void @file_name_prepend(ptr noundef nonnull %79, ptr noundef nonnull @.str.11, i64 noundef 0), !dbg !1400
  %227 = load ptr, ptr %83, align 8, !dbg !1401, !tbaa !1201
  br label %228, !dbg !1400

228:                                              ; preds = %222, %226
  %229 = phi ptr [ %223, %222 ], [ %227, %226 ], !dbg !1401
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #37, !dbg !1402
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #37, !dbg !1402
  %230 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %229), !dbg !1403
  call void @llvm.dbg.value(metadata ptr %79, metadata !1404, metadata !DIExpression()), !dbg !1407
  %231 = load ptr, ptr %79, align 8, !dbg !1409, !tbaa !1197
  call void @free(ptr noundef %231) #37, !dbg !1410
  call void @free(ptr noundef nonnull %79) #37, !dbg !1411
  br label %232

232:                                              ; preds = %71, %76, %228
  ret i32 0, !dbg !1412
}

; Function Attrs: nounwind
declare !dbg !1413 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1416 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1417 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1420 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1426 ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare !dbg !1427 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1432 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1435 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1438 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1442 noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @nth_parent(i64 noundef %0) unnamed_addr #10 !dbg !1445 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1449, metadata !DIExpression()), !dbg !1454
  %2 = tail call noalias nonnull ptr @xnmalloc(i64 noundef 3, i64 noundef %0) #43, !dbg !1455
  call void @llvm.dbg.value(metadata ptr %2, metadata !1450, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata ptr %2, metadata !1451, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 0, metadata !1452, metadata !DIExpression()), !dbg !1456
  %3 = icmp eq i64 %0, 0, !dbg !1457
  br i1 %3, label %4, label %7, !dbg !1459

4:                                                ; preds = %7, %1
  %5 = phi ptr [ %2, %1 ], [ %10, %7 ], !dbg !1454
  %6 = getelementptr inbounds i8, ptr %5, i64 -1, !dbg !1460
  store i8 0, ptr %6, align 1, !dbg !1461, !tbaa !892
  ret ptr %2, !dbg !1462

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %11, %7 ], [ 0, %1 ]
  %9 = phi ptr [ %10, %7 ], [ %2, %1 ]
  call void @llvm.dbg.value(metadata i64 %8, metadata !1452, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata ptr %9, metadata !1451, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata ptr %9, metadata !1463, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata ptr @.str.68, metadata !1470, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 3, metadata !1471, metadata !DIExpression()), !dbg !1472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %9, ptr noundef nonnull align 1 dereferenceable(3) @.str.68, i64 noundef 3, i1 noundef false) #37, !dbg !1475
  %10 = getelementptr inbounds i8, ptr %9, i64 3, !dbg !1476
  call void @llvm.dbg.value(metadata ptr %10, metadata !1451, metadata !DIExpression()), !dbg !1454
  %11 = add nuw i64 %8, 1, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %11, metadata !1452, metadata !DIExpression()), !dbg !1456
  %12 = icmp eq i64 %11, %0, !dbg !1457
  br i1 %12, label %4, label %7, !dbg !1459, !llvm.loop !1478
}

; Function Attrs: nounwind
declare !dbg !1480 i32 @dirfd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1483 i32 @fchdir(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1487 i32 @chdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1488 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !1491 ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1495 noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1496 noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1497 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @file_name_prepend(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #10 !dbg !1500 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1504, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata ptr %1, metadata !1505, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i64 %2, metadata !1506, metadata !DIExpression()), !dbg !1512
  %4 = getelementptr inbounds %struct.file_name, ptr %0, i64 0, i32 2, !dbg !1513
  %5 = load ptr, ptr %4, align 8, !dbg !1513, !tbaa !1201
  %6 = load ptr, ptr %0, align 8, !dbg !1514, !tbaa !1197
  %7 = ptrtoint ptr %5 to i64, !dbg !1515
  %8 = ptrtoint ptr %6 to i64, !dbg !1515
  %9 = sub i64 %7, %8, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %9, metadata !1507, metadata !DIExpression()), !dbg !1512
  %10 = add i64 %2, 1, !dbg !1516
  %11 = icmp ugt i64 %10, %9, !dbg !1517
  br i1 %11, label %12, label %25, !dbg !1518

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.file_name, ptr %0, i64 0, i32 1, !dbg !1519
  %14 = load i64, ptr %13, align 8, !dbg !1519, !tbaa !1193
  %15 = sub nsw i64 %14, %9, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %15, metadata !1508, metadata !DIExpression()), !dbg !1521
  %16 = sub i64 %10, %9, !dbg !1522
  %17 = tail call nonnull ptr @xpalloc(ptr noundef null, ptr noundef nonnull %13, i64 noundef %16, i64 noundef -1, i64 noundef 1) #37, !dbg !1523
  call void @llvm.dbg.value(metadata ptr %17, metadata !1511, metadata !DIExpression()), !dbg !1521
  %18 = load i64, ptr %13, align 8, !dbg !1524, !tbaa !1193
  %19 = getelementptr inbounds i8, ptr %17, i64 %18, !dbg !1525
  %20 = sub i64 0, %15, !dbg !1526
  %21 = getelementptr inbounds i8, ptr %19, i64 %20, !dbg !1526
  %22 = load ptr, ptr %4, align 8, !dbg !1527, !tbaa !1201
  call void @llvm.dbg.value(metadata ptr %21, metadata !1463, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr %22, metadata !1470, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i64 %15, metadata !1471, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %21, ptr noundef nonnull align 1 %22, i64 noundef %15, i1 noundef false) #37, !dbg !1530
  store ptr %21, ptr %4, align 8, !dbg !1531, !tbaa !1201
  %23 = load ptr, ptr %0, align 8, !dbg !1532, !tbaa !1197
  tail call void @free(ptr noundef %23) #37, !dbg !1533
  store ptr %17, ptr %0, align 8, !dbg !1534, !tbaa !1197
  %24 = load ptr, ptr %4, align 8, !dbg !1535, !tbaa !1201
  br label %25, !dbg !1536

25:                                               ; preds = %12, %3
  %26 = phi ptr [ %24, %12 ], [ %5, %3 ], !dbg !1535
  %27 = xor i64 %2, -1, !dbg !1535
  %28 = getelementptr inbounds i8, ptr %26, i64 %27, !dbg !1535
  store ptr %28, ptr %4, align 8, !dbg !1535, !tbaa !1201
  store i8 47, ptr %28, align 1, !dbg !1537, !tbaa !892
  %29 = load ptr, ptr %4, align 8, !dbg !1538, !tbaa !1201
  %30 = getelementptr inbounds i8, ptr %29, i64 1, !dbg !1539
  call void @llvm.dbg.value(metadata ptr %30, metadata !1463, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata ptr %1, metadata !1470, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i64 %2, metadata !1471, metadata !DIExpression()), !dbg !1540
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %30, ptr noundef nonnull align 1 %1, i64 noundef %2, i1 noundef false) #37, !dbg !1542
  ret void, !dbg !1543
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1544 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1546, metadata !DIExpression()), !dbg !1547
  store ptr %0, ptr @file_name, align 8, !dbg !1548, !tbaa !819
  ret void, !dbg !1549
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !1550 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1554, metadata !DIExpression()), !dbg !1555
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1556, !tbaa !1557
  ret void, !dbg !1559
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1560 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1565, !tbaa !819
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1566
  %3 = icmp eq i32 %2, 0, !dbg !1567
  br i1 %3, label %22, label %4, !dbg !1568

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1569, !tbaa !1557, !range !1570, !noundef !868
  %6 = icmp eq i8 %5, 0, !dbg !1569
  br i1 %6, label %11, label %7, !dbg !1571

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1572
  %9 = load i32, ptr %8, align 4, !dbg !1572, !tbaa !883
  %10 = icmp eq i32 %9, 32, !dbg !1573
  br i1 %10, label %22, label %11, !dbg !1574

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1.26, i32 noundef 5) #37, !dbg !1575
  call void @llvm.dbg.value(metadata ptr %12, metadata !1562, metadata !DIExpression()), !dbg !1576
  %13 = load ptr, ptr @file_name, align 8, !dbg !1577, !tbaa !819
  %14 = icmp eq ptr %13, null, !dbg !1577
  %15 = tail call ptr @__errno_location() #40, !dbg !1579
  %16 = load i32, ptr %15, align 4, !dbg !1579, !tbaa !883
  br i1 %14, label %19, label %17, !dbg !1580

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1581
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.27, ptr noundef %18, ptr noundef %12) #37, !dbg !1581
  br label %20, !dbg !1581

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.28, ptr noundef %12) #37, !dbg !1582
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1583, !tbaa !883
  tail call void @_exit(i32 noundef %21) #39, !dbg !1584
  unreachable, !dbg !1584

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1585, !tbaa !819
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1587
  %25 = icmp eq i32 %24, 0, !dbg !1588
  br i1 %25, label %28, label %26, !dbg !1589

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1590, !tbaa !883
  tail call void @_exit(i32 noundef %27) #39, !dbg !1591
  unreachable, !dbg !1591

28:                                               ; preds = %22
  ret void, !dbg !1592
}

; Function Attrs: noreturn
declare !dbg !1593 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1594 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1598, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 %1, metadata !1599, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata ptr %2, metadata !1600, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1601, metadata !DIExpression()), !dbg !1603
  tail call fastcc void @flush_stdout(), !dbg !1604
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1605, !tbaa !819
  %7 = icmp eq ptr %6, null, !dbg !1605
  br i1 %7, label %9, label %8, !dbg !1607

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1608
  br label %13, !dbg !1608

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1609, !tbaa !819
  %11 = tail call ptr @getprogname() #38, !dbg !1609
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %11) #37, !dbg !1609
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1611, !tbaa.struct !1612
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1611
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1611
  ret void, !dbg !1613
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1614 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1616, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i32 1, metadata !1618, metadata !DIExpression()), !dbg !1621
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1624
  %2 = icmp slt i32 %1, 0, !dbg !1625
  br i1 %2, label %6, label %3, !dbg !1626

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1627, !tbaa !819
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1627
  br label %6, !dbg !1627

6:                                                ; preds = %3, %0
  ret void, !dbg !1628
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1629 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1631, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i32 %1, metadata !1632, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata ptr %2, metadata !1633, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1634, metadata !DIExpression()), !dbg !1636
  %7 = load ptr, ptr @stderr, align 8, !dbg !1637, !tbaa !819
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1638, !noalias !1682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1686
  call void @llvm.dbg.value(metadata ptr %7, metadata !1678, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata ptr %2, metadata !1679, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1680, metadata !DIExpression()), !dbg !1688
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1638
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1638, !noalias !1682
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1689, !tbaa !883
  %10 = add i32 %9, 1, !dbg !1689
  store i32 %10, ptr @error_message_count, align 4, !dbg !1689, !tbaa !883
  %11 = icmp eq i32 %1, 0, !dbg !1690
  br i1 %11, label %21, label %12, !dbg !1692

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1693, metadata !DIExpression()), !dbg !1701
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1703
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1697, metadata !DIExpression()), !dbg !1704
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1705
  call void @llvm.dbg.value(metadata ptr %13, metadata !1696, metadata !DIExpression()), !dbg !1701
  %14 = icmp eq ptr %13, null, !dbg !1706
  br i1 %14, label %15, label %17, !dbg !1708

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.30, ptr noundef nonnull @.str.5.31, i32 noundef 5) #37, !dbg !1709
  call void @llvm.dbg.value(metadata ptr %16, metadata !1696, metadata !DIExpression()), !dbg !1701
  br label %17, !dbg !1710

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1701
  call void @llvm.dbg.value(metadata ptr %18, metadata !1696, metadata !DIExpression()), !dbg !1701
  %19 = load ptr, ptr @stderr, align 8, !dbg !1711, !tbaa !819
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.32, ptr noundef %18) #37, !dbg !1711
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1712
  br label %21, !dbg !1713

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1714, !tbaa !819
  call void @llvm.dbg.value(metadata i32 10, metadata !1715, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata ptr %22, metadata !1721, metadata !DIExpression()), !dbg !1722
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1724
  %24 = load ptr, ptr %23, align 8, !dbg !1724, !tbaa !1725
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1724
  %26 = load ptr, ptr %25, align 8, !dbg !1724, !tbaa !1727
  %27 = icmp ult ptr %24, %26, !dbg !1724
  br i1 %27, label %30, label %28, !dbg !1724, !prof !1728

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1724
  br label %32, !dbg !1724

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1724
  store ptr %31, ptr %23, align 8, !dbg !1724, !tbaa !1725
  store i8 10, ptr %24, align 1, !dbg !1724, !tbaa !892
  br label %32, !dbg !1724

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1729, !tbaa !819
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1729
  %35 = icmp eq i32 %0, 0, !dbg !1730
  br i1 %35, label %37, label %36, !dbg !1732

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !1733
  unreachable, !dbg !1733

37:                                               ; preds = %32
  ret void, !dbg !1734
}

declare !dbg !1735 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1738 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1741 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1744 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1747 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1751 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1755, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i32 %1, metadata !1756, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata ptr %2, metadata !1757, metadata !DIExpression()), !dbg !1759
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1760
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1758, metadata !DIExpression()), !dbg !1761
  call void @llvm.va_start(ptr nonnull %4), !dbg !1762
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1763, !tbaa.struct !1612
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #44, !dbg !1763
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1763
  call void @llvm.va_end(ptr nonnull %4), !dbg !1764
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1765
  ret void, !dbg !1765
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !433 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !450, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 %1, metadata !451, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata ptr %2, metadata !452, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 %3, metadata !453, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata ptr %4, metadata !454, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.declare(metadata ptr %5, metadata !455, metadata !DIExpression()), !dbg !1767
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1768, !tbaa !883
  %9 = icmp eq i32 %8, 0, !dbg !1768
  br i1 %9, label %24, label %10, !dbg !1770

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1771, !tbaa !883
  %12 = icmp eq i32 %11, %3, !dbg !1774
  br i1 %12, label %13, label %23, !dbg !1775

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1776, !tbaa !819
  %15 = icmp eq ptr %14, %2, !dbg !1777
  br i1 %15, label %37, label %16, !dbg !1778

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1779
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1780
  br i1 %19, label %20, label %23, !dbg !1780

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1781
  %22 = icmp eq i32 %21, 0, !dbg !1782
  br i1 %22, label %37, label %23, !dbg !1783

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1784, !tbaa !819
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1785, !tbaa !883
  br label %24, !dbg !1786

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1787
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1788, !tbaa !819
  %26 = icmp eq ptr %25, null, !dbg !1788
  br i1 %26, label %28, label %27, !dbg !1790

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1791
  br label %32, !dbg !1791

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1792, !tbaa !819
  %30 = tail call ptr @getprogname() #38, !dbg !1792
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.35, ptr noundef %30) #37, !dbg !1792
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1794, !tbaa !819
  %34 = icmp eq ptr %2, null, !dbg !1794
  %35 = select i1 %34, ptr @.str.3.36, ptr @.str.2.37, !dbg !1794
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1794
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1795, !tbaa.struct !1612
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1795
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1795
  br label %37, !dbg !1796

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1796
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1797 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1801, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i32 %1, metadata !1802, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %2, metadata !1803, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i32 %3, metadata !1804, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %4, metadata !1805, metadata !DIExpression()), !dbg !1807
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1808
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1806, metadata !DIExpression()), !dbg !1809
  call void @llvm.va_start(ptr nonnull %6), !dbg !1810
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1811, !tbaa.struct !1612
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #44, !dbg !1811
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1811
  call void @llvm.va_end(ptr nonnull %6), !dbg !1812
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1813
  ret void, !dbg !1813
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1814 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1815, !tbaa !819
  ret ptr %1, !dbg !1816
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1817 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1819, metadata !DIExpression()), !dbg !1822
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1823
  call void @llvm.dbg.value(metadata ptr %2, metadata !1820, metadata !DIExpression()), !dbg !1822
  %3 = icmp eq ptr %2, null, !dbg !1824
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1824
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1824
  call void @llvm.dbg.value(metadata ptr %5, metadata !1821, metadata !DIExpression()), !dbg !1822
  %6 = ptrtoint ptr %5 to i64, !dbg !1825
  %7 = ptrtoint ptr %0 to i64, !dbg !1825
  %8 = sub i64 %6, %7, !dbg !1825
  %9 = icmp sgt i64 %8, 6, !dbg !1827
  br i1 %9, label %10, label %19, !dbg !1828

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1829
  call void @llvm.dbg.value(metadata ptr %11, metadata !1830, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata ptr @.str.46, metadata !1835, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i64 7, metadata !1836, metadata !DIExpression()), !dbg !1837
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.46, i64 7), !dbg !1839
  %13 = icmp eq i32 %12, 0, !dbg !1840
  br i1 %13, label %14, label %19, !dbg !1841

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1819, metadata !DIExpression()), !dbg !1822
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.47, i64 noundef 3) #38, !dbg !1842
  %16 = icmp eq i32 %15, 0, !dbg !1845
  %17 = select i1 %16, i64 3, i64 0, !dbg !1846
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1846
  br label %19, !dbg !1846

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1822
  call void @llvm.dbg.value(metadata ptr %21, metadata !1821, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata ptr %20, metadata !1819, metadata !DIExpression()), !dbg !1822
  store ptr %20, ptr @program_name, align 8, !dbg !1847, !tbaa !819
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1848, !tbaa !819
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1849, !tbaa !819
  ret void, !dbg !1850
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1851 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !489 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !496, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata ptr %1, metadata !497, metadata !DIExpression()), !dbg !1852
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1853
  call void @llvm.dbg.value(metadata ptr %5, metadata !498, metadata !DIExpression()), !dbg !1852
  %6 = icmp eq ptr %5, %0, !dbg !1854
  br i1 %6, label %7, label %14, !dbg !1856

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1857
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1858
  call void @llvm.dbg.declare(metadata ptr %4, metadata !504, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata ptr %4, metadata !1860, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata ptr %4, metadata !1869, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i32 0, metadata !1874, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 8, metadata !1875, metadata !DIExpression()), !dbg !1876
  store i64 0, ptr %4, align 8, !dbg !1878
  call void @llvm.dbg.value(metadata ptr %3, metadata !499, metadata !DIExpression(DW_OP_deref)), !dbg !1852
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1879
  %9 = icmp eq i64 %8, 2, !dbg !1881
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !499, metadata !DIExpression()), !dbg !1852
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1882
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1852
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1883
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1883
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1852
  ret ptr %15, !dbg !1883
}

; Function Attrs: nounwind
declare !dbg !1884 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1890 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1895, metadata !DIExpression()), !dbg !1898
  %2 = tail call ptr @__errno_location() #40, !dbg !1899
  %3 = load i32, ptr %2, align 4, !dbg !1899, !tbaa !883
  call void @llvm.dbg.value(metadata i32 %3, metadata !1896, metadata !DIExpression()), !dbg !1898
  %4 = icmp eq ptr %0, null, !dbg !1900
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1900
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #45, !dbg !1901
  call void @llvm.dbg.value(metadata ptr %6, metadata !1897, metadata !DIExpression()), !dbg !1898
  store i32 %3, ptr %2, align 4, !dbg !1902, !tbaa !883
  ret ptr %6, !dbg !1903
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1904 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1910, metadata !DIExpression()), !dbg !1911
  %2 = icmp eq ptr %0, null, !dbg !1912
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1912
  %4 = load i32, ptr %3, align 8, !dbg !1913, !tbaa !1914
  ret i32 %4, !dbg !1916
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1917 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1921, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %1, metadata !1922, metadata !DIExpression()), !dbg !1923
  %3 = icmp eq ptr %0, null, !dbg !1924
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1924
  store i32 %1, ptr %4, align 8, !dbg !1925, !tbaa !1914
  ret void, !dbg !1926
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1927 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1931, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %1, metadata !1932, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i32 %2, metadata !1933, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 %1, metadata !1934, metadata !DIExpression()), !dbg !1939
  %4 = icmp eq ptr %0, null, !dbg !1940
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1940
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1941
  %7 = lshr i8 %1, 5, !dbg !1942
  %8 = zext i8 %7 to i64, !dbg !1942
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1943
  call void @llvm.dbg.value(metadata ptr %9, metadata !1935, metadata !DIExpression()), !dbg !1939
  %10 = and i8 %1, 31, !dbg !1944
  %11 = zext i8 %10 to i32, !dbg !1944
  call void @llvm.dbg.value(metadata i32 %11, metadata !1937, metadata !DIExpression()), !dbg !1939
  %12 = load i32, ptr %9, align 4, !dbg !1945, !tbaa !883
  %13 = lshr i32 %12, %11, !dbg !1946
  %14 = and i32 %13, 1, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %14, metadata !1938, metadata !DIExpression()), !dbg !1939
  %15 = xor i32 %13, %2, !dbg !1948
  %16 = and i32 %15, 1, !dbg !1948
  %17 = shl nuw i32 %16, %11, !dbg !1949
  %18 = xor i32 %17, %12, !dbg !1950
  store i32 %18, ptr %9, align 4, !dbg !1950, !tbaa !883
  ret i32 %14, !dbg !1951
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1952 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1956, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i32 %1, metadata !1957, metadata !DIExpression()), !dbg !1959
  %3 = icmp eq ptr %0, null, !dbg !1960
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1962
  call void @llvm.dbg.value(metadata ptr %4, metadata !1956, metadata !DIExpression()), !dbg !1959
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1963
  %6 = load i32, ptr %5, align 4, !dbg !1963, !tbaa !1964
  call void @llvm.dbg.value(metadata i32 %6, metadata !1958, metadata !DIExpression()), !dbg !1959
  store i32 %1, ptr %5, align 4, !dbg !1965, !tbaa !1964
  ret i32 %6, !dbg !1966
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1967 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1971, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr %1, metadata !1972, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr %2, metadata !1973, metadata !DIExpression()), !dbg !1974
  %4 = icmp eq ptr %0, null, !dbg !1975
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1977
  call void @llvm.dbg.value(metadata ptr %5, metadata !1971, metadata !DIExpression()), !dbg !1974
  store i32 10, ptr %5, align 8, !dbg !1978, !tbaa !1914
  %6 = icmp ne ptr %1, null, !dbg !1979
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1981
  br i1 %8, label %10, label %9, !dbg !1981

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1982
  unreachable, !dbg !1982

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1983
  store ptr %1, ptr %11, align 8, !dbg !1984, !tbaa !1985
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1986
  store ptr %2, ptr %12, align 8, !dbg !1987, !tbaa !1988
  ret void, !dbg !1989
}

; Function Attrs: noreturn nounwind
declare !dbg !1990 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1991 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1995, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i64 %1, metadata !1996, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata ptr %2, metadata !1997, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i64 %3, metadata !1998, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata ptr %4, metadata !1999, metadata !DIExpression()), !dbg !2003
  %6 = icmp eq ptr %4, null, !dbg !2004
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2004
  call void @llvm.dbg.value(metadata ptr %7, metadata !2000, metadata !DIExpression()), !dbg !2003
  %8 = tail call ptr @__errno_location() #40, !dbg !2005
  %9 = load i32, ptr %8, align 4, !dbg !2005, !tbaa !883
  call void @llvm.dbg.value(metadata i32 %9, metadata !2001, metadata !DIExpression()), !dbg !2003
  %10 = load i32, ptr %7, align 8, !dbg !2006, !tbaa !1914
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2007
  %12 = load i32, ptr %11, align 4, !dbg !2007, !tbaa !1964
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2008
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2009
  %15 = load ptr, ptr %14, align 8, !dbg !2009, !tbaa !1985
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2010
  %17 = load ptr, ptr %16, align 8, !dbg !2010, !tbaa !1988
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2011
  call void @llvm.dbg.value(metadata i64 %18, metadata !2002, metadata !DIExpression()), !dbg !2003
  store i32 %9, ptr %8, align 4, !dbg !2012, !tbaa !883
  ret i64 %18, !dbg !2013
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2014 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2020, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %1, metadata !2021, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %2, metadata !2022, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %3, metadata !2023, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 %4, metadata !2024, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 %5, metadata !2025, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %6, metadata !2026, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %7, metadata !2027, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %8, metadata !2028, metadata !DIExpression()), !dbg !2082
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !2083
  %17 = icmp eq i64 %16, 1, !dbg !2084
  call void @llvm.dbg.value(metadata i1 %17, metadata !2029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2082
  call void @llvm.dbg.value(metadata i64 0, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 0, metadata !2031, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr null, metadata !2032, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 0, metadata !2033, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 0, metadata !2034, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 %5, metadata !2035, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2082
  call void @llvm.dbg.value(metadata i8 0, metadata !2036, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 1, metadata !2037, metadata !DIExpression()), !dbg !2082
  %18 = and i32 %5, 2, !dbg !2085
  %19 = icmp ne i32 %18, 0, !dbg !2085
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2085

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2086
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2087
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2088
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2021, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2037, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2036, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2035, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2034, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %34, metadata !2033, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %33, metadata !2032, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %32, metadata !2031, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 0, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %31, metadata !2023, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %30, metadata !2028, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %29, metadata !2027, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 %28, metadata !2024, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.label(metadata !2075), !dbg !2089
  call void @llvm.dbg.value(metadata i8 0, metadata !2038, metadata !DIExpression()), !dbg !2082
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
  ], !dbg !2090

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2035, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 5, metadata !2024, metadata !DIExpression()), !dbg !2082
  br label %102, !dbg !2091

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2035, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 5, metadata !2024, metadata !DIExpression()), !dbg !2082
  br i1 %36, label %102, label %42, !dbg !2091

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2092
  br i1 %43, label %102, label %44, !dbg !2096

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2092, !tbaa !892
  br label %102, !dbg !2092

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.79, metadata !585, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i32 %28, metadata !586, metadata !DIExpression()), !dbg !2097
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.80, ptr noundef nonnull @.str.11.79, i32 noundef 5) #37, !dbg !2101
  call void @llvm.dbg.value(metadata ptr %46, metadata !587, metadata !DIExpression()), !dbg !2097
  %47 = icmp eq ptr %46, @.str.11.79, !dbg !2102
  br i1 %47, label %48, label %57, !dbg !2104

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !2105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !2106
  call void @llvm.dbg.declare(metadata ptr %13, metadata !589, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata ptr %13, metadata !2108, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata ptr %13, metadata !2116, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i32 0, metadata !2119, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i64 8, metadata !2120, metadata !DIExpression()), !dbg !2121
  store i64 0, ptr %13, align 8, !dbg !2123
  call void @llvm.dbg.value(metadata ptr %12, metadata !588, metadata !DIExpression(DW_OP_deref)), !dbg !2097
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !2124
  %50 = icmp eq i64 %49, 3, !dbg !2126
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !588, metadata !DIExpression()), !dbg !2097
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2127
  %54 = icmp eq i32 %28, 9, !dbg !2127
  %55 = select i1 %54, ptr @.str.10.81, ptr @.str.12.82, !dbg !2127
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2127
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !2128
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !2128
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2097
  call void @llvm.dbg.value(metadata ptr %58, metadata !2027, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr @.str.12.82, metadata !585, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i32 %28, metadata !586, metadata !DIExpression()), !dbg !2129
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.80, ptr noundef nonnull @.str.12.82, i32 noundef 5) #37, !dbg !2131
  call void @llvm.dbg.value(metadata ptr %59, metadata !587, metadata !DIExpression()), !dbg !2129
  %60 = icmp eq ptr %59, @.str.12.82, !dbg !2132
  br i1 %60, label %61, label %70, !dbg !2133

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !2134
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !2135
  call void @llvm.dbg.declare(metadata ptr %11, metadata !589, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata ptr %11, metadata !2108, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata ptr %11, metadata !2116, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i32 0, metadata !2119, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 8, metadata !2120, metadata !DIExpression()), !dbg !2139
  store i64 0, ptr %11, align 8, !dbg !2141
  call void @llvm.dbg.value(metadata ptr %10, metadata !588, metadata !DIExpression(DW_OP_deref)), !dbg !2129
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !2142
  %63 = icmp eq i64 %62, 3, !dbg !2143
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !588, metadata !DIExpression()), !dbg !2129
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2144
  %67 = icmp eq i32 %28, 9, !dbg !2144
  %68 = select i1 %67, ptr @.str.10.81, ptr @.str.12.82, !dbg !2144
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2144
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !2145
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !2145
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2028, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %71, metadata !2027, metadata !DIExpression()), !dbg !2082
  br i1 %36, label %88, label %73, !dbg !2146

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2039, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i64 0, metadata !2030, metadata !DIExpression()), !dbg !2082
  %74 = load i8, ptr %71, align 1, !dbg !2148, !tbaa !892
  %75 = icmp eq i8 %74, 0, !dbg !2150
  br i1 %75, label %88, label %76, !dbg !2150

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2039, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %79, metadata !2030, metadata !DIExpression()), !dbg !2082
  %80 = icmp ult i64 %79, %39, !dbg !2151
  br i1 %80, label %81, label %83, !dbg !2154

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2151
  store i8 %77, ptr %82, align 1, !dbg !2151, !tbaa !892
  br label %83, !dbg !2151

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %84, metadata !2030, metadata !DIExpression()), !dbg !2082
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2155
  call void @llvm.dbg.value(metadata ptr %85, metadata !2039, metadata !DIExpression()), !dbg !2147
  %86 = load i8, ptr %85, align 1, !dbg !2148, !tbaa !892
  %87 = icmp eq i8 %86, 0, !dbg !2150
  br i1 %87, label %88, label %76, !dbg !2150, !llvm.loop !2156

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2158
  call void @llvm.dbg.value(metadata i64 %89, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 1, metadata !2034, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %72, metadata !2032, metadata !DIExpression()), !dbg !2082
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %90, metadata !2033, metadata !DIExpression()), !dbg !2082
  br label %102, !dbg !2160

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2034, metadata !DIExpression()), !dbg !2082
  br label %93, !dbg !2161

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2035, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2034, metadata !DIExpression()), !dbg !2082
  br i1 %36, label %102, label %96, !dbg !2162

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2035, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2034, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 2, metadata !2024, metadata !DIExpression()), !dbg !2082
  br label %102, !dbg !2163

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2035, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2034, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 2, metadata !2024, metadata !DIExpression()), !dbg !2082
  br i1 %36, label %102, label %96, !dbg !2163

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2164
  br i1 %98, label %102, label %99, !dbg !2168

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2164, !tbaa !892
  br label %102, !dbg !2164

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2035, metadata !DIExpression()), !dbg !2082
  br label %102, !dbg !2169

101:                                              ; preds = %27
  call void @abort() #39, !dbg !2170
  unreachable, !dbg !2170

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2158
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.81, %42 ], [ @.str.10.81, %44 ], [ @.str.10.81, %41 ], [ %33, %27 ], [ @.str.12.82, %96 ], [ @.str.12.82, %99 ], [ @.str.12.82, %95 ], [ @.str.10.81, %40 ], [ @.str.12.82, %93 ], [ @.str.12.82, %92 ], !dbg !2082
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2082
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2035, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2034, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %108, metadata !2033, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %107, metadata !2032, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %106, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %105, metadata !2028, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %104, metadata !2027, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 %103, metadata !2024, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 0, metadata !2044, metadata !DIExpression()), !dbg !2171
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
  br label %122, !dbg !2172

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2158
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2086
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2173
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2021, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %129, metadata !2044, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2037, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2036, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %125, metadata !2031, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %123, metadata !2023, metadata !DIExpression()), !dbg !2082
  %131 = icmp eq i64 %123, -1, !dbg !2174
  br i1 %131, label %132, label %136, !dbg !2175

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2176
  %134 = load i8, ptr %133, align 1, !dbg !2176, !tbaa !892
  %135 = icmp eq i8 %134, 0, !dbg !2177
  br i1 %135, label %579, label %138, !dbg !2178

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2179
  br i1 %137, label %579, label %138, !dbg !2178

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2046, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 0, metadata !2049, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 0, metadata !2050, metadata !DIExpression()), !dbg !2180
  br i1 %114, label %139, label %152, !dbg !2181

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2183
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2184
  br i1 %141, label %142, label %144, !dbg !2184

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %143, metadata !2023, metadata !DIExpression()), !dbg !2082
  br label %144, !dbg !2186

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2186
  call void @llvm.dbg.value(metadata i64 %145, metadata !2023, metadata !DIExpression()), !dbg !2082
  %146 = icmp ugt i64 %140, %145, !dbg !2187
  br i1 %146, label %152, label %147, !dbg !2188

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2189
  call void @llvm.dbg.value(metadata ptr %148, metadata !2190, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata ptr %107, metadata !2193, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %108, metadata !2194, metadata !DIExpression()), !dbg !2195
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2197
  %150 = icmp eq i32 %149, 0, !dbg !2198
  %151 = and i1 %150, %110, !dbg !2199
  br i1 %151, label %630, label %152, !dbg !2199

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2046, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %153, metadata !2023, metadata !DIExpression()), !dbg !2082
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2200
  %156 = load i8, ptr %155, align 1, !dbg !2200, !tbaa !892
  call void @llvm.dbg.value(metadata i8 %156, metadata !2051, metadata !DIExpression()), !dbg !2180
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
  ], !dbg !2201

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2202

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2203

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2049, metadata !DIExpression()), !dbg !2180
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2207
  br i1 %160, label %177, label %161, !dbg !2207

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2209
  br i1 %162, label %163, label %165, !dbg !2213

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2209
  store i8 39, ptr %164, align 1, !dbg !2209, !tbaa !892
  br label %165, !dbg !2209

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %166, metadata !2030, metadata !DIExpression()), !dbg !2082
  %167 = icmp ult i64 %166, %130, !dbg !2214
  br i1 %167, label %168, label %170, !dbg !2217

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2214
  store i8 36, ptr %169, align 1, !dbg !2214, !tbaa !892
  br label %170, !dbg !2214

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %171, metadata !2030, metadata !DIExpression()), !dbg !2082
  %172 = icmp ult i64 %171, %130, !dbg !2218
  br i1 %172, label %173, label %175, !dbg !2221

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2218
  store i8 39, ptr %174, align 1, !dbg !2218, !tbaa !892
  br label %175, !dbg !2218

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %176, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 1, metadata !2038, metadata !DIExpression()), !dbg !2082
  br label %177, !dbg !2222

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2082
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %178, metadata !2030, metadata !DIExpression()), !dbg !2082
  %180 = icmp ult i64 %178, %130, !dbg !2223
  br i1 %180, label %181, label %183, !dbg !2226

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2223
  store i8 92, ptr %182, align 1, !dbg !2223, !tbaa !892
  br label %183, !dbg !2223

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %184, metadata !2030, metadata !DIExpression()), !dbg !2082
  br i1 %111, label %185, label %482, !dbg !2227

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2229
  %187 = icmp ult i64 %186, %153, !dbg !2230
  br i1 %187, label %188, label %439, !dbg !2231

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2232
  %190 = load i8, ptr %189, align 1, !dbg !2232, !tbaa !892
  %191 = add i8 %190, -48, !dbg !2233
  %192 = icmp ult i8 %191, 10, !dbg !2233
  br i1 %192, label %193, label %439, !dbg !2233

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2234
  br i1 %194, label %195, label %197, !dbg !2238

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2234
  store i8 48, ptr %196, align 1, !dbg !2234, !tbaa !892
  br label %197, !dbg !2234

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %198, metadata !2030, metadata !DIExpression()), !dbg !2082
  %199 = icmp ult i64 %198, %130, !dbg !2239
  br i1 %199, label %200, label %202, !dbg !2242

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2239
  store i8 48, ptr %201, align 1, !dbg !2239, !tbaa !892
  br label %202, !dbg !2239

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %203, metadata !2030, metadata !DIExpression()), !dbg !2082
  br label %439, !dbg !2243

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2244

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2245

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2246

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2248

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2250
  %210 = icmp ult i64 %209, %153, !dbg !2251
  br i1 %210, label %211, label %439, !dbg !2252

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2253
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2254
  %214 = load i8, ptr %213, align 1, !dbg !2254, !tbaa !892
  %215 = icmp eq i8 %214, 63, !dbg !2255
  br i1 %215, label %216, label %439, !dbg !2256

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2257
  %218 = load i8, ptr %217, align 1, !dbg !2257, !tbaa !892
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
  ], !dbg !2258

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2259

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2051, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %209, metadata !2044, metadata !DIExpression()), !dbg !2171
  %221 = icmp ult i64 %124, %130, !dbg !2261
  br i1 %221, label %222, label %224, !dbg !2264

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2261
  store i8 63, ptr %223, align 1, !dbg !2261, !tbaa !892
  br label %224, !dbg !2261

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %225, metadata !2030, metadata !DIExpression()), !dbg !2082
  %226 = icmp ult i64 %225, %130, !dbg !2265
  br i1 %226, label %227, label %229, !dbg !2268

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2265
  store i8 34, ptr %228, align 1, !dbg !2265, !tbaa !892
  br label %229, !dbg !2265

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %230, metadata !2030, metadata !DIExpression()), !dbg !2082
  %231 = icmp ult i64 %230, %130, !dbg !2269
  br i1 %231, label %232, label %234, !dbg !2272

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2269
  store i8 34, ptr %233, align 1, !dbg !2269, !tbaa !892
  br label %234, !dbg !2269

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %235, metadata !2030, metadata !DIExpression()), !dbg !2082
  %236 = icmp ult i64 %235, %130, !dbg !2273
  br i1 %236, label %237, label %239, !dbg !2276

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2273
  store i8 63, ptr %238, align 1, !dbg !2273, !tbaa !892
  br label %239, !dbg !2273

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %240, metadata !2030, metadata !DIExpression()), !dbg !2082
  br label %439, !dbg !2277

241:                                              ; preds = %152
  br label %251, !dbg !2278

242:                                              ; preds = %152
  br label %251, !dbg !2279

243:                                              ; preds = %152
  br label %249, !dbg !2280

244:                                              ; preds = %152
  br label %249, !dbg !2281

245:                                              ; preds = %152
  br label %251, !dbg !2282

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2283

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2284

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2287

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2289
  call void @llvm.dbg.label(metadata !2076), !dbg !2290
  br i1 %119, label %621, label %251, !dbg !2291

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2289
  call void @llvm.dbg.label(metadata !2078), !dbg !2293
  br i1 %109, label %493, label %450, !dbg !2294

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2295

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2296, !tbaa !892
  %256 = icmp eq i8 %255, 0, !dbg !2298
  br i1 %256, label %257, label %439, !dbg !2299

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2300
  br i1 %258, label %259, label %439, !dbg !2302

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2050, metadata !DIExpression()), !dbg !2180
  br label %260, !dbg !2303

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2050, metadata !DIExpression()), !dbg !2180
  br i1 %116, label %262, label %439, !dbg !2304

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2306

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2036, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 1, metadata !2050, metadata !DIExpression()), !dbg !2180
  br i1 %116, label %264, label %439, !dbg !2307

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2308

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2311
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2313
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2313
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %270, metadata !2021, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %269, metadata !2031, metadata !DIExpression()), !dbg !2082
  %271 = icmp ult i64 %124, %270, !dbg !2314
  br i1 %271, label %272, label %274, !dbg !2317

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2314
  store i8 39, ptr %273, align 1, !dbg !2314, !tbaa !892
  br label %274, !dbg !2314

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %275, metadata !2030, metadata !DIExpression()), !dbg !2082
  %276 = icmp ult i64 %275, %270, !dbg !2318
  br i1 %276, label %277, label %279, !dbg !2321

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2318
  store i8 92, ptr %278, align 1, !dbg !2318, !tbaa !892
  br label %279, !dbg !2318

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %280, metadata !2030, metadata !DIExpression()), !dbg !2082
  %281 = icmp ult i64 %280, %270, !dbg !2322
  br i1 %281, label %282, label %284, !dbg !2325

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2322
  store i8 39, ptr %283, align 1, !dbg !2322, !tbaa !892
  br label %284, !dbg !2322

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %285, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 0, metadata !2038, metadata !DIExpression()), !dbg !2082
  br label %439, !dbg !2326

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2327

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2052, metadata !DIExpression()), !dbg !2328
  %288 = tail call ptr @__ctype_b_loc() #40, !dbg !2329
  %289 = load ptr, ptr %288, align 8, !dbg !2329, !tbaa !819
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2329
  %292 = load i16, ptr %291, align 2, !dbg !2329, !tbaa !924
  %293 = and i16 %292, 16384, !dbg !2329
  %294 = icmp ne i16 %293, 0, !dbg !2331
  call void @llvm.dbg.value(metadata i1 %294, metadata !2055, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2328
  br label %337, !dbg !2332

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2333
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2056, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata ptr %14, metadata !2108, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata ptr %14, metadata !2116, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i32 0, metadata !2119, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i64 8, metadata !2120, metadata !DIExpression()), !dbg !2337
  store i64 0, ptr %14, align 8, !dbg !2339
  call void @llvm.dbg.value(metadata i64 0, metadata !2052, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 1, metadata !2055, metadata !DIExpression()), !dbg !2328
  %296 = icmp eq i64 %153, -1, !dbg !2340
  br i1 %296, label %297, label %299, !dbg !2342

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %298, metadata !2023, metadata !DIExpression()), !dbg !2082
  br label %299, !dbg !2344

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2180
  call void @llvm.dbg.value(metadata i64 %300, metadata !2023, metadata !DIExpression()), !dbg !2082
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2345
  %301 = sub i64 %300, %129, !dbg !2346
  call void @llvm.dbg.value(metadata ptr %15, metadata !2059, metadata !DIExpression(DW_OP_deref)), !dbg !2347
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #37, !dbg !2348
  call void @llvm.dbg.value(metadata i64 %302, metadata !2063, metadata !DIExpression()), !dbg !2347
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2349

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2052, metadata !DIExpression()), !dbg !2328
  %304 = icmp ugt i64 %300, %129, !dbg !2350
  br i1 %304, label %306, label %332, !dbg !2352

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2055, metadata !DIExpression()), !dbg !2328
  br label %332, !dbg !2353

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2052, metadata !DIExpression()), !dbg !2328
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2355
  %310 = load i8, ptr %309, align 1, !dbg !2355, !tbaa !892
  %311 = icmp eq i8 %310, 0, !dbg !2352
  br i1 %311, label %332, label %312, !dbg !2356

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %313, metadata !2052, metadata !DIExpression()), !dbg !2328
  %314 = add i64 %313, %129, !dbg !2358
  %315 = icmp eq i64 %313, %301, !dbg !2350
  br i1 %315, label %332, label %306, !dbg !2352, !llvm.loop !2359

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2360
  %319 = and i1 %318, %110, !dbg !2360
  call void @llvm.dbg.value(metadata i64 1, metadata !2064, metadata !DIExpression()), !dbg !2361
  br i1 %319, label %320, label %328, !dbg !2360

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2064, metadata !DIExpression()), !dbg !2361
  %322 = add i64 %321, %129, !dbg !2362
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2364
  %324 = load i8, ptr %323, align 1, !dbg !2364, !tbaa !892
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2365

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %326, metadata !2064, metadata !DIExpression()), !dbg !2361
  %327 = icmp eq i64 %326, %302, !dbg !2367
  br i1 %327, label %328, label %320, !dbg !2368, !llvm.loop !2369

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2371, !tbaa !883
  call void @llvm.dbg.value(metadata i32 %329, metadata !2059, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %329, metadata !2373, metadata !DIExpression()), !dbg !2381
  %330 = call i32 @iswprint(i32 noundef %329) #37, !dbg !2383
  %331 = icmp ne i32 %330, 0, !dbg !2384
  call void @llvm.dbg.value(metadata i8 poison, metadata !2055, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %302, metadata !2052, metadata !DIExpression()), !dbg !2328
  br label %332, !dbg !2385

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2055, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %333, metadata !2052, metadata !DIExpression()), !dbg !2328
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2386
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2387
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2055, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 0, metadata !2052, metadata !DIExpression()), !dbg !2328
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2386
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2387
  call void @llvm.dbg.label(metadata !2081), !dbg !2388
  %336 = select i1 %109, i32 4, i32 2, !dbg !2389
  br label %626, !dbg !2389

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2180
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2391
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2055, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %339, metadata !2052, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i64 %338, metadata !2023, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i1 %340, metadata !2050, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2180
  %341 = icmp ult i64 %339, 2, !dbg !2392
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2393
  br i1 %343, label %439, label %344, !dbg !2393

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %345, metadata !2072, metadata !DIExpression()), !dbg !2395
  br label %346, !dbg !2396

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2082
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2171
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2397
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2180
  call void @llvm.dbg.value(metadata i8 %352, metadata !2051, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 %351, metadata !2049, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 poison, metadata !2046, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %349, metadata !2044, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %347, metadata !2030, metadata !DIExpression()), !dbg !2082
  br i1 %342, label %397, label %353, !dbg !2398

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2403

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2049, metadata !DIExpression()), !dbg !2180
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2406
  br i1 %355, label %372, label %356, !dbg !2406

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2408
  br i1 %357, label %358, label %360, !dbg !2412

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2408
  store i8 39, ptr %359, align 1, !dbg !2408, !tbaa !892
  br label %360, !dbg !2408

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %361, metadata !2030, metadata !DIExpression()), !dbg !2082
  %362 = icmp ult i64 %361, %130, !dbg !2413
  br i1 %362, label %363, label %365, !dbg !2416

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2413
  store i8 36, ptr %364, align 1, !dbg !2413, !tbaa !892
  br label %365, !dbg !2413

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %366, metadata !2030, metadata !DIExpression()), !dbg !2082
  %367 = icmp ult i64 %366, %130, !dbg !2417
  br i1 %367, label %368, label %370, !dbg !2420

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2417
  store i8 39, ptr %369, align 1, !dbg !2417, !tbaa !892
  br label %370, !dbg !2417

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2420
  call void @llvm.dbg.value(metadata i64 %371, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 1, metadata !2038, metadata !DIExpression()), !dbg !2082
  br label %372, !dbg !2421

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2082
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %373, metadata !2030, metadata !DIExpression()), !dbg !2082
  %375 = icmp ult i64 %373, %130, !dbg !2422
  br i1 %375, label %376, label %378, !dbg !2425

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2422
  store i8 92, ptr %377, align 1, !dbg !2422, !tbaa !892
  br label %378, !dbg !2422

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2425
  call void @llvm.dbg.value(metadata i64 %379, metadata !2030, metadata !DIExpression()), !dbg !2082
  %380 = icmp ult i64 %379, %130, !dbg !2426
  br i1 %380, label %381, label %385, !dbg !2429

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2426
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2426
  store i8 %383, ptr %384, align 1, !dbg !2426, !tbaa !892
  br label %385, !dbg !2426

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %386, metadata !2030, metadata !DIExpression()), !dbg !2082
  %387 = icmp ult i64 %386, %130, !dbg !2430
  br i1 %387, label %388, label %393, !dbg !2433

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2430
  %391 = or i8 %390, 48, !dbg !2430
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2430
  store i8 %391, ptr %392, align 1, !dbg !2430, !tbaa !892
  br label %393, !dbg !2430

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2433
  call void @llvm.dbg.value(metadata i64 %394, metadata !2030, metadata !DIExpression()), !dbg !2082
  %395 = and i8 %352, 7, !dbg !2434
  %396 = or i8 %395, 48, !dbg !2435
  call void @llvm.dbg.value(metadata i8 %396, metadata !2051, metadata !DIExpression()), !dbg !2180
  br label %404, !dbg !2436

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2437

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2438
  br i1 %399, label %400, label %402, !dbg !2443

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2438
  store i8 92, ptr %401, align 1, !dbg !2438, !tbaa !892
  br label %402, !dbg !2438

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %403, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 0, metadata !2046, metadata !DIExpression()), !dbg !2180
  br label %404, !dbg !2444

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2082
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2180
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2180
  call void @llvm.dbg.value(metadata i8 %409, metadata !2051, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 %408, metadata !2049, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 poison, metadata !2046, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %405, metadata !2030, metadata !DIExpression()), !dbg !2082
  %410 = add i64 %349, 1, !dbg !2445
  %411 = icmp ugt i64 %345, %410, !dbg !2447
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2448

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2449
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2449
  br i1 %415, label %416, label %427, !dbg !2449

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2452
  br i1 %417, label %418, label %420, !dbg !2456

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2452
  store i8 39, ptr %419, align 1, !dbg !2452, !tbaa !892
  br label %420, !dbg !2452

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %421, metadata !2030, metadata !DIExpression()), !dbg !2082
  %422 = icmp ult i64 %421, %130, !dbg !2457
  br i1 %422, label %423, label %425, !dbg !2460

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2457
  store i8 39, ptr %424, align 1, !dbg !2457, !tbaa !892
  br label %425, !dbg !2457

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2460
  call void @llvm.dbg.value(metadata i64 %426, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 0, metadata !2038, metadata !DIExpression()), !dbg !2082
  br label %427, !dbg !2461

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2462
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %428, metadata !2030, metadata !DIExpression()), !dbg !2082
  %430 = icmp ult i64 %428, %130, !dbg !2463
  br i1 %430, label %431, label %433, !dbg !2466

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2463
  store i8 %409, ptr %432, align 1, !dbg !2463, !tbaa !892
  br label %433, !dbg !2463

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %434, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %410, metadata !2044, metadata !DIExpression()), !dbg !2171
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2467
  %436 = load i8, ptr %435, align 1, !dbg !2467, !tbaa !892
  call void @llvm.dbg.value(metadata i8 %436, metadata !2051, metadata !DIExpression()), !dbg !2180
  br label %346, !dbg !2468, !llvm.loop !2469

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2051, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i1 %340, metadata !2050, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2180
  call void @llvm.dbg.value(metadata i8 %408, metadata !2049, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 poison, metadata !2046, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %349, metadata !2044, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %405, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %338, metadata !2023, metadata !DIExpression()), !dbg !2082
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2472
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2082
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2086
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2171
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2180
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2021, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 %448, metadata !2051, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 poison, metadata !2050, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 poison, metadata !2049, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 poison, metadata !2046, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %445, metadata !2044, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2036, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %442, metadata !2031, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %441, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %440, metadata !2023, metadata !DIExpression()), !dbg !2082
  br i1 %112, label %461, label %450, !dbg !2473

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
  br i1 %121, label %462, label %482, !dbg !2475

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2476

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
  %473 = lshr i8 %464, 5, !dbg !2477
  %474 = zext i8 %473 to i64, !dbg !2477
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2478
  %476 = load i32, ptr %475, align 4, !dbg !2478, !tbaa !883
  %477 = and i8 %464, 31, !dbg !2479
  %478 = zext i8 %477 to i32, !dbg !2479
  %479 = shl nuw i32 1, %478, !dbg !2480
  %480 = and i32 %476, %479, !dbg !2480
  %481 = icmp eq i32 %480, 0, !dbg !2480
  br i1 %481, label %482, label %493, !dbg !2481

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
  br i1 %154, label %493, label %529, !dbg !2482

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2472
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2082
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2086
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2483
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2180
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2021, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 %501, metadata !2051, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 poison, metadata !2050, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %499, metadata !2044, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2036, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %496, metadata !2031, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %495, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %494, metadata !2023, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.label(metadata !2079), !dbg !2484
  br i1 %110, label %621, label %503, !dbg !2485

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2049, metadata !DIExpression()), !dbg !2180
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2487
  br i1 %504, label %521, label %505, !dbg !2487

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2489
  br i1 %506, label %507, label %509, !dbg !2493

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2489
  store i8 39, ptr %508, align 1, !dbg !2489, !tbaa !892
  br label %509, !dbg !2489

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %510, metadata !2030, metadata !DIExpression()), !dbg !2082
  %511 = icmp ult i64 %510, %502, !dbg !2494
  br i1 %511, label %512, label %514, !dbg !2497

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2494
  store i8 36, ptr %513, align 1, !dbg !2494, !tbaa !892
  br label %514, !dbg !2494

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %515, metadata !2030, metadata !DIExpression()), !dbg !2082
  %516 = icmp ult i64 %515, %502, !dbg !2498
  br i1 %516, label %517, label %519, !dbg !2501

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2498
  store i8 39, ptr %518, align 1, !dbg !2498, !tbaa !892
  br label %519, !dbg !2498

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %520, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 1, metadata !2038, metadata !DIExpression()), !dbg !2082
  br label %521, !dbg !2502

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2180
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %522, metadata !2030, metadata !DIExpression()), !dbg !2082
  %524 = icmp ult i64 %522, %502, !dbg !2503
  br i1 %524, label %525, label %527, !dbg !2506

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2503
  store i8 92, ptr %526, align 1, !dbg !2503, !tbaa !892
  br label %527, !dbg !2503

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2506
  call void @llvm.dbg.value(metadata i64 %502, metadata !2021, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 %501, metadata !2051, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 poison, metadata !2050, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 poison, metadata !2049, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %499, metadata !2044, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2036, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %496, metadata !2031, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %528, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %494, metadata !2023, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.label(metadata !2080), !dbg !2507
  br label %553, !dbg !2508

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2472
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2082
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2086
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2483
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2511
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2021, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 %538, metadata !2051, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 poison, metadata !2050, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8 poison, metadata !2049, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %535, metadata !2044, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2036, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %532, metadata !2031, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %531, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %530, metadata !2023, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.label(metadata !2080), !dbg !2507
  %540 = xor i1 %534, true, !dbg !2508
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2508
  br i1 %541, label %553, label %542, !dbg !2508

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2512
  br i1 %543, label %544, label %546, !dbg !2516

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2512
  store i8 39, ptr %545, align 1, !dbg !2512, !tbaa !892
  br label %546, !dbg !2512

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2516
  call void @llvm.dbg.value(metadata i64 %547, metadata !2030, metadata !DIExpression()), !dbg !2082
  %548 = icmp ult i64 %547, %539, !dbg !2517
  br i1 %548, label %549, label %551, !dbg !2520

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2517
  store i8 39, ptr %550, align 1, !dbg !2517, !tbaa !892
  br label %551, !dbg !2517

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2520
  call void @llvm.dbg.value(metadata i64 %552, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 0, metadata !2038, metadata !DIExpression()), !dbg !2082
  br label %553, !dbg !2521

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2180
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %561, metadata !2030, metadata !DIExpression()), !dbg !2082
  %563 = icmp ult i64 %561, %554, !dbg !2522
  br i1 %563, label %564, label %566, !dbg !2525

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2522
  store i8 %555, ptr %565, align 1, !dbg !2522, !tbaa !892
  br label %566, !dbg !2522

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2525
  call void @llvm.dbg.value(metadata i64 %567, metadata !2030, metadata !DIExpression()), !dbg !2082
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2526
  call void @llvm.dbg.value(metadata i8 poison, metadata !2037, metadata !DIExpression()), !dbg !2082
  br label %569, !dbg !2527

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2472
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2082
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2086
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2483
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2021, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %576, metadata !2044, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2037, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2036, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %572, metadata !2031, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %571, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %570, metadata !2023, metadata !DIExpression()), !dbg !2082
  %578 = add i64 %576, 1, !dbg !2528
  call void @llvm.dbg.value(metadata i64 %578, metadata !2044, metadata !DIExpression()), !dbg !2171
  br label %122, !dbg !2529, !llvm.loop !2530

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2021, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2037, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i8 poison, metadata !2036, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %125, metadata !2031, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %123, metadata !2023, metadata !DIExpression()), !dbg !2082
  %580 = icmp ne i64 %124, 0, !dbg !2532
  %581 = xor i1 %110, true, !dbg !2534
  %582 = or i1 %580, %581, !dbg !2534
  %583 = or i1 %582, %111, !dbg !2534
  br i1 %583, label %584, label %621, !dbg !2534

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2535
  %586 = xor i1 %126, true, !dbg !2535
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2535
  br i1 %587, label %595, label %588, !dbg !2535

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2537

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2539
  br label %636, !dbg !2541

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2542
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2544
  br i1 %594, label %27, label %595, !dbg !2544

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2545
  %598 = or i1 %597, %596, !dbg !2547
  br i1 %598, label %614, label %599, !dbg !2547

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2032, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %124, metadata !2030, metadata !DIExpression()), !dbg !2082
  %600 = load i8, ptr %107, align 1, !dbg !2548, !tbaa !892
  %601 = icmp eq i8 %600, 0, !dbg !2551
  br i1 %601, label %614, label %602, !dbg !2551

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2032, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %605, metadata !2030, metadata !DIExpression()), !dbg !2082
  %606 = icmp ult i64 %605, %130, !dbg !2552
  br i1 %606, label %607, label %609, !dbg !2555

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2552
  store i8 %603, ptr %608, align 1, !dbg !2552, !tbaa !892
  br label %609, !dbg !2552

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2555
  call void @llvm.dbg.value(metadata i64 %610, metadata !2030, metadata !DIExpression()), !dbg !2082
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2556
  call void @llvm.dbg.value(metadata ptr %611, metadata !2032, metadata !DIExpression()), !dbg !2082
  %612 = load i8, ptr %611, align 1, !dbg !2548, !tbaa !892
  %613 = icmp eq i8 %612, 0, !dbg !2551
  br i1 %613, label %614, label %602, !dbg !2551, !llvm.loop !2557

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2158
  call void @llvm.dbg.value(metadata i64 %615, metadata !2030, metadata !DIExpression()), !dbg !2082
  %616 = icmp ult i64 %615, %130, !dbg !2559
  br i1 %616, label %617, label %636, !dbg !2561

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2562
  store i8 0, ptr %618, align 1, !dbg !2563, !tbaa !892
  br label %636, !dbg !2562

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2081), !dbg !2388
  %620 = icmp eq i32 %103, 2, !dbg !2564
  br i1 %620, label %626, label %630, !dbg !2389

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2081), !dbg !2388
  %624 = icmp eq i32 %103, 2, !dbg !2564
  %625 = select i1 %109, i32 4, i32 2, !dbg !2389
  br i1 %624, label %626, label %630, !dbg !2389

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2389

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2024, metadata !DIExpression()), !dbg !2082
  %634 = and i32 %5, -3, !dbg !2565
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2566
  br label %636, !dbg !2567

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2568
}

; Function Attrs: nounwind
declare !dbg !2569 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2572 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2574 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2578, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %1, metadata !2579, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata ptr %2, metadata !2580, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata ptr %0, metadata !2582, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i64 %1, metadata !2587, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata ptr null, metadata !2588, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata ptr %2, metadata !2589, metadata !DIExpression()), !dbg !2595
  %4 = icmp eq ptr %2, null, !dbg !2597
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2597
  call void @llvm.dbg.value(metadata ptr %5, metadata !2590, metadata !DIExpression()), !dbg !2595
  %6 = tail call ptr @__errno_location() #40, !dbg !2598
  %7 = load i32, ptr %6, align 4, !dbg !2598, !tbaa !883
  call void @llvm.dbg.value(metadata i32 %7, metadata !2591, metadata !DIExpression()), !dbg !2595
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2599
  %9 = load i32, ptr %8, align 4, !dbg !2599, !tbaa !1964
  %10 = or i32 %9, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i32 %10, metadata !2592, metadata !DIExpression()), !dbg !2595
  %11 = load i32, ptr %5, align 8, !dbg !2601, !tbaa !1914
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2602
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2603
  %14 = load ptr, ptr %13, align 8, !dbg !2603, !tbaa !1985
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2604
  %16 = load ptr, ptr %15, align 8, !dbg !2604, !tbaa !1988
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2605
  %18 = add i64 %17, 1, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %18, metadata !2593, metadata !DIExpression()), !dbg !2595
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #42, !dbg !2607
  call void @llvm.dbg.value(metadata ptr %19, metadata !2594, metadata !DIExpression()), !dbg !2595
  %20 = load i32, ptr %5, align 8, !dbg !2608, !tbaa !1914
  %21 = load ptr, ptr %13, align 8, !dbg !2609, !tbaa !1985
  %22 = load ptr, ptr %15, align 8, !dbg !2610, !tbaa !1988
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2611
  store i32 %7, ptr %6, align 4, !dbg !2612, !tbaa !883
  ret ptr %19, !dbg !2613
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2583 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2582, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i64 %1, metadata !2587, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata ptr %2, metadata !2588, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata ptr %3, metadata !2589, metadata !DIExpression()), !dbg !2614
  %5 = icmp eq ptr %3, null, !dbg !2615
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2615
  call void @llvm.dbg.value(metadata ptr %6, metadata !2590, metadata !DIExpression()), !dbg !2614
  %7 = tail call ptr @__errno_location() #40, !dbg !2616
  %8 = load i32, ptr %7, align 4, !dbg !2616, !tbaa !883
  call void @llvm.dbg.value(metadata i32 %8, metadata !2591, metadata !DIExpression()), !dbg !2614
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2617
  %10 = load i32, ptr %9, align 4, !dbg !2617, !tbaa !1964
  %11 = icmp eq ptr %2, null, !dbg !2618
  %12 = zext i1 %11 to i32, !dbg !2618
  %13 = or i32 %10, %12, !dbg !2619
  call void @llvm.dbg.value(metadata i32 %13, metadata !2592, metadata !DIExpression()), !dbg !2614
  %14 = load i32, ptr %6, align 8, !dbg !2620, !tbaa !1914
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2621
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2622
  %17 = load ptr, ptr %16, align 8, !dbg !2622, !tbaa !1985
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2623
  %19 = load ptr, ptr %18, align 8, !dbg !2623, !tbaa !1988
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2624
  %21 = add i64 %20, 1, !dbg !2625
  call void @llvm.dbg.value(metadata i64 %21, metadata !2593, metadata !DIExpression()), !dbg !2614
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #42, !dbg !2626
  call void @llvm.dbg.value(metadata ptr %22, metadata !2594, metadata !DIExpression()), !dbg !2614
  %23 = load i32, ptr %6, align 8, !dbg !2627, !tbaa !1914
  %24 = load ptr, ptr %16, align 8, !dbg !2628, !tbaa !1985
  %25 = load ptr, ptr %18, align 8, !dbg !2629, !tbaa !1988
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2630
  store i32 %8, ptr %7, align 4, !dbg !2631, !tbaa !883
  br i1 %11, label %28, label %27, !dbg !2632

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2633, !tbaa !1390
  br label %28, !dbg !2635

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2636
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2637 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2642, !tbaa !819
  call void @llvm.dbg.value(metadata ptr %1, metadata !2639, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i32 1, metadata !2640, metadata !DIExpression()), !dbg !2644
  %2 = load i32, ptr @nslots, align 4, !tbaa !883
  call void @llvm.dbg.value(metadata i32 1, metadata !2640, metadata !DIExpression()), !dbg !2644
  %3 = icmp sgt i32 %2, 1, !dbg !2645
  br i1 %3, label %4, label %6, !dbg !2647

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2645
  br label %10, !dbg !2647

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2648
  %8 = load ptr, ptr %7, align 8, !dbg !2648, !tbaa !2650
  %9 = icmp eq ptr %8, @slot0, !dbg !2652
  br i1 %9, label %17, label %16, !dbg !2653

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2640, metadata !DIExpression()), !dbg !2644
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2654
  %13 = load ptr, ptr %12, align 8, !dbg !2654, !tbaa !2650
  tail call void @free(ptr noundef %13) #37, !dbg !2655
  %14 = add nuw nsw i64 %11, 1, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %14, metadata !2640, metadata !DIExpression()), !dbg !2644
  %15 = icmp eq i64 %14, %5, !dbg !2645
  br i1 %15, label %6, label %10, !dbg !2647, !llvm.loop !2657

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2659
  store i64 256, ptr @slotvec0, align 8, !dbg !2661, !tbaa !2662
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2663, !tbaa !2650
  br label %17, !dbg !2664

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2665
  br i1 %18, label %20, label %19, !dbg !2667

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2668
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2670, !tbaa !819
  br label %20, !dbg !2671

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2672, !tbaa !883
  ret void, !dbg !2673
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2674 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2676, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata ptr %1, metadata !2677, metadata !DIExpression()), !dbg !2678
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2679
  ret ptr %3, !dbg !2680
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2681 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2685, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1, metadata !2686, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %2, metadata !2687, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr %3, metadata !2688, metadata !DIExpression()), !dbg !2701
  %6 = tail call ptr @__errno_location() #40, !dbg !2702
  %7 = load i32, ptr %6, align 4, !dbg !2702, !tbaa !883
  call void @llvm.dbg.value(metadata i32 %7, metadata !2689, metadata !DIExpression()), !dbg !2701
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2703, !tbaa !819
  call void @llvm.dbg.value(metadata ptr %8, metadata !2690, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2691, metadata !DIExpression()), !dbg !2701
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2704
  br i1 %9, label %10, label %11, !dbg !2704

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2706
  unreachable, !dbg !2706

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2707, !tbaa !883
  %13 = icmp sgt i32 %12, %0, !dbg !2708
  br i1 %13, label %32, label %14, !dbg !2709

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2710
  call void @llvm.dbg.value(metadata i1 %15, metadata !2692, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2711
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2712
  %16 = sext i32 %12 to i64, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %16, metadata !2695, metadata !DIExpression()), !dbg !2711
  store i64 %16, ptr %5, align 8, !dbg !2714, !tbaa !1390
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2715
  %18 = add nuw nsw i32 %0, 1, !dbg !2716
  %19 = sub i32 %18, %12, !dbg !2717
  %20 = sext i32 %19 to i64, !dbg !2718
  call void @llvm.dbg.value(metadata ptr %5, metadata !2695, metadata !DIExpression(DW_OP_deref)), !dbg !2711
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2719
  call void @llvm.dbg.value(metadata ptr %21, metadata !2690, metadata !DIExpression()), !dbg !2701
  store ptr %21, ptr @slotvec, align 8, !dbg !2720, !tbaa !819
  br i1 %15, label %22, label %23, !dbg !2721

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2722, !tbaa.struct !2724
  br label %23, !dbg !2725

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2726, !tbaa !883
  %25 = sext i32 %24 to i64, !dbg !2727
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2727
  %27 = load i64, ptr %5, align 8, !dbg !2728, !tbaa !1390
  call void @llvm.dbg.value(metadata i64 %27, metadata !2695, metadata !DIExpression()), !dbg !2711
  %28 = sub nsw i64 %27, %25, !dbg !2729
  %29 = shl i64 %28, 4, !dbg !2730
  call void @llvm.dbg.value(metadata ptr %26, metadata !2116, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i32 0, metadata !2119, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %29, metadata !2120, metadata !DIExpression()), !dbg !2731
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2733
  %30 = load i64, ptr %5, align 8, !dbg !2734, !tbaa !1390
  call void @llvm.dbg.value(metadata i64 %30, metadata !2695, metadata !DIExpression()), !dbg !2711
  %31 = trunc i64 %30 to i32, !dbg !2734
  store i32 %31, ptr @nslots, align 4, !dbg !2735, !tbaa !883
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2736
  br label %32, !dbg !2737

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2701
  call void @llvm.dbg.value(metadata ptr %33, metadata !2690, metadata !DIExpression()), !dbg !2701
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2738
  %36 = load i64, ptr %35, align 8, !dbg !2739, !tbaa !2662
  call void @llvm.dbg.value(metadata i64 %36, metadata !2696, metadata !DIExpression()), !dbg !2740
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2741
  %38 = load ptr, ptr %37, align 8, !dbg !2741, !tbaa !2650
  call void @llvm.dbg.value(metadata ptr %38, metadata !2698, metadata !DIExpression()), !dbg !2740
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2742
  %40 = load i32, ptr %39, align 4, !dbg !2742, !tbaa !1964
  %41 = or i32 %40, 1, !dbg !2743
  call void @llvm.dbg.value(metadata i32 %41, metadata !2699, metadata !DIExpression()), !dbg !2740
  %42 = load i32, ptr %3, align 8, !dbg !2744, !tbaa !1914
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2745
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2746
  %45 = load ptr, ptr %44, align 8, !dbg !2746, !tbaa !1985
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2747
  %47 = load ptr, ptr %46, align 8, !dbg !2747, !tbaa !1988
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %48, metadata !2700, metadata !DIExpression()), !dbg !2740
  %49 = icmp ugt i64 %36, %48, !dbg !2749
  br i1 %49, label %60, label %50, !dbg !2751

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2752
  call void @llvm.dbg.value(metadata i64 %51, metadata !2696, metadata !DIExpression()), !dbg !2740
  store i64 %51, ptr %35, align 8, !dbg !2754, !tbaa !2662
  %52 = icmp eq ptr %38, @slot0, !dbg !2755
  br i1 %52, label %54, label %53, !dbg !2757

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2758
  br label %54, !dbg !2758

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #42, !dbg !2759
  call void @llvm.dbg.value(metadata ptr %55, metadata !2698, metadata !DIExpression()), !dbg !2740
  store ptr %55, ptr %37, align 8, !dbg !2760, !tbaa !2650
  %56 = load i32, ptr %3, align 8, !dbg !2761, !tbaa !1914
  %57 = load ptr, ptr %44, align 8, !dbg !2762, !tbaa !1985
  %58 = load ptr, ptr %46, align 8, !dbg !2763, !tbaa !1988
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2764
  br label %60, !dbg !2765

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2740
  call void @llvm.dbg.value(metadata ptr %61, metadata !2698, metadata !DIExpression()), !dbg !2740
  store i32 %7, ptr %6, align 4, !dbg !2766, !tbaa !883
  ret ptr %61, !dbg !2767
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2768 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2772, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %1, metadata !2773, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 %2, metadata !2774, metadata !DIExpression()), !dbg !2775
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2776
  ret ptr %4, !dbg !2777
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2778 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2780, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32 0, metadata !2676, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %0, metadata !2677, metadata !DIExpression()), !dbg !2782
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2784
  ret ptr %2, !dbg !2785
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2786 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2790, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %1, metadata !2791, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i32 0, metadata !2772, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata ptr %0, metadata !2773, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %1, metadata !2774, metadata !DIExpression()), !dbg !2793
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2795
  ret ptr %3, !dbg !2796
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2797 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2801, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i32 %1, metadata !2802, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata ptr %2, metadata !2803, metadata !DIExpression()), !dbg !2805
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2806
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2804, metadata !DIExpression()), !dbg !2807
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2808), !dbg !2811
  call void @llvm.dbg.value(metadata i32 %1, metadata !2812, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2817, metadata !DIExpression()), !dbg !2820
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2820, !alias.scope !2808
  %5 = icmp eq i32 %1, 10, !dbg !2821
  br i1 %5, label %6, label %7, !dbg !2823

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2824, !noalias !2808
  unreachable, !dbg !2824

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2825, !tbaa !1914, !alias.scope !2808
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2826
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2827
  ret ptr %8, !dbg !2828
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2829 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2833, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i32 %1, metadata !2834, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata ptr %2, metadata !2835, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %3, metadata !2836, metadata !DIExpression()), !dbg !2838
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2839
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2837, metadata !DIExpression()), !dbg !2840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2841), !dbg !2844
  call void @llvm.dbg.value(metadata i32 %1, metadata !2812, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2817, metadata !DIExpression()), !dbg !2847
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2847, !alias.scope !2841
  %6 = icmp eq i32 %1, 10, !dbg !2848
  br i1 %6, label %7, label %8, !dbg !2849

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2850, !noalias !2841
  unreachable, !dbg !2850

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2851, !tbaa !1914, !alias.scope !2841
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2852
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2853
  ret ptr %9, !dbg !2854
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2855 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2859, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata ptr %1, metadata !2860, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 0, metadata !2801, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i32 %0, metadata !2802, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata ptr %1, metadata !2803, metadata !DIExpression()), !dbg !2862
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2864
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2804, metadata !DIExpression()), !dbg !2865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2866), !dbg !2869
  call void @llvm.dbg.value(metadata i32 %0, metadata !2812, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2817, metadata !DIExpression()), !dbg !2872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2872, !alias.scope !2866
  %4 = icmp eq i32 %0, 10, !dbg !2873
  br i1 %4, label %5, label %6, !dbg !2874

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2875, !noalias !2866
  unreachable, !dbg !2875

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2876, !tbaa !1914, !alias.scope !2866
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2877
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2878
  ret ptr %7, !dbg !2879
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2880 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2884, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata ptr %1, metadata !2885, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %2, metadata !2886, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i32 0, metadata !2833, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %0, metadata !2834, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata ptr %1, metadata !2835, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %2, metadata !2836, metadata !DIExpression()), !dbg !2888
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2890
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2837, metadata !DIExpression()), !dbg !2891
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2892), !dbg !2895
  call void @llvm.dbg.value(metadata i32 %0, metadata !2812, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2817, metadata !DIExpression()), !dbg !2898
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2898, !alias.scope !2892
  %5 = icmp eq i32 %0, 10, !dbg !2899
  br i1 %5, label %6, label %7, !dbg !2900

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2901, !noalias !2892
  unreachable, !dbg !2901

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2902, !tbaa !1914, !alias.scope !2892
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2903
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2904
  ret ptr %8, !dbg !2905
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2906 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2910, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %1, metadata !2911, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8 %2, metadata !2912, metadata !DIExpression()), !dbg !2914
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2915
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2913, metadata !DIExpression()), !dbg !2916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2917, !tbaa.struct !2918
  call void @llvm.dbg.value(metadata ptr %4, metadata !1931, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8 %2, metadata !1932, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i32 1, metadata !1933, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8 %2, metadata !1934, metadata !DIExpression()), !dbg !2919
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2921
  %6 = lshr i8 %2, 5, !dbg !2922
  %7 = zext i8 %6 to i64, !dbg !2922
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2923
  call void @llvm.dbg.value(metadata ptr %8, metadata !1935, metadata !DIExpression()), !dbg !2919
  %9 = and i8 %2, 31, !dbg !2924
  %10 = zext i8 %9 to i32, !dbg !2924
  call void @llvm.dbg.value(metadata i32 %10, metadata !1937, metadata !DIExpression()), !dbg !2919
  %11 = load i32, ptr %8, align 4, !dbg !2925, !tbaa !883
  %12 = lshr i32 %11, %10, !dbg !2926
  call void @llvm.dbg.value(metadata i32 %12, metadata !1938, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2919
  %13 = and i32 %12, 1, !dbg !2927
  %14 = xor i32 %13, 1, !dbg !2927
  %15 = shl nuw i32 %14, %10, !dbg !2928
  %16 = xor i32 %15, %11, !dbg !2929
  store i32 %16, ptr %8, align 4, !dbg !2929, !tbaa !883
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2930
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2931
  ret ptr %17, !dbg !2932
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2933 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2937, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i8 %1, metadata !2938, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata ptr %0, metadata !2910, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 -1, metadata !2911, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8 %1, metadata !2912, metadata !DIExpression()), !dbg !2940
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2942
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2913, metadata !DIExpression()), !dbg !2943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2944, !tbaa.struct !2918
  call void @llvm.dbg.value(metadata ptr %3, metadata !1931, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8 %1, metadata !1932, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i32 1, metadata !1933, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8 %1, metadata !1934, metadata !DIExpression()), !dbg !2945
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2947
  %5 = lshr i8 %1, 5, !dbg !2948
  %6 = zext i8 %5 to i64, !dbg !2948
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2949
  call void @llvm.dbg.value(metadata ptr %7, metadata !1935, metadata !DIExpression()), !dbg !2945
  %8 = and i8 %1, 31, !dbg !2950
  %9 = zext i8 %8 to i32, !dbg !2950
  call void @llvm.dbg.value(metadata i32 %9, metadata !1937, metadata !DIExpression()), !dbg !2945
  %10 = load i32, ptr %7, align 4, !dbg !2951, !tbaa !883
  %11 = lshr i32 %10, %9, !dbg !2952
  call void @llvm.dbg.value(metadata i32 %11, metadata !1938, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2945
  %12 = and i32 %11, 1, !dbg !2953
  %13 = xor i32 %12, 1, !dbg !2953
  %14 = shl nuw i32 %13, %9, !dbg !2954
  %15 = xor i32 %14, %10, !dbg !2955
  store i32 %15, ptr %7, align 4, !dbg !2955, !tbaa !883
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2956
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2957
  ret ptr %16, !dbg !2958
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2959 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2961, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata ptr %0, metadata !2937, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 58, metadata !2938, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata ptr %0, metadata !2910, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 -1, metadata !2911, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8 58, metadata !2912, metadata !DIExpression()), !dbg !2965
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2967
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2913, metadata !DIExpression()), !dbg !2968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2969, !tbaa.struct !2918
  call void @llvm.dbg.value(metadata ptr %2, metadata !1931, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8 58, metadata !1932, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 1, metadata !1933, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8 58, metadata !1934, metadata !DIExpression()), !dbg !2970
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2972
  call void @llvm.dbg.value(metadata ptr %3, metadata !1935, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i32 26, metadata !1937, metadata !DIExpression()), !dbg !2970
  %4 = load i32, ptr %3, align 4, !dbg !2973, !tbaa !883
  call void @llvm.dbg.value(metadata i32 %4, metadata !1938, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2970
  %5 = or i32 %4, 67108864, !dbg !2974
  store i32 %5, ptr %3, align 4, !dbg !2974, !tbaa !883
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2975
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2976
  ret ptr %6, !dbg !2977
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2978 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i64 %1, metadata !2981, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata ptr %0, metadata !2910, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %1, metadata !2911, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8 58, metadata !2912, metadata !DIExpression()), !dbg !2983
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2985
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2913, metadata !DIExpression()), !dbg !2986
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2987, !tbaa.struct !2918
  call void @llvm.dbg.value(metadata ptr %3, metadata !1931, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i8 58, metadata !1932, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i32 1, metadata !1933, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i8 58, metadata !1934, metadata !DIExpression()), !dbg !2988
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2990
  call void @llvm.dbg.value(metadata ptr %4, metadata !1935, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i32 26, metadata !1937, metadata !DIExpression()), !dbg !2988
  %5 = load i32, ptr %4, align 4, !dbg !2991, !tbaa !883
  call void @llvm.dbg.value(metadata i32 %5, metadata !1938, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2988
  %6 = or i32 %5, 67108864, !dbg !2992
  store i32 %6, ptr %4, align 4, !dbg !2992, !tbaa !883
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2993
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2994
  ret ptr %7, !dbg !2995
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2996 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2817, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3002
  call void @llvm.dbg.value(metadata i32 %0, metadata !2998, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i32 %1, metadata !2999, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata ptr %2, metadata !3000, metadata !DIExpression()), !dbg !3004
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3005
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3001, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 %1, metadata !2812, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 0, metadata !2817, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3007
  %5 = icmp eq i32 %1, 10, !dbg !3008
  br i1 %5, label %6, label %7, !dbg !3009

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3010, !noalias !3011
  unreachable, !dbg !3010

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2817, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3007
  store i32 %1, ptr %4, align 8, !dbg !3014, !tbaa.struct !2918
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3014
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %4, metadata !1931, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 58, metadata !1932, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 1, metadata !1933, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8 58, metadata !1934, metadata !DIExpression()), !dbg !3015
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3017
  call void @llvm.dbg.value(metadata ptr %9, metadata !1935, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 26, metadata !1937, metadata !DIExpression()), !dbg !3015
  %10 = load i32, ptr %9, align 4, !dbg !3018, !tbaa !883
  call void @llvm.dbg.value(metadata i32 %10, metadata !1938, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3015
  %11 = or i32 %10, 67108864, !dbg !3019
  store i32 %11, ptr %9, align 4, !dbg !3019, !tbaa !883
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3020
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3021
  ret ptr %12, !dbg !3022
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3023 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3027, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata ptr %1, metadata !3028, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata ptr %2, metadata !3029, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata ptr %3, metadata !3030, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i32 %0, metadata !3032, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %1, metadata !3037, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %2, metadata !3038, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %3, metadata !3039, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 -1, metadata !3040, metadata !DIExpression()), !dbg !3042
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3044
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3041, metadata !DIExpression()), !dbg !3045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3046, !tbaa.struct !2918
  call void @llvm.dbg.value(metadata ptr %5, metadata !1971, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata ptr %1, metadata !1972, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata ptr %2, metadata !1973, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata ptr %5, metadata !1971, metadata !DIExpression()), !dbg !3047
  store i32 10, ptr %5, align 8, !dbg !3049, !tbaa !1914
  %6 = icmp ne ptr %1, null, !dbg !3050
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3051
  br i1 %8, label %10, label %9, !dbg !3051

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3052
  unreachable, !dbg !3052

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3053
  store ptr %1, ptr %11, align 8, !dbg !3054, !tbaa !1985
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3055
  store ptr %2, ptr %12, align 8, !dbg !3056, !tbaa !1988
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3057
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3058
  ret ptr %13, !dbg !3059
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3033 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3032, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata ptr %1, metadata !3037, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata ptr %2, metadata !3038, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata ptr %3, metadata !3039, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i64 %4, metadata !3040, metadata !DIExpression()), !dbg !3060
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !3061
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3041, metadata !DIExpression()), !dbg !3062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3063, !tbaa.struct !2918
  call void @llvm.dbg.value(metadata ptr %6, metadata !1971, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %1, metadata !1972, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %2, metadata !1973, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %6, metadata !1971, metadata !DIExpression()), !dbg !3064
  store i32 10, ptr %6, align 8, !dbg !3066, !tbaa !1914
  %7 = icmp ne ptr %1, null, !dbg !3067
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3068
  br i1 %9, label %11, label %10, !dbg !3068

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !3069
  unreachable, !dbg !3069

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3070
  store ptr %1, ptr %12, align 8, !dbg !3071, !tbaa !1985
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3072
  store ptr %2, ptr %13, align 8, !dbg !3073, !tbaa !1988
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3074
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !3075
  ret ptr %14, !dbg !3076
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3077 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3081, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata ptr %1, metadata !3082, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata ptr %2, metadata !3083, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i32 0, metadata !3027, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %0, metadata !3028, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %1, metadata !3029, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata ptr %2, metadata !3030, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32 0, metadata !3032, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata ptr %0, metadata !3037, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata ptr %1, metadata !3038, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata ptr %2, metadata !3039, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i64 -1, metadata !3040, metadata !DIExpression()), !dbg !3087
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3089
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3041, metadata !DIExpression()), !dbg !3090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3091, !tbaa.struct !2918
  call void @llvm.dbg.value(metadata ptr %4, metadata !1971, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata ptr %0, metadata !1972, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata ptr %1, metadata !1973, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata ptr %4, metadata !1971, metadata !DIExpression()), !dbg !3092
  store i32 10, ptr %4, align 8, !dbg !3094, !tbaa !1914
  %5 = icmp ne ptr %0, null, !dbg !3095
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3096
  br i1 %7, label %9, label %8, !dbg !3096

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3097
  unreachable, !dbg !3097

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3098
  store ptr %0, ptr %10, align 8, !dbg !3099, !tbaa !1985
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3100
  store ptr %1, ptr %11, align 8, !dbg !3101, !tbaa !1988
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3102
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3103
  ret ptr %12, !dbg !3104
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3105 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3109, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata ptr %1, metadata !3110, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata ptr %2, metadata !3111, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %3, metadata !3112, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i32 0, metadata !3032, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata ptr %0, metadata !3037, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata ptr %1, metadata !3038, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata ptr %2, metadata !3039, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %3, metadata !3040, metadata !DIExpression()), !dbg !3114
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3116
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3041, metadata !DIExpression()), !dbg !3117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3118, !tbaa.struct !2918
  call void @llvm.dbg.value(metadata ptr %5, metadata !1971, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr %0, metadata !1972, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr %1, metadata !1973, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr %5, metadata !1971, metadata !DIExpression()), !dbg !3119
  store i32 10, ptr %5, align 8, !dbg !3121, !tbaa !1914
  %6 = icmp ne ptr %0, null, !dbg !3122
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3123
  br i1 %8, label %10, label %9, !dbg !3123

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3124
  unreachable, !dbg !3124

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3125
  store ptr %0, ptr %11, align 8, !dbg !3126, !tbaa !1985
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3127
  store ptr %1, ptr %12, align 8, !dbg !3128, !tbaa !1988
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3129
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3130
  ret ptr %13, !dbg !3131
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3132 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3136, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata ptr %1, metadata !3137, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %2, metadata !3138, metadata !DIExpression()), !dbg !3139
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3140
  ret ptr %4, !dbg !3141
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3142 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3146, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %1, metadata !3147, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i32 0, metadata !3136, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata ptr %0, metadata !3137, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 %1, metadata !3138, metadata !DIExpression()), !dbg !3149
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3151
  ret ptr %3, !dbg !3152
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3153 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3157, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %1, metadata !3158, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 %0, metadata !3136, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata ptr %1, metadata !3137, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 -1, metadata !3138, metadata !DIExpression()), !dbg !3160
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3162
  ret ptr %3, !dbg !3163
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3164 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3168, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 0, metadata !3157, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %0, metadata !3158, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i32 0, metadata !3136, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata ptr %0, metadata !3137, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i64 -1, metadata !3138, metadata !DIExpression()), !dbg !3172
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3174
  ret ptr %2, !dbg !3175
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @get_root_dev_ino(ptr noundef nonnull writeonly %0) local_unnamed_addr #26 !dbg !3176 {
  %2 = alloca %struct.stat, align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3185, metadata !DIExpression()), !dbg !3209
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #37, !dbg !3210
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3186, metadata !DIExpression()), !dbg !3211
  %3 = call i32 @lstat(ptr noundef nonnull @.str.91, ptr noundef nonnull %2) #37, !dbg !3212
  %4 = icmp eq i32 %3, 0, !dbg !3212
  br i1 %4, label %5, label %8, !dbg !3214

5:                                                ; preds = %1
  %6 = load <2 x i64>, ptr %2, align 16, !dbg !3215, !tbaa !1390
  %7 = shufflevector <2 x i64> %6, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !3216
  store <2 x i64> %7, ptr %0, align 8, !dbg !3216, !tbaa !1390
  br label %8, !dbg !3217

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %0, %5 ], [ null, %1 ], !dbg !3209
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #37, !dbg !3218
  ret ptr %9, !dbg !3218
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3219 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3258, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata ptr %1, metadata !3259, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata ptr %2, metadata !3260, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata ptr %3, metadata !3261, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata ptr %4, metadata !3262, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 %5, metadata !3263, metadata !DIExpression()), !dbg !3264
  %7 = icmp eq ptr %1, null, !dbg !3265
  br i1 %7, label %10, label %8, !dbg !3267

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.92, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3268
  br label %12, !dbg !3268

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.93, ptr noundef %2, ptr noundef %3) #37, !dbg !3269
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.3.95, i32 noundef 5) #37, !dbg !3270
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3270
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.96, ptr noundef %0), !dbg !3271
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.5.97, i32 noundef 5) #37, !dbg !3272
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.98) #37, !dbg !3272
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.96, ptr noundef %0), !dbg !3273
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
  ], !dbg !3274

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.7.99, i32 noundef 5) #37, !dbg !3275
  %21 = load ptr, ptr %4, align 8, !dbg !3275, !tbaa !819
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3275
  br label %147, !dbg !3277

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.8.100, i32 noundef 5) #37, !dbg !3278
  %25 = load ptr, ptr %4, align 8, !dbg !3278, !tbaa !819
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3278
  %27 = load ptr, ptr %26, align 8, !dbg !3278, !tbaa !819
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3278
  br label %147, !dbg !3279

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.9.101, i32 noundef 5) #37, !dbg !3280
  %31 = load ptr, ptr %4, align 8, !dbg !3280, !tbaa !819
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3280
  %33 = load ptr, ptr %32, align 8, !dbg !3280, !tbaa !819
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3280
  %35 = load ptr, ptr %34, align 8, !dbg !3280, !tbaa !819
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3280
  br label %147, !dbg !3281

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.10.102, i32 noundef 5) #37, !dbg !3282
  %39 = load ptr, ptr %4, align 8, !dbg !3282, !tbaa !819
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3282
  %41 = load ptr, ptr %40, align 8, !dbg !3282, !tbaa !819
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3282
  %43 = load ptr, ptr %42, align 8, !dbg !3282, !tbaa !819
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3282
  %45 = load ptr, ptr %44, align 8, !dbg !3282, !tbaa !819
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3282
  br label %147, !dbg !3283

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.11.103, i32 noundef 5) #37, !dbg !3284
  %49 = load ptr, ptr %4, align 8, !dbg !3284, !tbaa !819
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3284
  %51 = load ptr, ptr %50, align 8, !dbg !3284, !tbaa !819
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3284
  %53 = load ptr, ptr %52, align 8, !dbg !3284, !tbaa !819
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3284
  %55 = load ptr, ptr %54, align 8, !dbg !3284, !tbaa !819
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3284
  %57 = load ptr, ptr %56, align 8, !dbg !3284, !tbaa !819
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3284
  br label %147, !dbg !3285

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.12.104, i32 noundef 5) #37, !dbg !3286
  %61 = load ptr, ptr %4, align 8, !dbg !3286, !tbaa !819
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3286
  %63 = load ptr, ptr %62, align 8, !dbg !3286, !tbaa !819
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3286
  %65 = load ptr, ptr %64, align 8, !dbg !3286, !tbaa !819
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3286
  %67 = load ptr, ptr %66, align 8, !dbg !3286, !tbaa !819
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3286
  %69 = load ptr, ptr %68, align 8, !dbg !3286, !tbaa !819
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3286
  %71 = load ptr, ptr %70, align 8, !dbg !3286, !tbaa !819
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3286
  br label %147, !dbg !3287

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.13.105, i32 noundef 5) #37, !dbg !3288
  %75 = load ptr, ptr %4, align 8, !dbg !3288, !tbaa !819
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3288
  %77 = load ptr, ptr %76, align 8, !dbg !3288, !tbaa !819
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3288
  %79 = load ptr, ptr %78, align 8, !dbg !3288, !tbaa !819
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3288
  %81 = load ptr, ptr %80, align 8, !dbg !3288, !tbaa !819
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3288
  %83 = load ptr, ptr %82, align 8, !dbg !3288, !tbaa !819
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3288
  %85 = load ptr, ptr %84, align 8, !dbg !3288, !tbaa !819
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3288
  %87 = load ptr, ptr %86, align 8, !dbg !3288, !tbaa !819
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3288
  br label %147, !dbg !3289

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.14.106, i32 noundef 5) #37, !dbg !3290
  %91 = load ptr, ptr %4, align 8, !dbg !3290, !tbaa !819
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3290
  %93 = load ptr, ptr %92, align 8, !dbg !3290, !tbaa !819
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3290
  %95 = load ptr, ptr %94, align 8, !dbg !3290, !tbaa !819
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3290
  %97 = load ptr, ptr %96, align 8, !dbg !3290, !tbaa !819
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3290
  %99 = load ptr, ptr %98, align 8, !dbg !3290, !tbaa !819
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3290
  %101 = load ptr, ptr %100, align 8, !dbg !3290, !tbaa !819
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3290
  %103 = load ptr, ptr %102, align 8, !dbg !3290, !tbaa !819
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3290
  %105 = load ptr, ptr %104, align 8, !dbg !3290, !tbaa !819
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3290
  br label %147, !dbg !3291

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.15.107, i32 noundef 5) #37, !dbg !3292
  %109 = load ptr, ptr %4, align 8, !dbg !3292, !tbaa !819
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3292
  %111 = load ptr, ptr %110, align 8, !dbg !3292, !tbaa !819
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3292
  %113 = load ptr, ptr %112, align 8, !dbg !3292, !tbaa !819
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3292
  %115 = load ptr, ptr %114, align 8, !dbg !3292, !tbaa !819
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3292
  %117 = load ptr, ptr %116, align 8, !dbg !3292, !tbaa !819
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3292
  %119 = load ptr, ptr %118, align 8, !dbg !3292, !tbaa !819
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3292
  %121 = load ptr, ptr %120, align 8, !dbg !3292, !tbaa !819
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3292
  %123 = load ptr, ptr %122, align 8, !dbg !3292, !tbaa !819
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3292
  %125 = load ptr, ptr %124, align 8, !dbg !3292, !tbaa !819
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3292
  br label %147, !dbg !3293

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.16.108, i32 noundef 5) #37, !dbg !3294
  %129 = load ptr, ptr %4, align 8, !dbg !3294, !tbaa !819
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3294
  %131 = load ptr, ptr %130, align 8, !dbg !3294, !tbaa !819
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3294
  %133 = load ptr, ptr %132, align 8, !dbg !3294, !tbaa !819
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3294
  %135 = load ptr, ptr %134, align 8, !dbg !3294, !tbaa !819
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3294
  %137 = load ptr, ptr %136, align 8, !dbg !3294, !tbaa !819
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3294
  %139 = load ptr, ptr %138, align 8, !dbg !3294, !tbaa !819
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3294
  %141 = load ptr, ptr %140, align 8, !dbg !3294, !tbaa !819
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3294
  %143 = load ptr, ptr %142, align 8, !dbg !3294, !tbaa !819
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3294
  %145 = load ptr, ptr %144, align 8, !dbg !3294, !tbaa !819
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3294
  br label %147, !dbg !3295

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3296
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3297 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3301, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata ptr %1, metadata !3302, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata ptr %2, metadata !3303, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata ptr %3, metadata !3304, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata ptr %4, metadata !3305, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i64 0, metadata !3306, metadata !DIExpression()), !dbg !3307
  br label %6, !dbg !3308

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3310
  call void @llvm.dbg.value(metadata i64 %7, metadata !3306, metadata !DIExpression()), !dbg !3307
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3311
  %9 = load ptr, ptr %8, align 8, !dbg !3311, !tbaa !819
  %10 = icmp eq ptr %9, null, !dbg !3313
  %11 = add i64 %7, 1, !dbg !3314
  call void @llvm.dbg.value(metadata i64 %11, metadata !3306, metadata !DIExpression()), !dbg !3307
  br i1 %10, label %12, label %6, !dbg !3313, !llvm.loop !3315

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3317
  ret void, !dbg !3318
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3319 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3334, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata ptr %1, metadata !3335, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata ptr %2, metadata !3336, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata ptr %3, metadata !3337, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3338, metadata !DIExpression()), !dbg !3343
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3344
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3340, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i64 0, metadata !3339, metadata !DIExpression()), !dbg !3342
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3339, metadata !DIExpression()), !dbg !3342
  %10 = icmp sgt i32 %9, -1, !dbg !3346
  br i1 %10, label %18, label %11, !dbg !3346

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3346
  store i32 %12, ptr %7, align 8, !dbg !3346
  %13 = icmp ult i32 %9, -7, !dbg !3346
  br i1 %13, label %14, label %18, !dbg !3346

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3346
  %16 = sext i32 %9 to i64, !dbg !3346
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3346
  br label %22, !dbg !3346

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3346
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3346
  store ptr %21, ptr %4, align 8, !dbg !3346
  br label %22, !dbg !3346

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3346
  %25 = load ptr, ptr %24, align 8, !dbg !3346
  store ptr %25, ptr %6, align 8, !dbg !3349, !tbaa !819
  %26 = icmp eq ptr %25, null, !dbg !3350
  br i1 %26, label %197, label %27, !dbg !3351

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3339, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 1, metadata !3339, metadata !DIExpression()), !dbg !3342
  %28 = icmp sgt i32 %23, -1, !dbg !3346
  br i1 %28, label %36, label %29, !dbg !3346

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3346
  store i32 %30, ptr %7, align 8, !dbg !3346
  %31 = icmp ult i32 %23, -7, !dbg !3346
  br i1 %31, label %32, label %36, !dbg !3346

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3346
  %34 = sext i32 %23 to i64, !dbg !3346
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3346
  br label %40, !dbg !3346

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3346
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3346
  store ptr %39, ptr %4, align 8, !dbg !3346
  br label %40, !dbg !3346

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3346
  %43 = load ptr, ptr %42, align 8, !dbg !3346
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3352
  store ptr %43, ptr %44, align 8, !dbg !3349, !tbaa !819
  %45 = icmp eq ptr %43, null, !dbg !3350
  br i1 %45, label %197, label %46, !dbg !3351

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3339, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 2, metadata !3339, metadata !DIExpression()), !dbg !3342
  %47 = icmp sgt i32 %41, -1, !dbg !3346
  br i1 %47, label %55, label %48, !dbg !3346

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3346
  store i32 %49, ptr %7, align 8, !dbg !3346
  %50 = icmp ult i32 %41, -7, !dbg !3346
  br i1 %50, label %51, label %55, !dbg !3346

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3346
  %53 = sext i32 %41 to i64, !dbg !3346
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3346
  br label %59, !dbg !3346

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3346
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3346
  store ptr %58, ptr %4, align 8, !dbg !3346
  br label %59, !dbg !3346

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3346
  %62 = load ptr, ptr %61, align 8, !dbg !3346
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3352
  store ptr %62, ptr %63, align 8, !dbg !3349, !tbaa !819
  %64 = icmp eq ptr %62, null, !dbg !3350
  br i1 %64, label %197, label %65, !dbg !3351

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3339, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 3, metadata !3339, metadata !DIExpression()), !dbg !3342
  %66 = icmp sgt i32 %60, -1, !dbg !3346
  br i1 %66, label %74, label %67, !dbg !3346

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3346
  store i32 %68, ptr %7, align 8, !dbg !3346
  %69 = icmp ult i32 %60, -7, !dbg !3346
  br i1 %69, label %70, label %74, !dbg !3346

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3346
  %72 = sext i32 %60 to i64, !dbg !3346
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3346
  br label %78, !dbg !3346

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3346
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3346
  store ptr %77, ptr %4, align 8, !dbg !3346
  br label %78, !dbg !3346

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3346
  %81 = load ptr, ptr %80, align 8, !dbg !3346
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3352
  store ptr %81, ptr %82, align 8, !dbg !3349, !tbaa !819
  %83 = icmp eq ptr %81, null, !dbg !3350
  br i1 %83, label %197, label %84, !dbg !3351

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3339, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 4, metadata !3339, metadata !DIExpression()), !dbg !3342
  %85 = icmp sgt i32 %79, -1, !dbg !3346
  br i1 %85, label %93, label %86, !dbg !3346

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3346
  store i32 %87, ptr %7, align 8, !dbg !3346
  %88 = icmp ult i32 %79, -7, !dbg !3346
  br i1 %88, label %89, label %93, !dbg !3346

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3346
  %91 = sext i32 %79 to i64, !dbg !3346
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3346
  br label %97, !dbg !3346

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3346
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3346
  store ptr %96, ptr %4, align 8, !dbg !3346
  br label %97, !dbg !3346

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3346
  %100 = load ptr, ptr %99, align 8, !dbg !3346
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3352
  store ptr %100, ptr %101, align 8, !dbg !3349, !tbaa !819
  %102 = icmp eq ptr %100, null, !dbg !3350
  br i1 %102, label %197, label %103, !dbg !3351

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3339, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 5, metadata !3339, metadata !DIExpression()), !dbg !3342
  %104 = icmp sgt i32 %98, -1, !dbg !3346
  br i1 %104, label %112, label %105, !dbg !3346

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3346
  store i32 %106, ptr %7, align 8, !dbg !3346
  %107 = icmp ult i32 %98, -7, !dbg !3346
  br i1 %107, label %108, label %112, !dbg !3346

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3346
  %110 = sext i32 %98 to i64, !dbg !3346
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3346
  br label %116, !dbg !3346

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3346
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3346
  store ptr %115, ptr %4, align 8, !dbg !3346
  br label %116, !dbg !3346

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3346
  %119 = load ptr, ptr %118, align 8, !dbg !3346
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3352
  store ptr %119, ptr %120, align 8, !dbg !3349, !tbaa !819
  %121 = icmp eq ptr %119, null, !dbg !3350
  br i1 %121, label %197, label %122, !dbg !3351

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3339, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 6, metadata !3339, metadata !DIExpression()), !dbg !3342
  %123 = icmp sgt i32 %117, -1, !dbg !3346
  br i1 %123, label %131, label %124, !dbg !3346

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3346
  store i32 %125, ptr %7, align 8, !dbg !3346
  %126 = icmp ult i32 %117, -7, !dbg !3346
  br i1 %126, label %127, label %131, !dbg !3346

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3346
  %129 = sext i32 %117 to i64, !dbg !3346
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3346
  br label %135, !dbg !3346

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3346
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3346
  store ptr %134, ptr %4, align 8, !dbg !3346
  br label %135, !dbg !3346

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3346
  %138 = load ptr, ptr %137, align 8, !dbg !3346
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3352
  store ptr %138, ptr %139, align 8, !dbg !3349, !tbaa !819
  %140 = icmp eq ptr %138, null, !dbg !3350
  br i1 %140, label %197, label %141, !dbg !3351

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3339, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 7, metadata !3339, metadata !DIExpression()), !dbg !3342
  %142 = icmp sgt i32 %136, -1, !dbg !3346
  br i1 %142, label %150, label %143, !dbg !3346

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3346
  store i32 %144, ptr %7, align 8, !dbg !3346
  %145 = icmp ult i32 %136, -7, !dbg !3346
  br i1 %145, label %146, label %150, !dbg !3346

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3346
  %148 = sext i32 %136 to i64, !dbg !3346
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3346
  br label %154, !dbg !3346

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3346
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3346
  store ptr %153, ptr %4, align 8, !dbg !3346
  br label %154, !dbg !3346

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3346
  %157 = load ptr, ptr %156, align 8, !dbg !3346
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3352
  store ptr %157, ptr %158, align 8, !dbg !3349, !tbaa !819
  %159 = icmp eq ptr %157, null, !dbg !3350
  br i1 %159, label %197, label %160, !dbg !3351

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3339, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 8, metadata !3339, metadata !DIExpression()), !dbg !3342
  %161 = icmp sgt i32 %155, -1, !dbg !3346
  br i1 %161, label %169, label %162, !dbg !3346

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3346
  store i32 %163, ptr %7, align 8, !dbg !3346
  %164 = icmp ult i32 %155, -7, !dbg !3346
  br i1 %164, label %165, label %169, !dbg !3346

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3346
  %167 = sext i32 %155 to i64, !dbg !3346
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3346
  br label %173, !dbg !3346

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3346
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3346
  store ptr %172, ptr %4, align 8, !dbg !3346
  br label %173, !dbg !3346

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3346
  %176 = load ptr, ptr %175, align 8, !dbg !3346
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3352
  store ptr %176, ptr %177, align 8, !dbg !3349, !tbaa !819
  %178 = icmp eq ptr %176, null, !dbg !3350
  br i1 %178, label %197, label %179, !dbg !3351

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3339, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 9, metadata !3339, metadata !DIExpression()), !dbg !3342
  %180 = icmp sgt i32 %174, -1, !dbg !3346
  br i1 %180, label %188, label %181, !dbg !3346

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3346
  store i32 %182, ptr %7, align 8, !dbg !3346
  %183 = icmp ult i32 %174, -7, !dbg !3346
  br i1 %183, label %184, label %188, !dbg !3346

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3346
  %186 = sext i32 %174 to i64, !dbg !3346
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3346
  br label %191, !dbg !3346

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3346
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3346
  store ptr %190, ptr %4, align 8, !dbg !3346
  br label %191, !dbg !3346

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3346
  %193 = load ptr, ptr %192, align 8, !dbg !3346
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3352
  store ptr %193, ptr %194, align 8, !dbg !3349, !tbaa !819
  %195 = icmp eq ptr %193, null, !dbg !3350
  %196 = select i1 %195, i64 9, i64 10, !dbg !3351
  br label %197, !dbg !3351

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3353
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3354
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3355
  ret void, !dbg !3355
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3356 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3360, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata ptr %1, metadata !3361, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata ptr %2, metadata !3362, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata ptr %3, metadata !3363, metadata !DIExpression()), !dbg !3365
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !3366
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3364, metadata !DIExpression()), !dbg !3367
  call void @llvm.va_start(ptr nonnull %5), !dbg !3368
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !3369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3369, !tbaa.struct !1612
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3369
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !3369
  call void @llvm.va_end(ptr nonnull %5), !dbg !3370
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !3371
  ret void, !dbg !3371
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3372 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3373, !tbaa !819
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.96, ptr noundef %1), !dbg !3373
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.17.113, i32 noundef 5) #37, !dbg !3374
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.114) #37, !dbg !3374
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.19.115, i32 noundef 5) #37, !dbg !3375
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.116, ptr noundef nonnull @.str.21.117) #37, !dbg !3375
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.22.118, i32 noundef 5) #37, !dbg !3376
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !3376
  ret void, !dbg !3377
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3378 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3383, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %1, metadata !3384, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %2, metadata !3385, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata ptr %0, metadata !3387, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64 %1, metadata !3390, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64 %2, metadata !3391, metadata !DIExpression()), !dbg !3392
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3394
  call void @llvm.dbg.value(metadata ptr %4, metadata !3395, metadata !DIExpression()), !dbg !3400
  %5 = icmp eq ptr %4, null, !dbg !3402
  br i1 %5, label %6, label %7, !dbg !3404

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3405
  unreachable, !dbg !3405

7:                                                ; preds = %3
  ret ptr %4, !dbg !3406
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3388 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3387, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %1, metadata !3390, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i64 %2, metadata !3391, metadata !DIExpression()), !dbg !3407
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3408
  call void @llvm.dbg.value(metadata ptr %4, metadata !3395, metadata !DIExpression()), !dbg !3409
  %5 = icmp eq ptr %4, null, !dbg !3411
  br i1 %5, label %6, label %7, !dbg !3412

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3413
  unreachable, !dbg !3413

7:                                                ; preds = %3
  ret ptr %4, !dbg !3414
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3415 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3419, metadata !DIExpression()), !dbg !3420
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3421
  call void @llvm.dbg.value(metadata ptr %2, metadata !3395, metadata !DIExpression()), !dbg !3422
  %3 = icmp eq ptr %2, null, !dbg !3424
  br i1 %3, label %4, label %5, !dbg !3425

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3426
  unreachable, !dbg !3426

5:                                                ; preds = %1
  ret ptr %2, !dbg !3427
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3428 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3429 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3433, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i64 %0, metadata !3435, metadata !DIExpression()), !dbg !3439
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3441
  call void @llvm.dbg.value(metadata ptr %2, metadata !3395, metadata !DIExpression()), !dbg !3442
  %3 = icmp eq ptr %2, null, !dbg !3444
  br i1 %3, label %4, label %5, !dbg !3445

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3446
  unreachable, !dbg !3446

5:                                                ; preds = %1
  ret ptr %2, !dbg !3447
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3448 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3450, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i64 %0, metadata !3419, metadata !DIExpression()), !dbg !3452
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3454
  call void @llvm.dbg.value(metadata ptr %2, metadata !3395, metadata !DIExpression()), !dbg !3455
  %3 = icmp eq ptr %2, null, !dbg !3457
  br i1 %3, label %4, label %5, !dbg !3458

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3459
  unreachable, !dbg !3459

5:                                                ; preds = %1
  ret ptr %2, !dbg !3460
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3461 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3465, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %1, metadata !3466, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata ptr %0, metadata !3468, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %1, metadata !3472, metadata !DIExpression()), !dbg !3473
  %3 = icmp eq i64 %1, 0, !dbg !3475
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3475
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !3476
  call void @llvm.dbg.value(metadata ptr %5, metadata !3395, metadata !DIExpression()), !dbg !3477
  %6 = icmp eq ptr %5, null, !dbg !3479
  br i1 %6, label %7, label %8, !dbg !3480

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3481
  unreachable, !dbg !3481

8:                                                ; preds = %2
  ret ptr %5, !dbg !3482
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3483 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3484 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3488, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %1, metadata !3489, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %0, metadata !3491, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata i64 %1, metadata !3494, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata ptr %0, metadata !3468, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 %1, metadata !3472, metadata !DIExpression()), !dbg !3497
  %3 = icmp eq i64 %1, 0, !dbg !3499
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3499
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !3500
  call void @llvm.dbg.value(metadata ptr %5, metadata !3395, metadata !DIExpression()), !dbg !3501
  %6 = icmp eq ptr %5, null, !dbg !3503
  br i1 %6, label %7, label %8, !dbg !3504

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3505
  unreachable, !dbg !3505

8:                                                ; preds = %2
  ret ptr %5, !dbg !3506
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3507 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3511, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i64 %1, metadata !3512, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i64 %2, metadata !3513, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata ptr %0, metadata !3515, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i64 %1, metadata !3518, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i64 %2, metadata !3519, metadata !DIExpression()), !dbg !3520
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3522
  call void @llvm.dbg.value(metadata ptr %4, metadata !3395, metadata !DIExpression()), !dbg !3523
  %5 = icmp eq ptr %4, null, !dbg !3525
  br i1 %5, label %6, label %7, !dbg !3526

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3527
  unreachable, !dbg !3527

7:                                                ; preds = %3
  ret ptr %4, !dbg !3528
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3529 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3533, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i64 %1, metadata !3534, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata ptr null, metadata !3387, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64 %0, metadata !3390, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64 %1, metadata !3391, metadata !DIExpression()), !dbg !3536
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3538
  call void @llvm.dbg.value(metadata ptr %3, metadata !3395, metadata !DIExpression()), !dbg !3539
  %4 = icmp eq ptr %3, null, !dbg !3541
  br i1 %4, label %5, label %6, !dbg !3542

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3543
  unreachable, !dbg !3543

6:                                                ; preds = %2
  ret ptr %3, !dbg !3544
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3545 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3549, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 %1, metadata !3550, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata ptr null, metadata !3511, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 %0, metadata !3512, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i64 %1, metadata !3513, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata ptr null, metadata !3515, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i64 %0, metadata !3518, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i64 %1, metadata !3519, metadata !DIExpression()), !dbg !3554
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3556
  call void @llvm.dbg.value(metadata ptr %3, metadata !3395, metadata !DIExpression()), !dbg !3557
  %4 = icmp eq ptr %3, null, !dbg !3559
  br i1 %4, label %5, label %6, !dbg !3560

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3561
  unreachable, !dbg !3561

6:                                                ; preds = %2
  ret ptr %3, !dbg !3562
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3563 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3567, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata ptr %1, metadata !3568, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata ptr %0, metadata !754, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata ptr %1, metadata !755, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i64 1, metadata !756, metadata !DIExpression()), !dbg !3570
  %3 = load i64, ptr %1, align 8, !dbg !3572, !tbaa !1390
  call void @llvm.dbg.value(metadata i64 %3, metadata !757, metadata !DIExpression()), !dbg !3570
  %4 = icmp eq ptr %0, null, !dbg !3573
  br i1 %4, label %5, label %8, !dbg !3575

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3576
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3579
  br label %15, !dbg !3579

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3580
  %10 = add nuw i64 %9, 1, !dbg !3580
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3580
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3580
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %13, metadata !757, metadata !DIExpression()), !dbg !3570
  br i1 %12, label %14, label %15, !dbg !3583

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3584
  unreachable, !dbg !3584

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3570
  call void @llvm.dbg.value(metadata i64 %16, metadata !757, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata ptr %0, metadata !3387, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i64 %16, metadata !3390, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i64 1, metadata !3391, metadata !DIExpression()), !dbg !3585
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3587
  call void @llvm.dbg.value(metadata ptr %17, metadata !3395, metadata !DIExpression()), !dbg !3588
  %18 = icmp eq ptr %17, null, !dbg !3590
  br i1 %18, label %19, label %20, !dbg !3591

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3592
  unreachable, !dbg !3592

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !754, metadata !DIExpression()), !dbg !3570
  store i64 %16, ptr %1, align 8, !dbg !3593, !tbaa !1390
  ret ptr %17, !dbg !3594
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !749 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !754, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata ptr %1, metadata !755, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i64 %2, metadata !756, metadata !DIExpression()), !dbg !3595
  %4 = load i64, ptr %1, align 8, !dbg !3596, !tbaa !1390
  call void @llvm.dbg.value(metadata i64 %4, metadata !757, metadata !DIExpression()), !dbg !3595
  %5 = icmp eq ptr %0, null, !dbg !3597
  br i1 %5, label %6, label %13, !dbg !3598

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3599
  br i1 %7, label %8, label %20, !dbg !3600

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3601
  call void @llvm.dbg.value(metadata i64 %9, metadata !757, metadata !DIExpression()), !dbg !3595
  %10 = icmp ugt i64 %2, 128, !dbg !3603
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3604
  call void @llvm.dbg.value(metadata i64 %12, metadata !757, metadata !DIExpression()), !dbg !3595
  br label %20, !dbg !3605

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3606
  %15 = add nuw i64 %14, 1, !dbg !3606
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3606
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3606
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3606
  call void @llvm.dbg.value(metadata i64 %18, metadata !757, metadata !DIExpression()), !dbg !3595
  br i1 %17, label %19, label %20, !dbg !3607

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3608
  unreachable, !dbg !3608

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3595
  call void @llvm.dbg.value(metadata i64 %21, metadata !757, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata ptr %0, metadata !3387, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 %21, metadata !3390, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 %2, metadata !3391, metadata !DIExpression()), !dbg !3609
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3611
  call void @llvm.dbg.value(metadata ptr %22, metadata !3395, metadata !DIExpression()), !dbg !3612
  %23 = icmp eq ptr %22, null, !dbg !3614
  br i1 %23, label %24, label %25, !dbg !3615

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3616
  unreachable, !dbg !3616

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !754, metadata !DIExpression()), !dbg !3595
  store i64 %21, ptr %1, align 8, !dbg !3617, !tbaa !1390
  ret ptr %22, !dbg !3618
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !761 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !769, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata ptr %1, metadata !770, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %2, metadata !771, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %3, metadata !772, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %4, metadata !773, metadata !DIExpression()), !dbg !3619
  %6 = load i64, ptr %1, align 8, !dbg !3620, !tbaa !1390
  call void @llvm.dbg.value(metadata i64 %6, metadata !774, metadata !DIExpression()), !dbg !3619
  %7 = ashr i64 %6, 1, !dbg !3621
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3621
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3621
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3621
  call void @llvm.dbg.value(metadata i64 %10, metadata !775, metadata !DIExpression()), !dbg !3619
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %11, metadata !775, metadata !DIExpression()), !dbg !3619
  %12 = icmp sgt i64 %3, -1, !dbg !3624
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3626
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3626
  call void @llvm.dbg.value(metadata i64 %15, metadata !775, metadata !DIExpression()), !dbg !3619
  %16 = icmp slt i64 %4, 0, !dbg !3627
  br i1 %16, label %17, label %30, !dbg !3627

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3627
  br i1 %18, label %19, label %24, !dbg !3627

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3627
  %21 = udiv i64 9223372036854775807, %20, !dbg !3627
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3627
  br i1 %23, label %46, label %43, !dbg !3627

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3627
  br i1 %25, label %43, label %26, !dbg !3627

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3627
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3627
  %29 = icmp ult i64 %28, %15, !dbg !3627
  br i1 %29, label %46, label %43, !dbg !3627

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3627
  br i1 %31, label %43, label %32, !dbg !3627

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3627
  br i1 %33, label %34, label %40, !dbg !3627

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3627
  br i1 %35, label %43, label %36, !dbg !3627

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3627
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3627
  %39 = icmp ult i64 %38, %4, !dbg !3627
  br i1 %39, label %46, label %43, !dbg !3627

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3627
  br i1 %42, label %46, label %43, !dbg !3627

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !776, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3619
  %44 = mul i64 %15, %4, !dbg !3627
  call void @llvm.dbg.value(metadata i64 %44, metadata !776, metadata !DIExpression()), !dbg !3619
  %45 = icmp slt i64 %44, 128, !dbg !3627
  br i1 %45, label %46, label %52, !dbg !3627

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !777, metadata !DIExpression()), !dbg !3619
  %48 = sdiv i64 %47, %4, !dbg !3628
  call void @llvm.dbg.value(metadata i64 %48, metadata !775, metadata !DIExpression()), !dbg !3619
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3631
  call void @llvm.dbg.value(metadata i64 %51, metadata !776, metadata !DIExpression()), !dbg !3619
  br label %52, !dbg !3632

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3619
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3619
  call void @llvm.dbg.value(metadata i64 %54, metadata !776, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %53, metadata !775, metadata !DIExpression()), !dbg !3619
  %55 = icmp eq ptr %0, null, !dbg !3633
  br i1 %55, label %56, label %57, !dbg !3635

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3636, !tbaa !1390
  br label %57, !dbg !3637

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3638
  %59 = icmp slt i64 %58, %2, !dbg !3640
  br i1 %59, label %60, label %97, !dbg !3641

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3642
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3642
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3642
  call void @llvm.dbg.value(metadata i64 %63, metadata !775, metadata !DIExpression()), !dbg !3619
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3643
  br i1 %66, label %96, label %67, !dbg !3643

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3644

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3644
  br i1 %69, label %70, label %75, !dbg !3644

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3644
  %72 = udiv i64 9223372036854775807, %71, !dbg !3644
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3644
  br i1 %74, label %96, label %94, !dbg !3644

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3644
  br i1 %76, label %94, label %77, !dbg !3644

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3644
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3644
  %80 = icmp ult i64 %79, %63, !dbg !3644
  br i1 %80, label %96, label %94, !dbg !3644

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3644
  br i1 %82, label %94, label %83, !dbg !3644

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3644
  br i1 %84, label %85, label %91, !dbg !3644

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3644
  br i1 %86, label %94, label %87, !dbg !3644

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3644
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3644
  %90 = icmp ult i64 %89, %4, !dbg !3644
  br i1 %90, label %96, label %94, !dbg !3644

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3644
  br i1 %93, label %96, label %94, !dbg !3644

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !776, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3619
  %95 = mul i64 %63, %4, !dbg !3644
  call void @llvm.dbg.value(metadata i64 %95, metadata !776, metadata !DIExpression()), !dbg !3619
  br label %97, !dbg !3645

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #39, !dbg !3646
  unreachable, !dbg !3646

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3619
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3619
  call void @llvm.dbg.value(metadata i64 %99, metadata !776, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i64 %98, metadata !775, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata ptr %0, metadata !3465, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 %99, metadata !3466, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %0, metadata !3468, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 %99, metadata !3472, metadata !DIExpression()), !dbg !3649
  %100 = icmp eq i64 %99, 0, !dbg !3651
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3651
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #45, !dbg !3652
  call void @llvm.dbg.value(metadata ptr %102, metadata !3395, metadata !DIExpression()), !dbg !3653
  %103 = icmp eq ptr %102, null, !dbg !3655
  br i1 %103, label %104, label %105, !dbg !3656

104:                                              ; preds = %97
  tail call void @xalloc_die() #39, !dbg !3657
  unreachable, !dbg !3657

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !769, metadata !DIExpression()), !dbg !3619
  store i64 %98, ptr %1, align 8, !dbg !3658, !tbaa !1390
  ret ptr %102, !dbg !3659
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3660 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3662, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %0, metadata !3664, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i64 1, metadata !3667, metadata !DIExpression()), !dbg !3668
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !3670
  call void @llvm.dbg.value(metadata ptr %2, metadata !3395, metadata !DIExpression()), !dbg !3671
  %3 = icmp eq ptr %2, null, !dbg !3673
  br i1 %3, label %4, label %5, !dbg !3674

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3675
  unreachable, !dbg !3675

5:                                                ; preds = %1
  ret ptr %2, !dbg !3676
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3677 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3665 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3664, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata i64 %1, metadata !3667, metadata !DIExpression()), !dbg !3678
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !3679
  call void @llvm.dbg.value(metadata ptr %3, metadata !3395, metadata !DIExpression()), !dbg !3680
  %4 = icmp eq ptr %3, null, !dbg !3682
  br i1 %4, label %5, label %6, !dbg !3683

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3684
  unreachable, !dbg !3684

6:                                                ; preds = %2
  ret ptr %3, !dbg !3685
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3686 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3688, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64 %0, metadata !3690, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 1, metadata !3693, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %0, metadata !3696, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 1, metadata !3699, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 %0, metadata !3696, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 1, metadata !3699, metadata !DIExpression()), !dbg !3700
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !3702
  call void @llvm.dbg.value(metadata ptr %2, metadata !3395, metadata !DIExpression()), !dbg !3703
  %3 = icmp eq ptr %2, null, !dbg !3705
  br i1 %3, label %4, label %5, !dbg !3706

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3707
  unreachable, !dbg !3707

5:                                                ; preds = %1
  ret ptr %2, !dbg !3708
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3691 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3690, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i64 %1, metadata !3693, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i64 %0, metadata !3696, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %1, metadata !3699, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %0, metadata !3696, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %1, metadata !3699, metadata !DIExpression()), !dbg !3710
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !3712
  call void @llvm.dbg.value(metadata ptr %3, metadata !3395, metadata !DIExpression()), !dbg !3713
  %4 = icmp eq ptr %3, null, !dbg !3715
  br i1 %4, label %5, label %6, !dbg !3716

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3717
  unreachable, !dbg !3717

6:                                                ; preds = %2
  ret ptr %3, !dbg !3718
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3719 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3723, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 %1, metadata !3724, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 %1, metadata !3419, metadata !DIExpression()), !dbg !3726
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !3728
  call void @llvm.dbg.value(metadata ptr %3, metadata !3395, metadata !DIExpression()), !dbg !3729
  %4 = icmp eq ptr %3, null, !dbg !3731
  br i1 %4, label %5, label %6, !dbg !3732

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3733
  unreachable, !dbg !3733

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3734, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata ptr %0, metadata !3737, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 %1, metadata !3738, metadata !DIExpression()), !dbg !3739
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3741
  ret ptr %3, !dbg !3742
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3743 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3747, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64 %1, metadata !3748, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64 %1, metadata !3433, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %1, metadata !3435, metadata !DIExpression()), !dbg !3752
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !3754
  call void @llvm.dbg.value(metadata ptr %3, metadata !3395, metadata !DIExpression()), !dbg !3755
  %4 = icmp eq ptr %3, null, !dbg !3757
  br i1 %4, label %5, label %6, !dbg !3758

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3759
  unreachable, !dbg !3759

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3734, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata ptr %0, metadata !3737, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i64 %1, metadata !3738, metadata !DIExpression()), !dbg !3760
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3762
  ret ptr %3, !dbg !3763
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3764 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3768, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i64 %1, metadata !3769, metadata !DIExpression()), !dbg !3771
  %3 = add nsw i64 %1, 1, !dbg !3772
  call void @llvm.dbg.value(metadata i64 %3, metadata !3433, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata i64 %3, metadata !3435, metadata !DIExpression()), !dbg !3775
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !3777
  call void @llvm.dbg.value(metadata ptr %4, metadata !3395, metadata !DIExpression()), !dbg !3778
  %5 = icmp eq ptr %4, null, !dbg !3780
  br i1 %5, label %6, label %7, !dbg !3781

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3782
  unreachable, !dbg !3782

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3770, metadata !DIExpression()), !dbg !3771
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3783
  store i8 0, ptr %8, align 1, !dbg !3784, !tbaa !892
  call void @llvm.dbg.value(metadata ptr %4, metadata !3734, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata ptr %0, metadata !3737, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i64 %1, metadata !3738, metadata !DIExpression()), !dbg !3785
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3787
  ret ptr %4, !dbg !3788
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3789 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3791, metadata !DIExpression()), !dbg !3792
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3793
  %3 = add i64 %2, 1, !dbg !3794
  call void @llvm.dbg.value(metadata ptr %0, metadata !3723, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 %3, metadata !3724, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 %3, metadata !3419, metadata !DIExpression()), !dbg !3797
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !3799
  call void @llvm.dbg.value(metadata ptr %4, metadata !3395, metadata !DIExpression()), !dbg !3800
  %5 = icmp eq ptr %4, null, !dbg !3802
  br i1 %5, label %6, label %7, !dbg !3803

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3804
  unreachable, !dbg !3804

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3734, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata ptr %0, metadata !3737, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i64 %3, metadata !3738, metadata !DIExpression()), !dbg !3805
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3807
  ret ptr %4, !dbg !3808
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3809 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3814, !tbaa !883
  call void @llvm.dbg.value(metadata i32 %1, metadata !3811, metadata !DIExpression()), !dbg !3815
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.133, ptr noundef nonnull @.str.2.134, i32 noundef 5) #37, !dbg !3814
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef %2) #37, !dbg !3814
  %3 = icmp eq i32 %1, 0, !dbg !3814
  tail call void @llvm.assume(i1 %3), !dbg !3814
  tail call void @abort() #39, !dbg !3816
  unreachable, !dbg !3816
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xgetcwd() local_unnamed_addr #10 !dbg !3817 {
  %1 = tail call ptr @getcwd(ptr noundef null, i64 noundef 0) #37, !dbg !3821
  call void @llvm.dbg.value(metadata ptr %1, metadata !3820, metadata !DIExpression()), !dbg !3822
  %2 = icmp eq ptr %1, null, !dbg !3823
  br i1 %2, label %3, label %8, !dbg !3825

3:                                                ; preds = %0
  %4 = tail call ptr @__errno_location() #40, !dbg !3826
  %5 = load i32, ptr %4, align 4, !dbg !3826, !tbaa !883
  %6 = icmp eq i32 %5, 12, !dbg !3827
  br i1 %6, label %7, label %8, !dbg !3828

7:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3829
  unreachable, !dbg !3829

8:                                                ; preds = %3, %0
  ret ptr %1, !dbg !3830
}

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3831 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3869, metadata !DIExpression()), !dbg !3874
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3875
  call void @llvm.dbg.value(metadata i1 poison, metadata !3870, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3874
  call void @llvm.dbg.value(metadata ptr %0, metadata !3876, metadata !DIExpression()), !dbg !3879
  %3 = load i32, ptr %0, align 8, !dbg !3881, !tbaa !3882
  %4 = and i32 %3, 32, !dbg !3883
  %5 = icmp eq i32 %4, 0, !dbg !3883
  call void @llvm.dbg.value(metadata i1 %5, metadata !3872, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3874
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3884
  %7 = icmp eq i32 %6, 0, !dbg !3885
  call void @llvm.dbg.value(metadata i1 %7, metadata !3873, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3874
  br i1 %5, label %8, label %18, !dbg !3886

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3888
  call void @llvm.dbg.value(metadata i1 %9, metadata !3870, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3874
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3889
  %11 = xor i1 %7, true, !dbg !3889
  %12 = sext i1 %11 to i32, !dbg !3889
  br i1 %10, label %21, label %13, !dbg !3889

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3890
  %15 = load i32, ptr %14, align 4, !dbg !3890, !tbaa !883
  %16 = icmp ne i32 %15, 9, !dbg !3891
  %17 = sext i1 %16 to i32, !dbg !3892
  br label %21, !dbg !3892

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3893

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3895
  store i32 0, ptr %20, align 4, !dbg !3897, !tbaa !883
  br label %21, !dbg !3895

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3874
  ret i32 %22, !dbg !3898
}

; Function Attrs: nounwind
declare !dbg !3899 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3903 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3941, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 0, metadata !3942, metadata !DIExpression()), !dbg !3945
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3946
  call void @llvm.dbg.value(metadata i32 %2, metadata !3943, metadata !DIExpression()), !dbg !3945
  %3 = icmp slt i32 %2, 0, !dbg !3947
  br i1 %3, label %4, label %6, !dbg !3949

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3950
  br label %24, !dbg !3951

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3952
  %8 = icmp eq i32 %7, 0, !dbg !3952
  br i1 %8, label %13, label %9, !dbg !3954

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3955
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3956
  %12 = icmp eq i64 %11, -1, !dbg !3957
  br i1 %12, label %16, label %13, !dbg !3958

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3959
  %15 = icmp eq i32 %14, 0, !dbg !3959
  br i1 %15, label %16, label %18, !dbg !3960

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3942, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 0, metadata !3944, metadata !DIExpression()), !dbg !3945
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3961
  call void @llvm.dbg.value(metadata i32 %17, metadata !3944, metadata !DIExpression()), !dbg !3945
  br label %24, !dbg !3962

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3963
  %20 = load i32, ptr %19, align 4, !dbg !3963, !tbaa !883
  call void @llvm.dbg.value(metadata i32 %20, metadata !3942, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 0, metadata !3944, metadata !DIExpression()), !dbg !3945
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3961
  call void @llvm.dbg.value(metadata i32 %21, metadata !3944, metadata !DIExpression()), !dbg !3945
  %22 = icmp eq i32 %20, 0, !dbg !3964
  br i1 %22, label %24, label %23, !dbg !3962

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3966, !tbaa !883
  call void @llvm.dbg.value(metadata i32 -1, metadata !3944, metadata !DIExpression()), !dbg !3945
  br label %24, !dbg !3968

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3945
  ret i32 %25, !dbg !3969
}

; Function Attrs: nofree nounwind
declare !dbg !3970 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3971 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3972 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3973 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3976 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4014, metadata !DIExpression()), !dbg !4015
  %2 = icmp eq ptr %0, null, !dbg !4016
  br i1 %2, label %6, label %3, !dbg !4018

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !4019
  %5 = icmp eq i32 %4, 0, !dbg !4019
  br i1 %5, label %6, label %8, !dbg !4020

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4021
  br label %16, !dbg !4022

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4023, metadata !DIExpression()), !dbg !4028
  %9 = load i32, ptr %0, align 8, !dbg !4030, !tbaa !3882
  %10 = and i32 %9, 256, !dbg !4032
  %11 = icmp eq i32 %10, 0, !dbg !4032
  br i1 %11, label %14, label %12, !dbg !4033

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !4034
  br label %14, !dbg !4034

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4035
  br label %16, !dbg !4036

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4015
  ret i32 %17, !dbg !4037
}

; Function Attrs: nofree nounwind
declare !dbg !4038 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4039 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4078, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 %1, metadata !4079, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 %2, metadata !4080, metadata !DIExpression()), !dbg !4084
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4085
  %5 = load ptr, ptr %4, align 8, !dbg !4085, !tbaa !4086
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4087
  %7 = load ptr, ptr %6, align 8, !dbg !4087, !tbaa !4088
  %8 = icmp eq ptr %5, %7, !dbg !4089
  br i1 %8, label %9, label %27, !dbg !4090

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4091
  %11 = load ptr, ptr %10, align 8, !dbg !4091, !tbaa !1725
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4092
  %13 = load ptr, ptr %12, align 8, !dbg !4092, !tbaa !4093
  %14 = icmp eq ptr %11, %13, !dbg !4094
  br i1 %14, label %15, label %27, !dbg !4095

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4096
  %17 = load ptr, ptr %16, align 8, !dbg !4096, !tbaa !4097
  %18 = icmp eq ptr %17, null, !dbg !4098
  br i1 %18, label %19, label %27, !dbg !4099

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4100
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !4101
  call void @llvm.dbg.value(metadata i64 %21, metadata !4081, metadata !DIExpression()), !dbg !4102
  %22 = icmp eq i64 %21, -1, !dbg !4103
  br i1 %22, label %29, label %23, !dbg !4105

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4106, !tbaa !3882
  %25 = and i32 %24, -17, !dbg !4106
  store i32 %25, ptr %0, align 8, !dbg !4106, !tbaa !3882
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4107
  store i64 %21, ptr %26, align 8, !dbg !4108, !tbaa !4109
  br label %29, !dbg !4110

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4111
  br label %29, !dbg !4112

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4084
  ret i32 %30, !dbg !4113
}

; Function Attrs: nofree nounwind
declare !dbg !4114 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4117 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4122, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata ptr %1, metadata !4123, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i64 %2, metadata !4124, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata ptr %3, metadata !4125, metadata !DIExpression()), !dbg !4127
  %5 = icmp eq ptr %1, null, !dbg !4128
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4130
  %7 = select i1 %5, ptr @.str.148, ptr %1, !dbg !4130
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4130
  call void @llvm.dbg.value(metadata i64 %8, metadata !4124, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata ptr %7, metadata !4123, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata ptr %6, metadata !4122, metadata !DIExpression()), !dbg !4127
  %9 = icmp eq ptr %3, null, !dbg !4131
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4133
  call void @llvm.dbg.value(metadata ptr %10, metadata !4125, metadata !DIExpression()), !dbg !4127
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #37, !dbg !4134
  call void @llvm.dbg.value(metadata i64 %11, metadata !4126, metadata !DIExpression()), !dbg !4127
  %12 = icmp ult i64 %11, -3, !dbg !4135
  br i1 %12, label %13, label %17, !dbg !4137

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !4138
  %15 = icmp eq i32 %14, 0, !dbg !4138
  br i1 %15, label %16, label %29, !dbg !4139

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4140, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr %10, metadata !4147, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i32 0, metadata !4150, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i64 8, metadata !4151, metadata !DIExpression()), !dbg !4152
  store i64 0, ptr %10, align 1, !dbg !4154
  br label %29, !dbg !4155

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4156
  br i1 %18, label %19, label %20, !dbg !4158

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !4159
  unreachable, !dbg !4159

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4160

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !4162
  br i1 %23, label %29, label %24, !dbg !4163

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4164
  br i1 %25, label %29, label %26, !dbg !4167

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4168, !tbaa !892
  %28 = zext i8 %27 to i32, !dbg !4169
  store i32 %28, ptr %6, align 4, !dbg !4170, !tbaa !883
  br label %29, !dbg !4171

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4127
  ret i64 %30, !dbg !4172
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4173 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4179 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4181, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i64 %1, metadata !4182, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i64 %2, metadata !4183, metadata !DIExpression()), !dbg !4185
  %4 = icmp eq i64 %2, 0, !dbg !4186
  br i1 %4, label %8, label %5, !dbg !4186

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4186
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4186
  br i1 %7, label %13, label %8, !dbg !4186

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4184, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4185
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4184, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4185
  %9 = mul i64 %2, %1, !dbg !4186
  call void @llvm.dbg.value(metadata i64 %9, metadata !4184, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata ptr %0, metadata !4188, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i64 %9, metadata !4191, metadata !DIExpression()), !dbg !4192
  %10 = icmp eq i64 %9, 0, !dbg !4194
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4194
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #45, !dbg !4195
  br label %15, !dbg !4196

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4184, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4185
  %14 = tail call ptr @__errno_location() #40, !dbg !4197
  store i32 12, ptr %14, align 4, !dbg !4199, !tbaa !883
  br label %15, !dbg !4200

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4185
  ret ptr %16, !dbg !4201
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4202 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4206, metadata !DIExpression()), !dbg !4211
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4212
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4207, metadata !DIExpression()), !dbg !4213
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4214
  %4 = icmp eq i32 %3, 0, !dbg !4214
  br i1 %4, label %5, label %12, !dbg !4216

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4217, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata ptr @.str.153, metadata !4220, metadata !DIExpression()), !dbg !4221
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.153, i64 2), !dbg !4224
  %7 = icmp eq i32 %6, 0, !dbg !4225
  br i1 %7, label %11, label %8, !dbg !4226

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4217, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata ptr @.str.1.154, metadata !4220, metadata !DIExpression()), !dbg !4227
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.154, i64 6), !dbg !4229
  %10 = icmp eq i32 %9, 0, !dbg !4230
  br i1 %10, label %11, label %12, !dbg !4231

11:                                               ; preds = %8, %5
  br label %12, !dbg !4232

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4211
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4233
  ret i1 %13, !dbg !4233
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4234 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4238, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata ptr %1, metadata !4239, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i64 %2, metadata !4240, metadata !DIExpression()), !dbg !4241
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4242
  ret i32 %4, !dbg !4243
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4244 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4248, metadata !DIExpression()), !dbg !4249
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4250
  ret ptr %2, !dbg !4251
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4252 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4254, metadata !DIExpression()), !dbg !4256
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4257
  call void @llvm.dbg.value(metadata ptr %2, metadata !4255, metadata !DIExpression()), !dbg !4256
  ret ptr %2, !dbg !4258
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4259 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4261, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata ptr %1, metadata !4262, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %2, metadata !4263, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i32 %0, metadata !4254, metadata !DIExpression()), !dbg !4269
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4271
  call void @llvm.dbg.value(metadata ptr %4, metadata !4255, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata ptr %4, metadata !4264, metadata !DIExpression()), !dbg !4268
  %5 = icmp eq ptr %4, null, !dbg !4272
  br i1 %5, label %6, label %9, !dbg !4273

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4274
  br i1 %7, label %19, label %8, !dbg !4277

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4278, !tbaa !892
  br label %19, !dbg !4279

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4280
  call void @llvm.dbg.value(metadata i64 %10, metadata !4265, metadata !DIExpression()), !dbg !4281
  %11 = icmp ult i64 %10, %2, !dbg !4282
  br i1 %11, label %12, label %14, !dbg !4284

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4285
  call void @llvm.dbg.value(metadata ptr %1, metadata !4287, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata ptr %4, metadata !4290, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i64 %13, metadata !4291, metadata !DIExpression()), !dbg !4292
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !4294
  br label %19, !dbg !4295

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4296
  br i1 %15, label %19, label %16, !dbg !4299

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4300
  call void @llvm.dbg.value(metadata ptr %1, metadata !4287, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr %4, metadata !4290, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %17, metadata !4291, metadata !DIExpression()), !dbg !4302
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4304
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4305
  store i8 0, ptr %18, align 1, !dbg !4306, !tbaa !892
  br label %19, !dbg !4307

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4308
  ret i32 %20, !dbg !4309
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
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { nounwind allocsize(0) }
attributes #43 = { nounwind allocsize(0,1) }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!79, !406, !410, !425, !700, !734, !479, !493, !541, !736, !738, !692, !745, !779, !781, !783, !785, !787, !789, !716, !791, !794, !796, !798}
!llvm.ident = !{!800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800}
!llvm.module.flags = !{!801, !802, !803, !804, !805, !806, !807}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/pwd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "706e724ab654cd1fe336b61765fe7047")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 23)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 60)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 81)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 48)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 50)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 62)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 44)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 185)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 325, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 16)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 329, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 1)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 330, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 10)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 330, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 24)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 337, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 3)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "longopts", scope: !79, file: !2, line: 39, type: !391, isLocal: true, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !80, retainedTypes: !120, globals: !130, splitDebugInlining: false, nameTableKind: None)
!80 = !{!81, !87, !103, !117}
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 337, baseType: !83, size: 32, elements: !84)
!82 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!86 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 46, baseType: !89, size: 32, elements: !90)
!88 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!89 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!91 = !DIEnumerator(name: "_ISupper", value: 256)
!92 = !DIEnumerator(name: "_ISlower", value: 512)
!93 = !DIEnumerator(name: "_ISalpha", value: 1024)
!94 = !DIEnumerator(name: "_ISdigit", value: 2048)
!95 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!96 = !DIEnumerator(name: "_ISspace", value: 8192)
!97 = !DIEnumerator(name: "_ISprint", value: 16384)
!98 = !DIEnumerator(name: "_ISgraph", value: 32768)
!99 = !DIEnumerator(name: "_ISblank", value: 1)
!100 = !DIEnumerator(name: "_IScntrl", value: 2)
!101 = !DIEnumerator(name: "_ISpunct", value: 4)
!102 = !DIEnumerator(name: "_ISalnum", value: 8)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !104, line: 42, baseType: !89, size: 32, elements: !105)
!104 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!106 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!107 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!108 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!109 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!110 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!111 = !DIEnumerator(name: "c_quoting_style", value: 5)
!112 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!113 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!114 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!115 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!116 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 120, baseType: !89, size: 32, elements: !118)
!118 = !{!119}
!119 = !DIEnumerator(name: "NOT_AN_INODE_NUMBER", value: 0)
!120 = !{!121, !122, !83, !123, !124, !127, !129}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!123 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 46, baseType: !126)
!125 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!126 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!129 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!130 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !67, !72, !131, !136, !141, !146, !229, !234, !236, !238, !243, !248, !250, !252, !254, !256, !258, !260, !265, !270, !272, !274, !276, !278, !280, !282, !287, !292, !297, !302, !304, !306, !308, !310, !312, !317, !319, !321, !326, !331, !336, !341, !343, !348, !350, !77, !352, !354, !356, !358, !363, !365, !370, !372, !377, !379, !384, !389}
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 351, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 14)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 351, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 13)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 30)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !148, file: !82, line: 575, type: !83, isLocal: true, isDefinition: true)
!148 = distinct !DISubprogram(name: "oputs_", scope: !82, file: !82, line: 573, type: !149, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !151)
!149 = !DISubroutineType(cc: DW_CC_nocall, types: !150)
!150 = !{null, !127, !127}
!151 = !{!152, !153, !154, !157, !159, !160, !161, !165, !166, !167, !168, !170, !223, !224, !225, !227, !228}
!152 = !DILocalVariable(name: "program", arg: 1, scope: !148, file: !82, line: 573, type: !127)
!153 = !DILocalVariable(name: "option", arg: 2, scope: !148, file: !82, line: 573, type: !127)
!154 = !DILocalVariable(name: "term", scope: !155, file: !82, line: 585, type: !127)
!155 = distinct !DILexicalBlock(scope: !156, file: !82, line: 582, column: 5)
!156 = distinct !DILexicalBlock(scope: !148, file: !82, line: 581, column: 7)
!157 = !DILocalVariable(name: "double_space", scope: !148, file: !82, line: 594, type: !158)
!158 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!159 = !DILocalVariable(name: "first_word", scope: !148, file: !82, line: 595, type: !127)
!160 = !DILocalVariable(name: "option_text", scope: !148, file: !82, line: 596, type: !127)
!161 = !DILocalVariable(name: "s", scope: !162, file: !82, line: 608, type: !127)
!162 = distinct !DILexicalBlock(scope: !163, file: !82, line: 605, column: 5)
!163 = distinct !DILexicalBlock(scope: !164, file: !82, line: 604, column: 12)
!164 = distinct !DILexicalBlock(scope: !148, file: !82, line: 597, column: 7)
!165 = !DILocalVariable(name: "spaces", scope: !162, file: !82, line: 609, type: !124)
!166 = !DILocalVariable(name: "anchor_len", scope: !148, file: !82, line: 620, type: !124)
!167 = !DILocalVariable(name: "desc_text", scope: !148, file: !82, line: 625, type: !127)
!168 = !DILocalVariable(name: "__ptr", scope: !169, file: !82, line: 644, type: !127)
!169 = distinct !DILexicalBlock(scope: !148, file: !82, line: 644, column: 3)
!170 = !DILocalVariable(name: "__stream", scope: !169, file: !82, line: 644, type: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !174)
!173 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !176)
!175 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !192, !194, !195, !196, !200, !201, !203, !204, !207, !209, !212, !215, !216, !217, !218, !219}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !174, file: !175, line: 51, baseType: !83, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !174, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !174, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !174, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !174, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !174, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !174, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !174, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !174, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !174, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !174, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !174, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !174, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !175, line: 36, flags: DIFlagFwdDecl)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !174, file: !175, line: 70, baseType: !193, size: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !174, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !174, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !174, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !198, line: 152, baseType: !199)
!198 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!199 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !174, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !174, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!202 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !174, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !174, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !175, line: 43, baseType: null)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !174, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !198, line: 153, baseType: !199)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !174, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !175, line: 37, flags: DIFlagFwdDecl)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !174, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !175, line: 38, flags: DIFlagFwdDecl)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !174, file: !175, line: 93, baseType: !193, size: 64, offset: 1344)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !174, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !174, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !174, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !174, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 20)
!223 = !DILocalVariable(name: "__cnt", scope: !169, file: !82, line: 644, type: !124)
!224 = !DILocalVariable(name: "url_program", scope: !148, file: !82, line: 648, type: !127)
!225 = !DILocalVariable(name: "__ptr", scope: !226, file: !82, line: 686, type: !127)
!226 = distinct !DILexicalBlock(scope: !148, file: !82, line: 686, column: 3)
!227 = !DILocalVariable(name: "__stream", scope: !226, file: !82, line: 686, type: !171)
!228 = !DILocalVariable(name: "__cnt", scope: !226, file: !82, line: 686, type: !124)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !82, line: 585, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 5)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !82, line: 586, type: !231, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !82, line: 595, type: !19, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !82, line: 620, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 6)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !82, line: 648, type: !245, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 2)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !82, line: 648, type: !231, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !82, line: 649, type: !19, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !82, line: 649, type: !74, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !82, line: 650, type: !231, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !82, line: 651, type: !240, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !82, line: 651, type: !240, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !82, line: 652, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 7)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !82, line: 653, type: !267, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 8)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !82, line: 654, type: !64, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !82, line: 655, type: !64, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !82, line: 656, type: !64, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !82, line: 657, type: !64, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !82, line: 663, type: !262, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !82, line: 664, type: !64, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !82, line: 669, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 17)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !82, line: 669, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 40)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !82, line: 676, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 15)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !82, line: 676, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 61)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !82, line: 679, type: !74, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !82, line: 683, type: !231, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !82, line: 688, type: !231, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !82, line: 691, type: !267, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !82, line: 839, type: !54, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !82, line: 840, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 22)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !82, line: 841, type: !294, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !82, line: 862, type: !19, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !82, line: 868, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 71)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !82, line: 875, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 27)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !82, line: 877, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 51)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !82, line: 877, type: !338, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 12)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !267, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 9)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !231, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !267, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !2, line: 296, type: !19, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !2, line: 302, type: !74, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !2, line: 313, type: !245, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !2, line: 269, type: !360, isLocal: true, isDefinition: true)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 31)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !2, line: 269, type: !245, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !2, line: 274, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 18)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !74, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !374, isLocal: true, isDefinition: true)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 25)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !314, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !381, isLocal: true, isDefinition: true)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 21)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !386, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 57)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !19, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 1280, elements: !232)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !394, line: 50, size: 256, elements: !395)
!394 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!395 = !{!396, !397, !398, !400}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !394, line: 52, baseType: !127, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !393, file: !394, line: 55, baseType: !83, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !393, file: !394, line: 56, baseType: !399, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !393, file: !394, line: 57, baseType: !83, size: 32, offset: 192)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !403, line: 3, type: !294, isLocal: true, isDefinition: true)
!403 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "Version", scope: !406, file: !403, line: 3, type: !127, isLocal: false, isDefinition: true)
!406 = distinct !DICompileUnit(language: DW_LANG_C11, file: !403, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !407, splitDebugInlining: false, nameTableKind: None)
!407 = !{!401, !404}
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "file_name", scope: !410, file: !411, line: 45, type: !127, isLocal: true, isDefinition: true)
!410 = distinct !DICompileUnit(language: DW_LANG_C11, file: !411, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !412, splitDebugInlining: false, nameTableKind: None)
!411 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!412 = !{!413, !415, !417, !419, !408, !421}
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !411, line: 121, type: !262, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !411, line: 121, type: !338, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !411, line: 123, type: !262, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !411, line: 126, type: !74, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !410, file: !411, line: 55, type: !158, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !425, file: !426, line: 66, type: !474, isLocal: false, isDefinition: true)
!425 = distinct !DICompileUnit(language: DW_LANG_C11, file: !426, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !427, globals: !428, splitDebugInlining: false, nameTableKind: None)
!426 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!427 = !{!121, !129}
!428 = !{!429, !431, !456, !458, !460, !462, !423, !464, !466, !468, !470, !472}
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !426, line: 272, type: !231, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "old_file_name", scope: !433, file: !426, line: 304, type: !127, isLocal: true, isDefinition: true)
!433 = distinct !DISubprogram(name: "verror_at_line", scope: !426, file: !426, line: 298, type: !434, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !449)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !83, !83, !127, !89, !127, !436}
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !437, line: 52, baseType: !438)
!437 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !439, line: 14, baseType: !440)
!439 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !441, baseType: !442)
!441 = !DIFile(filename: "lib/error.c", directory: "/src")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !443)
!443 = !{!444, !445, !446, !447, !448}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !442, file: !441, baseType: !121, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !442, file: !441, baseType: !121, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !442, file: !441, baseType: !121, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !442, file: !441, baseType: !83, size: 32, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !442, file: !441, baseType: !83, size: 32, offset: 224)
!449 = !{!450, !451, !452, !453, !454, !455}
!450 = !DILocalVariable(name: "status", arg: 1, scope: !433, file: !426, line: 298, type: !83)
!451 = !DILocalVariable(name: "errnum", arg: 2, scope: !433, file: !426, line: 298, type: !83)
!452 = !DILocalVariable(name: "file_name", arg: 3, scope: !433, file: !426, line: 298, type: !127)
!453 = !DILocalVariable(name: "line_number", arg: 4, scope: !433, file: !426, line: 298, type: !89)
!454 = !DILocalVariable(name: "message", arg: 5, scope: !433, file: !426, line: 298, type: !127)
!455 = !DILocalVariable(name: "args", arg: 6, scope: !433, file: !426, line: 298, type: !436)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(name: "old_line_number", scope: !433, file: !426, line: 305, type: !89, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !426, line: 338, type: !19, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !426, line: 346, type: !267, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !426, line: 346, type: !245, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "error_message_count", scope: !425, file: !426, line: 69, type: !89, isLocal: false, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !425, file: !426, line: 295, type: !83, isLocal: false, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !426, line: 208, type: !262, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !426, line: 208, type: !381, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !426, line: 214, type: !231, isLocal: true, isDefinition: true)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null}
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "program_name", scope: !479, file: !480, line: 31, type: !127, isLocal: false, isDefinition: true)
!479 = distinct !DICompileUnit(language: DW_LANG_C11, file: !480, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !481, globals: !482, splitDebugInlining: false, nameTableKind: None)
!480 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!481 = !{!122}
!482 = !{!477, !483, !485}
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !480, line: 46, type: !267, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !480, line: 49, type: !19, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "utf07FF", scope: !489, file: !490, line: 46, type: !517, isLocal: true, isDefinition: true)
!489 = distinct !DISubprogram(name: "proper_name_lite", scope: !490, file: !490, line: 38, type: !491, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !495)
!490 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!491 = !DISubroutineType(types: !492)
!492 = !{!127, !127, !127}
!493 = distinct !DICompileUnit(language: DW_LANG_C11, file: !490, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !494, splitDebugInlining: false, nameTableKind: None)
!494 = !{!487}
!495 = !{!496, !497, !498, !499, !504}
!496 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !489, file: !490, line: 38, type: !127)
!497 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !489, file: !490, line: 38, type: !127)
!498 = !DILocalVariable(name: "translation", scope: !489, file: !490, line: 40, type: !127)
!499 = !DILocalVariable(name: "w", scope: !489, file: !490, line: 47, type: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !501, line: 37, baseType: !502)
!501 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !198, line: 57, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !198, line: 42, baseType: !89)
!504 = !DILocalVariable(name: "mbs", scope: !489, file: !490, line: 48, type: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !506, line: 6, baseType: !507)
!506 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !508, line: 21, baseType: !509)
!508 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 13, size: 64, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !509, file: !508, line: 15, baseType: !83, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !509, file: !508, line: 20, baseType: !513, size: 32, offset: 32)
!513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !508, line: 16, size: 32, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !513, file: !508, line: 18, baseType: !89, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !513, file: !508, line: 19, baseType: !19, size: 32)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 16, elements: !246)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !520, line: 78, type: !267, isLocal: true, isDefinition: true)
!520 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !520, line: 79, type: !240, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !520, line: 80, type: !138, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !520, line: 81, type: !138, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !520, line: 82, type: !220, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !520, line: 83, type: !245, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !520, line: 84, type: !267, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !520, line: 85, type: !262, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !520, line: 86, type: !262, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !520, line: 87, type: !267, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !541, file: !520, line: 76, type: !613, isLocal: false, isDefinition: true)
!541 = distinct !DICompileUnit(language: DW_LANG_C11, file: !520, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !542, retainedTypes: !548, globals: !549, splitDebugInlining: false, nameTableKind: None)
!542 = !{!103, !543, !87}
!543 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !104, line: 254, baseType: !89, size: 32, elements: !544)
!544 = !{!545, !546, !547}
!545 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!546 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!547 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!548 = !{!83, !123, !124}
!549 = !{!518, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !550, !554, !564, !566, !571, !573, !575, !577, !579, !602, !609, !611}
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !541, file: !520, line: 92, type: !552, isLocal: false, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 320, elements: !65)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !541, file: !520, line: 1040, type: !556, isLocal: false, isDefinition: true)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !520, line: 56, size: 448, elements: !557)
!557 = !{!558, !559, !560, !562, !563}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !556, file: !520, line: 59, baseType: !103, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !556, file: !520, line: 62, baseType: !83, size: 32, offset: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !556, file: !520, line: 66, baseType: !561, size: 256, offset: 64)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 256, elements: !268)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !556, file: !520, line: 69, baseType: !127, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !556, file: !520, line: 72, baseType: !127, size: 64, offset: 384)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !541, file: !520, line: 107, type: !556, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "slot0", scope: !541, file: !520, line: 831, type: !568, isLocal: true, isDefinition: true)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 256)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !520, line: 321, type: !245, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !520, line: 357, type: !245, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !520, line: 358, type: !245, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !520, line: 199, type: !262, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(name: "quote", scope: !581, file: !520, line: 228, type: !600, isLocal: true, isDefinition: true)
!581 = distinct !DISubprogram(name: "gettext_quote", scope: !520, file: !520, line: 197, type: !582, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !584)
!582 = !DISubroutineType(types: !583)
!583 = !{!127, !127, !103}
!584 = !{!585, !586, !587, !588, !589}
!585 = !DILocalVariable(name: "msgid", arg: 1, scope: !581, file: !520, line: 197, type: !127)
!586 = !DILocalVariable(name: "s", arg: 2, scope: !581, file: !520, line: 197, type: !103)
!587 = !DILocalVariable(name: "translation", scope: !581, file: !520, line: 199, type: !127)
!588 = !DILocalVariable(name: "w", scope: !581, file: !520, line: 229, type: !500)
!589 = !DILocalVariable(name: "mbs", scope: !581, file: !520, line: 230, type: !590)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !506, line: 6, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !508, line: 21, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 13, size: 64, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !592, file: !508, line: 15, baseType: !83, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !592, file: !508, line: 20, baseType: !596, size: 32, offset: 32)
!596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !592, file: !508, line: 16, size: 32, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !596, file: !508, line: 18, baseType: !89, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !596, file: !508, line: 19, baseType: !19, size: 32)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !601)
!601 = !{!247, !21}
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "slotvec", scope: !541, file: !520, line: 834, type: !604, isLocal: true, isDefinition: true)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !520, line: 823, size: 128, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !605, file: !520, line: 825, baseType: !124, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !605, file: !520, line: 826, baseType: !122, size: 64, offset: 64)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(name: "nslots", scope: !541, file: !520, line: 832, type: !83, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(name: "slotvec0", scope: !541, file: !520, line: 833, type: !605, isLocal: true, isDefinition: true)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 704, elements: !615)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!615 = !{!616}
!616 = !DISubrange(count: 11)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !619, line: 32, type: !245, isLocal: true, isDefinition: true)
!619 = !DIFile(filename: "lib/root-dev-ino.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b0632229108c1521929601778d55996f")
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !622, line: 67, type: !338, isLocal: true, isDefinition: true)
!622 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !622, line: 69, type: !262, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !622, line: 83, type: !262, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !622, line: 83, type: !19, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !622, line: 85, type: !245, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !622, line: 88, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 171)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !622, line: 88, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 34)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !622, line: 105, type: !54, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !622, line: 109, type: !9, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !622, line: 113, type: !647, isLocal: true, isDefinition: true)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 28)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !622, line: 120, type: !652, isLocal: true, isDefinition: true)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 32)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !622, line: 127, type: !657, isLocal: true, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 36)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !622, line: 134, type: !289, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !622, line: 142, type: !44, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !622, line: 150, type: !29, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !622, line: 159, type: !668, isLocal: true, isDefinition: true)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 52)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !622, line: 170, type: !14, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !622, line: 248, type: !220, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !622, line: 248, type: !314, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !622, line: 254, type: !220, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !622, line: 254, type: !133, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !622, line: 254, type: !289, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !622, line: 259, type: !3, isLocal: true, isDefinition: true)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(scope: null, file: !622, line: 259, type: !687, isLocal: true, isDefinition: true)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 29)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !692, file: !693, line: 26, type: !695, isLocal: false, isDefinition: true)
!692 = distinct !DICompileUnit(language: DW_LANG_C11, file: !693, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !694, splitDebugInlining: false, nameTableKind: None)
!693 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!694 = !{!690}
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 376, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: 47)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(name: "exit_failure", scope: !700, file: !701, line: 24, type: !703, isLocal: false, isDefinition: true)
!700 = distinct !DICompileUnit(language: DW_LANG_C11, file: !701, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !702, splitDebugInlining: false, nameTableKind: None)
!701 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!702 = !{!698}
!703 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !706, line: 34, type: !74, isLocal: true, isDefinition: true)
!706 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !706, line: 34, type: !262, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !706, line: 34, type: !284, isLocal: true, isDefinition: true)
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(scope: null, file: !713, line: 108, type: !59, isLocal: true, isDefinition: true)
!713 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(name: "internal_state", scope: !716, file: !713, line: 97, type: !719, isLocal: true, isDefinition: true)
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !713, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !717, globals: !718, splitDebugInlining: false, nameTableKind: None)
!717 = !{!121, !124, !129}
!718 = !{!711, !714}
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !506, line: 6, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !508, line: 21, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 13, size: 64, elements: !722)
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !721, file: !508, line: 15, baseType: !83, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !721, file: !508, line: 20, baseType: !725, size: 32, offset: 32)
!725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !721, file: !508, line: 16, size: 32, elements: !726)
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !725, file: !508, line: 18, baseType: !89, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !725, file: !508, line: 19, baseType: !19, size: 32)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !731, line: 35, type: !245, isLocal: true, isDefinition: true)
!731 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !731, line: 35, type: !240, isLocal: true, isDefinition: true)
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !735, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!735 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !619, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !737, splitDebugInlining: false, nameTableKind: None)
!737 = !{!617}
!738 = distinct !DICompileUnit(language: DW_LANG_C11, file: !622, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !739, retainedTypes: !743, globals: !744, splitDebugInlining: false, nameTableKind: None)
!739 = !{!740}
!740 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !622, line: 40, baseType: !89, size: 32, elements: !741)
!741 = !{!742}
!742 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!743 = !{!121}
!744 = !{!620, !623, !625, !627, !629, !631, !636, !641, !643, !645, !650, !655, !660, !662, !664, !666, !671, !673, !675, !677, !679, !681, !683, !685}
!745 = distinct !DICompileUnit(language: DW_LANG_C11, file: !746, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !747, retainedTypes: !778, splitDebugInlining: false, nameTableKind: None)
!746 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!747 = !{!748, !760}
!748 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !749, file: !746, line: 188, baseType: !89, size: 32, elements: !758)
!749 = distinct !DISubprogram(name: "x2nrealloc", scope: !746, file: !746, line: 176, type: !750, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !753)
!750 = !DISubroutineType(types: !751)
!751 = !{!121, !121, !752, !124}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!753 = !{!754, !755, !756, !757}
!754 = !DILocalVariable(name: "p", arg: 1, scope: !749, file: !746, line: 176, type: !121)
!755 = !DILocalVariable(name: "pn", arg: 2, scope: !749, file: !746, line: 176, type: !752)
!756 = !DILocalVariable(name: "s", arg: 3, scope: !749, file: !746, line: 176, type: !124)
!757 = !DILocalVariable(name: "n", scope: !749, file: !746, line: 178, type: !124)
!758 = !{!759}
!759 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!760 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !761, file: !746, line: 228, baseType: !89, size: 32, elements: !758)
!761 = distinct !DISubprogram(name: "xpalloc", scope: !746, file: !746, line: 223, type: !762, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !768)
!762 = !DISubroutineType(types: !763)
!763 = !{!121, !121, !764, !765, !767, !765}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !766, line: 130, baseType: !767)
!766 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !125, line: 35, baseType: !199)
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !777}
!769 = !DILocalVariable(name: "pa", arg: 1, scope: !761, file: !746, line: 223, type: !121)
!770 = !DILocalVariable(name: "pn", arg: 2, scope: !761, file: !746, line: 223, type: !764)
!771 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !761, file: !746, line: 223, type: !765)
!772 = !DILocalVariable(name: "n_max", arg: 4, scope: !761, file: !746, line: 223, type: !767)
!773 = !DILocalVariable(name: "s", arg: 5, scope: !761, file: !746, line: 223, type: !765)
!774 = !DILocalVariable(name: "n0", scope: !761, file: !746, line: 230, type: !765)
!775 = !DILocalVariable(name: "n", scope: !761, file: !746, line: 237, type: !765)
!776 = !DILocalVariable(name: "nbytes", scope: !761, file: !746, line: 248, type: !765)
!777 = !DILocalVariable(name: "adjusted_nbytes", scope: !761, file: !746, line: 252, type: !765)
!778 = !{!122, !121, !158, !199, !126}
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !706, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !780, splitDebugInlining: false, nameTableKind: None)
!780 = !{!704, !707, !709}
!781 = distinct !DICompileUnit(language: DW_LANG_C11, file: !782, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!782 = !DIFile(filename: "lib/xgetcwd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3727157833d2e1ec9b24b353bc14eccb")
!783 = distinct !DICompileUnit(language: DW_LANG_C11, file: !784, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!784 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!785 = distinct !DICompileUnit(language: DW_LANG_C11, file: !786, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!786 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!787 = distinct !DICompileUnit(language: DW_LANG_C11, file: !788, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !743, splitDebugInlining: false, nameTableKind: None)
!788 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!789 = distinct !DICompileUnit(language: DW_LANG_C11, file: !790, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !743, splitDebugInlining: false, nameTableKind: None)
!790 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!791 = distinct !DICompileUnit(language: DW_LANG_C11, file: !792, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !793, splitDebugInlining: false, nameTableKind: None)
!792 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!793 = !{!158, !126, !121}
!794 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !795, splitDebugInlining: false, nameTableKind: None)
!795 = !{!729, !732}
!796 = distinct !DICompileUnit(language: DW_LANG_C11, file: !797, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!797 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!798 = distinct !DICompileUnit(language: DW_LANG_C11, file: !799, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !743, splitDebugInlining: false, nameTableKind: None)
!799 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!800 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!801 = !{i32 7, !"Dwarf Version", i32 5}
!802 = !{i32 2, !"Debug Info Version", i32 3}
!803 = !{i32 1, !"wchar_size", i32 4}
!804 = !{i32 8, !"PIC Level", i32 2}
!805 = !{i32 7, !"PIE Level", i32 2}
!806 = !{i32 7, !"uwtable", i32 2}
!807 = !{i32 7, !"frame-pointer", i32 1}
!808 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 49, type: !809, scopeLine: 50, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !811)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !83}
!811 = !{!812}
!812 = !DILocalVariable(name: "status", arg: 1, scope: !808, file: !2, line: 49, type: !83)
!813 = !DILocation(line: 0, scope: !808)
!814 = !DILocation(line: 51, column: 14, scope: !815)
!815 = distinct !DILexicalBlock(scope: !808, file: !2, line: 51, column: 7)
!816 = !DILocation(line: 51, column: 7, scope: !808)
!817 = !DILocation(line: 52, column: 5, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !2, line: 52, column: 5)
!819 = !{!820, !820, i64 0}
!820 = !{!"any pointer", !821, i64 0}
!821 = !{!"omnipotent char", !822, i64 0}
!822 = !{!"Simple C/C++ TBAA"}
!823 = !DILocation(line: 55, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !815, file: !2, line: 54, column: 5)
!825 = !DILocation(line: 56, column: 7, scope: !824)
!826 = !DILocation(line: 60, column: 7, scope: !824)
!827 = !DILocation(line: 64, column: 7, scope: !824)
!828 = !DILocation(line: 68, column: 7, scope: !824)
!829 = !DILocation(line: 69, column: 7, scope: !824)
!830 = !DILocation(line: 70, column: 7, scope: !824)
!831 = !DILocation(line: 73, column: 7, scope: !824)
!832 = !DILocalVariable(name: "program", arg: 1, scope: !833, file: !82, line: 836, type: !127)
!833 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !82, file: !82, line: 836, type: !834, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !127}
!836 = !{!832, !837, !844, !845, !847, !848}
!837 = !DILocalVariable(name: "infomap", scope: !833, file: !82, line: 838, type: !838)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, size: 896, elements: !263)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !833, file: !82, line: 838, size: 128, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !840, file: !82, line: 838, baseType: !127, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !840, file: !82, line: 838, baseType: !127, size: 64, offset: 64)
!844 = !DILocalVariable(name: "node", scope: !833, file: !82, line: 848, type: !127)
!845 = !DILocalVariable(name: "map_prog", scope: !833, file: !82, line: 849, type: !846)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!847 = !DILocalVariable(name: "lc_messages", scope: !833, file: !82, line: 861, type: !127)
!848 = !DILocalVariable(name: "url_program", scope: !833, file: !82, line: 874, type: !127)
!849 = !DILocation(line: 0, scope: !833, inlinedAt: !850)
!850 = distinct !DILocation(line: 74, column: 7, scope: !824)
!851 = !DILocation(line: 857, column: 3, scope: !833, inlinedAt: !850)
!852 = !DILocation(line: 861, column: 29, scope: !833, inlinedAt: !850)
!853 = !DILocation(line: 862, column: 7, scope: !854, inlinedAt: !850)
!854 = distinct !DILexicalBlock(scope: !833, file: !82, line: 862, column: 7)
!855 = !DILocation(line: 862, column: 19, scope: !854, inlinedAt: !850)
!856 = !DILocation(line: 862, column: 22, scope: !854, inlinedAt: !850)
!857 = !DILocation(line: 862, column: 7, scope: !833, inlinedAt: !850)
!858 = !DILocation(line: 868, column: 7, scope: !859, inlinedAt: !850)
!859 = distinct !DILexicalBlock(scope: !854, file: !82, line: 863, column: 5)
!860 = !DILocation(line: 870, column: 5, scope: !859, inlinedAt: !850)
!861 = !DILocation(line: 875, column: 3, scope: !833, inlinedAt: !850)
!862 = !DILocation(line: 877, column: 3, scope: !833, inlinedAt: !850)
!863 = !DILocation(line: 76, column: 3, scope: !808)
!864 = !DISubprogram(name: "dcgettext", scope: !865, file: !865, line: 51, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!865 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!866 = !DISubroutineType(types: !867)
!867 = !{!122, !127, !127, !83}
!868 = !{}
!869 = !DISubprogram(name: "__fprintf_chk", scope: !870, file: !870, line: 93, type: !871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!870 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!871 = !DISubroutineType(types: !872)
!872 = !{!83, !873, !83, !874, null}
!873 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !171)
!874 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !127)
!875 = !DISubprogram(name: "__printf_chk", scope: !870, file: !870, line: 95, type: !876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!876 = !DISubroutineType(types: !877)
!877 = !{!83, !83, !874, null}
!878 = !DISubprogram(name: "fputs_unlocked", scope: !437, file: !437, line: 691, type: !879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!879 = !DISubroutineType(types: !880)
!880 = !{!83, !874, !873}
!881 = !DILocation(line: 0, scope: !148)
!882 = !DILocation(line: 581, column: 7, scope: !156)
!883 = !{!884, !884, i64 0}
!884 = !{!"int", !821, i64 0}
!885 = !DILocation(line: 581, column: 19, scope: !156)
!886 = !DILocation(line: 581, column: 7, scope: !148)
!887 = !DILocation(line: 585, column: 26, scope: !155)
!888 = !DILocation(line: 0, scope: !155)
!889 = !DILocation(line: 586, column: 23, scope: !155)
!890 = !DILocation(line: 586, column: 28, scope: !155)
!891 = !DILocation(line: 586, column: 32, scope: !155)
!892 = !{!821, !821, i64 0}
!893 = !DILocation(line: 586, column: 38, scope: !155)
!894 = !DILocalVariable(name: "__s1", arg: 1, scope: !895, file: !896, line: 1359, type: !127)
!895 = distinct !DISubprogram(name: "streq", scope: !896, file: !896, line: 1359, type: !897, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !899)
!896 = !DIFile(filename: "./lib/string.h", directory: "/src")
!897 = !DISubroutineType(types: !898)
!898 = !{!158, !127, !127}
!899 = !{!894, !900}
!900 = !DILocalVariable(name: "__s2", arg: 2, scope: !895, file: !896, line: 1359, type: !127)
!901 = !DILocation(line: 0, scope: !895, inlinedAt: !902)
!902 = distinct !DILocation(line: 586, column: 41, scope: !155)
!903 = !DILocation(line: 1361, column: 11, scope: !895, inlinedAt: !902)
!904 = !DILocation(line: 1361, column: 10, scope: !895, inlinedAt: !902)
!905 = !DILocation(line: 586, column: 19, scope: !155)
!906 = !DILocation(line: 587, column: 5, scope: !155)
!907 = !DILocation(line: 588, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !148, file: !82, line: 588, column: 7)
!909 = !DILocation(line: 588, column: 7, scope: !148)
!910 = !DILocation(line: 590, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !82, line: 589, column: 5)
!912 = !DILocation(line: 591, column: 7, scope: !911)
!913 = !DILocation(line: 595, column: 37, scope: !148)
!914 = !DILocation(line: 595, column: 35, scope: !148)
!915 = !DILocation(line: 596, column: 29, scope: !148)
!916 = !DILocation(line: 597, column: 8, scope: !164)
!917 = !DILocation(line: 597, column: 7, scope: !148)
!918 = !DILocation(line: 604, column: 24, scope: !163)
!919 = !DILocation(line: 604, column: 12, scope: !164)
!920 = !DILocation(line: 0, scope: !162)
!921 = !DILocation(line: 610, column: 16, scope: !162)
!922 = !DILocation(line: 610, column: 7, scope: !162)
!923 = !DILocation(line: 611, column: 21, scope: !162)
!924 = !{!925, !925, i64 0}
!925 = !{!"short", !821, i64 0}
!926 = !DILocation(line: 611, column: 19, scope: !162)
!927 = !DILocation(line: 611, column: 16, scope: !162)
!928 = !DILocation(line: 610, column: 30, scope: !162)
!929 = distinct !{!929, !922, !923, !930}
!930 = !{!"llvm.loop.mustprogress"}
!931 = !DILocation(line: 612, column: 18, scope: !932)
!932 = distinct !DILexicalBlock(scope: !162, file: !82, line: 612, column: 11)
!933 = !DILocation(line: 612, column: 11, scope: !162)
!934 = !DILocation(line: 620, column: 23, scope: !148)
!935 = !DILocation(line: 625, column: 39, scope: !148)
!936 = !DILocation(line: 626, column: 3, scope: !148)
!937 = !DILocation(line: 626, column: 10, scope: !148)
!938 = !DILocation(line: 626, column: 21, scope: !148)
!939 = !DILocation(line: 628, column: 44, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !82, line: 628, column: 11)
!941 = distinct !DILexicalBlock(scope: !148, file: !82, line: 627, column: 5)
!942 = !DILocation(line: 628, column: 32, scope: !940)
!943 = !DILocation(line: 628, column: 49, scope: !940)
!944 = !DILocation(line: 628, column: 11, scope: !941)
!945 = !DILocation(line: 630, column: 11, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !82, line: 630, column: 11)
!947 = !DILocation(line: 630, column: 11, scope: !941)
!948 = !DILocation(line: 632, column: 26, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !82, line: 632, column: 15)
!950 = distinct !DILexicalBlock(scope: !946, file: !82, line: 631, column: 9)
!951 = !DILocation(line: 632, column: 34, scope: !949)
!952 = !DILocation(line: 632, column: 37, scope: !949)
!953 = !DILocation(line: 632, column: 15, scope: !950)
!954 = !DILocation(line: 640, column: 16, scope: !941)
!955 = distinct !{!955, !936, !956, !930}
!956 = !DILocation(line: 641, column: 5, scope: !148)
!957 = !DILocation(line: 644, column: 3, scope: !148)
!958 = !DILocation(line: 0, scope: !895, inlinedAt: !959)
!959 = distinct !DILocation(line: 648, column: 31, scope: !148)
!960 = !DILocation(line: 0, scope: !895, inlinedAt: !961)
!961 = distinct !DILocation(line: 649, column: 31, scope: !148)
!962 = !DILocation(line: 0, scope: !895, inlinedAt: !963)
!963 = distinct !DILocation(line: 650, column: 31, scope: !148)
!964 = !DILocation(line: 0, scope: !895, inlinedAt: !965)
!965 = distinct !DILocation(line: 651, column: 31, scope: !148)
!966 = !DILocation(line: 0, scope: !895, inlinedAt: !967)
!967 = distinct !DILocation(line: 652, column: 31, scope: !148)
!968 = !DILocation(line: 0, scope: !895, inlinedAt: !969)
!969 = distinct !DILocation(line: 653, column: 31, scope: !148)
!970 = !DILocation(line: 0, scope: !895, inlinedAt: !971)
!971 = distinct !DILocation(line: 654, column: 31, scope: !148)
!972 = !DILocation(line: 0, scope: !895, inlinedAt: !973)
!973 = distinct !DILocation(line: 655, column: 31, scope: !148)
!974 = !DILocation(line: 0, scope: !895, inlinedAt: !975)
!975 = distinct !DILocation(line: 656, column: 31, scope: !148)
!976 = !DILocation(line: 0, scope: !895, inlinedAt: !977)
!977 = distinct !DILocation(line: 657, column: 31, scope: !148)
!978 = !DILocation(line: 663, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !148, file: !82, line: 663, column: 7)
!980 = !DILocation(line: 664, column: 7, scope: !979)
!981 = !DILocation(line: 664, column: 10, scope: !979)
!982 = !DILocation(line: 663, column: 7, scope: !148)
!983 = !DILocation(line: 669, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !979, file: !82, line: 665, column: 5)
!985 = !DILocation(line: 671, column: 5, scope: !984)
!986 = !DILocation(line: 676, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !979, file: !82, line: 673, column: 5)
!988 = !DILocation(line: 679, column: 3, scope: !148)
!989 = !DILocation(line: 683, column: 3, scope: !148)
!990 = !DILocation(line: 686, column: 3, scope: !148)
!991 = !DILocation(line: 688, column: 3, scope: !148)
!992 = !DILocation(line: 691, column: 3, scope: !148)
!993 = !DILocation(line: 695, column: 3, scope: !148)
!994 = !DILocation(line: 696, column: 1, scope: !148)
!995 = !DISubprogram(name: "setlocale", scope: !996, file: !996, line: 122, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!996 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!997 = !DISubroutineType(types: !998)
!998 = !{!122, !83, !127}
!999 = !DISubprogram(name: "strncmp", scope: !1000, file: !1000, line: 159, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1000 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!83, !127, !127, !124}
!1003 = !DISubprogram(name: "exit", scope: !1004, file: !1004, line: 624, type: !809, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1004 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1005 = !DISubprogram(name: "getenv", scope: !1004, file: !1004, line: 641, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!122, !127}
!1008 = !DISubprogram(name: "strcmp", scope: !1000, file: !1000, line: 156, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!83, !127, !127}
!1011 = !DISubprogram(name: "strspn", scope: !1000, file: !1000, line: 297, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!126, !127, !127}
!1014 = !DISubprogram(name: "strchr", scope: !1000, file: !1000, line: 246, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!122, !127, !83}
!1017 = !DISubprogram(name: "__ctype_b_loc", scope: !88, file: !88, line: 79, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!1023 = !DISubprogram(name: "strcspn", scope: !1000, file: !1000, line: 293, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1024 = !DISubprogram(name: "fwrite_unlocked", scope: !437, file: !437, line: 704, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!124, !1027, !124, !124, !873}
!1027 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1028)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1030 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 320, type: !1031, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1034)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!83, !83, !1033}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1034 = !{!1035, !1036, !1037, !1038, !1040, !1043, !1044}
!1035 = !DILocalVariable(name: "argc", arg: 1, scope: !1030, file: !2, line: 320, type: !83)
!1036 = !DILocalVariable(name: "argv", arg: 2, scope: !1030, file: !2, line: 320, type: !1033)
!1037 = !DILocalVariable(name: "logical", scope: !1030, file: !2, line: 325, type: !158)
!1038 = !DILocalVariable(name: "c", scope: !1039, file: !2, line: 337, type: !83)
!1039 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 336, column: 5)
!1040 = !DILocalVariable(name: "wd", scope: !1041, file: !2, line: 363, type: !127)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 362, column: 5)
!1042 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 361, column: 7)
!1043 = !DILocalVariable(name: "wd", scope: !1030, file: !2, line: 371, type: !122)
!1044 = !DILocalVariable(name: "file_name", scope: !1045, file: !2, line: 379, type: !1047)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 378, column: 5)
!1046 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 372, column: 7)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_name", file: !2, line: 32, size: 192, elements: !1049)
!1049 = !{!1050, !1051, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1048, file: !2, line: 34, baseType: !122, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "n_alloc", scope: !1048, file: !2, line: 35, baseType: !765, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1048, file: !2, line: 36, baseType: !122, size: 64, offset: 128)
!1053 = !DILocation(line: 0, scope: !1030)
!1054 = !DILocation(line: 325, column: 19, scope: !1030)
!1055 = !DILocation(line: 325, column: 46, scope: !1030)
!1056 = !DILocation(line: 328, column: 21, scope: !1030)
!1057 = !DILocation(line: 328, column: 3, scope: !1030)
!1058 = !DILocation(line: 329, column: 3, scope: !1030)
!1059 = !DILocation(line: 330, column: 3, scope: !1030)
!1060 = !DILocation(line: 331, column: 3, scope: !1030)
!1061 = !DILocation(line: 333, column: 3, scope: !1030)
!1062 = !DILocation(line: 335, column: 3, scope: !1030)
!1063 = !DILocation(line: 337, column: 15, scope: !1039)
!1064 = !DILocation(line: 0, scope: !1039)
!1065 = !DILocation(line: 338, column: 11, scope: !1039)
!1066 = !DILocation(line: 347, column: 11, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 341, column: 9)
!1068 = !DILocation(line: 349, column: 9, scope: !1067)
!1069 = !DILocation(line: 351, column: 9, scope: !1067)
!1070 = !DILocation(line: 354, column: 11, scope: !1067)
!1071 = !DILocation(line: 358, column: 7, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 358, column: 7)
!1073 = !DILocation(line: 358, column: 14, scope: !1072)
!1074 = !DILocation(line: 358, column: 7, scope: !1030)
!1075 = !DILocation(line: 359, column: 5, scope: !1072)
!1076 = !DILocation(line: 361, column: 7, scope: !1030)
!1077 = !DILocation(line: 296, column: 20, scope: !1078, inlinedAt: !1121)
!1078 = distinct !DISubprogram(name: "logical_getcwd", scope: !2, file: !2, line: 294, type: !1079, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1081)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!127}
!1081 = !{!1082, !1083, !1084, !1120}
!1082 = !DILocalVariable(name: "wd", scope: !1078, file: !2, line: 296, type: !127)
!1083 = !DILocalVariable(name: "p", scope: !1078, file: !2, line: 301, type: !127)
!1084 = !DILocalVariable(name: "st1", scope: !1078, file: !2, line: 311, type: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1086, line: 44, size: 1024, elements: !1087)
!1086 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1087 = !{!1088, !1090, !1092, !1094, !1096, !1098, !1100, !1101, !1102, !1103, !1105, !1106, !1108, !1116, !1117, !1118}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1085, file: !1086, line: 46, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !198, line: 145, baseType: !126)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1085, file: !1086, line: 47, baseType: !1091, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !198, line: 148, baseType: !126)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1085, file: !1086, line: 48, baseType: !1093, size: 32, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !198, line: 150, baseType: !89)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1085, file: !1086, line: 49, baseType: !1095, size: 32, offset: 160)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !198, line: 151, baseType: !89)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1085, file: !1086, line: 50, baseType: !1097, size: 32, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !198, line: 146, baseType: !89)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1085, file: !1086, line: 51, baseType: !1099, size: 32, offset: 224)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !198, line: 147, baseType: !89)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1085, file: !1086, line: 52, baseType: !1089, size: 64, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1085, file: !1086, line: 53, baseType: !1089, size: 64, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1085, file: !1086, line: 54, baseType: !197, size: 64, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1085, file: !1086, line: 55, baseType: !1104, size: 32, offset: 448)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !198, line: 175, baseType: !83)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1085, file: !1086, line: 56, baseType: !83, size: 32, offset: 480)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1085, file: !1086, line: 57, baseType: !1107, size: 64, offset: 512)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !198, line: 180, baseType: !199)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1085, file: !1086, line: 65, baseType: !1109, size: 128, offset: 576)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1110, line: 11, size: 128, elements: !1111)
!1110 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1111 = !{!1112, !1114}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1109, file: !1110, line: 16, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !198, line: 160, baseType: !199)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1109, file: !1110, line: 21, baseType: !1115, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !198, line: 197, baseType: !199)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1085, file: !1086, line: 66, baseType: !1109, size: 128, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1085, file: !1086, line: 67, baseType: !1109, size: 128, offset: 832)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1085, file: !1086, line: 79, baseType: !1119, size: 64, offset: 960)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 64, elements: !246)
!1120 = !DILocalVariable(name: "st2", scope: !1078, file: !2, line: 312, type: !1085)
!1121 = distinct !DILocation(line: 363, column: 24, scope: !1041)
!1122 = !DILocation(line: 0, scope: !1078, inlinedAt: !1121)
!1123 = !DILocation(line: 299, column: 8, scope: !1124, inlinedAt: !1121)
!1124 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 299, column: 7)
!1125 = !DILocation(line: 299, column: 11, scope: !1124, inlinedAt: !1121)
!1126 = !DILocation(line: 299, column: 14, scope: !1124, inlinedAt: !1121)
!1127 = !DILocation(line: 299, column: 20, scope: !1124, inlinedAt: !1121)
!1128 = !DILocation(line: 299, column: 7, scope: !1078, inlinedAt: !1121)
!1129 = !DILocation(line: 302, column: 15, scope: !1078, inlinedAt: !1121)
!1130 = !DILocation(line: 302, column: 3, scope: !1078, inlinedAt: !1121)
!1131 = !DILocation(line: 304, column: 12, scope: !1132, inlinedAt: !1121)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 304, column: 11)
!1133 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 303, column: 5)
!1134 = !DILocation(line: 304, column: 17, scope: !1132, inlinedAt: !1121)
!1135 = !DILocation(line: 305, column: 32, scope: !1132, inlinedAt: !1121)
!1136 = !DILocation(line: 305, column: 37, scope: !1132, inlinedAt: !1121)
!1137 = !DILocation(line: 307, column: 8, scope: !1133, inlinedAt: !1121)
!1138 = distinct !{!1138, !1130, !1139, !930}
!1139 = !DILocation(line: 308, column: 5, scope: !1078, inlinedAt: !1121)
!1140 = !DILocation(line: 311, column: 3, scope: !1078, inlinedAt: !1121)
!1141 = !DILocation(line: 311, column: 15, scope: !1078, inlinedAt: !1121)
!1142 = !DILocation(line: 312, column: 3, scope: !1078, inlinedAt: !1121)
!1143 = !DILocation(line: 312, column: 15, scope: !1078, inlinedAt: !1121)
!1144 = !DILocation(line: 313, column: 7, scope: !1145, inlinedAt: !1121)
!1145 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 313, column: 7)
!1146 = !DILocation(line: 313, column: 23, scope: !1145, inlinedAt: !1121)
!1147 = !DILocation(line: 313, column: 28, scope: !1145, inlinedAt: !1121)
!1148 = !DILocation(line: 313, column: 31, scope: !1145, inlinedAt: !1121)
!1149 = !DILocation(line: 313, column: 48, scope: !1145, inlinedAt: !1121)
!1150 = !DILocation(line: 313, column: 53, scope: !1145, inlinedAt: !1121)
!1151 = !DILocalVariable(name: "a", arg: 1, scope: !1152, file: !1153, line: 86, type: !1156)
!1152 = distinct !DISubprogram(name: "psame_inode", scope: !1153, file: !1153, line: 86, type: !1154, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1158)
!1153 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!158, !1156, !1156}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1085)
!1158 = !{!1151, !1159}
!1159 = !DILocalVariable(name: "b", arg: 2, scope: !1152, file: !1153, line: 86, type: !1156)
!1160 = !DILocation(line: 0, scope: !1152, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 313, column: 56, scope: !1145, inlinedAt: !1121)
!1162 = !DILocation(line: 90, column: 14, scope: !1152, inlinedAt: !1161)
!1163 = !{!1164, !1165, i64 0}
!1164 = !{!"stat", !1165, i64 0, !1165, i64 8, !884, i64 16, !884, i64 20, !884, i64 24, !884, i64 28, !1165, i64 32, !1165, i64 40, !1165, i64 48, !884, i64 56, !884, i64 60, !1165, i64 64, !1166, i64 72, !1166, i64 88, !1166, i64 104, !821, i64 120}
!1165 = !{!"long", !821, i64 0}
!1166 = !{!"timespec", !1165, i64 0, !1165, i64 8}
!1167 = !{!1164, !1165, i64 8}
!1168 = !DILocation(line: 313, column: 7, scope: !1078, inlinedAt: !1121)
!1169 = !DILocation(line: 316, column: 1, scope: !1078, inlinedAt: !1121)
!1170 = !DILocation(line: 0, scope: !1041)
!1171 = !DILocation(line: 364, column: 11, scope: !1041)
!1172 = !DILocation(line: 366, column: 11, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 365, column: 9)
!1174 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 364, column: 11)
!1175 = !DILocation(line: 371, column: 14, scope: !1030)
!1176 = !DILocation(line: 372, column: 10, scope: !1046)
!1177 = !DILocation(line: 372, column: 7, scope: !1030)
!1178 = !DILocation(line: 374, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 373, column: 5)
!1180 = !DILocation(line: 375, column: 7, scope: !1179)
!1181 = !DILocation(line: 376, column: 5, scope: !1179)
!1182 = !DILocation(line: 89, column: 25, scope: !1183, inlinedAt: !1189)
!1183 = distinct !DISubprogram(name: "file_name_init", scope: !2, file: !2, line: 87, type: !1184, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!1047}
!1186 = !{!1187, !1188}
!1187 = !DILocalVariable(name: "p", scope: !1183, file: !2, line: 89, type: !1047)
!1188 = !DILocalVariable(name: "init_alloc", scope: !1183, file: !2, line: 93, type: !83)
!1189 = distinct !DILocation(line: 379, column: 37, scope: !1045)
!1190 = !DILocation(line: 0, scope: !1183, inlinedAt: !1189)
!1191 = !DILocation(line: 94, column: 6, scope: !1183, inlinedAt: !1189)
!1192 = !DILocation(line: 94, column: 14, scope: !1183, inlinedAt: !1189)
!1193 = !{!1194, !1165, i64 8}
!1194 = !{!"file_name", !820, i64 0, !1165, i64 8, !820, i64 16}
!1195 = !DILocation(line: 96, column: 12, scope: !1183, inlinedAt: !1189)
!1196 = !DILocation(line: 96, column: 10, scope: !1183, inlinedAt: !1189)
!1197 = !{!1194, !820, i64 0}
!1198 = !DILocation(line: 97, column: 34, scope: !1183, inlinedAt: !1189)
!1199 = !DILocation(line: 97, column: 6, scope: !1183, inlinedAt: !1189)
!1200 = !DILocation(line: 97, column: 12, scope: !1183, inlinedAt: !1189)
!1201 = !{!1194, !820, i64 16}
!1202 = !DILocation(line: 98, column: 15, scope: !1183, inlinedAt: !1189)
!1203 = !DILocation(line: 0, scope: !1045)
!1204 = !DILocalVariable(name: "file_name", arg: 1, scope: !1205, file: !2, line: 262, type: !1047)
!1205 = distinct !DISubprogram(name: "robust_getcwd", scope: !2, file: !2, line: 262, type: !1206, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1208)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !1047}
!1208 = !{!1204, !1209, !1210, !1219, !1221}
!1209 = !DILocalVariable(name: "height", scope: !1205, file: !2, line: 264, type: !124)
!1210 = !DILocalVariable(name: "dev_ino_buf", scope: !1205, file: !2, line: 265, type: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !1212, line: 30, size: 128, elements: !1213)
!1212 = !DIFile(filename: "./lib/dev-ino.h", directory: "/src", checksumkind: CSK_MD5, checksum: "7eae2ded9ac0c200760eafd719dd996d")
!1213 = !{!1214, !1217}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1211, file: !1212, line: 32, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !1216, line: 47, baseType: !1091)
!1216 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1211, file: !1212, line: 33, baseType: !1218, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !1216, line: 59, baseType: !1089)
!1219 = !DILocalVariable(name: "root_dev_ino", scope: !1205, file: !2, line: 266, type: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1221 = !DILocalVariable(name: "dot_sb", scope: !1205, file: !2, line: 272, type: !1085)
!1222 = !DILocation(line: 0, scope: !1205, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 380, column: 7, scope: !1045)
!1224 = !DILocation(line: 265, column: 3, scope: !1205, inlinedAt: !1223)
!1225 = !DILocation(line: 265, column: 18, scope: !1205, inlinedAt: !1223)
!1226 = !DILocation(line: 266, column: 34, scope: !1205, inlinedAt: !1223)
!1227 = !DILocation(line: 268, column: 20, scope: !1228, inlinedAt: !1223)
!1228 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 268, column: 7)
!1229 = !DILocation(line: 268, column: 7, scope: !1205, inlinedAt: !1223)
!1230 = !DILocation(line: 269, column: 5, scope: !1228, inlinedAt: !1223)
!1231 = !DILocation(line: 272, column: 3, scope: !1205, inlinedAt: !1223)
!1232 = !DILocation(line: 272, column: 15, scope: !1205, inlinedAt: !1223)
!1233 = !DILocation(line: 273, column: 7, scope: !1234, inlinedAt: !1223)
!1234 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 273, column: 7)
!1235 = !DILocation(line: 273, column: 27, scope: !1234, inlinedAt: !1223)
!1236 = !DILocation(line: 273, column: 7, scope: !1205, inlinedAt: !1223)
!1237 = !DILocation(line: 279, column: 11, scope: !1238, inlinedAt: !1223)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 279, column: 11)
!1239 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 277, column: 5)
!1240 = !{!1241, !1165, i64 8}
!1241 = !{!"dev_ino", !1165, i64 0, !1165, i64 8}
!1242 = !{!1241, !1165, i64 0}
!1243 = !DILocation(line: 279, column: 11, scope: !1239, inlinedAt: !1223)
!1244 = !DILocation(line: 274, column: 5, scope: !1234, inlinedAt: !1223)
!1245 = !DILocation(line: 282, column: 49, scope: !1239, inlinedAt: !1223)
!1246 = !DILocalVariable(name: "dot_sb", arg: 1, scope: !1247, file: !2, line: 153, type: !1250)
!1247 = distinct !DISubprogram(name: "find_dir_entry", scope: !2, file: !2, line: 153, type: !1248, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1251)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !1250, !1047, !124}
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1251 = !{!1246, !1252, !1253, !1254, !1259, !1260, !1261, !1262, !1263, !1275, !1280, !1281}
!1252 = !DILocalVariable(name: "file_name", arg: 2, scope: !1247, file: !2, line: 153, type: !1047)
!1253 = !DILocalVariable(name: "parent_height", arg: 3, scope: !1247, file: !2, line: 154, type: !124)
!1254 = !DILocalVariable(name: "dirp", scope: !1247, file: !2, line: 156, type: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !1257, line: 127, baseType: !1258)
!1257 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !1257, line: 127, flags: DIFlagFwdDecl)
!1259 = !DILocalVariable(name: "fd", scope: !1247, file: !2, line: 161, type: !83)
!1260 = !DILocalVariable(name: "parent_sb", scope: !1247, file: !2, line: 166, type: !1085)
!1261 = !DILocalVariable(name: "use_lstat", scope: !1247, file: !2, line: 173, type: !158)
!1262 = !DILocalVariable(name: "found", scope: !1247, file: !2, line: 175, type: !158)
!1263 = !DILocalVariable(name: "dp", scope: !1264, file: !2, line: 178, type: !1265)
!1264 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 177, column: 5)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !1268, line: 22, size: 2240, elements: !1269)
!1268 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!1269 = !{!1270, !1271, !1272, !1273, !1274}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !1267, file: !1268, line: 25, baseType: !1091, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !1267, file: !1268, line: 26, baseType: !197, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !1267, file: !1268, line: 31, baseType: !123, size: 16, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !1267, file: !1268, line: 32, baseType: !129, size: 8, offset: 144)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1267, file: !1268, line: 33, baseType: !568, size: 2048, offset: 152)
!1275 = !DILocalVariable(name: "e", scope: !1276, file: !2, line: 186, type: !83)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 184, column: 13)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 183, column: 15)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 182, column: 9)
!1279 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 181, column: 11)
!1280 = !DILocalVariable(name: "ino", scope: !1264, file: !2, line: 196, type: !1215)
!1281 = !DILocalVariable(name: "ent_sb", scope: !1264, file: !2, line: 198, type: !1085)
!1282 = !DILocation(line: 0, scope: !1247, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 282, column: 7, scope: !1239, inlinedAt: !1223)
!1284 = !DILocation(line: 156, column: 15, scope: !1247, inlinedAt: !1283)
!1285 = !DILocation(line: 157, column: 12, scope: !1286, inlinedAt: !1283)
!1286 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 157, column: 7)
!1287 = !DILocation(line: 157, column: 7, scope: !1247, inlinedAt: !1283)
!1288 = !DILocation(line: 158, column: 5, scope: !1286, inlinedAt: !1283)
!1289 = !DILocation(line: 161, column: 12, scope: !1247, inlinedAt: !1283)
!1290 = !DILocation(line: 162, column: 10, scope: !1291, inlinedAt: !1283)
!1291 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 162, column: 7)
!1292 = !DILocation(line: 162, column: 8, scope: !1291, inlinedAt: !1283)
!1293 = !DILocation(line: 162, column: 18, scope: !1291, inlinedAt: !1283)
!1294 = !DILocation(line: 162, column: 46, scope: !1291, inlinedAt: !1283)
!1295 = !DILocation(line: 162, column: 7, scope: !1247, inlinedAt: !1283)
!1296 = !DILocation(line: 162, column: 32, scope: !1291, inlinedAt: !1283)
!1297 = !DILocation(line: 163, column: 5, scope: !1291, inlinedAt: !1283)
!1298 = !DILocation(line: 166, column: 3, scope: !1247, inlinedAt: !1283)
!1299 = !DILocation(line: 166, column: 15, scope: !1247, inlinedAt: !1283)
!1300 = !DILocation(line: 167, column: 18, scope: !1301, inlinedAt: !1283)
!1301 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 167, column: 7)
!1302 = !DILocation(line: 167, column: 8, scope: !1301, inlinedAt: !1283)
!1303 = !DILocation(line: 167, column: 43, scope: !1301, inlinedAt: !1283)
!1304 = !DILocation(line: 167, column: 67, scope: !1301, inlinedAt: !1283)
!1305 = !DILocation(line: 167, column: 7, scope: !1247, inlinedAt: !1283)
!1306 = !DILocation(line: 168, column: 5, scope: !1301, inlinedAt: !1283)
!1307 = !DILocation(line: 173, column: 31, scope: !1247, inlinedAt: !1283)
!1308 = !DILocation(line: 173, column: 38, scope: !1247, inlinedAt: !1283)
!1309 = !DILocation(line: 176, column: 3, scope: !1247, inlinedAt: !1283)
!1310 = !DILocation(line: 180, column: 13, scope: !1264, inlinedAt: !1283)
!1311 = !DILocalVariable(name: "dirp", arg: 1, scope: !1312, file: !82, line: 285, type: !1255)
!1312 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !82, file: !82, line: 285, type: !1313, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1315)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!1265, !1255}
!1315 = !{!1311, !1316}
!1316 = !DILocalVariable(name: "dp", scope: !1317, file: !82, line: 289, type: !1265)
!1317 = distinct !DILexicalBlock(scope: !1312, file: !82, line: 288, column: 5)
!1318 = !DILocation(line: 0, scope: !1312, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 181, column: 17, scope: !1279, inlinedAt: !1283)
!1320 = !DILocation(line: 287, column: 3, scope: !1312, inlinedAt: !1319)
!1321 = !DILocation(line: 289, column: 33, scope: !1317, inlinedAt: !1319)
!1322 = !DILocation(line: 0, scope: !1317, inlinedAt: !1319)
!1323 = !DILocation(line: 290, column: 14, scope: !1324, inlinedAt: !1319)
!1324 = distinct !DILexicalBlock(scope: !1317, file: !82, line: 290, column: 11)
!1325 = !DILocation(line: 290, column: 22, scope: !1324, inlinedAt: !1319)
!1326 = !DILocation(line: 290, column: 46, scope: !1324, inlinedAt: !1319)
!1327 = !DILocalVariable(name: "file_name", arg: 1, scope: !1328, file: !82, line: 272, type: !127)
!1328 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !82, file: !82, line: 272, type: !1329, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1331)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!158, !127}
!1331 = !{!1327, !1332}
!1332 = !DILocalVariable(name: "sep", scope: !1333, file: !82, line: 276, type: !4)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !82, line: 275, column: 5)
!1334 = distinct !DILexicalBlock(scope: !1328, file: !82, line: 274, column: 7)
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
!1348 = !DILocation(line: 0, scope: !1264, inlinedAt: !1283)
!1349 = !DILocation(line: 183, column: 15, scope: !1277, inlinedAt: !1283)
!1350 = !DILocation(line: 183, column: 15, scope: !1278, inlinedAt: !1283)
!1351 = !DILocation(line: 0, scope: !1276, inlinedAt: !1283)
!1352 = !DILocation(line: 188, column: 21, scope: !1276, inlinedAt: !1283)
!1353 = !DILocation(line: 222, column: 20, scope: !1354, inlinedAt: !1283)
!1354 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 222, column: 7)
!1355 = !DILocation(line: 196, column: 19, scope: !1264, inlinedAt: !1283)
!1356 = !{!1357, !1165, i64 0}
!1357 = !{!"dirent", !1165, i64 0, !1165, i64 8, !925, i64 16, !821, i64 18, !821, i64 19}
!1358 = !DILocation(line: 198, column: 7, scope: !1264, inlinedAt: !1283)
!1359 = !DILocation(line: 198, column: 19, scope: !1264, inlinedAt: !1283)
!1360 = !DILocation(line: 199, column: 15, scope: !1361, inlinedAt: !1283)
!1361 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 199, column: 11)
!1362 = !DILocation(line: 199, column: 38, scope: !1361, inlinedAt: !1283)
!1363 = !DILocation(line: 201, column: 15, scope: !1364, inlinedAt: !1283)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 201, column: 15)
!1365 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 200, column: 9)
!1366 = !DILocation(line: 201, column: 43, scope: !1364, inlinedAt: !1283)
!1367 = !DILocation(line: 201, column: 15, scope: !1365, inlinedAt: !1283)
!1368 = distinct !{!1368, !1309, !1369}
!1369 = !DILocation(line: 220, column: 5, scope: !1247, inlinedAt: !1283)
!1370 = !DILocation(line: 206, column: 24, scope: !1365, inlinedAt: !1283)
!1371 = !DILocation(line: 207, column: 9, scope: !1365, inlinedAt: !1283)
!1372 = !DILocation(line: 209, column: 15, scope: !1373, inlinedAt: !1283)
!1373 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 209, column: 11)
!1374 = !DILocation(line: 209, column: 11, scope: !1264, inlinedAt: !1283)
!1375 = distinct !{!1375, !1309, !1369}
!1376 = !DILocation(line: 214, column: 24, scope: !1377, inlinedAt: !1283)
!1377 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 214, column: 12)
!1378 = !DILocation(line: 222, column: 39, scope: !1354, inlinedAt: !1283)
!1379 = !DILocation(line: 222, column: 7, scope: !1247, inlinedAt: !1283)
!1380 = !DILocation(line: 216, column: 53, scope: !1381, inlinedAt: !1283)
!1381 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 215, column: 9)
!1382 = !DILocation(line: 216, column: 11, scope: !1381, inlinedAt: !1283)
!1383 = !DILocation(line: 222, column: 23, scope: !1354, inlinedAt: !1283)
!1384 = !DILocation(line: 226, column: 7, scope: !1385, inlinedAt: !1283)
!1385 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 223, column: 5)
!1386 = !DILocation(line: 231, column: 5, scope: !1387, inlinedAt: !1283)
!1387 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 230, column: 8)
!1388 = !DILocation(line: 235, column: 13, scope: !1247, inlinedAt: !1283)
!1389 = !{i64 0, i64 8, !1390, i64 8, i64 8, !1390, i64 16, i64 4, !883, i64 20, i64 4, !883, i64 24, i64 4, !883, i64 28, i64 4, !883, i64 32, i64 8, !1390, i64 40, i64 8, !1390, i64 48, i64 8, !1390, i64 56, i64 4, !883, i64 60, i64 4, !883, i64 64, i64 8, !1390, i64 72, i64 8, !1390, i64 80, i64 8, !1390, i64 88, i64 8, !1390, i64 96, i64 8, !1390, i64 104, i64 8, !1390, i64 112, i64 8, !1390, i64 120, i64 8, !892}
!1390 = !{!1165, !1165, i64 0}
!1391 = !DILocation(line: 236, column: 1, scope: !1247, inlinedAt: !1283)
!1392 = distinct !{!1392, !1393, !1394}
!1393 = !DILocation(line: 276, column: 3, scope: !1205, inlinedAt: !1223)
!1394 = !DILocation(line: 283, column: 5, scope: !1205, inlinedAt: !1223)
!1395 = !DILocation(line: 286, column: 18, scope: !1396, inlinedAt: !1223)
!1396 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 286, column: 7)
!1397 = !DILocation(line: 286, column: 7, scope: !1396, inlinedAt: !1223)
!1398 = !DILocation(line: 286, column: 27, scope: !1396, inlinedAt: !1223)
!1399 = !DILocation(line: 286, column: 7, scope: !1205, inlinedAt: !1223)
!1400 = !DILocation(line: 287, column: 5, scope: !1396, inlinedAt: !1223)
!1401 = !DILocation(line: 381, column: 24, scope: !1045)
!1402 = !DILocation(line: 288, column: 1, scope: !1205, inlinedAt: !1223)
!1403 = !DILocation(line: 381, column: 7, scope: !1045)
!1404 = !DILocalVariable(name: "p", arg: 1, scope: !1405, file: !2, line: 80, type: !1047)
!1405 = distinct !DISubprogram(name: "file_name_free", scope: !2, file: !2, line: 80, type: !1206, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1406)
!1406 = !{!1404}
!1407 = !DILocation(line: 0, scope: !1405, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 382, column: 7, scope: !1045)
!1409 = !DILocation(line: 82, column: 12, scope: !1405, inlinedAt: !1408)
!1410 = !DILocation(line: 82, column: 3, scope: !1405, inlinedAt: !1408)
!1411 = !DILocation(line: 83, column: 3, scope: !1405, inlinedAt: !1408)
!1412 = !DILocation(line: 386, column: 1, scope: !1030)
!1413 = !DISubprogram(name: "bindtextdomain", scope: !865, file: !865, line: 86, type: !1414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!122, !127, !127}
!1416 = !DISubprogram(name: "textdomain", scope: !865, file: !865, line: 82, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1417 = !DISubprogram(name: "atexit", scope: !1004, file: !1004, line: 602, type: !1418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!83, !474}
!1420 = !DISubprogram(name: "getopt_long", scope: !394, file: !394, line: 66, type: !1421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!83, !83, !1423, !127, !1425, !399}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!1426 = !DISubprogram(name: "strstr", scope: !1000, file: !1000, line: 350, type: !1414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1427 = !DISubprogram(name: "stat", scope: !1428, file: !1428, line: 205, type: !1429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1428 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!83, !874, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1250)
!1432 = !DISubprogram(name: "puts", scope: !437, file: !437, line: 661, type: !1433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!83, !127}
!1435 = !DISubprogram(name: "free", scope: !1004, file: !1004, line: 555, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !121}
!1438 = !DISubprogram(name: "__errno_location", scope: !1439, file: !1439, line: 37, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1439 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!399}
!1442 = !DISubprogram(name: "opendir", scope: !1257, file: !1257, line: 134, type: !1443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!1255, !127}
!1445 = distinct !DISubprogram(name: "nth_parent", scope: !2, file: !2, line: 127, type: !1446, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1448)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!122, !124}
!1448 = !{!1449, !1450, !1451, !1452}
!1449 = !DILocalVariable(name: "n", arg: 1, scope: !1445, file: !2, line: 127, type: !124)
!1450 = !DILocalVariable(name: "buf", scope: !1445, file: !2, line: 129, type: !122)
!1451 = !DILocalVariable(name: "p", scope: !1445, file: !2, line: 130, type: !122)
!1452 = !DILocalVariable(name: "i", scope: !1453, file: !2, line: 132, type: !124)
!1453 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 132, column: 3)
!1454 = !DILocation(line: 0, scope: !1445)
!1455 = !DILocation(line: 129, column: 15, scope: !1445)
!1456 = !DILocation(line: 0, scope: !1453)
!1457 = !DILocation(line: 132, column: 24, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 132, column: 3)
!1459 = !DILocation(line: 132, column: 3, scope: !1453)
!1460 = !DILocation(line: 137, column: 3, scope: !1445)
!1461 = !DILocation(line: 137, column: 9, scope: !1445)
!1462 = !DILocation(line: 138, column: 3, scope: !1445)
!1463 = !DILocalVariable(name: "__dest", arg: 1, scope: !1464, file: !1465, line: 26, type: !1468)
!1464 = distinct !DISubprogram(name: "memcpy", scope: !1465, file: !1465, line: 26, type: !1466, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1469)
!1465 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!121, !1468, !1027, !124}
!1468 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !121)
!1469 = !{!1463, !1470, !1471}
!1470 = !DILocalVariable(name: "__src", arg: 2, scope: !1464, file: !1465, line: 26, type: !1027)
!1471 = !DILocalVariable(name: "__len", arg: 3, scope: !1464, file: !1465, line: 26, type: !124)
!1472 = !DILocation(line: 0, scope: !1464, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 134, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 133, column: 5)
!1475 = !DILocation(line: 29, column: 10, scope: !1464, inlinedAt: !1473)
!1476 = !DILocation(line: 135, column: 9, scope: !1474)
!1477 = !DILocation(line: 132, column: 30, scope: !1458)
!1478 = distinct !{!1478, !1459, !1479, !930}
!1479 = !DILocation(line: 136, column: 5, scope: !1453)
!1480 = !DISubprogram(name: "dirfd", scope: !1257, file: !1257, line: 224, type: !1481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!83, !1255}
!1483 = !DISubprogram(name: "fchdir", scope: !1484, file: !1484, line: 521, type: !1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1484 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!83, !83}
!1487 = !DISubprogram(name: "chdir", scope: !1484, file: !1484, line: 517, type: !1433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1488 = !DISubprogram(name: "fstat", scope: !1428, file: !1428, line: 210, type: !1489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!83, !83, !1250}
!1491 = !DISubprogram(name: "readdir", scope: !1257, file: !1257, line: 162, type: !1492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!1494, !1255}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1495 = !DISubprogram(name: "closedir", scope: !1257, file: !1257, line: 149, type: !1481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1496 = !DISubprogram(name: "lstat", scope: !1428, file: !1428, line: 313, type: !1429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1497 = !DISubprogram(name: "strlen", scope: !1000, file: !1000, line: 407, type: !1498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!126, !127}
!1500 = distinct !DISubprogram(name: "file_name_prepend", scope: !2, file: !2, line: 104, type: !1501, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1503)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null, !1047, !127, !124}
!1503 = !{!1504, !1505, !1506, !1507, !1508, !1511}
!1504 = !DILocalVariable(name: "p", arg: 1, scope: !1500, file: !2, line: 104, type: !1047)
!1505 = !DILocalVariable(name: "s", arg: 2, scope: !1500, file: !2, line: 104, type: !127)
!1506 = !DILocalVariable(name: "s_len", arg: 3, scope: !1500, file: !2, line: 104, type: !124)
!1507 = !DILocalVariable(name: "n_free", scope: !1500, file: !2, line: 106, type: !765)
!1508 = !DILocalVariable(name: "n_used", scope: !1509, file: !2, line: 113, type: !765)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 108, column: 5)
!1510 = distinct !DILexicalBlock(scope: !1500, file: !2, line: 107, column: 7)
!1511 = !DILocalVariable(name: "buf", scope: !1509, file: !2, line: 114, type: !122)
!1512 = !DILocation(line: 0, scope: !1500)
!1513 = !DILocation(line: 106, column: 21, scope: !1500)
!1514 = !DILocation(line: 106, column: 32, scope: !1500)
!1515 = !DILocation(line: 106, column: 27, scope: !1500)
!1516 = !DILocation(line: 107, column: 18, scope: !1510)
!1517 = !DILocation(line: 107, column: 14, scope: !1510)
!1518 = !DILocation(line: 107, column: 7, scope: !1500)
!1519 = !DILocation(line: 113, column: 25, scope: !1509)
!1520 = !DILocation(line: 113, column: 33, scope: !1509)
!1521 = !DILocation(line: 0, scope: !1509)
!1522 = !DILocation(line: 114, column: 57, scope: !1509)
!1523 = !DILocation(line: 114, column: 19, scope: !1509)
!1524 = !DILocation(line: 115, column: 35, scope: !1509)
!1525 = !DILocation(line: 115, column: 30, scope: !1509)
!1526 = !DILocation(line: 115, column: 43, scope: !1509)
!1527 = !DILocation(line: 115, column: 56, scope: !1509)
!1528 = !DILocation(line: 0, scope: !1464, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 115, column: 18, scope: !1509)
!1530 = !DILocation(line: 29, column: 10, scope: !1464, inlinedAt: !1529)
!1531 = !DILocation(line: 115, column: 16, scope: !1509)
!1532 = !DILocation(line: 116, column: 16, scope: !1509)
!1533 = !DILocation(line: 116, column: 7, scope: !1509)
!1534 = !DILocation(line: 117, column: 14, scope: !1509)
!1535 = !DILocation(line: 120, column: 12, scope: !1500)
!1536 = !DILocation(line: 118, column: 5, scope: !1509)
!1537 = !DILocation(line: 121, column: 15, scope: !1500)
!1538 = !DILocation(line: 122, column: 14, scope: !1500)
!1539 = !DILocation(line: 122, column: 20, scope: !1500)
!1540 = !DILocation(line: 0, scope: !1464, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 122, column: 3, scope: !1500)
!1542 = !DILocation(line: 29, column: 10, scope: !1464, inlinedAt: !1541)
!1543 = !DILocation(line: 123, column: 1, scope: !1500)
!1544 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !411, file: !411, line: 50, type: !834, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1545)
!1545 = !{!1546}
!1546 = !DILocalVariable(name: "file", arg: 1, scope: !1544, file: !411, line: 50, type: !127)
!1547 = !DILocation(line: 0, scope: !1544)
!1548 = !DILocation(line: 52, column: 13, scope: !1544)
!1549 = !DILocation(line: 53, column: 1, scope: !1544)
!1550 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !411, file: !411, line: 87, type: !1551, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1553)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !158}
!1553 = !{!1554}
!1554 = !DILocalVariable(name: "ignore", arg: 1, scope: !1550, file: !411, line: 87, type: !158)
!1555 = !DILocation(line: 0, scope: !1550)
!1556 = !DILocation(line: 89, column: 16, scope: !1550)
!1557 = !{!1558, !1558, i64 0}
!1558 = !{!"_Bool", !821, i64 0}
!1559 = !DILocation(line: 90, column: 1, scope: !1550)
!1560 = distinct !DISubprogram(name: "close_stdout", scope: !411, file: !411, line: 116, type: !475, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1561)
!1561 = !{!1562}
!1562 = !DILocalVariable(name: "write_error", scope: !1563, file: !411, line: 121, type: !127)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !411, line: 120, column: 5)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !411, line: 118, column: 7)
!1565 = !DILocation(line: 118, column: 21, scope: !1564)
!1566 = !DILocation(line: 118, column: 7, scope: !1564)
!1567 = !DILocation(line: 118, column: 29, scope: !1564)
!1568 = !DILocation(line: 119, column: 7, scope: !1564)
!1569 = !DILocation(line: 119, column: 12, scope: !1564)
!1570 = !{i8 0, i8 2}
!1571 = !DILocation(line: 119, column: 25, scope: !1564)
!1572 = !DILocation(line: 119, column: 28, scope: !1564)
!1573 = !DILocation(line: 119, column: 34, scope: !1564)
!1574 = !DILocation(line: 118, column: 7, scope: !1560)
!1575 = !DILocation(line: 121, column: 33, scope: !1563)
!1576 = !DILocation(line: 0, scope: !1563)
!1577 = !DILocation(line: 122, column: 11, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1563, file: !411, line: 122, column: 11)
!1579 = !DILocation(line: 0, scope: !1578)
!1580 = !DILocation(line: 122, column: 11, scope: !1563)
!1581 = !DILocation(line: 123, column: 9, scope: !1578)
!1582 = !DILocation(line: 126, column: 9, scope: !1578)
!1583 = !DILocation(line: 128, column: 14, scope: !1563)
!1584 = !DILocation(line: 128, column: 7, scope: !1563)
!1585 = !DILocation(line: 133, column: 42, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1560, file: !411, line: 133, column: 7)
!1587 = !DILocation(line: 133, column: 28, scope: !1586)
!1588 = !DILocation(line: 133, column: 50, scope: !1586)
!1589 = !DILocation(line: 133, column: 7, scope: !1560)
!1590 = !DILocation(line: 134, column: 12, scope: !1586)
!1591 = !DILocation(line: 134, column: 5, scope: !1586)
!1592 = !DILocation(line: 135, column: 1, scope: !1560)
!1593 = !DISubprogram(name: "_exit", scope: !1484, file: !1484, line: 624, type: !809, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1594 = distinct !DISubprogram(name: "verror", scope: !426, file: !426, line: 251, type: !1595, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1597)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !83, !83, !127, !436}
!1597 = !{!1598, !1599, !1600, !1601}
!1598 = !DILocalVariable(name: "status", arg: 1, scope: !1594, file: !426, line: 251, type: !83)
!1599 = !DILocalVariable(name: "errnum", arg: 2, scope: !1594, file: !426, line: 251, type: !83)
!1600 = !DILocalVariable(name: "message", arg: 3, scope: !1594, file: !426, line: 251, type: !127)
!1601 = !DILocalVariable(name: "args", arg: 4, scope: !1594, file: !426, line: 251, type: !436)
!1602 = !DILocation(line: 0, scope: !1594)
!1603 = !DILocation(line: 251, column: 1, scope: !1594)
!1604 = !DILocation(line: 261, column: 3, scope: !1594)
!1605 = !DILocation(line: 265, column: 7, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1594, file: !426, line: 265, column: 7)
!1607 = !DILocation(line: 265, column: 7, scope: !1594)
!1608 = !DILocation(line: 266, column: 5, scope: !1606)
!1609 = !DILocation(line: 272, column: 7, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1606, file: !426, line: 268, column: 5)
!1611 = !DILocation(line: 276, column: 3, scope: !1594)
!1612 = !{i64 0, i64 8, !819, i64 8, i64 8, !819, i64 16, i64 8, !819, i64 24, i64 4, !883, i64 28, i64 4, !883}
!1613 = !DILocation(line: 282, column: 1, scope: !1594)
!1614 = distinct !DISubprogram(name: "flush_stdout", scope: !426, file: !426, line: 163, type: !475, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1615)
!1615 = !{!1616}
!1616 = !DILocalVariable(name: "stdout_fd", scope: !1614, file: !426, line: 166, type: !83)
!1617 = !DILocation(line: 0, scope: !1614)
!1618 = !DILocalVariable(name: "fd", arg: 1, scope: !1619, file: !426, line: 145, type: !83)
!1619 = distinct !DISubprogram(name: "is_open", scope: !426, file: !426, line: 145, type: !1485, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1620)
!1620 = !{!1618}
!1621 = !DILocation(line: 0, scope: !1619, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 182, column: 25, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1614, file: !426, line: 182, column: 7)
!1624 = !DILocation(line: 157, column: 15, scope: !1619, inlinedAt: !1622)
!1625 = !DILocation(line: 157, column: 12, scope: !1619, inlinedAt: !1622)
!1626 = !DILocation(line: 182, column: 7, scope: !1614)
!1627 = !DILocation(line: 184, column: 5, scope: !1623)
!1628 = !DILocation(line: 185, column: 1, scope: !1614)
!1629 = distinct !DISubprogram(name: "error_tail", scope: !426, file: !426, line: 219, type: !1595, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1630)
!1630 = !{!1631, !1632, !1633, !1634}
!1631 = !DILocalVariable(name: "status", arg: 1, scope: !1629, file: !426, line: 219, type: !83)
!1632 = !DILocalVariable(name: "errnum", arg: 2, scope: !1629, file: !426, line: 219, type: !83)
!1633 = !DILocalVariable(name: "message", arg: 3, scope: !1629, file: !426, line: 219, type: !127)
!1634 = !DILocalVariable(name: "args", arg: 4, scope: !1629, file: !426, line: 219, type: !436)
!1635 = !DILocation(line: 0, scope: !1629)
!1636 = !DILocation(line: 219, column: 1, scope: !1629)
!1637 = !DILocation(line: 229, column: 13, scope: !1629)
!1638 = !DILocation(line: 135, column: 10, scope: !1639, inlinedAt: !1681)
!1639 = distinct !DISubprogram(name: "vfprintf", scope: !870, file: !870, line: 132, type: !1640, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1677)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!83, !1642, !874, !438}
!1642 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1643)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !1645)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1645, file: !175, line: 51, baseType: !83, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1645, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1645, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1645, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1645, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1645, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1645, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1645, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1645, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1645, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1645, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1645, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1645, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1645, file: !175, line: 70, baseType: !1661, size: 64, offset: 832)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1645, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1645, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1645, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1645, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1645, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1645, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1645, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1645, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1645, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1645, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1645, file: !175, line: 93, baseType: !1661, size: 64, offset: 1344)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1645, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1645, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1645, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1645, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!1677 = !{!1678, !1679, !1680}
!1678 = !DILocalVariable(name: "__stream", arg: 1, scope: !1639, file: !870, line: 132, type: !1642)
!1679 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1639, file: !870, line: 133, type: !874)
!1680 = !DILocalVariable(name: "__ap", arg: 3, scope: !1639, file: !870, line: 133, type: !438)
!1681 = distinct !DILocation(line: 229, column: 3, scope: !1629)
!1682 = !{!1683, !1685}
!1683 = distinct !{!1683, !1684, !"vfprintf.inline: argument 0"}
!1684 = distinct !{!1684, !"vfprintf.inline"}
!1685 = distinct !{!1685, !1684, !"vfprintf.inline: argument 1"}
!1686 = !DILocation(line: 229, column: 3, scope: !1629)
!1687 = !DILocation(line: 0, scope: !1639, inlinedAt: !1681)
!1688 = !DILocation(line: 133, column: 49, scope: !1639, inlinedAt: !1681)
!1689 = !DILocation(line: 232, column: 3, scope: !1629)
!1690 = !DILocation(line: 233, column: 7, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1629, file: !426, line: 233, column: 7)
!1692 = !DILocation(line: 233, column: 7, scope: !1629)
!1693 = !DILocalVariable(name: "errnum", arg: 1, scope: !1694, file: !426, line: 188, type: !83)
!1694 = distinct !DISubprogram(name: "print_errno_message", scope: !426, file: !426, line: 188, type: !809, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1695)
!1695 = !{!1693, !1696, !1697}
!1696 = !DILocalVariable(name: "s", scope: !1694, file: !426, line: 190, type: !127)
!1697 = !DILocalVariable(name: "errbuf", scope: !1694, file: !426, line: 193, type: !1698)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1699)
!1699 = !{!1700}
!1700 = !DISubrange(count: 1024)
!1701 = !DILocation(line: 0, scope: !1694, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 234, column: 5, scope: !1691)
!1703 = !DILocation(line: 193, column: 3, scope: !1694, inlinedAt: !1702)
!1704 = !DILocation(line: 193, column: 8, scope: !1694, inlinedAt: !1702)
!1705 = !DILocation(line: 195, column: 7, scope: !1694, inlinedAt: !1702)
!1706 = !DILocation(line: 207, column: 9, scope: !1707, inlinedAt: !1702)
!1707 = distinct !DILexicalBlock(scope: !1694, file: !426, line: 207, column: 7)
!1708 = !DILocation(line: 207, column: 7, scope: !1694, inlinedAt: !1702)
!1709 = !DILocation(line: 208, column: 9, scope: !1707, inlinedAt: !1702)
!1710 = !DILocation(line: 208, column: 5, scope: !1707, inlinedAt: !1702)
!1711 = !DILocation(line: 214, column: 3, scope: !1694, inlinedAt: !1702)
!1712 = !DILocation(line: 216, column: 1, scope: !1694, inlinedAt: !1702)
!1713 = !DILocation(line: 234, column: 5, scope: !1691)
!1714 = !DILocation(line: 238, column: 3, scope: !1629)
!1715 = !DILocalVariable(name: "__c", arg: 1, scope: !1716, file: !1717, line: 101, type: !83)
!1716 = distinct !DISubprogram(name: "putc_unlocked", scope: !1717, file: !1717, line: 101, type: !1718, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1720)
!1717 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!83, !83, !1643}
!1720 = !{!1715, !1721}
!1721 = !DILocalVariable(name: "__stream", arg: 2, scope: !1716, file: !1717, line: 101, type: !1643)
!1722 = !DILocation(line: 0, scope: !1716, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 238, column: 3, scope: !1629)
!1724 = !DILocation(line: 103, column: 10, scope: !1716, inlinedAt: !1723)
!1725 = !{!1726, !820, i64 40}
!1726 = !{!"_IO_FILE", !884, i64 0, !820, i64 8, !820, i64 16, !820, i64 24, !820, i64 32, !820, i64 40, !820, i64 48, !820, i64 56, !820, i64 64, !820, i64 72, !820, i64 80, !820, i64 88, !820, i64 96, !820, i64 104, !884, i64 112, !884, i64 116, !1165, i64 120, !925, i64 128, !821, i64 130, !821, i64 131, !820, i64 136, !1165, i64 144, !820, i64 152, !820, i64 160, !820, i64 168, !820, i64 176, !1165, i64 184, !884, i64 192, !821, i64 196}
!1727 = !{!1726, !820, i64 48}
!1728 = !{!"branch_weights", i32 2000, i32 1}
!1729 = !DILocation(line: 240, column: 3, scope: !1629)
!1730 = !DILocation(line: 241, column: 7, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1629, file: !426, line: 241, column: 7)
!1732 = !DILocation(line: 241, column: 7, scope: !1629)
!1733 = !DILocation(line: 242, column: 5, scope: !1731)
!1734 = !DILocation(line: 243, column: 1, scope: !1629)
!1735 = !DISubprogram(name: "__vfprintf_chk", scope: !870, file: !870, line: 96, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!83, !1642, !83, !874, !438}
!1738 = !DISubprogram(name: "strerror_r", scope: !1000, file: !1000, line: 444, type: !1739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!122, !83, !122, !124}
!1741 = !DISubprogram(name: "__overflow", scope: !437, file: !437, line: 886, type: !1742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!83, !1643, !83}
!1744 = !DISubprogram(name: "fflush_unlocked", scope: !437, file: !437, line: 239, type: !1745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!83, !1643}
!1747 = !DISubprogram(name: "fcntl", scope: !1748, file: !1748, line: 149, type: !1749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1748 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!83, !83, !83, null}
!1751 = distinct !DISubprogram(name: "error", scope: !426, file: !426, line: 285, type: !1752, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1754)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !83, !83, !127, null}
!1754 = !{!1755, !1756, !1757, !1758}
!1755 = !DILocalVariable(name: "status", arg: 1, scope: !1751, file: !426, line: 285, type: !83)
!1756 = !DILocalVariable(name: "errnum", arg: 2, scope: !1751, file: !426, line: 285, type: !83)
!1757 = !DILocalVariable(name: "message", arg: 3, scope: !1751, file: !426, line: 285, type: !127)
!1758 = !DILocalVariable(name: "ap", scope: !1751, file: !426, line: 287, type: !436)
!1759 = !DILocation(line: 0, scope: !1751)
!1760 = !DILocation(line: 287, column: 3, scope: !1751)
!1761 = !DILocation(line: 287, column: 11, scope: !1751)
!1762 = !DILocation(line: 288, column: 3, scope: !1751)
!1763 = !DILocation(line: 289, column: 3, scope: !1751)
!1764 = !DILocation(line: 290, column: 3, scope: !1751)
!1765 = !DILocation(line: 291, column: 1, scope: !1751)
!1766 = !DILocation(line: 0, scope: !433)
!1767 = !DILocation(line: 298, column: 1, scope: !433)
!1768 = !DILocation(line: 302, column: 7, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !433, file: !426, line: 302, column: 7)
!1770 = !DILocation(line: 302, column: 7, scope: !433)
!1771 = !DILocation(line: 307, column: 11, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !426, line: 307, column: 11)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !426, line: 303, column: 5)
!1774 = !DILocation(line: 307, column: 27, scope: !1772)
!1775 = !DILocation(line: 308, column: 11, scope: !1772)
!1776 = !DILocation(line: 308, column: 28, scope: !1772)
!1777 = !DILocation(line: 308, column: 25, scope: !1772)
!1778 = !DILocation(line: 309, column: 15, scope: !1772)
!1779 = !DILocation(line: 309, column: 33, scope: !1772)
!1780 = !DILocation(line: 310, column: 19, scope: !1772)
!1781 = !DILocation(line: 311, column: 22, scope: !1772)
!1782 = !DILocation(line: 311, column: 56, scope: !1772)
!1783 = !DILocation(line: 307, column: 11, scope: !1773)
!1784 = !DILocation(line: 316, column: 21, scope: !1773)
!1785 = !DILocation(line: 317, column: 23, scope: !1773)
!1786 = !DILocation(line: 318, column: 5, scope: !1773)
!1787 = !DILocation(line: 327, column: 3, scope: !433)
!1788 = !DILocation(line: 331, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !433, file: !426, line: 331, column: 7)
!1790 = !DILocation(line: 331, column: 7, scope: !433)
!1791 = !DILocation(line: 332, column: 5, scope: !1789)
!1792 = !DILocation(line: 338, column: 7, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !426, line: 334, column: 5)
!1794 = !DILocation(line: 346, column: 3, scope: !433)
!1795 = !DILocation(line: 350, column: 3, scope: !433)
!1796 = !DILocation(line: 356, column: 1, scope: !433)
!1797 = distinct !DISubprogram(name: "error_at_line", scope: !426, file: !426, line: 359, type: !1798, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1800)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !83, !83, !127, !89, !127, null}
!1800 = !{!1801, !1802, !1803, !1804, !1805, !1806}
!1801 = !DILocalVariable(name: "status", arg: 1, scope: !1797, file: !426, line: 359, type: !83)
!1802 = !DILocalVariable(name: "errnum", arg: 2, scope: !1797, file: !426, line: 359, type: !83)
!1803 = !DILocalVariable(name: "file_name", arg: 3, scope: !1797, file: !426, line: 359, type: !127)
!1804 = !DILocalVariable(name: "line_number", arg: 4, scope: !1797, file: !426, line: 360, type: !89)
!1805 = !DILocalVariable(name: "message", arg: 5, scope: !1797, file: !426, line: 360, type: !127)
!1806 = !DILocalVariable(name: "ap", scope: !1797, file: !426, line: 362, type: !436)
!1807 = !DILocation(line: 0, scope: !1797)
!1808 = !DILocation(line: 362, column: 3, scope: !1797)
!1809 = !DILocation(line: 362, column: 11, scope: !1797)
!1810 = !DILocation(line: 363, column: 3, scope: !1797)
!1811 = !DILocation(line: 364, column: 3, scope: !1797)
!1812 = !DILocation(line: 366, column: 3, scope: !1797)
!1813 = !DILocation(line: 367, column: 1, scope: !1797)
!1814 = distinct !DISubprogram(name: "getprogname", scope: !735, file: !735, line: 54, type: !1079, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !868)
!1815 = !DILocation(line: 58, column: 10, scope: !1814)
!1816 = !DILocation(line: 58, column: 3, scope: !1814)
!1817 = distinct !DISubprogram(name: "set_program_name", scope: !480, file: !480, line: 37, type: !834, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1818)
!1818 = !{!1819, !1820, !1821}
!1819 = !DILocalVariable(name: "argv0", arg: 1, scope: !1817, file: !480, line: 37, type: !127)
!1820 = !DILocalVariable(name: "slash", scope: !1817, file: !480, line: 44, type: !127)
!1821 = !DILocalVariable(name: "base", scope: !1817, file: !480, line: 45, type: !127)
!1822 = !DILocation(line: 0, scope: !1817)
!1823 = !DILocation(line: 44, column: 23, scope: !1817)
!1824 = !DILocation(line: 45, column: 22, scope: !1817)
!1825 = !DILocation(line: 46, column: 17, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1817, file: !480, line: 46, column: 7)
!1827 = !DILocation(line: 46, column: 9, scope: !1826)
!1828 = !DILocation(line: 46, column: 25, scope: !1826)
!1829 = !DILocation(line: 46, column: 40, scope: !1826)
!1830 = !DILocalVariable(name: "__s1", arg: 1, scope: !1831, file: !896, line: 974, type: !1028)
!1831 = distinct !DISubprogram(name: "memeq", scope: !896, file: !896, line: 974, type: !1832, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !1834)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!158, !1028, !1028, !124}
!1834 = !{!1830, !1835, !1836}
!1835 = !DILocalVariable(name: "__s2", arg: 2, scope: !1831, file: !896, line: 974, type: !1028)
!1836 = !DILocalVariable(name: "__n", arg: 3, scope: !1831, file: !896, line: 974, type: !124)
!1837 = !DILocation(line: 0, scope: !1831, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 46, column: 28, scope: !1826)
!1839 = !DILocation(line: 976, column: 11, scope: !1831, inlinedAt: !1838)
!1840 = !DILocation(line: 976, column: 10, scope: !1831, inlinedAt: !1838)
!1841 = !DILocation(line: 46, column: 7, scope: !1817)
!1842 = !DILocation(line: 49, column: 11, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !480, line: 49, column: 11)
!1844 = distinct !DILexicalBlock(scope: !1826, file: !480, line: 47, column: 5)
!1845 = !DILocation(line: 49, column: 36, scope: !1843)
!1846 = !DILocation(line: 49, column: 11, scope: !1844)
!1847 = !DILocation(line: 65, column: 16, scope: !1817)
!1848 = !DILocation(line: 71, column: 27, scope: !1817)
!1849 = !DILocation(line: 74, column: 33, scope: !1817)
!1850 = !DILocation(line: 76, column: 1, scope: !1817)
!1851 = !DISubprogram(name: "strrchr", scope: !1000, file: !1000, line: 273, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1852 = !DILocation(line: 0, scope: !489)
!1853 = !DILocation(line: 40, column: 29, scope: !489)
!1854 = !DILocation(line: 41, column: 19, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !489, file: !490, line: 41, column: 7)
!1856 = !DILocation(line: 41, column: 7, scope: !489)
!1857 = !DILocation(line: 47, column: 3, scope: !489)
!1858 = !DILocation(line: 48, column: 3, scope: !489)
!1859 = !DILocation(line: 48, column: 13, scope: !489)
!1860 = !DILocalVariable(name: "ps", arg: 1, scope: !1861, file: !1862, line: 1135, type: !1865)
!1861 = distinct !DISubprogram(name: "mbszero", scope: !1862, file: !1862, line: 1135, type: !1863, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !1866)
!1862 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1863 = !DISubroutineType(types: !1864)
!1864 = !{null, !1865}
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!1866 = !{!1860}
!1867 = !DILocation(line: 0, scope: !1861, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 48, column: 18, scope: !489)
!1869 = !DILocalVariable(name: "__dest", arg: 1, scope: !1870, file: !1465, line: 57, type: !121)
!1870 = distinct !DISubprogram(name: "memset", scope: !1465, file: !1465, line: 57, type: !1871, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!121, !121, !83, !124}
!1873 = !{!1869, !1874, !1875}
!1874 = !DILocalVariable(name: "__ch", arg: 2, scope: !1870, file: !1465, line: 57, type: !83)
!1875 = !DILocalVariable(name: "__len", arg: 3, scope: !1870, file: !1465, line: 57, type: !124)
!1876 = !DILocation(line: 0, scope: !1870, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 1137, column: 3, scope: !1861, inlinedAt: !1868)
!1878 = !DILocation(line: 59, column: 10, scope: !1870, inlinedAt: !1877)
!1879 = !DILocation(line: 49, column: 7, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !489, file: !490, line: 49, column: 7)
!1881 = !DILocation(line: 49, column: 39, scope: !1880)
!1882 = !DILocation(line: 49, column: 44, scope: !1880)
!1883 = !DILocation(line: 54, column: 1, scope: !489)
!1884 = !DISubprogram(name: "mbrtoc32", scope: !501, file: !501, line: 57, type: !1885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!124, !1887, !874, !124, !1889}
!1887 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1888)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1865)
!1890 = distinct !DISubprogram(name: "clone_quoting_options", scope: !520, file: !520, line: 113, type: !1891, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !1894)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!1893, !1893}
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!1894 = !{!1895, !1896, !1897}
!1895 = !DILocalVariable(name: "o", arg: 1, scope: !1890, file: !520, line: 113, type: !1893)
!1896 = !DILocalVariable(name: "saved_errno", scope: !1890, file: !520, line: 115, type: !83)
!1897 = !DILocalVariable(name: "p", scope: !1890, file: !520, line: 116, type: !1893)
!1898 = !DILocation(line: 0, scope: !1890)
!1899 = !DILocation(line: 115, column: 21, scope: !1890)
!1900 = !DILocation(line: 116, column: 40, scope: !1890)
!1901 = !DILocation(line: 116, column: 31, scope: !1890)
!1902 = !DILocation(line: 118, column: 9, scope: !1890)
!1903 = !DILocation(line: 119, column: 3, scope: !1890)
!1904 = distinct !DISubprogram(name: "get_quoting_style", scope: !520, file: !520, line: 124, type: !1905, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !1909)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!103, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!1909 = !{!1910}
!1910 = !DILocalVariable(name: "o", arg: 1, scope: !1904, file: !520, line: 124, type: !1907)
!1911 = !DILocation(line: 0, scope: !1904)
!1912 = !DILocation(line: 126, column: 11, scope: !1904)
!1913 = !DILocation(line: 126, column: 46, scope: !1904)
!1914 = !{!1915, !821, i64 0}
!1915 = !{!"quoting_options", !821, i64 0, !884, i64 4, !821, i64 8, !820, i64 40, !820, i64 48}
!1916 = !DILocation(line: 126, column: 3, scope: !1904)
!1917 = distinct !DISubprogram(name: "set_quoting_style", scope: !520, file: !520, line: 132, type: !1918, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1893, !103}
!1920 = !{!1921, !1922}
!1921 = !DILocalVariable(name: "o", arg: 1, scope: !1917, file: !520, line: 132, type: !1893)
!1922 = !DILocalVariable(name: "s", arg: 2, scope: !1917, file: !520, line: 132, type: !103)
!1923 = !DILocation(line: 0, scope: !1917)
!1924 = !DILocation(line: 134, column: 4, scope: !1917)
!1925 = !DILocation(line: 134, column: 45, scope: !1917)
!1926 = !DILocation(line: 135, column: 1, scope: !1917)
!1927 = distinct !DISubprogram(name: "set_char_quoting", scope: !520, file: !520, line: 143, type: !1928, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!83, !1893, !4, !83}
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1937, !1938}
!1931 = !DILocalVariable(name: "o", arg: 1, scope: !1927, file: !520, line: 143, type: !1893)
!1932 = !DILocalVariable(name: "c", arg: 2, scope: !1927, file: !520, line: 143, type: !4)
!1933 = !DILocalVariable(name: "i", arg: 3, scope: !1927, file: !520, line: 143, type: !83)
!1934 = !DILocalVariable(name: "uc", scope: !1927, file: !520, line: 145, type: !129)
!1935 = !DILocalVariable(name: "p", scope: !1927, file: !520, line: 146, type: !1936)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!1937 = !DILocalVariable(name: "shift", scope: !1927, file: !520, line: 148, type: !83)
!1938 = !DILocalVariable(name: "r", scope: !1927, file: !520, line: 149, type: !89)
!1939 = !DILocation(line: 0, scope: !1927)
!1940 = !DILocation(line: 147, column: 6, scope: !1927)
!1941 = !DILocation(line: 147, column: 41, scope: !1927)
!1942 = !DILocation(line: 147, column: 62, scope: !1927)
!1943 = !DILocation(line: 147, column: 57, scope: !1927)
!1944 = !DILocation(line: 148, column: 15, scope: !1927)
!1945 = !DILocation(line: 149, column: 21, scope: !1927)
!1946 = !DILocation(line: 149, column: 24, scope: !1927)
!1947 = !DILocation(line: 149, column: 34, scope: !1927)
!1948 = !DILocation(line: 150, column: 19, scope: !1927)
!1949 = !DILocation(line: 150, column: 24, scope: !1927)
!1950 = !DILocation(line: 150, column: 6, scope: !1927)
!1951 = !DILocation(line: 151, column: 3, scope: !1927)
!1952 = distinct !DISubprogram(name: "set_quoting_flags", scope: !520, file: !520, line: 159, type: !1953, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!83, !1893, !83}
!1955 = !{!1956, !1957, !1958}
!1956 = !DILocalVariable(name: "o", arg: 1, scope: !1952, file: !520, line: 159, type: !1893)
!1957 = !DILocalVariable(name: "i", arg: 2, scope: !1952, file: !520, line: 159, type: !83)
!1958 = !DILocalVariable(name: "r", scope: !1952, file: !520, line: 163, type: !83)
!1959 = !DILocation(line: 0, scope: !1952)
!1960 = !DILocation(line: 161, column: 8, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1952, file: !520, line: 161, column: 7)
!1962 = !DILocation(line: 161, column: 7, scope: !1952)
!1963 = !DILocation(line: 163, column: 14, scope: !1952)
!1964 = !{!1915, !884, i64 4}
!1965 = !DILocation(line: 164, column: 12, scope: !1952)
!1966 = !DILocation(line: 165, column: 3, scope: !1952)
!1967 = distinct !DISubprogram(name: "set_custom_quoting", scope: !520, file: !520, line: 169, type: !1968, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !1970)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !1893, !127, !127}
!1970 = !{!1971, !1972, !1973}
!1971 = !DILocalVariable(name: "o", arg: 1, scope: !1967, file: !520, line: 169, type: !1893)
!1972 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1967, file: !520, line: 170, type: !127)
!1973 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1967, file: !520, line: 170, type: !127)
!1974 = !DILocation(line: 0, scope: !1967)
!1975 = !DILocation(line: 172, column: 8, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1967, file: !520, line: 172, column: 7)
!1977 = !DILocation(line: 172, column: 7, scope: !1967)
!1978 = !DILocation(line: 174, column: 12, scope: !1967)
!1979 = !DILocation(line: 175, column: 8, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1967, file: !520, line: 175, column: 7)
!1981 = !DILocation(line: 175, column: 19, scope: !1980)
!1982 = !DILocation(line: 176, column: 5, scope: !1980)
!1983 = !DILocation(line: 177, column: 6, scope: !1967)
!1984 = !DILocation(line: 177, column: 17, scope: !1967)
!1985 = !{!1915, !820, i64 40}
!1986 = !DILocation(line: 178, column: 6, scope: !1967)
!1987 = !DILocation(line: 178, column: 18, scope: !1967)
!1988 = !{!1915, !820, i64 48}
!1989 = !DILocation(line: 179, column: 1, scope: !1967)
!1990 = !DISubprogram(name: "abort", scope: !1004, file: !1004, line: 598, type: !475, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !868)
!1991 = distinct !DISubprogram(name: "quotearg_buffer", scope: !520, file: !520, line: 774, type: !1992, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!124, !122, !124, !127, !124, !1907}
!1994 = !{!1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002}
!1995 = !DILocalVariable(name: "buffer", arg: 1, scope: !1991, file: !520, line: 774, type: !122)
!1996 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1991, file: !520, line: 774, type: !124)
!1997 = !DILocalVariable(name: "arg", arg: 3, scope: !1991, file: !520, line: 775, type: !127)
!1998 = !DILocalVariable(name: "argsize", arg: 4, scope: !1991, file: !520, line: 775, type: !124)
!1999 = !DILocalVariable(name: "o", arg: 5, scope: !1991, file: !520, line: 776, type: !1907)
!2000 = !DILocalVariable(name: "p", scope: !1991, file: !520, line: 778, type: !1907)
!2001 = !DILocalVariable(name: "saved_errno", scope: !1991, file: !520, line: 779, type: !83)
!2002 = !DILocalVariable(name: "r", scope: !1991, file: !520, line: 780, type: !124)
!2003 = !DILocation(line: 0, scope: !1991)
!2004 = !DILocation(line: 778, column: 37, scope: !1991)
!2005 = !DILocation(line: 779, column: 21, scope: !1991)
!2006 = !DILocation(line: 781, column: 43, scope: !1991)
!2007 = !DILocation(line: 781, column: 53, scope: !1991)
!2008 = !DILocation(line: 781, column: 63, scope: !1991)
!2009 = !DILocation(line: 782, column: 43, scope: !1991)
!2010 = !DILocation(line: 782, column: 58, scope: !1991)
!2011 = !DILocation(line: 780, column: 14, scope: !1991)
!2012 = !DILocation(line: 783, column: 9, scope: !1991)
!2013 = !DILocation(line: 784, column: 3, scope: !1991)
!2014 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !520, file: !520, line: 251, type: !2015, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2019)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!124, !122, !124, !127, !124, !103, !83, !2017, !127, !127}
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!2019 = !{!2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2044, !2046, !2049, !2050, !2051, !2052, !2055, !2056, !2059, !2063, !2064, !2072, !2075, !2076, !2078, !2079, !2080, !2081}
!2020 = !DILocalVariable(name: "buffer", arg: 1, scope: !2014, file: !520, line: 251, type: !122)
!2021 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2014, file: !520, line: 251, type: !124)
!2022 = !DILocalVariable(name: "arg", arg: 3, scope: !2014, file: !520, line: 252, type: !127)
!2023 = !DILocalVariable(name: "argsize", arg: 4, scope: !2014, file: !520, line: 252, type: !124)
!2024 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2014, file: !520, line: 253, type: !103)
!2025 = !DILocalVariable(name: "flags", arg: 6, scope: !2014, file: !520, line: 253, type: !83)
!2026 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2014, file: !520, line: 254, type: !2017)
!2027 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2014, file: !520, line: 255, type: !127)
!2028 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2014, file: !520, line: 256, type: !127)
!2029 = !DILocalVariable(name: "unibyte_locale", scope: !2014, file: !520, line: 258, type: !158)
!2030 = !DILocalVariable(name: "len", scope: !2014, file: !520, line: 260, type: !124)
!2031 = !DILocalVariable(name: "orig_buffersize", scope: !2014, file: !520, line: 261, type: !124)
!2032 = !DILocalVariable(name: "quote_string", scope: !2014, file: !520, line: 262, type: !127)
!2033 = !DILocalVariable(name: "quote_string_len", scope: !2014, file: !520, line: 263, type: !124)
!2034 = !DILocalVariable(name: "backslash_escapes", scope: !2014, file: !520, line: 264, type: !158)
!2035 = !DILocalVariable(name: "elide_outer_quotes", scope: !2014, file: !520, line: 265, type: !158)
!2036 = !DILocalVariable(name: "encountered_single_quote", scope: !2014, file: !520, line: 266, type: !158)
!2037 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2014, file: !520, line: 267, type: !158)
!2038 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2014, file: !520, line: 309, type: !158)
!2039 = !DILocalVariable(name: "lq", scope: !2040, file: !520, line: 361, type: !127)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !520, line: 361, column: 11)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !520, line: 360, column: 13)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !520, line: 333, column: 7)
!2043 = distinct !DILexicalBlock(scope: !2014, file: !520, line: 312, column: 5)
!2044 = !DILocalVariable(name: "i", scope: !2045, file: !520, line: 395, type: !124)
!2045 = distinct !DILexicalBlock(scope: !2014, file: !520, line: 395, column: 3)
!2046 = !DILocalVariable(name: "is_right_quote", scope: !2047, file: !520, line: 397, type: !158)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !520, line: 396, column: 5)
!2048 = distinct !DILexicalBlock(scope: !2045, file: !520, line: 395, column: 3)
!2049 = !DILocalVariable(name: "escaping", scope: !2047, file: !520, line: 398, type: !158)
!2050 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2047, file: !520, line: 399, type: !158)
!2051 = !DILocalVariable(name: "c", scope: !2047, file: !520, line: 417, type: !129)
!2052 = !DILocalVariable(name: "m", scope: !2053, file: !520, line: 598, type: !124)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !520, line: 596, column: 11)
!2054 = distinct !DILexicalBlock(scope: !2047, file: !520, line: 419, column: 9)
!2055 = !DILocalVariable(name: "printable", scope: !2053, file: !520, line: 600, type: !158)
!2056 = !DILocalVariable(name: "mbs", scope: !2057, file: !520, line: 609, type: !590)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !520, line: 608, column: 15)
!2058 = distinct !DILexicalBlock(scope: !2053, file: !520, line: 602, column: 17)
!2059 = !DILocalVariable(name: "w", scope: !2060, file: !520, line: 618, type: !500)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !520, line: 617, column: 19)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !520, line: 616, column: 17)
!2062 = distinct !DILexicalBlock(scope: !2057, file: !520, line: 616, column: 17)
!2063 = !DILocalVariable(name: "bytes", scope: !2060, file: !520, line: 619, type: !124)
!2064 = !DILocalVariable(name: "j", scope: !2065, file: !520, line: 648, type: !124)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !520, line: 648, column: 29)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !520, line: 647, column: 27)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !520, line: 645, column: 29)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !520, line: 636, column: 23)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !520, line: 628, column: 30)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !520, line: 623, column: 30)
!2071 = distinct !DILexicalBlock(scope: !2060, file: !520, line: 621, column: 25)
!2072 = !DILocalVariable(name: "ilim", scope: !2073, file: !520, line: 674, type: !124)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !520, line: 671, column: 15)
!2074 = distinct !DILexicalBlock(scope: !2053, file: !520, line: 670, column: 17)
!2075 = !DILabel(scope: !2014, name: "process_input", file: !520, line: 308)
!2076 = !DILabel(scope: !2077, name: "c_and_shell_escape", file: !520, line: 502)
!2077 = distinct !DILexicalBlock(scope: !2054, file: !520, line: 478, column: 9)
!2078 = !DILabel(scope: !2077, name: "c_escape", file: !520, line: 507)
!2079 = !DILabel(scope: !2047, name: "store_escape", file: !520, line: 709)
!2080 = !DILabel(scope: !2047, name: "store_c", file: !520, line: 712)
!2081 = !DILabel(scope: !2014, name: "force_outer_quoting_style", file: !520, line: 753)
!2082 = !DILocation(line: 0, scope: !2014)
!2083 = !DILocation(line: 258, column: 25, scope: !2014)
!2084 = !DILocation(line: 258, column: 36, scope: !2014)
!2085 = !DILocation(line: 267, column: 3, scope: !2014)
!2086 = !DILocation(line: 261, column: 10, scope: !2014)
!2087 = !DILocation(line: 262, column: 15, scope: !2014)
!2088 = !DILocation(line: 263, column: 10, scope: !2014)
!2089 = !DILocation(line: 308, column: 2, scope: !2014)
!2090 = !DILocation(line: 311, column: 3, scope: !2014)
!2091 = !DILocation(line: 318, column: 11, scope: !2043)
!2092 = !DILocation(line: 319, column: 9, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !520, line: 319, column: 9)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !520, line: 319, column: 9)
!2095 = distinct !DILexicalBlock(scope: !2043, file: !520, line: 318, column: 11)
!2096 = !DILocation(line: 319, column: 9, scope: !2094)
!2097 = !DILocation(line: 0, scope: !581, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 357, column: 26, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !520, line: 335, column: 11)
!2100 = distinct !DILexicalBlock(scope: !2042, file: !520, line: 334, column: 13)
!2101 = !DILocation(line: 199, column: 29, scope: !581, inlinedAt: !2098)
!2102 = !DILocation(line: 201, column: 19, scope: !2103, inlinedAt: !2098)
!2103 = distinct !DILexicalBlock(scope: !581, file: !520, line: 201, column: 7)
!2104 = !DILocation(line: 201, column: 7, scope: !581, inlinedAt: !2098)
!2105 = !DILocation(line: 229, column: 3, scope: !581, inlinedAt: !2098)
!2106 = !DILocation(line: 230, column: 3, scope: !581, inlinedAt: !2098)
!2107 = !DILocation(line: 230, column: 13, scope: !581, inlinedAt: !2098)
!2108 = !DILocalVariable(name: "ps", arg: 1, scope: !2109, file: !1862, line: 1135, type: !2112)
!2109 = distinct !DISubprogram(name: "mbszero", scope: !1862, file: !1862, line: 1135, type: !2110, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2113)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !2112}
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!2113 = !{!2108}
!2114 = !DILocation(line: 0, scope: !2109, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 230, column: 18, scope: !581, inlinedAt: !2098)
!2116 = !DILocalVariable(name: "__dest", arg: 1, scope: !2117, file: !1465, line: 57, type: !121)
!2117 = distinct !DISubprogram(name: "memset", scope: !1465, file: !1465, line: 57, type: !1871, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2118)
!2118 = !{!2116, !2119, !2120}
!2119 = !DILocalVariable(name: "__ch", arg: 2, scope: !2117, file: !1465, line: 57, type: !83)
!2120 = !DILocalVariable(name: "__len", arg: 3, scope: !2117, file: !1465, line: 57, type: !124)
!2121 = !DILocation(line: 0, scope: !2117, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 1137, column: 3, scope: !2109, inlinedAt: !2115)
!2123 = !DILocation(line: 59, column: 10, scope: !2117, inlinedAt: !2122)
!2124 = !DILocation(line: 231, column: 7, scope: !2125, inlinedAt: !2098)
!2125 = distinct !DILexicalBlock(scope: !581, file: !520, line: 231, column: 7)
!2126 = !DILocation(line: 231, column: 40, scope: !2125, inlinedAt: !2098)
!2127 = !DILocation(line: 231, column: 45, scope: !2125, inlinedAt: !2098)
!2128 = !DILocation(line: 235, column: 1, scope: !581, inlinedAt: !2098)
!2129 = !DILocation(line: 0, scope: !581, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 358, column: 27, scope: !2099)
!2131 = !DILocation(line: 199, column: 29, scope: !581, inlinedAt: !2130)
!2132 = !DILocation(line: 201, column: 19, scope: !2103, inlinedAt: !2130)
!2133 = !DILocation(line: 201, column: 7, scope: !581, inlinedAt: !2130)
!2134 = !DILocation(line: 229, column: 3, scope: !581, inlinedAt: !2130)
!2135 = !DILocation(line: 230, column: 3, scope: !581, inlinedAt: !2130)
!2136 = !DILocation(line: 230, column: 13, scope: !581, inlinedAt: !2130)
!2137 = !DILocation(line: 0, scope: !2109, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 230, column: 18, scope: !581, inlinedAt: !2130)
!2139 = !DILocation(line: 0, scope: !2117, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 1137, column: 3, scope: !2109, inlinedAt: !2138)
!2141 = !DILocation(line: 59, column: 10, scope: !2117, inlinedAt: !2140)
!2142 = !DILocation(line: 231, column: 7, scope: !2125, inlinedAt: !2130)
!2143 = !DILocation(line: 231, column: 40, scope: !2125, inlinedAt: !2130)
!2144 = !DILocation(line: 231, column: 45, scope: !2125, inlinedAt: !2130)
!2145 = !DILocation(line: 235, column: 1, scope: !581, inlinedAt: !2130)
!2146 = !DILocation(line: 360, column: 13, scope: !2042)
!2147 = !DILocation(line: 0, scope: !2040)
!2148 = !DILocation(line: 361, column: 45, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2040, file: !520, line: 361, column: 11)
!2150 = !DILocation(line: 361, column: 11, scope: !2040)
!2151 = !DILocation(line: 362, column: 13, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !520, line: 362, column: 13)
!2153 = distinct !DILexicalBlock(scope: !2149, file: !520, line: 362, column: 13)
!2154 = !DILocation(line: 362, column: 13, scope: !2153)
!2155 = !DILocation(line: 361, column: 52, scope: !2149)
!2156 = distinct !{!2156, !2150, !2157, !930}
!2157 = !DILocation(line: 362, column: 13, scope: !2040)
!2158 = !DILocation(line: 260, column: 10, scope: !2014)
!2159 = !DILocation(line: 365, column: 28, scope: !2042)
!2160 = !DILocation(line: 367, column: 7, scope: !2043)
!2161 = !DILocation(line: 370, column: 7, scope: !2043)
!2162 = !DILocation(line: 376, column: 11, scope: !2043)
!2163 = !DILocation(line: 381, column: 11, scope: !2043)
!2164 = !DILocation(line: 382, column: 9, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !520, line: 382, column: 9)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !520, line: 382, column: 9)
!2167 = distinct !DILexicalBlock(scope: !2043, file: !520, line: 381, column: 11)
!2168 = !DILocation(line: 382, column: 9, scope: !2166)
!2169 = !DILocation(line: 389, column: 7, scope: !2043)
!2170 = !DILocation(line: 392, column: 7, scope: !2043)
!2171 = !DILocation(line: 0, scope: !2045)
!2172 = !DILocation(line: 395, column: 8, scope: !2045)
!2173 = !DILocation(line: 395, scope: !2045)
!2174 = !DILocation(line: 395, column: 34, scope: !2048)
!2175 = !DILocation(line: 395, column: 26, scope: !2048)
!2176 = !DILocation(line: 395, column: 48, scope: !2048)
!2177 = !DILocation(line: 395, column: 55, scope: !2048)
!2178 = !DILocation(line: 395, column: 3, scope: !2045)
!2179 = !DILocation(line: 395, column: 67, scope: !2048)
!2180 = !DILocation(line: 0, scope: !2047)
!2181 = !DILocation(line: 402, column: 11, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2047, file: !520, line: 401, column: 11)
!2183 = !DILocation(line: 404, column: 17, scope: !2182)
!2184 = !DILocation(line: 405, column: 39, scope: !2182)
!2185 = !DILocation(line: 409, column: 32, scope: !2182)
!2186 = !DILocation(line: 405, column: 19, scope: !2182)
!2187 = !DILocation(line: 405, column: 15, scope: !2182)
!2188 = !DILocation(line: 410, column: 11, scope: !2182)
!2189 = !DILocation(line: 410, column: 25, scope: !2182)
!2190 = !DILocalVariable(name: "__s1", arg: 1, scope: !2191, file: !896, line: 974, type: !1028)
!2191 = distinct !DISubprogram(name: "memeq", scope: !896, file: !896, line: 974, type: !1832, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2192)
!2192 = !{!2190, !2193, !2194}
!2193 = !DILocalVariable(name: "__s2", arg: 2, scope: !2191, file: !896, line: 974, type: !1028)
!2194 = !DILocalVariable(name: "__n", arg: 3, scope: !2191, file: !896, line: 974, type: !124)
!2195 = !DILocation(line: 0, scope: !2191, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 410, column: 14, scope: !2182)
!2197 = !DILocation(line: 976, column: 11, scope: !2191, inlinedAt: !2196)
!2198 = !DILocation(line: 976, column: 10, scope: !2191, inlinedAt: !2196)
!2199 = !DILocation(line: 401, column: 11, scope: !2047)
!2200 = !DILocation(line: 417, column: 25, scope: !2047)
!2201 = !DILocation(line: 418, column: 7, scope: !2047)
!2202 = !DILocation(line: 421, column: 15, scope: !2054)
!2203 = !DILocation(line: 423, column: 15, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !520, line: 423, column: 15)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !520, line: 422, column: 13)
!2206 = distinct !DILexicalBlock(scope: !2054, file: !520, line: 421, column: 15)
!2207 = !DILocation(line: 423, column: 15, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !520, line: 423, column: 15)
!2209 = !DILocation(line: 423, column: 15, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !520, line: 423, column: 15)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !520, line: 423, column: 15)
!2212 = distinct !DILexicalBlock(scope: !2208, file: !520, line: 423, column: 15)
!2213 = !DILocation(line: 423, column: 15, scope: !2211)
!2214 = !DILocation(line: 423, column: 15, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !520, line: 423, column: 15)
!2216 = distinct !DILexicalBlock(scope: !2212, file: !520, line: 423, column: 15)
!2217 = !DILocation(line: 423, column: 15, scope: !2216)
!2218 = !DILocation(line: 423, column: 15, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !520, line: 423, column: 15)
!2220 = distinct !DILexicalBlock(scope: !2212, file: !520, line: 423, column: 15)
!2221 = !DILocation(line: 423, column: 15, scope: !2220)
!2222 = !DILocation(line: 423, column: 15, scope: !2212)
!2223 = !DILocation(line: 423, column: 15, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !520, line: 423, column: 15)
!2225 = distinct !DILexicalBlock(scope: !2204, file: !520, line: 423, column: 15)
!2226 = !DILocation(line: 423, column: 15, scope: !2225)
!2227 = !DILocation(line: 431, column: 19, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2205, file: !520, line: 430, column: 19)
!2229 = !DILocation(line: 431, column: 24, scope: !2228)
!2230 = !DILocation(line: 431, column: 28, scope: !2228)
!2231 = !DILocation(line: 431, column: 38, scope: !2228)
!2232 = !DILocation(line: 431, column: 48, scope: !2228)
!2233 = !DILocation(line: 431, column: 59, scope: !2228)
!2234 = !DILocation(line: 433, column: 19, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !520, line: 433, column: 19)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !520, line: 433, column: 19)
!2237 = distinct !DILexicalBlock(scope: !2228, file: !520, line: 432, column: 17)
!2238 = !DILocation(line: 433, column: 19, scope: !2236)
!2239 = !DILocation(line: 434, column: 19, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !520, line: 434, column: 19)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !520, line: 434, column: 19)
!2242 = !DILocation(line: 434, column: 19, scope: !2241)
!2243 = !DILocation(line: 435, column: 17, scope: !2237)
!2244 = !DILocation(line: 442, column: 20, scope: !2206)
!2245 = !DILocation(line: 447, column: 11, scope: !2054)
!2246 = !DILocation(line: 450, column: 19, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2054, file: !520, line: 448, column: 13)
!2248 = !DILocation(line: 456, column: 19, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2247, file: !520, line: 455, column: 19)
!2250 = !DILocation(line: 456, column: 24, scope: !2249)
!2251 = !DILocation(line: 456, column: 28, scope: !2249)
!2252 = !DILocation(line: 456, column: 38, scope: !2249)
!2253 = !DILocation(line: 456, column: 47, scope: !2249)
!2254 = !DILocation(line: 456, column: 41, scope: !2249)
!2255 = !DILocation(line: 456, column: 52, scope: !2249)
!2256 = !DILocation(line: 455, column: 19, scope: !2247)
!2257 = !DILocation(line: 457, column: 25, scope: !2249)
!2258 = !DILocation(line: 457, column: 17, scope: !2249)
!2259 = !DILocation(line: 464, column: 25, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2249, file: !520, line: 458, column: 19)
!2261 = !DILocation(line: 468, column: 21, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !520, line: 468, column: 21)
!2263 = distinct !DILexicalBlock(scope: !2260, file: !520, line: 468, column: 21)
!2264 = !DILocation(line: 468, column: 21, scope: !2263)
!2265 = !DILocation(line: 469, column: 21, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !520, line: 469, column: 21)
!2267 = distinct !DILexicalBlock(scope: !2260, file: !520, line: 469, column: 21)
!2268 = !DILocation(line: 469, column: 21, scope: !2267)
!2269 = !DILocation(line: 470, column: 21, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !520, line: 470, column: 21)
!2271 = distinct !DILexicalBlock(scope: !2260, file: !520, line: 470, column: 21)
!2272 = !DILocation(line: 470, column: 21, scope: !2271)
!2273 = !DILocation(line: 471, column: 21, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !520, line: 471, column: 21)
!2275 = distinct !DILexicalBlock(scope: !2260, file: !520, line: 471, column: 21)
!2276 = !DILocation(line: 471, column: 21, scope: !2275)
!2277 = !DILocation(line: 472, column: 21, scope: !2260)
!2278 = !DILocation(line: 482, column: 33, scope: !2077)
!2279 = !DILocation(line: 483, column: 33, scope: !2077)
!2280 = !DILocation(line: 485, column: 33, scope: !2077)
!2281 = !DILocation(line: 486, column: 33, scope: !2077)
!2282 = !DILocation(line: 487, column: 33, scope: !2077)
!2283 = !DILocation(line: 490, column: 17, scope: !2077)
!2284 = !DILocation(line: 492, column: 21, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !520, line: 491, column: 15)
!2286 = distinct !DILexicalBlock(scope: !2077, file: !520, line: 490, column: 17)
!2287 = !DILocation(line: 499, column: 35, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2077, file: !520, line: 499, column: 17)
!2289 = !DILocation(line: 0, scope: !2077)
!2290 = !DILocation(line: 502, column: 11, scope: !2077)
!2291 = !DILocation(line: 504, column: 17, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2077, file: !520, line: 503, column: 17)
!2293 = !DILocation(line: 507, column: 11, scope: !2077)
!2294 = !DILocation(line: 508, column: 17, scope: !2077)
!2295 = !DILocation(line: 517, column: 15, scope: !2054)
!2296 = !DILocation(line: 517, column: 40, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2054, file: !520, line: 517, column: 15)
!2298 = !DILocation(line: 517, column: 47, scope: !2297)
!2299 = !DILocation(line: 517, column: 18, scope: !2297)
!2300 = !DILocation(line: 521, column: 17, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2054, file: !520, line: 521, column: 15)
!2302 = !DILocation(line: 521, column: 15, scope: !2054)
!2303 = !DILocation(line: 525, column: 11, scope: !2054)
!2304 = !DILocation(line: 537, column: 15, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2054, file: !520, line: 536, column: 15)
!2306 = !DILocation(line: 536, column: 15, scope: !2054)
!2307 = !DILocation(line: 544, column: 15, scope: !2054)
!2308 = !DILocation(line: 546, column: 19, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !520, line: 545, column: 13)
!2310 = distinct !DILexicalBlock(scope: !2054, file: !520, line: 544, column: 15)
!2311 = !DILocation(line: 549, column: 19, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2309, file: !520, line: 549, column: 19)
!2313 = !DILocation(line: 549, column: 30, scope: !2312)
!2314 = !DILocation(line: 558, column: 15, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !520, line: 558, column: 15)
!2316 = distinct !DILexicalBlock(scope: !2309, file: !520, line: 558, column: 15)
!2317 = !DILocation(line: 558, column: 15, scope: !2316)
!2318 = !DILocation(line: 559, column: 15, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !520, line: 559, column: 15)
!2320 = distinct !DILexicalBlock(scope: !2309, file: !520, line: 559, column: 15)
!2321 = !DILocation(line: 559, column: 15, scope: !2320)
!2322 = !DILocation(line: 560, column: 15, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !520, line: 560, column: 15)
!2324 = distinct !DILexicalBlock(scope: !2309, file: !520, line: 560, column: 15)
!2325 = !DILocation(line: 560, column: 15, scope: !2324)
!2326 = !DILocation(line: 562, column: 13, scope: !2309)
!2327 = !DILocation(line: 602, column: 17, scope: !2053)
!2328 = !DILocation(line: 0, scope: !2053)
!2329 = !DILocation(line: 605, column: 29, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2058, file: !520, line: 603, column: 15)
!2331 = !DILocation(line: 605, column: 41, scope: !2330)
!2332 = !DILocation(line: 606, column: 15, scope: !2330)
!2333 = !DILocation(line: 609, column: 17, scope: !2057)
!2334 = !DILocation(line: 609, column: 27, scope: !2057)
!2335 = !DILocation(line: 0, scope: !2109, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 609, column: 32, scope: !2057)
!2337 = !DILocation(line: 0, scope: !2117, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 1137, column: 3, scope: !2109, inlinedAt: !2336)
!2339 = !DILocation(line: 59, column: 10, scope: !2117, inlinedAt: !2338)
!2340 = !DILocation(line: 613, column: 29, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2057, file: !520, line: 613, column: 21)
!2342 = !DILocation(line: 613, column: 21, scope: !2057)
!2343 = !DILocation(line: 614, column: 29, scope: !2341)
!2344 = !DILocation(line: 614, column: 19, scope: !2341)
!2345 = !DILocation(line: 618, column: 21, scope: !2060)
!2346 = !DILocation(line: 620, column: 54, scope: !2060)
!2347 = !DILocation(line: 0, scope: !2060)
!2348 = !DILocation(line: 619, column: 36, scope: !2060)
!2349 = !DILocation(line: 621, column: 25, scope: !2060)
!2350 = !DILocation(line: 631, column: 38, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2069, file: !520, line: 629, column: 23)
!2352 = !DILocation(line: 631, column: 48, scope: !2351)
!2353 = !DILocation(line: 626, column: 25, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2070, file: !520, line: 624, column: 23)
!2355 = !DILocation(line: 631, column: 51, scope: !2351)
!2356 = !DILocation(line: 631, column: 25, scope: !2351)
!2357 = !DILocation(line: 632, column: 28, scope: !2351)
!2358 = !DILocation(line: 631, column: 34, scope: !2351)
!2359 = distinct !{!2359, !2356, !2357, !930}
!2360 = !DILocation(line: 646, column: 29, scope: !2067)
!2361 = !DILocation(line: 0, scope: !2065)
!2362 = !DILocation(line: 649, column: 49, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2065, file: !520, line: 648, column: 29)
!2364 = !DILocation(line: 649, column: 39, scope: !2363)
!2365 = !DILocation(line: 649, column: 31, scope: !2363)
!2366 = !DILocation(line: 648, column: 60, scope: !2363)
!2367 = !DILocation(line: 648, column: 50, scope: !2363)
!2368 = !DILocation(line: 648, column: 29, scope: !2065)
!2369 = distinct !{!2369, !2368, !2370, !930}
!2370 = !DILocation(line: 654, column: 33, scope: !2065)
!2371 = !DILocation(line: 657, column: 43, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2068, file: !520, line: 657, column: 29)
!2373 = !DILocalVariable(name: "wc", arg: 1, scope: !2374, file: !2375, line: 865, type: !2378)
!2374 = distinct !DISubprogram(name: "c32isprint", scope: !2375, file: !2375, line: 865, type: !2376, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2380)
!2375 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!83, !2378}
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2379, line: 20, baseType: !89)
!2379 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2380 = !{!2373}
!2381 = !DILocation(line: 0, scope: !2374, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 657, column: 31, scope: !2372)
!2383 = !DILocation(line: 871, column: 10, scope: !2374, inlinedAt: !2382)
!2384 = !DILocation(line: 657, column: 31, scope: !2372)
!2385 = !DILocation(line: 664, column: 23, scope: !2060)
!2386 = !DILocation(line: 665, column: 19, scope: !2061)
!2387 = !DILocation(line: 666, column: 15, scope: !2058)
!2388 = !DILocation(line: 753, column: 2, scope: !2014)
!2389 = !DILocation(line: 756, column: 51, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2014, file: !520, line: 756, column: 7)
!2391 = !DILocation(line: 0, scope: !2058)
!2392 = !DILocation(line: 670, column: 19, scope: !2074)
!2393 = !DILocation(line: 670, column: 23, scope: !2074)
!2394 = !DILocation(line: 674, column: 33, scope: !2073)
!2395 = !DILocation(line: 0, scope: !2073)
!2396 = !DILocation(line: 676, column: 17, scope: !2073)
!2397 = !DILocation(line: 398, column: 12, scope: !2047)
!2398 = !DILocation(line: 678, column: 43, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !520, line: 678, column: 25)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !520, line: 677, column: 19)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !520, line: 676, column: 17)
!2402 = distinct !DILexicalBlock(scope: !2073, file: !520, line: 676, column: 17)
!2403 = !DILocation(line: 680, column: 25, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !520, line: 680, column: 25)
!2405 = distinct !DILexicalBlock(scope: !2399, file: !520, line: 679, column: 23)
!2406 = !DILocation(line: 680, column: 25, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2404, file: !520, line: 680, column: 25)
!2408 = !DILocation(line: 680, column: 25, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !520, line: 680, column: 25)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !520, line: 680, column: 25)
!2411 = distinct !DILexicalBlock(scope: !2407, file: !520, line: 680, column: 25)
!2412 = !DILocation(line: 680, column: 25, scope: !2410)
!2413 = !DILocation(line: 680, column: 25, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !520, line: 680, column: 25)
!2415 = distinct !DILexicalBlock(scope: !2411, file: !520, line: 680, column: 25)
!2416 = !DILocation(line: 680, column: 25, scope: !2415)
!2417 = !DILocation(line: 680, column: 25, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !520, line: 680, column: 25)
!2419 = distinct !DILexicalBlock(scope: !2411, file: !520, line: 680, column: 25)
!2420 = !DILocation(line: 680, column: 25, scope: !2419)
!2421 = !DILocation(line: 680, column: 25, scope: !2411)
!2422 = !DILocation(line: 680, column: 25, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !520, line: 680, column: 25)
!2424 = distinct !DILexicalBlock(scope: !2404, file: !520, line: 680, column: 25)
!2425 = !DILocation(line: 680, column: 25, scope: !2424)
!2426 = !DILocation(line: 681, column: 25, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !520, line: 681, column: 25)
!2428 = distinct !DILexicalBlock(scope: !2405, file: !520, line: 681, column: 25)
!2429 = !DILocation(line: 681, column: 25, scope: !2428)
!2430 = !DILocation(line: 682, column: 25, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !520, line: 682, column: 25)
!2432 = distinct !DILexicalBlock(scope: !2405, file: !520, line: 682, column: 25)
!2433 = !DILocation(line: 682, column: 25, scope: !2432)
!2434 = !DILocation(line: 683, column: 38, scope: !2405)
!2435 = !DILocation(line: 683, column: 33, scope: !2405)
!2436 = !DILocation(line: 684, column: 23, scope: !2405)
!2437 = !DILocation(line: 685, column: 30, scope: !2399)
!2438 = !DILocation(line: 687, column: 25, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !520, line: 687, column: 25)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !520, line: 687, column: 25)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !520, line: 686, column: 23)
!2442 = distinct !DILexicalBlock(scope: !2399, file: !520, line: 685, column: 30)
!2443 = !DILocation(line: 687, column: 25, scope: !2440)
!2444 = !DILocation(line: 689, column: 23, scope: !2441)
!2445 = !DILocation(line: 690, column: 35, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2400, file: !520, line: 690, column: 25)
!2447 = !DILocation(line: 690, column: 30, scope: !2446)
!2448 = !DILocation(line: 690, column: 25, scope: !2400)
!2449 = !DILocation(line: 692, column: 21, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !520, line: 692, column: 21)
!2451 = distinct !DILexicalBlock(scope: !2400, file: !520, line: 692, column: 21)
!2452 = !DILocation(line: 692, column: 21, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !520, line: 692, column: 21)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !520, line: 692, column: 21)
!2455 = distinct !DILexicalBlock(scope: !2450, file: !520, line: 692, column: 21)
!2456 = !DILocation(line: 692, column: 21, scope: !2454)
!2457 = !DILocation(line: 692, column: 21, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !520, line: 692, column: 21)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !520, line: 692, column: 21)
!2460 = !DILocation(line: 692, column: 21, scope: !2459)
!2461 = !DILocation(line: 692, column: 21, scope: !2455)
!2462 = !DILocation(line: 0, scope: !2400)
!2463 = !DILocation(line: 693, column: 21, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !520, line: 693, column: 21)
!2465 = distinct !DILexicalBlock(scope: !2400, file: !520, line: 693, column: 21)
!2466 = !DILocation(line: 693, column: 21, scope: !2465)
!2467 = !DILocation(line: 694, column: 25, scope: !2400)
!2468 = !DILocation(line: 676, column: 17, scope: !2401)
!2469 = distinct !{!2469, !2470, !2471}
!2470 = !DILocation(line: 676, column: 17, scope: !2402)
!2471 = !DILocation(line: 695, column: 19, scope: !2402)
!2472 = !DILocation(line: 409, column: 30, scope: !2182)
!2473 = !DILocation(line: 702, column: 34, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2047, file: !520, line: 702, column: 11)
!2475 = !DILocation(line: 704, column: 14, scope: !2474)
!2476 = !DILocation(line: 705, column: 14, scope: !2474)
!2477 = !DILocation(line: 705, column: 35, scope: !2474)
!2478 = !DILocation(line: 705, column: 17, scope: !2474)
!2479 = !DILocation(line: 705, column: 47, scope: !2474)
!2480 = !DILocation(line: 705, column: 65, scope: !2474)
!2481 = !DILocation(line: 706, column: 11, scope: !2474)
!2482 = !DILocation(line: 702, column: 11, scope: !2047)
!2483 = !DILocation(line: 395, column: 15, scope: !2045)
!2484 = !DILocation(line: 709, column: 5, scope: !2047)
!2485 = !DILocation(line: 710, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2047, file: !520, line: 710, column: 7)
!2487 = !DILocation(line: 710, column: 7, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2486, file: !520, line: 710, column: 7)
!2489 = !DILocation(line: 710, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !520, line: 710, column: 7)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !520, line: 710, column: 7)
!2492 = distinct !DILexicalBlock(scope: !2488, file: !520, line: 710, column: 7)
!2493 = !DILocation(line: 710, column: 7, scope: !2491)
!2494 = !DILocation(line: 710, column: 7, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !520, line: 710, column: 7)
!2496 = distinct !DILexicalBlock(scope: !2492, file: !520, line: 710, column: 7)
!2497 = !DILocation(line: 710, column: 7, scope: !2496)
!2498 = !DILocation(line: 710, column: 7, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !520, line: 710, column: 7)
!2500 = distinct !DILexicalBlock(scope: !2492, file: !520, line: 710, column: 7)
!2501 = !DILocation(line: 710, column: 7, scope: !2500)
!2502 = !DILocation(line: 710, column: 7, scope: !2492)
!2503 = !DILocation(line: 710, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !520, line: 710, column: 7)
!2505 = distinct !DILexicalBlock(scope: !2486, file: !520, line: 710, column: 7)
!2506 = !DILocation(line: 710, column: 7, scope: !2505)
!2507 = !DILocation(line: 712, column: 5, scope: !2047)
!2508 = !DILocation(line: 713, column: 7, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !520, line: 713, column: 7)
!2510 = distinct !DILexicalBlock(scope: !2047, file: !520, line: 713, column: 7)
!2511 = !DILocation(line: 417, column: 21, scope: !2047)
!2512 = !DILocation(line: 713, column: 7, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !520, line: 713, column: 7)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !520, line: 713, column: 7)
!2515 = distinct !DILexicalBlock(scope: !2509, file: !520, line: 713, column: 7)
!2516 = !DILocation(line: 713, column: 7, scope: !2514)
!2517 = !DILocation(line: 713, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !520, line: 713, column: 7)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !520, line: 713, column: 7)
!2520 = !DILocation(line: 713, column: 7, scope: !2519)
!2521 = !DILocation(line: 713, column: 7, scope: !2515)
!2522 = !DILocation(line: 714, column: 7, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !520, line: 714, column: 7)
!2524 = distinct !DILexicalBlock(scope: !2047, file: !520, line: 714, column: 7)
!2525 = !DILocation(line: 714, column: 7, scope: !2524)
!2526 = !DILocation(line: 716, column: 11, scope: !2047)
!2527 = !DILocation(line: 718, column: 5, scope: !2048)
!2528 = !DILocation(line: 395, column: 82, scope: !2048)
!2529 = !DILocation(line: 395, column: 3, scope: !2048)
!2530 = distinct !{!2530, !2178, !2531, !930}
!2531 = !DILocation(line: 718, column: 5, scope: !2045)
!2532 = !DILocation(line: 720, column: 11, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2014, file: !520, line: 720, column: 7)
!2534 = !DILocation(line: 720, column: 16, scope: !2533)
!2535 = !DILocation(line: 728, column: 51, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2014, file: !520, line: 728, column: 7)
!2537 = !DILocation(line: 731, column: 11, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2536, file: !520, line: 730, column: 5)
!2539 = !DILocation(line: 732, column: 16, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2538, file: !520, line: 731, column: 11)
!2541 = !DILocation(line: 732, column: 9, scope: !2540)
!2542 = !DILocation(line: 736, column: 18, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2540, file: !520, line: 736, column: 16)
!2544 = !DILocation(line: 736, column: 29, scope: !2543)
!2545 = !DILocation(line: 745, column: 7, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2014, file: !520, line: 745, column: 7)
!2547 = !DILocation(line: 745, column: 20, scope: !2546)
!2548 = !DILocation(line: 746, column: 12, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !520, line: 746, column: 5)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !520, line: 746, column: 5)
!2551 = !DILocation(line: 746, column: 5, scope: !2550)
!2552 = !DILocation(line: 747, column: 7, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !520, line: 747, column: 7)
!2554 = distinct !DILexicalBlock(scope: !2549, file: !520, line: 747, column: 7)
!2555 = !DILocation(line: 747, column: 7, scope: !2554)
!2556 = !DILocation(line: 746, column: 39, scope: !2549)
!2557 = distinct !{!2557, !2551, !2558, !930}
!2558 = !DILocation(line: 747, column: 7, scope: !2550)
!2559 = !DILocation(line: 749, column: 11, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2014, file: !520, line: 749, column: 7)
!2561 = !DILocation(line: 749, column: 7, scope: !2014)
!2562 = !DILocation(line: 750, column: 5, scope: !2560)
!2563 = !DILocation(line: 750, column: 17, scope: !2560)
!2564 = !DILocation(line: 756, column: 21, scope: !2390)
!2565 = !DILocation(line: 760, column: 42, scope: !2014)
!2566 = !DILocation(line: 758, column: 10, scope: !2014)
!2567 = !DILocation(line: 758, column: 3, scope: !2014)
!2568 = !DILocation(line: 762, column: 1, scope: !2014)
!2569 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1004, file: !1004, line: 98, type: !2570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!124}
!2572 = !DISubprogram(name: "iswprint", scope: !2573, file: !2573, line: 120, type: !2376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!2573 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2574 = distinct !DISubprogram(name: "quotearg_alloc", scope: !520, file: !520, line: 788, type: !2575, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!122, !127, !124, !1907}
!2577 = !{!2578, !2579, !2580}
!2578 = !DILocalVariable(name: "arg", arg: 1, scope: !2574, file: !520, line: 788, type: !127)
!2579 = !DILocalVariable(name: "argsize", arg: 2, scope: !2574, file: !520, line: 788, type: !124)
!2580 = !DILocalVariable(name: "o", arg: 3, scope: !2574, file: !520, line: 789, type: !1907)
!2581 = !DILocation(line: 0, scope: !2574)
!2582 = !DILocalVariable(name: "arg", arg: 1, scope: !2583, file: !520, line: 801, type: !127)
!2583 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !520, file: !520, line: 801, type: !2584, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!122, !127, !124, !752, !1907}
!2586 = !{!2582, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594}
!2587 = !DILocalVariable(name: "argsize", arg: 2, scope: !2583, file: !520, line: 801, type: !124)
!2588 = !DILocalVariable(name: "size", arg: 3, scope: !2583, file: !520, line: 801, type: !752)
!2589 = !DILocalVariable(name: "o", arg: 4, scope: !2583, file: !520, line: 802, type: !1907)
!2590 = !DILocalVariable(name: "p", scope: !2583, file: !520, line: 804, type: !1907)
!2591 = !DILocalVariable(name: "saved_errno", scope: !2583, file: !520, line: 805, type: !83)
!2592 = !DILocalVariable(name: "flags", scope: !2583, file: !520, line: 807, type: !83)
!2593 = !DILocalVariable(name: "bufsize", scope: !2583, file: !520, line: 808, type: !124)
!2594 = !DILocalVariable(name: "buf", scope: !2583, file: !520, line: 812, type: !122)
!2595 = !DILocation(line: 0, scope: !2583, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 791, column: 10, scope: !2574)
!2597 = !DILocation(line: 804, column: 37, scope: !2583, inlinedAt: !2596)
!2598 = !DILocation(line: 805, column: 21, scope: !2583, inlinedAt: !2596)
!2599 = !DILocation(line: 807, column: 18, scope: !2583, inlinedAt: !2596)
!2600 = !DILocation(line: 807, column: 24, scope: !2583, inlinedAt: !2596)
!2601 = !DILocation(line: 808, column: 72, scope: !2583, inlinedAt: !2596)
!2602 = !DILocation(line: 809, column: 56, scope: !2583, inlinedAt: !2596)
!2603 = !DILocation(line: 810, column: 49, scope: !2583, inlinedAt: !2596)
!2604 = !DILocation(line: 811, column: 49, scope: !2583, inlinedAt: !2596)
!2605 = !DILocation(line: 808, column: 20, scope: !2583, inlinedAt: !2596)
!2606 = !DILocation(line: 811, column: 62, scope: !2583, inlinedAt: !2596)
!2607 = !DILocation(line: 812, column: 15, scope: !2583, inlinedAt: !2596)
!2608 = !DILocation(line: 813, column: 60, scope: !2583, inlinedAt: !2596)
!2609 = !DILocation(line: 815, column: 32, scope: !2583, inlinedAt: !2596)
!2610 = !DILocation(line: 815, column: 47, scope: !2583, inlinedAt: !2596)
!2611 = !DILocation(line: 813, column: 3, scope: !2583, inlinedAt: !2596)
!2612 = !DILocation(line: 816, column: 9, scope: !2583, inlinedAt: !2596)
!2613 = !DILocation(line: 791, column: 3, scope: !2574)
!2614 = !DILocation(line: 0, scope: !2583)
!2615 = !DILocation(line: 804, column: 37, scope: !2583)
!2616 = !DILocation(line: 805, column: 21, scope: !2583)
!2617 = !DILocation(line: 807, column: 18, scope: !2583)
!2618 = !DILocation(line: 807, column: 27, scope: !2583)
!2619 = !DILocation(line: 807, column: 24, scope: !2583)
!2620 = !DILocation(line: 808, column: 72, scope: !2583)
!2621 = !DILocation(line: 809, column: 56, scope: !2583)
!2622 = !DILocation(line: 810, column: 49, scope: !2583)
!2623 = !DILocation(line: 811, column: 49, scope: !2583)
!2624 = !DILocation(line: 808, column: 20, scope: !2583)
!2625 = !DILocation(line: 811, column: 62, scope: !2583)
!2626 = !DILocation(line: 812, column: 15, scope: !2583)
!2627 = !DILocation(line: 813, column: 60, scope: !2583)
!2628 = !DILocation(line: 815, column: 32, scope: !2583)
!2629 = !DILocation(line: 815, column: 47, scope: !2583)
!2630 = !DILocation(line: 813, column: 3, scope: !2583)
!2631 = !DILocation(line: 816, column: 9, scope: !2583)
!2632 = !DILocation(line: 817, column: 7, scope: !2583)
!2633 = !DILocation(line: 818, column: 11, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2583, file: !520, line: 817, column: 7)
!2635 = !DILocation(line: 818, column: 5, scope: !2634)
!2636 = !DILocation(line: 819, column: 3, scope: !2583)
!2637 = distinct !DISubprogram(name: "quotearg_free", scope: !520, file: !520, line: 837, type: !475, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2638)
!2638 = !{!2639, !2640}
!2639 = !DILocalVariable(name: "sv", scope: !2637, file: !520, line: 839, type: !604)
!2640 = !DILocalVariable(name: "i", scope: !2641, file: !520, line: 840, type: !83)
!2641 = distinct !DILexicalBlock(scope: !2637, file: !520, line: 840, column: 3)
!2642 = !DILocation(line: 839, column: 24, scope: !2637)
!2643 = !DILocation(line: 0, scope: !2637)
!2644 = !DILocation(line: 0, scope: !2641)
!2645 = !DILocation(line: 840, column: 21, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2641, file: !520, line: 840, column: 3)
!2647 = !DILocation(line: 840, column: 3, scope: !2641)
!2648 = !DILocation(line: 842, column: 13, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2637, file: !520, line: 842, column: 7)
!2650 = !{!2651, !820, i64 8}
!2651 = !{!"slotvec", !1165, i64 0, !820, i64 8}
!2652 = !DILocation(line: 842, column: 17, scope: !2649)
!2653 = !DILocation(line: 842, column: 7, scope: !2637)
!2654 = !DILocation(line: 841, column: 17, scope: !2646)
!2655 = !DILocation(line: 841, column: 5, scope: !2646)
!2656 = !DILocation(line: 840, column: 32, scope: !2646)
!2657 = distinct !{!2657, !2647, !2658, !930}
!2658 = !DILocation(line: 841, column: 20, scope: !2641)
!2659 = !DILocation(line: 844, column: 7, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2649, file: !520, line: 843, column: 5)
!2661 = !DILocation(line: 845, column: 21, scope: !2660)
!2662 = !{!2651, !1165, i64 0}
!2663 = !DILocation(line: 846, column: 20, scope: !2660)
!2664 = !DILocation(line: 847, column: 5, scope: !2660)
!2665 = !DILocation(line: 848, column: 10, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2637, file: !520, line: 848, column: 7)
!2667 = !DILocation(line: 848, column: 7, scope: !2637)
!2668 = !DILocation(line: 850, column: 7, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2666, file: !520, line: 849, column: 5)
!2670 = !DILocation(line: 851, column: 15, scope: !2669)
!2671 = !DILocation(line: 852, column: 5, scope: !2669)
!2672 = !DILocation(line: 853, column: 10, scope: !2637)
!2673 = !DILocation(line: 854, column: 1, scope: !2637)
!2674 = distinct !DISubprogram(name: "quotearg_n", scope: !520, file: !520, line: 919, type: !997, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2675)
!2675 = !{!2676, !2677}
!2676 = !DILocalVariable(name: "n", arg: 1, scope: !2674, file: !520, line: 919, type: !83)
!2677 = !DILocalVariable(name: "arg", arg: 2, scope: !2674, file: !520, line: 919, type: !127)
!2678 = !DILocation(line: 0, scope: !2674)
!2679 = !DILocation(line: 921, column: 10, scope: !2674)
!2680 = !DILocation(line: 921, column: 3, scope: !2674)
!2681 = distinct !DISubprogram(name: "quotearg_n_options", scope: !520, file: !520, line: 866, type: !2682, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2684)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!122, !83, !127, !124, !1907}
!2684 = !{!2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2695, !2696, !2698, !2699, !2700}
!2685 = !DILocalVariable(name: "n", arg: 1, scope: !2681, file: !520, line: 866, type: !83)
!2686 = !DILocalVariable(name: "arg", arg: 2, scope: !2681, file: !520, line: 866, type: !127)
!2687 = !DILocalVariable(name: "argsize", arg: 3, scope: !2681, file: !520, line: 866, type: !124)
!2688 = !DILocalVariable(name: "options", arg: 4, scope: !2681, file: !520, line: 867, type: !1907)
!2689 = !DILocalVariable(name: "saved_errno", scope: !2681, file: !520, line: 869, type: !83)
!2690 = !DILocalVariable(name: "sv", scope: !2681, file: !520, line: 871, type: !604)
!2691 = !DILocalVariable(name: "nslots_max", scope: !2681, file: !520, line: 873, type: !83)
!2692 = !DILocalVariable(name: "preallocated", scope: !2693, file: !520, line: 879, type: !158)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !520, line: 878, column: 5)
!2694 = distinct !DILexicalBlock(scope: !2681, file: !520, line: 877, column: 7)
!2695 = !DILocalVariable(name: "new_nslots", scope: !2693, file: !520, line: 880, type: !765)
!2696 = !DILocalVariable(name: "size", scope: !2697, file: !520, line: 891, type: !124)
!2697 = distinct !DILexicalBlock(scope: !2681, file: !520, line: 890, column: 3)
!2698 = !DILocalVariable(name: "val", scope: !2697, file: !520, line: 892, type: !122)
!2699 = !DILocalVariable(name: "flags", scope: !2697, file: !520, line: 894, type: !83)
!2700 = !DILocalVariable(name: "qsize", scope: !2697, file: !520, line: 895, type: !124)
!2701 = !DILocation(line: 0, scope: !2681)
!2702 = !DILocation(line: 869, column: 21, scope: !2681)
!2703 = !DILocation(line: 871, column: 24, scope: !2681)
!2704 = !DILocation(line: 874, column: 17, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2681, file: !520, line: 874, column: 7)
!2706 = !DILocation(line: 875, column: 5, scope: !2705)
!2707 = !DILocation(line: 877, column: 7, scope: !2694)
!2708 = !DILocation(line: 877, column: 14, scope: !2694)
!2709 = !DILocation(line: 877, column: 7, scope: !2681)
!2710 = !DILocation(line: 879, column: 31, scope: !2693)
!2711 = !DILocation(line: 0, scope: !2693)
!2712 = !DILocation(line: 880, column: 7, scope: !2693)
!2713 = !DILocation(line: 880, column: 26, scope: !2693)
!2714 = !DILocation(line: 880, column: 13, scope: !2693)
!2715 = !DILocation(line: 882, column: 31, scope: !2693)
!2716 = !DILocation(line: 883, column: 33, scope: !2693)
!2717 = !DILocation(line: 883, column: 42, scope: !2693)
!2718 = !DILocation(line: 883, column: 31, scope: !2693)
!2719 = !DILocation(line: 882, column: 22, scope: !2693)
!2720 = !DILocation(line: 882, column: 15, scope: !2693)
!2721 = !DILocation(line: 884, column: 11, scope: !2693)
!2722 = !DILocation(line: 885, column: 15, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2693, file: !520, line: 884, column: 11)
!2724 = !{i64 0, i64 8, !1390, i64 8, i64 8, !819}
!2725 = !DILocation(line: 885, column: 9, scope: !2723)
!2726 = !DILocation(line: 886, column: 20, scope: !2693)
!2727 = !DILocation(line: 886, column: 18, scope: !2693)
!2728 = !DILocation(line: 886, column: 32, scope: !2693)
!2729 = !DILocation(line: 886, column: 43, scope: !2693)
!2730 = !DILocation(line: 886, column: 53, scope: !2693)
!2731 = !DILocation(line: 0, scope: !2117, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 886, column: 7, scope: !2693)
!2733 = !DILocation(line: 59, column: 10, scope: !2117, inlinedAt: !2732)
!2734 = !DILocation(line: 887, column: 16, scope: !2693)
!2735 = !DILocation(line: 887, column: 14, scope: !2693)
!2736 = !DILocation(line: 888, column: 5, scope: !2694)
!2737 = !DILocation(line: 888, column: 5, scope: !2693)
!2738 = !DILocation(line: 891, column: 19, scope: !2697)
!2739 = !DILocation(line: 891, column: 25, scope: !2697)
!2740 = !DILocation(line: 0, scope: !2697)
!2741 = !DILocation(line: 892, column: 23, scope: !2697)
!2742 = !DILocation(line: 894, column: 26, scope: !2697)
!2743 = !DILocation(line: 894, column: 32, scope: !2697)
!2744 = !DILocation(line: 896, column: 55, scope: !2697)
!2745 = !DILocation(line: 897, column: 55, scope: !2697)
!2746 = !DILocation(line: 898, column: 55, scope: !2697)
!2747 = !DILocation(line: 899, column: 55, scope: !2697)
!2748 = !DILocation(line: 895, column: 20, scope: !2697)
!2749 = !DILocation(line: 901, column: 14, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2697, file: !520, line: 901, column: 9)
!2751 = !DILocation(line: 901, column: 9, scope: !2697)
!2752 = !DILocation(line: 903, column: 35, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2750, file: !520, line: 902, column: 7)
!2754 = !DILocation(line: 903, column: 20, scope: !2753)
!2755 = !DILocation(line: 904, column: 17, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2753, file: !520, line: 904, column: 13)
!2757 = !DILocation(line: 904, column: 13, scope: !2753)
!2758 = !DILocation(line: 905, column: 11, scope: !2756)
!2759 = !DILocation(line: 906, column: 27, scope: !2753)
!2760 = !DILocation(line: 906, column: 19, scope: !2753)
!2761 = !DILocation(line: 907, column: 69, scope: !2753)
!2762 = !DILocation(line: 909, column: 44, scope: !2753)
!2763 = !DILocation(line: 910, column: 44, scope: !2753)
!2764 = !DILocation(line: 907, column: 9, scope: !2753)
!2765 = !DILocation(line: 911, column: 7, scope: !2753)
!2766 = !DILocation(line: 913, column: 11, scope: !2697)
!2767 = !DILocation(line: 914, column: 5, scope: !2697)
!2768 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !520, file: !520, line: 925, type: !2769, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2771)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!122, !83, !127, !124}
!2771 = !{!2772, !2773, !2774}
!2772 = !DILocalVariable(name: "n", arg: 1, scope: !2768, file: !520, line: 925, type: !83)
!2773 = !DILocalVariable(name: "arg", arg: 2, scope: !2768, file: !520, line: 925, type: !127)
!2774 = !DILocalVariable(name: "argsize", arg: 3, scope: !2768, file: !520, line: 925, type: !124)
!2775 = !DILocation(line: 0, scope: !2768)
!2776 = !DILocation(line: 927, column: 10, scope: !2768)
!2777 = !DILocation(line: 927, column: 3, scope: !2768)
!2778 = distinct !DISubprogram(name: "quotearg", scope: !520, file: !520, line: 931, type: !1006, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2779)
!2779 = !{!2780}
!2780 = !DILocalVariable(name: "arg", arg: 1, scope: !2778, file: !520, line: 931, type: !127)
!2781 = !DILocation(line: 0, scope: !2778)
!2782 = !DILocation(line: 0, scope: !2674, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 933, column: 10, scope: !2778)
!2784 = !DILocation(line: 921, column: 10, scope: !2674, inlinedAt: !2783)
!2785 = !DILocation(line: 933, column: 3, scope: !2778)
!2786 = distinct !DISubprogram(name: "quotearg_mem", scope: !520, file: !520, line: 937, type: !2787, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2789)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!122, !127, !124}
!2789 = !{!2790, !2791}
!2790 = !DILocalVariable(name: "arg", arg: 1, scope: !2786, file: !520, line: 937, type: !127)
!2791 = !DILocalVariable(name: "argsize", arg: 2, scope: !2786, file: !520, line: 937, type: !124)
!2792 = !DILocation(line: 0, scope: !2786)
!2793 = !DILocation(line: 0, scope: !2768, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 939, column: 10, scope: !2786)
!2795 = !DILocation(line: 927, column: 10, scope: !2768, inlinedAt: !2794)
!2796 = !DILocation(line: 939, column: 3, scope: !2786)
!2797 = distinct !DISubprogram(name: "quotearg_n_style", scope: !520, file: !520, line: 943, type: !2798, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!122, !83, !103, !127}
!2800 = !{!2801, !2802, !2803, !2804}
!2801 = !DILocalVariable(name: "n", arg: 1, scope: !2797, file: !520, line: 943, type: !83)
!2802 = !DILocalVariable(name: "s", arg: 2, scope: !2797, file: !520, line: 943, type: !103)
!2803 = !DILocalVariable(name: "arg", arg: 3, scope: !2797, file: !520, line: 943, type: !127)
!2804 = !DILocalVariable(name: "o", scope: !2797, file: !520, line: 945, type: !1908)
!2805 = !DILocation(line: 0, scope: !2797)
!2806 = !DILocation(line: 945, column: 3, scope: !2797)
!2807 = !DILocation(line: 945, column: 32, scope: !2797)
!2808 = !{!2809}
!2809 = distinct !{!2809, !2810, !"quoting_options_from_style: argument 0"}
!2810 = distinct !{!2810, !"quoting_options_from_style"}
!2811 = !DILocation(line: 945, column: 36, scope: !2797)
!2812 = !DILocalVariable(name: "style", arg: 1, scope: !2813, file: !520, line: 183, type: !103)
!2813 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !520, file: !520, line: 183, type: !2814, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2816)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!556, !103}
!2816 = !{!2812, !2817}
!2817 = !DILocalVariable(name: "o", scope: !2813, file: !520, line: 185, type: !556)
!2818 = !DILocation(line: 0, scope: !2813, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 945, column: 36, scope: !2797)
!2820 = !DILocation(line: 185, column: 26, scope: !2813, inlinedAt: !2819)
!2821 = !DILocation(line: 186, column: 13, scope: !2822, inlinedAt: !2819)
!2822 = distinct !DILexicalBlock(scope: !2813, file: !520, line: 186, column: 7)
!2823 = !DILocation(line: 186, column: 7, scope: !2813, inlinedAt: !2819)
!2824 = !DILocation(line: 187, column: 5, scope: !2822, inlinedAt: !2819)
!2825 = !DILocation(line: 188, column: 11, scope: !2813, inlinedAt: !2819)
!2826 = !DILocation(line: 946, column: 10, scope: !2797)
!2827 = !DILocation(line: 947, column: 1, scope: !2797)
!2828 = !DILocation(line: 946, column: 3, scope: !2797)
!2829 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !520, file: !520, line: 950, type: !2830, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!122, !83, !103, !127, !124}
!2832 = !{!2833, !2834, !2835, !2836, !2837}
!2833 = !DILocalVariable(name: "n", arg: 1, scope: !2829, file: !520, line: 950, type: !83)
!2834 = !DILocalVariable(name: "s", arg: 2, scope: !2829, file: !520, line: 950, type: !103)
!2835 = !DILocalVariable(name: "arg", arg: 3, scope: !2829, file: !520, line: 951, type: !127)
!2836 = !DILocalVariable(name: "argsize", arg: 4, scope: !2829, file: !520, line: 951, type: !124)
!2837 = !DILocalVariable(name: "o", scope: !2829, file: !520, line: 953, type: !1908)
!2838 = !DILocation(line: 0, scope: !2829)
!2839 = !DILocation(line: 953, column: 3, scope: !2829)
!2840 = !DILocation(line: 953, column: 32, scope: !2829)
!2841 = !{!2842}
!2842 = distinct !{!2842, !2843, !"quoting_options_from_style: argument 0"}
!2843 = distinct !{!2843, !"quoting_options_from_style"}
!2844 = !DILocation(line: 953, column: 36, scope: !2829)
!2845 = !DILocation(line: 0, scope: !2813, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 953, column: 36, scope: !2829)
!2847 = !DILocation(line: 185, column: 26, scope: !2813, inlinedAt: !2846)
!2848 = !DILocation(line: 186, column: 13, scope: !2822, inlinedAt: !2846)
!2849 = !DILocation(line: 186, column: 7, scope: !2813, inlinedAt: !2846)
!2850 = !DILocation(line: 187, column: 5, scope: !2822, inlinedAt: !2846)
!2851 = !DILocation(line: 188, column: 11, scope: !2813, inlinedAt: !2846)
!2852 = !DILocation(line: 954, column: 10, scope: !2829)
!2853 = !DILocation(line: 955, column: 1, scope: !2829)
!2854 = !DILocation(line: 954, column: 3, scope: !2829)
!2855 = distinct !DISubprogram(name: "quotearg_style", scope: !520, file: !520, line: 958, type: !2856, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!122, !103, !127}
!2858 = !{!2859, !2860}
!2859 = !DILocalVariable(name: "s", arg: 1, scope: !2855, file: !520, line: 958, type: !103)
!2860 = !DILocalVariable(name: "arg", arg: 2, scope: !2855, file: !520, line: 958, type: !127)
!2861 = !DILocation(line: 0, scope: !2855)
!2862 = !DILocation(line: 0, scope: !2797, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 960, column: 10, scope: !2855)
!2864 = !DILocation(line: 945, column: 3, scope: !2797, inlinedAt: !2863)
!2865 = !DILocation(line: 945, column: 32, scope: !2797, inlinedAt: !2863)
!2866 = !{!2867}
!2867 = distinct !{!2867, !2868, !"quoting_options_from_style: argument 0"}
!2868 = distinct !{!2868, !"quoting_options_from_style"}
!2869 = !DILocation(line: 945, column: 36, scope: !2797, inlinedAt: !2863)
!2870 = !DILocation(line: 0, scope: !2813, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 945, column: 36, scope: !2797, inlinedAt: !2863)
!2872 = !DILocation(line: 185, column: 26, scope: !2813, inlinedAt: !2871)
!2873 = !DILocation(line: 186, column: 13, scope: !2822, inlinedAt: !2871)
!2874 = !DILocation(line: 186, column: 7, scope: !2813, inlinedAt: !2871)
!2875 = !DILocation(line: 187, column: 5, scope: !2822, inlinedAt: !2871)
!2876 = !DILocation(line: 188, column: 11, scope: !2813, inlinedAt: !2871)
!2877 = !DILocation(line: 946, column: 10, scope: !2797, inlinedAt: !2863)
!2878 = !DILocation(line: 947, column: 1, scope: !2797, inlinedAt: !2863)
!2879 = !DILocation(line: 960, column: 3, scope: !2855)
!2880 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !520, file: !520, line: 964, type: !2881, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2883)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!122, !103, !127, !124}
!2883 = !{!2884, !2885, !2886}
!2884 = !DILocalVariable(name: "s", arg: 1, scope: !2880, file: !520, line: 964, type: !103)
!2885 = !DILocalVariable(name: "arg", arg: 2, scope: !2880, file: !520, line: 964, type: !127)
!2886 = !DILocalVariable(name: "argsize", arg: 3, scope: !2880, file: !520, line: 964, type: !124)
!2887 = !DILocation(line: 0, scope: !2880)
!2888 = !DILocation(line: 0, scope: !2829, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 966, column: 10, scope: !2880)
!2890 = !DILocation(line: 953, column: 3, scope: !2829, inlinedAt: !2889)
!2891 = !DILocation(line: 953, column: 32, scope: !2829, inlinedAt: !2889)
!2892 = !{!2893}
!2893 = distinct !{!2893, !2894, !"quoting_options_from_style: argument 0"}
!2894 = distinct !{!2894, !"quoting_options_from_style"}
!2895 = !DILocation(line: 953, column: 36, scope: !2829, inlinedAt: !2889)
!2896 = !DILocation(line: 0, scope: !2813, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 953, column: 36, scope: !2829, inlinedAt: !2889)
!2898 = !DILocation(line: 185, column: 26, scope: !2813, inlinedAt: !2897)
!2899 = !DILocation(line: 186, column: 13, scope: !2822, inlinedAt: !2897)
!2900 = !DILocation(line: 186, column: 7, scope: !2813, inlinedAt: !2897)
!2901 = !DILocation(line: 187, column: 5, scope: !2822, inlinedAt: !2897)
!2902 = !DILocation(line: 188, column: 11, scope: !2813, inlinedAt: !2897)
!2903 = !DILocation(line: 954, column: 10, scope: !2829, inlinedAt: !2889)
!2904 = !DILocation(line: 955, column: 1, scope: !2829, inlinedAt: !2889)
!2905 = !DILocation(line: 966, column: 3, scope: !2880)
!2906 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !520, file: !520, line: 970, type: !2907, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2909)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!122, !127, !124, !4}
!2909 = !{!2910, !2911, !2912, !2913}
!2910 = !DILocalVariable(name: "arg", arg: 1, scope: !2906, file: !520, line: 970, type: !127)
!2911 = !DILocalVariable(name: "argsize", arg: 2, scope: !2906, file: !520, line: 970, type: !124)
!2912 = !DILocalVariable(name: "ch", arg: 3, scope: !2906, file: !520, line: 970, type: !4)
!2913 = !DILocalVariable(name: "options", scope: !2906, file: !520, line: 972, type: !556)
!2914 = !DILocation(line: 0, scope: !2906)
!2915 = !DILocation(line: 972, column: 3, scope: !2906)
!2916 = !DILocation(line: 972, column: 26, scope: !2906)
!2917 = !DILocation(line: 973, column: 13, scope: !2906)
!2918 = !{i64 0, i64 4, !892, i64 4, i64 4, !883, i64 8, i64 32, !892, i64 40, i64 8, !819, i64 48, i64 8, !819}
!2919 = !DILocation(line: 0, scope: !1927, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 974, column: 3, scope: !2906)
!2921 = !DILocation(line: 147, column: 41, scope: !1927, inlinedAt: !2920)
!2922 = !DILocation(line: 147, column: 62, scope: !1927, inlinedAt: !2920)
!2923 = !DILocation(line: 147, column: 57, scope: !1927, inlinedAt: !2920)
!2924 = !DILocation(line: 148, column: 15, scope: !1927, inlinedAt: !2920)
!2925 = !DILocation(line: 149, column: 21, scope: !1927, inlinedAt: !2920)
!2926 = !DILocation(line: 149, column: 24, scope: !1927, inlinedAt: !2920)
!2927 = !DILocation(line: 150, column: 19, scope: !1927, inlinedAt: !2920)
!2928 = !DILocation(line: 150, column: 24, scope: !1927, inlinedAt: !2920)
!2929 = !DILocation(line: 150, column: 6, scope: !1927, inlinedAt: !2920)
!2930 = !DILocation(line: 975, column: 10, scope: !2906)
!2931 = !DILocation(line: 976, column: 1, scope: !2906)
!2932 = !DILocation(line: 975, column: 3, scope: !2906)
!2933 = distinct !DISubprogram(name: "quotearg_char", scope: !520, file: !520, line: 979, type: !2934, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!122, !127, !4}
!2936 = !{!2937, !2938}
!2937 = !DILocalVariable(name: "arg", arg: 1, scope: !2933, file: !520, line: 979, type: !127)
!2938 = !DILocalVariable(name: "ch", arg: 2, scope: !2933, file: !520, line: 979, type: !4)
!2939 = !DILocation(line: 0, scope: !2933)
!2940 = !DILocation(line: 0, scope: !2906, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 981, column: 10, scope: !2933)
!2942 = !DILocation(line: 972, column: 3, scope: !2906, inlinedAt: !2941)
!2943 = !DILocation(line: 972, column: 26, scope: !2906, inlinedAt: !2941)
!2944 = !DILocation(line: 973, column: 13, scope: !2906, inlinedAt: !2941)
!2945 = !DILocation(line: 0, scope: !1927, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 974, column: 3, scope: !2906, inlinedAt: !2941)
!2947 = !DILocation(line: 147, column: 41, scope: !1927, inlinedAt: !2946)
!2948 = !DILocation(line: 147, column: 62, scope: !1927, inlinedAt: !2946)
!2949 = !DILocation(line: 147, column: 57, scope: !1927, inlinedAt: !2946)
!2950 = !DILocation(line: 148, column: 15, scope: !1927, inlinedAt: !2946)
!2951 = !DILocation(line: 149, column: 21, scope: !1927, inlinedAt: !2946)
!2952 = !DILocation(line: 149, column: 24, scope: !1927, inlinedAt: !2946)
!2953 = !DILocation(line: 150, column: 19, scope: !1927, inlinedAt: !2946)
!2954 = !DILocation(line: 150, column: 24, scope: !1927, inlinedAt: !2946)
!2955 = !DILocation(line: 150, column: 6, scope: !1927, inlinedAt: !2946)
!2956 = !DILocation(line: 975, column: 10, scope: !2906, inlinedAt: !2941)
!2957 = !DILocation(line: 976, column: 1, scope: !2906, inlinedAt: !2941)
!2958 = !DILocation(line: 981, column: 3, scope: !2933)
!2959 = distinct !DISubprogram(name: "quotearg_colon", scope: !520, file: !520, line: 985, type: !1006, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2960)
!2960 = !{!2961}
!2961 = !DILocalVariable(name: "arg", arg: 1, scope: !2959, file: !520, line: 985, type: !127)
!2962 = !DILocation(line: 0, scope: !2959)
!2963 = !DILocation(line: 0, scope: !2933, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 987, column: 10, scope: !2959)
!2965 = !DILocation(line: 0, scope: !2906, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 981, column: 10, scope: !2933, inlinedAt: !2964)
!2967 = !DILocation(line: 972, column: 3, scope: !2906, inlinedAt: !2966)
!2968 = !DILocation(line: 972, column: 26, scope: !2906, inlinedAt: !2966)
!2969 = !DILocation(line: 973, column: 13, scope: !2906, inlinedAt: !2966)
!2970 = !DILocation(line: 0, scope: !1927, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 974, column: 3, scope: !2906, inlinedAt: !2966)
!2972 = !DILocation(line: 147, column: 57, scope: !1927, inlinedAt: !2971)
!2973 = !DILocation(line: 149, column: 21, scope: !1927, inlinedAt: !2971)
!2974 = !DILocation(line: 150, column: 6, scope: !1927, inlinedAt: !2971)
!2975 = !DILocation(line: 975, column: 10, scope: !2906, inlinedAt: !2966)
!2976 = !DILocation(line: 976, column: 1, scope: !2906, inlinedAt: !2966)
!2977 = !DILocation(line: 987, column: 3, scope: !2959)
!2978 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !520, file: !520, line: 991, type: !2787, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2979)
!2979 = !{!2980, !2981}
!2980 = !DILocalVariable(name: "arg", arg: 1, scope: !2978, file: !520, line: 991, type: !127)
!2981 = !DILocalVariable(name: "argsize", arg: 2, scope: !2978, file: !520, line: 991, type: !124)
!2982 = !DILocation(line: 0, scope: !2978)
!2983 = !DILocation(line: 0, scope: !2906, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 993, column: 10, scope: !2978)
!2985 = !DILocation(line: 972, column: 3, scope: !2906, inlinedAt: !2984)
!2986 = !DILocation(line: 972, column: 26, scope: !2906, inlinedAt: !2984)
!2987 = !DILocation(line: 973, column: 13, scope: !2906, inlinedAt: !2984)
!2988 = !DILocation(line: 0, scope: !1927, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 974, column: 3, scope: !2906, inlinedAt: !2984)
!2990 = !DILocation(line: 147, column: 57, scope: !1927, inlinedAt: !2989)
!2991 = !DILocation(line: 149, column: 21, scope: !1927, inlinedAt: !2989)
!2992 = !DILocation(line: 150, column: 6, scope: !1927, inlinedAt: !2989)
!2993 = !DILocation(line: 975, column: 10, scope: !2906, inlinedAt: !2984)
!2994 = !DILocation(line: 976, column: 1, scope: !2906, inlinedAt: !2984)
!2995 = !DILocation(line: 993, column: 3, scope: !2978)
!2996 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !520, file: !520, line: 997, type: !2798, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !2997)
!2997 = !{!2998, !2999, !3000, !3001}
!2998 = !DILocalVariable(name: "n", arg: 1, scope: !2996, file: !520, line: 997, type: !83)
!2999 = !DILocalVariable(name: "s", arg: 2, scope: !2996, file: !520, line: 997, type: !103)
!3000 = !DILocalVariable(name: "arg", arg: 3, scope: !2996, file: !520, line: 997, type: !127)
!3001 = !DILocalVariable(name: "options", scope: !2996, file: !520, line: 999, type: !556)
!3002 = !DILocation(line: 185, column: 26, scope: !2813, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 1000, column: 13, scope: !2996)
!3004 = !DILocation(line: 0, scope: !2996)
!3005 = !DILocation(line: 999, column: 3, scope: !2996)
!3006 = !DILocation(line: 999, column: 26, scope: !2996)
!3007 = !DILocation(line: 0, scope: !2813, inlinedAt: !3003)
!3008 = !DILocation(line: 186, column: 13, scope: !2822, inlinedAt: !3003)
!3009 = !DILocation(line: 186, column: 7, scope: !2813, inlinedAt: !3003)
!3010 = !DILocation(line: 187, column: 5, scope: !2822, inlinedAt: !3003)
!3011 = !{!3012}
!3012 = distinct !{!3012, !3013, !"quoting_options_from_style: argument 0"}
!3013 = distinct !{!3013, !"quoting_options_from_style"}
!3014 = !DILocation(line: 1000, column: 13, scope: !2996)
!3015 = !DILocation(line: 0, scope: !1927, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 1001, column: 3, scope: !2996)
!3017 = !DILocation(line: 147, column: 57, scope: !1927, inlinedAt: !3016)
!3018 = !DILocation(line: 149, column: 21, scope: !1927, inlinedAt: !3016)
!3019 = !DILocation(line: 150, column: 6, scope: !1927, inlinedAt: !3016)
!3020 = !DILocation(line: 1002, column: 10, scope: !2996)
!3021 = !DILocation(line: 1003, column: 1, scope: !2996)
!3022 = !DILocation(line: 1002, column: 3, scope: !2996)
!3023 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !520, file: !520, line: 1006, type: !3024, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!122, !83, !127, !127, !127}
!3026 = !{!3027, !3028, !3029, !3030}
!3027 = !DILocalVariable(name: "n", arg: 1, scope: !3023, file: !520, line: 1006, type: !83)
!3028 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3023, file: !520, line: 1006, type: !127)
!3029 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3023, file: !520, line: 1007, type: !127)
!3030 = !DILocalVariable(name: "arg", arg: 4, scope: !3023, file: !520, line: 1007, type: !127)
!3031 = !DILocation(line: 0, scope: !3023)
!3032 = !DILocalVariable(name: "n", arg: 1, scope: !3033, file: !520, line: 1014, type: !83)
!3033 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !520, file: !520, line: 1014, type: !3034, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!122, !83, !127, !127, !127, !124}
!3036 = !{!3032, !3037, !3038, !3039, !3040, !3041}
!3037 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3033, file: !520, line: 1014, type: !127)
!3038 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3033, file: !520, line: 1015, type: !127)
!3039 = !DILocalVariable(name: "arg", arg: 4, scope: !3033, file: !520, line: 1016, type: !127)
!3040 = !DILocalVariable(name: "argsize", arg: 5, scope: !3033, file: !520, line: 1016, type: !124)
!3041 = !DILocalVariable(name: "o", scope: !3033, file: !520, line: 1018, type: !556)
!3042 = !DILocation(line: 0, scope: !3033, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 1009, column: 10, scope: !3023)
!3044 = !DILocation(line: 1018, column: 3, scope: !3033, inlinedAt: !3043)
!3045 = !DILocation(line: 1018, column: 26, scope: !3033, inlinedAt: !3043)
!3046 = !DILocation(line: 1018, column: 30, scope: !3033, inlinedAt: !3043)
!3047 = !DILocation(line: 0, scope: !1967, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 1019, column: 3, scope: !3033, inlinedAt: !3043)
!3049 = !DILocation(line: 174, column: 12, scope: !1967, inlinedAt: !3048)
!3050 = !DILocation(line: 175, column: 8, scope: !1980, inlinedAt: !3048)
!3051 = !DILocation(line: 175, column: 19, scope: !1980, inlinedAt: !3048)
!3052 = !DILocation(line: 176, column: 5, scope: !1980, inlinedAt: !3048)
!3053 = !DILocation(line: 177, column: 6, scope: !1967, inlinedAt: !3048)
!3054 = !DILocation(line: 177, column: 17, scope: !1967, inlinedAt: !3048)
!3055 = !DILocation(line: 178, column: 6, scope: !1967, inlinedAt: !3048)
!3056 = !DILocation(line: 178, column: 18, scope: !1967, inlinedAt: !3048)
!3057 = !DILocation(line: 1020, column: 10, scope: !3033, inlinedAt: !3043)
!3058 = !DILocation(line: 1021, column: 1, scope: !3033, inlinedAt: !3043)
!3059 = !DILocation(line: 1009, column: 3, scope: !3023)
!3060 = !DILocation(line: 0, scope: !3033)
!3061 = !DILocation(line: 1018, column: 3, scope: !3033)
!3062 = !DILocation(line: 1018, column: 26, scope: !3033)
!3063 = !DILocation(line: 1018, column: 30, scope: !3033)
!3064 = !DILocation(line: 0, scope: !1967, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 1019, column: 3, scope: !3033)
!3066 = !DILocation(line: 174, column: 12, scope: !1967, inlinedAt: !3065)
!3067 = !DILocation(line: 175, column: 8, scope: !1980, inlinedAt: !3065)
!3068 = !DILocation(line: 175, column: 19, scope: !1980, inlinedAt: !3065)
!3069 = !DILocation(line: 176, column: 5, scope: !1980, inlinedAt: !3065)
!3070 = !DILocation(line: 177, column: 6, scope: !1967, inlinedAt: !3065)
!3071 = !DILocation(line: 177, column: 17, scope: !1967, inlinedAt: !3065)
!3072 = !DILocation(line: 178, column: 6, scope: !1967, inlinedAt: !3065)
!3073 = !DILocation(line: 178, column: 18, scope: !1967, inlinedAt: !3065)
!3074 = !DILocation(line: 1020, column: 10, scope: !3033)
!3075 = !DILocation(line: 1021, column: 1, scope: !3033)
!3076 = !DILocation(line: 1020, column: 3, scope: !3033)
!3077 = distinct !DISubprogram(name: "quotearg_custom", scope: !520, file: !520, line: 1024, type: !3078, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!122, !127, !127, !127}
!3080 = !{!3081, !3082, !3083}
!3081 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3077, file: !520, line: 1024, type: !127)
!3082 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3077, file: !520, line: 1024, type: !127)
!3083 = !DILocalVariable(name: "arg", arg: 3, scope: !3077, file: !520, line: 1025, type: !127)
!3084 = !DILocation(line: 0, scope: !3077)
!3085 = !DILocation(line: 0, scope: !3023, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 1027, column: 10, scope: !3077)
!3087 = !DILocation(line: 0, scope: !3033, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 1009, column: 10, scope: !3023, inlinedAt: !3086)
!3089 = !DILocation(line: 1018, column: 3, scope: !3033, inlinedAt: !3088)
!3090 = !DILocation(line: 1018, column: 26, scope: !3033, inlinedAt: !3088)
!3091 = !DILocation(line: 1018, column: 30, scope: !3033, inlinedAt: !3088)
!3092 = !DILocation(line: 0, scope: !1967, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 1019, column: 3, scope: !3033, inlinedAt: !3088)
!3094 = !DILocation(line: 174, column: 12, scope: !1967, inlinedAt: !3093)
!3095 = !DILocation(line: 175, column: 8, scope: !1980, inlinedAt: !3093)
!3096 = !DILocation(line: 175, column: 19, scope: !1980, inlinedAt: !3093)
!3097 = !DILocation(line: 176, column: 5, scope: !1980, inlinedAt: !3093)
!3098 = !DILocation(line: 177, column: 6, scope: !1967, inlinedAt: !3093)
!3099 = !DILocation(line: 177, column: 17, scope: !1967, inlinedAt: !3093)
!3100 = !DILocation(line: 178, column: 6, scope: !1967, inlinedAt: !3093)
!3101 = !DILocation(line: 178, column: 18, scope: !1967, inlinedAt: !3093)
!3102 = !DILocation(line: 1020, column: 10, scope: !3033, inlinedAt: !3088)
!3103 = !DILocation(line: 1021, column: 1, scope: !3033, inlinedAt: !3088)
!3104 = !DILocation(line: 1027, column: 3, scope: !3077)
!3105 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !520, file: !520, line: 1031, type: !3106, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!122, !127, !127, !127, !124}
!3108 = !{!3109, !3110, !3111, !3112}
!3109 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3105, file: !520, line: 1031, type: !127)
!3110 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3105, file: !520, line: 1031, type: !127)
!3111 = !DILocalVariable(name: "arg", arg: 3, scope: !3105, file: !520, line: 1032, type: !127)
!3112 = !DILocalVariable(name: "argsize", arg: 4, scope: !3105, file: !520, line: 1032, type: !124)
!3113 = !DILocation(line: 0, scope: !3105)
!3114 = !DILocation(line: 0, scope: !3033, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 1034, column: 10, scope: !3105)
!3116 = !DILocation(line: 1018, column: 3, scope: !3033, inlinedAt: !3115)
!3117 = !DILocation(line: 1018, column: 26, scope: !3033, inlinedAt: !3115)
!3118 = !DILocation(line: 1018, column: 30, scope: !3033, inlinedAt: !3115)
!3119 = !DILocation(line: 0, scope: !1967, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 1019, column: 3, scope: !3033, inlinedAt: !3115)
!3121 = !DILocation(line: 174, column: 12, scope: !1967, inlinedAt: !3120)
!3122 = !DILocation(line: 175, column: 8, scope: !1980, inlinedAt: !3120)
!3123 = !DILocation(line: 175, column: 19, scope: !1980, inlinedAt: !3120)
!3124 = !DILocation(line: 176, column: 5, scope: !1980, inlinedAt: !3120)
!3125 = !DILocation(line: 177, column: 6, scope: !1967, inlinedAt: !3120)
!3126 = !DILocation(line: 177, column: 17, scope: !1967, inlinedAt: !3120)
!3127 = !DILocation(line: 178, column: 6, scope: !1967, inlinedAt: !3120)
!3128 = !DILocation(line: 178, column: 18, scope: !1967, inlinedAt: !3120)
!3129 = !DILocation(line: 1020, column: 10, scope: !3033, inlinedAt: !3115)
!3130 = !DILocation(line: 1021, column: 1, scope: !3033, inlinedAt: !3115)
!3131 = !DILocation(line: 1034, column: 3, scope: !3105)
!3132 = distinct !DISubprogram(name: "quote_n_mem", scope: !520, file: !520, line: 1049, type: !3133, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !3135)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!127, !83, !127, !124}
!3135 = !{!3136, !3137, !3138}
!3136 = !DILocalVariable(name: "n", arg: 1, scope: !3132, file: !520, line: 1049, type: !83)
!3137 = !DILocalVariable(name: "arg", arg: 2, scope: !3132, file: !520, line: 1049, type: !127)
!3138 = !DILocalVariable(name: "argsize", arg: 3, scope: !3132, file: !520, line: 1049, type: !124)
!3139 = !DILocation(line: 0, scope: !3132)
!3140 = !DILocation(line: 1051, column: 10, scope: !3132)
!3141 = !DILocation(line: 1051, column: 3, scope: !3132)
!3142 = distinct !DISubprogram(name: "quote_mem", scope: !520, file: !520, line: 1055, type: !3143, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !3145)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!127, !127, !124}
!3145 = !{!3146, !3147}
!3146 = !DILocalVariable(name: "arg", arg: 1, scope: !3142, file: !520, line: 1055, type: !127)
!3147 = !DILocalVariable(name: "argsize", arg: 2, scope: !3142, file: !520, line: 1055, type: !124)
!3148 = !DILocation(line: 0, scope: !3142)
!3149 = !DILocation(line: 0, scope: !3132, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 1057, column: 10, scope: !3142)
!3151 = !DILocation(line: 1051, column: 10, scope: !3132, inlinedAt: !3150)
!3152 = !DILocation(line: 1057, column: 3, scope: !3142)
!3153 = distinct !DISubprogram(name: "quote_n", scope: !520, file: !520, line: 1061, type: !3154, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!127, !83, !127}
!3156 = !{!3157, !3158}
!3157 = !DILocalVariable(name: "n", arg: 1, scope: !3153, file: !520, line: 1061, type: !83)
!3158 = !DILocalVariable(name: "arg", arg: 2, scope: !3153, file: !520, line: 1061, type: !127)
!3159 = !DILocation(line: 0, scope: !3153)
!3160 = !DILocation(line: 0, scope: !3132, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 1063, column: 10, scope: !3153)
!3162 = !DILocation(line: 1051, column: 10, scope: !3132, inlinedAt: !3161)
!3163 = !DILocation(line: 1063, column: 3, scope: !3153)
!3164 = distinct !DISubprogram(name: "quote", scope: !520, file: !520, line: 1067, type: !3165, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !541, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!127, !127}
!3167 = !{!3168}
!3168 = !DILocalVariable(name: "arg", arg: 1, scope: !3164, file: !520, line: 1067, type: !127)
!3169 = !DILocation(line: 0, scope: !3164)
!3170 = !DILocation(line: 0, scope: !3153, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 1069, column: 10, scope: !3164)
!3172 = !DILocation(line: 0, scope: !3132, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 1063, column: 10, scope: !3153, inlinedAt: !3171)
!3174 = !DILocation(line: 1051, column: 10, scope: !3132, inlinedAt: !3173)
!3175 = !DILocation(line: 1069, column: 3, scope: !3164)
!3176 = distinct !DISubprogram(name: "get_root_dev_ino", scope: !619, file: !619, line: 29, type: !3177, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3184)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!3179, !3179}
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !1212, line: 30, size: 128, elements: !3181)
!3181 = !{!3182, !3183}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3180, file: !1212, line: 32, baseType: !1215, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3180, file: !1212, line: 33, baseType: !1218, size: 64, offset: 64)
!3184 = !{!3185, !3186}
!3185 = !DILocalVariable(name: "root_d_i", arg: 1, scope: !3176, file: !619, line: 29, type: !3179)
!3186 = !DILocalVariable(name: "statbuf", scope: !3176, file: !619, line: 31, type: !3187)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1086, line: 44, size: 1024, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3206, !3207, !3208}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3187, file: !1086, line: 46, baseType: !1089, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3187, file: !1086, line: 47, baseType: !1091, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3187, file: !1086, line: 48, baseType: !1093, size: 32, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3187, file: !1086, line: 49, baseType: !1095, size: 32, offset: 160)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3187, file: !1086, line: 50, baseType: !1097, size: 32, offset: 192)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3187, file: !1086, line: 51, baseType: !1099, size: 32, offset: 224)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3187, file: !1086, line: 52, baseType: !1089, size: 64, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3187, file: !1086, line: 53, baseType: !1089, size: 64, offset: 320)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3187, file: !1086, line: 54, baseType: !197, size: 64, offset: 384)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3187, file: !1086, line: 55, baseType: !1104, size: 32, offset: 448)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3187, file: !1086, line: 56, baseType: !83, size: 32, offset: 480)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3187, file: !1086, line: 57, baseType: !1107, size: 64, offset: 512)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3187, file: !1086, line: 65, baseType: !3202, size: 128, offset: 576)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1110, line: 11, size: 128, elements: !3203)
!3203 = !{!3204, !3205}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3202, file: !1110, line: 16, baseType: !1113, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3202, file: !1110, line: 21, baseType: !1115, size: 64, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3187, file: !1086, line: 66, baseType: !3202, size: 128, offset: 704)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3187, file: !1086, line: 67, baseType: !3202, size: 128, offset: 832)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3187, file: !1086, line: 79, baseType: !1119, size: 64, offset: 960)
!3209 = !DILocation(line: 0, scope: !3176)
!3210 = !DILocation(line: 31, column: 3, scope: !3176)
!3211 = !DILocation(line: 31, column: 15, scope: !3176)
!3212 = !DILocation(line: 32, column: 7, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3176, file: !619, line: 32, column: 7)
!3214 = !DILocation(line: 32, column: 7, scope: !3176)
!3215 = !DILocation(line: 35, column: 30, scope: !3176)
!3216 = !DILocation(line: 34, column: 20, scope: !3176)
!3217 = !DILocation(line: 36, column: 3, scope: !3176)
!3218 = !DILocation(line: 37, column: 1, scope: !3176)
!3219 = distinct !DISubprogram(name: "version_etc_arn", scope: !622, file: !622, line: 61, type: !3220, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3257)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{null, !3222, !127, !127, !127, !3256, !124}
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !3224)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3224, file: !175, line: 51, baseType: !83, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3224, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3224, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3224, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3224, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3224, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3224, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3224, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3224, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3224, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3224, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3224, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3224, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3224, file: !175, line: 70, baseType: !3240, size: 64, offset: 832)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3224, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3224, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3224, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3224, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3224, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3224, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3224, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3224, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3224, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3224, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3224, file: !175, line: 93, baseType: !3240, size: 64, offset: 1344)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3224, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3224, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3224, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3224, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!3257 = !{!3258, !3259, !3260, !3261, !3262, !3263}
!3258 = !DILocalVariable(name: "stream", arg: 1, scope: !3219, file: !622, line: 61, type: !3222)
!3259 = !DILocalVariable(name: "command_name", arg: 2, scope: !3219, file: !622, line: 62, type: !127)
!3260 = !DILocalVariable(name: "package", arg: 3, scope: !3219, file: !622, line: 62, type: !127)
!3261 = !DILocalVariable(name: "version", arg: 4, scope: !3219, file: !622, line: 63, type: !127)
!3262 = !DILocalVariable(name: "authors", arg: 5, scope: !3219, file: !622, line: 64, type: !3256)
!3263 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3219, file: !622, line: 64, type: !124)
!3264 = !DILocation(line: 0, scope: !3219)
!3265 = !DILocation(line: 66, column: 7, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3219, file: !622, line: 66, column: 7)
!3267 = !DILocation(line: 66, column: 7, scope: !3219)
!3268 = !DILocation(line: 67, column: 5, scope: !3266)
!3269 = !DILocation(line: 69, column: 5, scope: !3266)
!3270 = !DILocation(line: 83, column: 3, scope: !3219)
!3271 = !DILocation(line: 85, column: 3, scope: !3219)
!3272 = !DILocation(line: 88, column: 3, scope: !3219)
!3273 = !DILocation(line: 95, column: 3, scope: !3219)
!3274 = !DILocation(line: 97, column: 3, scope: !3219)
!3275 = !DILocation(line: 105, column: 7, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3219, file: !622, line: 98, column: 5)
!3277 = !DILocation(line: 106, column: 7, scope: !3276)
!3278 = !DILocation(line: 109, column: 7, scope: !3276)
!3279 = !DILocation(line: 110, column: 7, scope: !3276)
!3280 = !DILocation(line: 113, column: 7, scope: !3276)
!3281 = !DILocation(line: 115, column: 7, scope: !3276)
!3282 = !DILocation(line: 120, column: 7, scope: !3276)
!3283 = !DILocation(line: 122, column: 7, scope: !3276)
!3284 = !DILocation(line: 127, column: 7, scope: !3276)
!3285 = !DILocation(line: 129, column: 7, scope: !3276)
!3286 = !DILocation(line: 134, column: 7, scope: !3276)
!3287 = !DILocation(line: 137, column: 7, scope: !3276)
!3288 = !DILocation(line: 142, column: 7, scope: !3276)
!3289 = !DILocation(line: 145, column: 7, scope: !3276)
!3290 = !DILocation(line: 150, column: 7, scope: !3276)
!3291 = !DILocation(line: 154, column: 7, scope: !3276)
!3292 = !DILocation(line: 159, column: 7, scope: !3276)
!3293 = !DILocation(line: 163, column: 7, scope: !3276)
!3294 = !DILocation(line: 170, column: 7, scope: !3276)
!3295 = !DILocation(line: 174, column: 7, scope: !3276)
!3296 = !DILocation(line: 176, column: 1, scope: !3219)
!3297 = distinct !DISubprogram(name: "version_etc_ar", scope: !622, file: !622, line: 183, type: !3298, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3300)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{null, !3222, !127, !127, !127, !3256}
!3300 = !{!3301, !3302, !3303, !3304, !3305, !3306}
!3301 = !DILocalVariable(name: "stream", arg: 1, scope: !3297, file: !622, line: 183, type: !3222)
!3302 = !DILocalVariable(name: "command_name", arg: 2, scope: !3297, file: !622, line: 184, type: !127)
!3303 = !DILocalVariable(name: "package", arg: 3, scope: !3297, file: !622, line: 184, type: !127)
!3304 = !DILocalVariable(name: "version", arg: 4, scope: !3297, file: !622, line: 185, type: !127)
!3305 = !DILocalVariable(name: "authors", arg: 5, scope: !3297, file: !622, line: 185, type: !3256)
!3306 = !DILocalVariable(name: "n_authors", scope: !3297, file: !622, line: 187, type: !124)
!3307 = !DILocation(line: 0, scope: !3297)
!3308 = !DILocation(line: 189, column: 8, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3297, file: !622, line: 189, column: 3)
!3310 = !DILocation(line: 189, scope: !3309)
!3311 = !DILocation(line: 189, column: 23, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3309, file: !622, line: 189, column: 3)
!3313 = !DILocation(line: 189, column: 3, scope: !3309)
!3314 = !DILocation(line: 189, column: 52, scope: !3312)
!3315 = distinct !{!3315, !3313, !3316, !930}
!3316 = !DILocation(line: 190, column: 5, scope: !3309)
!3317 = !DILocation(line: 191, column: 3, scope: !3297)
!3318 = !DILocation(line: 192, column: 1, scope: !3297)
!3319 = distinct !DISubprogram(name: "version_etc_va", scope: !622, file: !622, line: 199, type: !3320, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3333)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{null, !3222, !127, !127, !127, !3322}
!3322 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !437, line: 52, baseType: !3323)
!3323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !439, line: 14, baseType: !3324)
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3325, baseType: !3326)
!3325 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3327)
!3327 = !{!3328, !3329, !3330, !3331, !3332}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3326, file: !3325, line: 192, baseType: !121, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3326, file: !3325, line: 192, baseType: !121, size: 64, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3326, file: !3325, line: 192, baseType: !121, size: 64, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3326, file: !3325, line: 192, baseType: !83, size: 32, offset: 192)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3326, file: !3325, line: 192, baseType: !83, size: 32, offset: 224)
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340}
!3334 = !DILocalVariable(name: "stream", arg: 1, scope: !3319, file: !622, line: 199, type: !3222)
!3335 = !DILocalVariable(name: "command_name", arg: 2, scope: !3319, file: !622, line: 200, type: !127)
!3336 = !DILocalVariable(name: "package", arg: 3, scope: !3319, file: !622, line: 200, type: !127)
!3337 = !DILocalVariable(name: "version", arg: 4, scope: !3319, file: !622, line: 201, type: !127)
!3338 = !DILocalVariable(name: "authors", arg: 5, scope: !3319, file: !622, line: 201, type: !3322)
!3339 = !DILocalVariable(name: "n_authors", scope: !3319, file: !622, line: 203, type: !124)
!3340 = !DILocalVariable(name: "authtab", scope: !3319, file: !622, line: 204, type: !3341)
!3341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 640, elements: !65)
!3342 = !DILocation(line: 0, scope: !3319)
!3343 = !DILocation(line: 201, column: 46, scope: !3319)
!3344 = !DILocation(line: 204, column: 3, scope: !3319)
!3345 = !DILocation(line: 204, column: 15, scope: !3319)
!3346 = !DILocation(line: 208, column: 35, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !622, line: 206, column: 3)
!3348 = distinct !DILexicalBlock(scope: !3319, file: !622, line: 206, column: 3)
!3349 = !DILocation(line: 208, column: 33, scope: !3347)
!3350 = !DILocation(line: 208, column: 67, scope: !3347)
!3351 = !DILocation(line: 206, column: 3, scope: !3348)
!3352 = !DILocation(line: 208, column: 14, scope: !3347)
!3353 = !DILocation(line: 0, scope: !3348)
!3354 = !DILocation(line: 211, column: 3, scope: !3319)
!3355 = !DILocation(line: 213, column: 1, scope: !3319)
!3356 = distinct !DISubprogram(name: "version_etc", scope: !622, file: !622, line: 230, type: !3357, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3359)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{null, !3222, !127, !127, !127, null}
!3359 = !{!3360, !3361, !3362, !3363, !3364}
!3360 = !DILocalVariable(name: "stream", arg: 1, scope: !3356, file: !622, line: 230, type: !3222)
!3361 = !DILocalVariable(name: "command_name", arg: 2, scope: !3356, file: !622, line: 231, type: !127)
!3362 = !DILocalVariable(name: "package", arg: 3, scope: !3356, file: !622, line: 231, type: !127)
!3363 = !DILocalVariable(name: "version", arg: 4, scope: !3356, file: !622, line: 232, type: !127)
!3364 = !DILocalVariable(name: "authors", scope: !3356, file: !622, line: 234, type: !3322)
!3365 = !DILocation(line: 0, scope: !3356)
!3366 = !DILocation(line: 234, column: 3, scope: !3356)
!3367 = !DILocation(line: 234, column: 11, scope: !3356)
!3368 = !DILocation(line: 235, column: 3, scope: !3356)
!3369 = !DILocation(line: 236, column: 3, scope: !3356)
!3370 = !DILocation(line: 237, column: 3, scope: !3356)
!3371 = !DILocation(line: 238, column: 1, scope: !3356)
!3372 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !622, file: !622, line: 241, type: !475, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !868)
!3373 = !DILocation(line: 243, column: 3, scope: !3372)
!3374 = !DILocation(line: 248, column: 3, scope: !3372)
!3375 = !DILocation(line: 254, column: 3, scope: !3372)
!3376 = !DILocation(line: 259, column: 3, scope: !3372)
!3377 = !DILocation(line: 261, column: 1, scope: !3372)
!3378 = distinct !DISubprogram(name: "xnrealloc", scope: !3379, file: !3379, line: 147, type: !3380, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3382)
!3379 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!121, !121, !124, !124}
!3382 = !{!3383, !3384, !3385}
!3383 = !DILocalVariable(name: "p", arg: 1, scope: !3378, file: !3379, line: 147, type: !121)
!3384 = !DILocalVariable(name: "n", arg: 2, scope: !3378, file: !3379, line: 147, type: !124)
!3385 = !DILocalVariable(name: "s", arg: 3, scope: !3378, file: !3379, line: 147, type: !124)
!3386 = !DILocation(line: 0, scope: !3378)
!3387 = !DILocalVariable(name: "p", arg: 1, scope: !3388, file: !746, line: 83, type: !121)
!3388 = distinct !DISubprogram(name: "xreallocarray", scope: !746, file: !746, line: 83, type: !3380, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3389)
!3389 = !{!3387, !3390, !3391}
!3390 = !DILocalVariable(name: "n", arg: 2, scope: !3388, file: !746, line: 83, type: !124)
!3391 = !DILocalVariable(name: "s", arg: 3, scope: !3388, file: !746, line: 83, type: !124)
!3392 = !DILocation(line: 0, scope: !3388, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 149, column: 10, scope: !3378)
!3394 = !DILocation(line: 85, column: 25, scope: !3388, inlinedAt: !3393)
!3395 = !DILocalVariable(name: "p", arg: 1, scope: !3396, file: !746, line: 37, type: !121)
!3396 = distinct !DISubprogram(name: "check_nonnull", scope: !746, file: !746, line: 37, type: !3397, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!121, !121}
!3399 = !{!3395}
!3400 = !DILocation(line: 0, scope: !3396, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 85, column: 10, scope: !3388, inlinedAt: !3393)
!3402 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3401)
!3403 = distinct !DILexicalBlock(scope: !3396, file: !746, line: 39, column: 7)
!3404 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3401)
!3405 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3401)
!3406 = !DILocation(line: 149, column: 3, scope: !3378)
!3407 = !DILocation(line: 0, scope: !3388)
!3408 = !DILocation(line: 85, column: 25, scope: !3388)
!3409 = !DILocation(line: 0, scope: !3396, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 85, column: 10, scope: !3388)
!3411 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3410)
!3412 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3410)
!3413 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3410)
!3414 = !DILocation(line: 85, column: 3, scope: !3388)
!3415 = distinct !DISubprogram(name: "xmalloc", scope: !746, file: !746, line: 47, type: !3416, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!121, !124}
!3418 = !{!3419}
!3419 = !DILocalVariable(name: "s", arg: 1, scope: !3415, file: !746, line: 47, type: !124)
!3420 = !DILocation(line: 0, scope: !3415)
!3421 = !DILocation(line: 49, column: 25, scope: !3415)
!3422 = !DILocation(line: 0, scope: !3396, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 49, column: 10, scope: !3415)
!3424 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3423)
!3425 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3423)
!3426 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3423)
!3427 = !DILocation(line: 49, column: 3, scope: !3415)
!3428 = !DISubprogram(name: "malloc", scope: !1004, file: !1004, line: 540, type: !3416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!3429 = distinct !DISubprogram(name: "ximalloc", scope: !746, file: !746, line: 53, type: !3430, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!121, !765}
!3432 = !{!3433}
!3433 = !DILocalVariable(name: "s", arg: 1, scope: !3429, file: !746, line: 53, type: !765)
!3434 = !DILocation(line: 0, scope: !3429)
!3435 = !DILocalVariable(name: "s", arg: 1, scope: !3436, file: !3437, line: 55, type: !765)
!3436 = distinct !DISubprogram(name: "imalloc", scope: !3437, file: !3437, line: 55, type: !3430, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3438)
!3437 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3438 = !{!3435}
!3439 = !DILocation(line: 0, scope: !3436, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 55, column: 25, scope: !3429)
!3441 = !DILocation(line: 57, column: 26, scope: !3436, inlinedAt: !3440)
!3442 = !DILocation(line: 0, scope: !3396, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 55, column: 10, scope: !3429)
!3444 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3443)
!3445 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3443)
!3446 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3443)
!3447 = !DILocation(line: 55, column: 3, scope: !3429)
!3448 = distinct !DISubprogram(name: "xcharalloc", scope: !746, file: !746, line: 59, type: !1446, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3449)
!3449 = !{!3450}
!3450 = !DILocalVariable(name: "n", arg: 1, scope: !3448, file: !746, line: 59, type: !124)
!3451 = !DILocation(line: 0, scope: !3448)
!3452 = !DILocation(line: 0, scope: !3415, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 61, column: 10, scope: !3448)
!3454 = !DILocation(line: 49, column: 25, scope: !3415, inlinedAt: !3453)
!3455 = !DILocation(line: 0, scope: !3396, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 49, column: 10, scope: !3415, inlinedAt: !3453)
!3457 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3456)
!3458 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3456)
!3459 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3456)
!3460 = !DILocation(line: 61, column: 3, scope: !3448)
!3461 = distinct !DISubprogram(name: "xrealloc", scope: !746, file: !746, line: 68, type: !3462, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3464)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!121, !121, !124}
!3464 = !{!3465, !3466}
!3465 = !DILocalVariable(name: "p", arg: 1, scope: !3461, file: !746, line: 68, type: !121)
!3466 = !DILocalVariable(name: "s", arg: 2, scope: !3461, file: !746, line: 68, type: !124)
!3467 = !DILocation(line: 0, scope: !3461)
!3468 = !DILocalVariable(name: "ptr", arg: 1, scope: !3469, file: !3470, line: 2057, type: !121)
!3469 = distinct !DISubprogram(name: "rpl_realloc", scope: !3470, file: !3470, line: 2057, type: !3462, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3471)
!3470 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3471 = !{!3468, !3472}
!3472 = !DILocalVariable(name: "size", arg: 2, scope: !3469, file: !3470, line: 2057, type: !124)
!3473 = !DILocation(line: 0, scope: !3469, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 70, column: 25, scope: !3461)
!3475 = !DILocation(line: 2059, column: 24, scope: !3469, inlinedAt: !3474)
!3476 = !DILocation(line: 2059, column: 10, scope: !3469, inlinedAt: !3474)
!3477 = !DILocation(line: 0, scope: !3396, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 70, column: 10, scope: !3461)
!3479 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3478)
!3480 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3478)
!3481 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3478)
!3482 = !DILocation(line: 70, column: 3, scope: !3461)
!3483 = !DISubprogram(name: "realloc", scope: !1004, file: !1004, line: 551, type: !3462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!3484 = distinct !DISubprogram(name: "xirealloc", scope: !746, file: !746, line: 74, type: !3485, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3487)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!121, !121, !765}
!3487 = !{!3488, !3489}
!3488 = !DILocalVariable(name: "p", arg: 1, scope: !3484, file: !746, line: 74, type: !121)
!3489 = !DILocalVariable(name: "s", arg: 2, scope: !3484, file: !746, line: 74, type: !765)
!3490 = !DILocation(line: 0, scope: !3484)
!3491 = !DILocalVariable(name: "p", arg: 1, scope: !3492, file: !3437, line: 66, type: !121)
!3492 = distinct !DISubprogram(name: "irealloc", scope: !3437, file: !3437, line: 66, type: !3485, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3493)
!3493 = !{!3491, !3494}
!3494 = !DILocalVariable(name: "s", arg: 2, scope: !3492, file: !3437, line: 66, type: !765)
!3495 = !DILocation(line: 0, scope: !3492, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 76, column: 25, scope: !3484)
!3497 = !DILocation(line: 0, scope: !3469, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 68, column: 26, scope: !3492, inlinedAt: !3496)
!3499 = !DILocation(line: 2059, column: 24, scope: !3469, inlinedAt: !3498)
!3500 = !DILocation(line: 2059, column: 10, scope: !3469, inlinedAt: !3498)
!3501 = !DILocation(line: 0, scope: !3396, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 76, column: 10, scope: !3484)
!3503 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3502)
!3504 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3502)
!3505 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3502)
!3506 = !DILocation(line: 76, column: 3, scope: !3484)
!3507 = distinct !DISubprogram(name: "xireallocarray", scope: !746, file: !746, line: 89, type: !3508, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3510)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!121, !121, !765, !765}
!3510 = !{!3511, !3512, !3513}
!3511 = !DILocalVariable(name: "p", arg: 1, scope: !3507, file: !746, line: 89, type: !121)
!3512 = !DILocalVariable(name: "n", arg: 2, scope: !3507, file: !746, line: 89, type: !765)
!3513 = !DILocalVariable(name: "s", arg: 3, scope: !3507, file: !746, line: 89, type: !765)
!3514 = !DILocation(line: 0, scope: !3507)
!3515 = !DILocalVariable(name: "p", arg: 1, scope: !3516, file: !3437, line: 98, type: !121)
!3516 = distinct !DISubprogram(name: "ireallocarray", scope: !3437, file: !3437, line: 98, type: !3508, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3517)
!3517 = !{!3515, !3518, !3519}
!3518 = !DILocalVariable(name: "n", arg: 2, scope: !3516, file: !3437, line: 98, type: !765)
!3519 = !DILocalVariable(name: "s", arg: 3, scope: !3516, file: !3437, line: 98, type: !765)
!3520 = !DILocation(line: 0, scope: !3516, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 91, column: 25, scope: !3507)
!3522 = !DILocation(line: 101, column: 13, scope: !3516, inlinedAt: !3521)
!3523 = !DILocation(line: 0, scope: !3396, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 91, column: 10, scope: !3507)
!3525 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3524)
!3526 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3524)
!3527 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3524)
!3528 = !DILocation(line: 91, column: 3, scope: !3507)
!3529 = distinct !DISubprogram(name: "xnmalloc", scope: !746, file: !746, line: 98, type: !3530, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3532)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!121, !124, !124}
!3532 = !{!3533, !3534}
!3533 = !DILocalVariable(name: "n", arg: 1, scope: !3529, file: !746, line: 98, type: !124)
!3534 = !DILocalVariable(name: "s", arg: 2, scope: !3529, file: !746, line: 98, type: !124)
!3535 = !DILocation(line: 0, scope: !3529)
!3536 = !DILocation(line: 0, scope: !3388, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 100, column: 10, scope: !3529)
!3538 = !DILocation(line: 85, column: 25, scope: !3388, inlinedAt: !3537)
!3539 = !DILocation(line: 0, scope: !3396, inlinedAt: !3540)
!3540 = distinct !DILocation(line: 85, column: 10, scope: !3388, inlinedAt: !3537)
!3541 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3540)
!3542 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3540)
!3543 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3540)
!3544 = !DILocation(line: 100, column: 3, scope: !3529)
!3545 = distinct !DISubprogram(name: "xinmalloc", scope: !746, file: !746, line: 104, type: !3546, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3548)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!121, !765, !765}
!3548 = !{!3549, !3550}
!3549 = !DILocalVariable(name: "n", arg: 1, scope: !3545, file: !746, line: 104, type: !765)
!3550 = !DILocalVariable(name: "s", arg: 2, scope: !3545, file: !746, line: 104, type: !765)
!3551 = !DILocation(line: 0, scope: !3545)
!3552 = !DILocation(line: 0, scope: !3507, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 106, column: 10, scope: !3545)
!3554 = !DILocation(line: 0, scope: !3516, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 91, column: 25, scope: !3507, inlinedAt: !3553)
!3556 = !DILocation(line: 101, column: 13, scope: !3516, inlinedAt: !3555)
!3557 = !DILocation(line: 0, scope: !3396, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 91, column: 10, scope: !3507, inlinedAt: !3553)
!3559 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3558)
!3560 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3558)
!3561 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3558)
!3562 = !DILocation(line: 106, column: 3, scope: !3545)
!3563 = distinct !DISubprogram(name: "x2realloc", scope: !746, file: !746, line: 116, type: !3564, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3566)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!121, !121, !752}
!3566 = !{!3567, !3568}
!3567 = !DILocalVariable(name: "p", arg: 1, scope: !3563, file: !746, line: 116, type: !121)
!3568 = !DILocalVariable(name: "ps", arg: 2, scope: !3563, file: !746, line: 116, type: !752)
!3569 = !DILocation(line: 0, scope: !3563)
!3570 = !DILocation(line: 0, scope: !749, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 118, column: 10, scope: !3563)
!3572 = !DILocation(line: 178, column: 14, scope: !749, inlinedAt: !3571)
!3573 = !DILocation(line: 180, column: 9, scope: !3574, inlinedAt: !3571)
!3574 = distinct !DILexicalBlock(scope: !749, file: !746, line: 180, column: 7)
!3575 = !DILocation(line: 180, column: 7, scope: !749, inlinedAt: !3571)
!3576 = !DILocation(line: 182, column: 13, scope: !3577, inlinedAt: !3571)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !746, line: 182, column: 11)
!3578 = distinct !DILexicalBlock(scope: !3574, file: !746, line: 181, column: 5)
!3579 = !DILocation(line: 182, column: 11, scope: !3578, inlinedAt: !3571)
!3580 = !DILocation(line: 197, column: 11, scope: !3581, inlinedAt: !3571)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !746, line: 197, column: 11)
!3582 = distinct !DILexicalBlock(scope: !3574, file: !746, line: 195, column: 5)
!3583 = !DILocation(line: 197, column: 11, scope: !3582, inlinedAt: !3571)
!3584 = !DILocation(line: 198, column: 9, scope: !3581, inlinedAt: !3571)
!3585 = !DILocation(line: 0, scope: !3388, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 201, column: 7, scope: !749, inlinedAt: !3571)
!3587 = !DILocation(line: 85, column: 25, scope: !3388, inlinedAt: !3586)
!3588 = !DILocation(line: 0, scope: !3396, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 85, column: 10, scope: !3388, inlinedAt: !3586)
!3590 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3589)
!3591 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3589)
!3592 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3589)
!3593 = !DILocation(line: 202, column: 7, scope: !749, inlinedAt: !3571)
!3594 = !DILocation(line: 118, column: 3, scope: !3563)
!3595 = !DILocation(line: 0, scope: !749)
!3596 = !DILocation(line: 178, column: 14, scope: !749)
!3597 = !DILocation(line: 180, column: 9, scope: !3574)
!3598 = !DILocation(line: 180, column: 7, scope: !749)
!3599 = !DILocation(line: 182, column: 13, scope: !3577)
!3600 = !DILocation(line: 182, column: 11, scope: !3578)
!3601 = !DILocation(line: 190, column: 30, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3577, file: !746, line: 183, column: 9)
!3603 = !DILocation(line: 191, column: 16, scope: !3602)
!3604 = !DILocation(line: 191, column: 13, scope: !3602)
!3605 = !DILocation(line: 192, column: 9, scope: !3602)
!3606 = !DILocation(line: 197, column: 11, scope: !3581)
!3607 = !DILocation(line: 197, column: 11, scope: !3582)
!3608 = !DILocation(line: 198, column: 9, scope: !3581)
!3609 = !DILocation(line: 0, scope: !3388, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 201, column: 7, scope: !749)
!3611 = !DILocation(line: 85, column: 25, scope: !3388, inlinedAt: !3610)
!3612 = !DILocation(line: 0, scope: !3396, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 85, column: 10, scope: !3388, inlinedAt: !3610)
!3614 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3613)
!3615 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3613)
!3616 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3613)
!3617 = !DILocation(line: 202, column: 7, scope: !749)
!3618 = !DILocation(line: 203, column: 3, scope: !749)
!3619 = !DILocation(line: 0, scope: !761)
!3620 = !DILocation(line: 230, column: 14, scope: !761)
!3621 = !DILocation(line: 238, column: 7, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !761, file: !746, line: 238, column: 7)
!3623 = !DILocation(line: 238, column: 7, scope: !761)
!3624 = !DILocation(line: 240, column: 9, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !761, file: !746, line: 240, column: 7)
!3626 = !DILocation(line: 240, column: 18, scope: !3625)
!3627 = !DILocation(line: 253, column: 8, scope: !761)
!3628 = !DILocation(line: 258, column: 27, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !746, line: 257, column: 5)
!3630 = distinct !DILexicalBlock(scope: !761, file: !746, line: 256, column: 7)
!3631 = !DILocation(line: 259, column: 32, scope: !3629)
!3632 = !DILocation(line: 260, column: 5, scope: !3629)
!3633 = !DILocation(line: 262, column: 9, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !761, file: !746, line: 262, column: 7)
!3635 = !DILocation(line: 262, column: 7, scope: !761)
!3636 = !DILocation(line: 263, column: 9, scope: !3634)
!3637 = !DILocation(line: 263, column: 5, scope: !3634)
!3638 = !DILocation(line: 264, column: 9, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !761, file: !746, line: 264, column: 7)
!3640 = !DILocation(line: 264, column: 14, scope: !3639)
!3641 = !DILocation(line: 265, column: 7, scope: !3639)
!3642 = !DILocation(line: 265, column: 11, scope: !3639)
!3643 = !DILocation(line: 266, column: 11, scope: !3639)
!3644 = !DILocation(line: 267, column: 14, scope: !3639)
!3645 = !DILocation(line: 264, column: 7, scope: !761)
!3646 = !DILocation(line: 268, column: 5, scope: !3639)
!3647 = !DILocation(line: 0, scope: !3461, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 269, column: 8, scope: !761)
!3649 = !DILocation(line: 0, scope: !3469, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 70, column: 25, scope: !3461, inlinedAt: !3648)
!3651 = !DILocation(line: 2059, column: 24, scope: !3469, inlinedAt: !3650)
!3652 = !DILocation(line: 2059, column: 10, scope: !3469, inlinedAt: !3650)
!3653 = !DILocation(line: 0, scope: !3396, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 70, column: 10, scope: !3461, inlinedAt: !3648)
!3655 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3654)
!3656 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3654)
!3657 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3654)
!3658 = !DILocation(line: 270, column: 7, scope: !761)
!3659 = !DILocation(line: 271, column: 3, scope: !761)
!3660 = distinct !DISubprogram(name: "xzalloc", scope: !746, file: !746, line: 279, type: !3416, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3661)
!3661 = !{!3662}
!3662 = !DILocalVariable(name: "s", arg: 1, scope: !3660, file: !746, line: 279, type: !124)
!3663 = !DILocation(line: 0, scope: !3660)
!3664 = !DILocalVariable(name: "n", arg: 1, scope: !3665, file: !746, line: 294, type: !124)
!3665 = distinct !DISubprogram(name: "xcalloc", scope: !746, file: !746, line: 294, type: !3530, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3666)
!3666 = !{!3664, !3667}
!3667 = !DILocalVariable(name: "s", arg: 2, scope: !3665, file: !746, line: 294, type: !124)
!3668 = !DILocation(line: 0, scope: !3665, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 281, column: 10, scope: !3660)
!3670 = !DILocation(line: 296, column: 25, scope: !3665, inlinedAt: !3669)
!3671 = !DILocation(line: 0, scope: !3396, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 296, column: 10, scope: !3665, inlinedAt: !3669)
!3673 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3672)
!3674 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3672)
!3675 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3672)
!3676 = !DILocation(line: 281, column: 3, scope: !3660)
!3677 = !DISubprogram(name: "calloc", scope: !1004, file: !1004, line: 543, type: !3530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!3678 = !DILocation(line: 0, scope: !3665)
!3679 = !DILocation(line: 296, column: 25, scope: !3665)
!3680 = !DILocation(line: 0, scope: !3396, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 296, column: 10, scope: !3665)
!3682 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3681)
!3683 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3681)
!3684 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3681)
!3685 = !DILocation(line: 296, column: 3, scope: !3665)
!3686 = distinct !DISubprogram(name: "xizalloc", scope: !746, file: !746, line: 285, type: !3430, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3687)
!3687 = !{!3688}
!3688 = !DILocalVariable(name: "s", arg: 1, scope: !3686, file: !746, line: 285, type: !765)
!3689 = !DILocation(line: 0, scope: !3686)
!3690 = !DILocalVariable(name: "n", arg: 1, scope: !3691, file: !746, line: 300, type: !765)
!3691 = distinct !DISubprogram(name: "xicalloc", scope: !746, file: !746, line: 300, type: !3546, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3692)
!3692 = !{!3690, !3693}
!3693 = !DILocalVariable(name: "s", arg: 2, scope: !3691, file: !746, line: 300, type: !765)
!3694 = !DILocation(line: 0, scope: !3691, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 287, column: 10, scope: !3686)
!3696 = !DILocalVariable(name: "n", arg: 1, scope: !3697, file: !3437, line: 77, type: !765)
!3697 = distinct !DISubprogram(name: "icalloc", scope: !3437, file: !3437, line: 77, type: !3546, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3698)
!3698 = !{!3696, !3699}
!3699 = !DILocalVariable(name: "s", arg: 2, scope: !3697, file: !3437, line: 77, type: !765)
!3700 = !DILocation(line: 0, scope: !3697, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 302, column: 25, scope: !3691, inlinedAt: !3695)
!3702 = !DILocation(line: 91, column: 10, scope: !3697, inlinedAt: !3701)
!3703 = !DILocation(line: 0, scope: !3396, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 302, column: 10, scope: !3691, inlinedAt: !3695)
!3705 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3704)
!3706 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3704)
!3707 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3704)
!3708 = !DILocation(line: 287, column: 3, scope: !3686)
!3709 = !DILocation(line: 0, scope: !3691)
!3710 = !DILocation(line: 0, scope: !3697, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 302, column: 25, scope: !3691)
!3712 = !DILocation(line: 91, column: 10, scope: !3697, inlinedAt: !3711)
!3713 = !DILocation(line: 0, scope: !3396, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 302, column: 10, scope: !3691)
!3715 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3714)
!3716 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3714)
!3717 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3714)
!3718 = !DILocation(line: 302, column: 3, scope: !3691)
!3719 = distinct !DISubprogram(name: "xmemdup", scope: !746, file: !746, line: 310, type: !3720, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3722)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!121, !1028, !124}
!3722 = !{!3723, !3724}
!3723 = !DILocalVariable(name: "p", arg: 1, scope: !3719, file: !746, line: 310, type: !1028)
!3724 = !DILocalVariable(name: "s", arg: 2, scope: !3719, file: !746, line: 310, type: !124)
!3725 = !DILocation(line: 0, scope: !3719)
!3726 = !DILocation(line: 0, scope: !3415, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 312, column: 18, scope: !3719)
!3728 = !DILocation(line: 49, column: 25, scope: !3415, inlinedAt: !3727)
!3729 = !DILocation(line: 0, scope: !3396, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 49, column: 10, scope: !3415, inlinedAt: !3727)
!3731 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3730)
!3732 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3730)
!3733 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3730)
!3734 = !DILocalVariable(name: "__dest", arg: 1, scope: !3735, file: !1465, line: 26, type: !1468)
!3735 = distinct !DISubprogram(name: "memcpy", scope: !1465, file: !1465, line: 26, type: !1466, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3736)
!3736 = !{!3734, !3737, !3738}
!3737 = !DILocalVariable(name: "__src", arg: 2, scope: !3735, file: !1465, line: 26, type: !1027)
!3738 = !DILocalVariable(name: "__len", arg: 3, scope: !3735, file: !1465, line: 26, type: !124)
!3739 = !DILocation(line: 0, scope: !3735, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 312, column: 10, scope: !3719)
!3741 = !DILocation(line: 29, column: 10, scope: !3735, inlinedAt: !3740)
!3742 = !DILocation(line: 312, column: 3, scope: !3719)
!3743 = distinct !DISubprogram(name: "ximemdup", scope: !746, file: !746, line: 316, type: !3744, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3746)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!121, !1028, !765}
!3746 = !{!3747, !3748}
!3747 = !DILocalVariable(name: "p", arg: 1, scope: !3743, file: !746, line: 316, type: !1028)
!3748 = !DILocalVariable(name: "s", arg: 2, scope: !3743, file: !746, line: 316, type: !765)
!3749 = !DILocation(line: 0, scope: !3743)
!3750 = !DILocation(line: 0, scope: !3429, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 318, column: 18, scope: !3743)
!3752 = !DILocation(line: 0, scope: !3436, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 55, column: 25, scope: !3429, inlinedAt: !3751)
!3754 = !DILocation(line: 57, column: 26, scope: !3436, inlinedAt: !3753)
!3755 = !DILocation(line: 0, scope: !3396, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 55, column: 10, scope: !3429, inlinedAt: !3751)
!3757 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3756)
!3758 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3756)
!3759 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3756)
!3760 = !DILocation(line: 0, scope: !3735, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 318, column: 10, scope: !3743)
!3762 = !DILocation(line: 29, column: 10, scope: !3735, inlinedAt: !3761)
!3763 = !DILocation(line: 318, column: 3, scope: !3743)
!3764 = distinct !DISubprogram(name: "ximemdup0", scope: !746, file: !746, line: 325, type: !3765, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!122, !1028, !765}
!3767 = !{!3768, !3769, !3770}
!3768 = !DILocalVariable(name: "p", arg: 1, scope: !3764, file: !746, line: 325, type: !1028)
!3769 = !DILocalVariable(name: "s", arg: 2, scope: !3764, file: !746, line: 325, type: !765)
!3770 = !DILocalVariable(name: "result", scope: !3764, file: !746, line: 327, type: !122)
!3771 = !DILocation(line: 0, scope: !3764)
!3772 = !DILocation(line: 327, column: 30, scope: !3764)
!3773 = !DILocation(line: 0, scope: !3429, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 327, column: 18, scope: !3764)
!3775 = !DILocation(line: 0, scope: !3436, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 55, column: 25, scope: !3429, inlinedAt: !3774)
!3777 = !DILocation(line: 57, column: 26, scope: !3436, inlinedAt: !3776)
!3778 = !DILocation(line: 0, scope: !3396, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 55, column: 10, scope: !3429, inlinedAt: !3774)
!3780 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3779)
!3781 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3779)
!3782 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3779)
!3783 = !DILocation(line: 328, column: 3, scope: !3764)
!3784 = !DILocation(line: 328, column: 13, scope: !3764)
!3785 = !DILocation(line: 0, scope: !3735, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 329, column: 10, scope: !3764)
!3787 = !DILocation(line: 29, column: 10, scope: !3735, inlinedAt: !3786)
!3788 = !DILocation(line: 329, column: 3, scope: !3764)
!3789 = distinct !DISubprogram(name: "xstrdup", scope: !746, file: !746, line: 335, type: !1006, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !745, retainedNodes: !3790)
!3790 = !{!3791}
!3791 = !DILocalVariable(name: "string", arg: 1, scope: !3789, file: !746, line: 335, type: !127)
!3792 = !DILocation(line: 0, scope: !3789)
!3793 = !DILocation(line: 337, column: 27, scope: !3789)
!3794 = !DILocation(line: 337, column: 43, scope: !3789)
!3795 = !DILocation(line: 0, scope: !3719, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 337, column: 10, scope: !3789)
!3797 = !DILocation(line: 0, scope: !3415, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 312, column: 18, scope: !3719, inlinedAt: !3796)
!3799 = !DILocation(line: 49, column: 25, scope: !3415, inlinedAt: !3798)
!3800 = !DILocation(line: 0, scope: !3396, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 49, column: 10, scope: !3415, inlinedAt: !3798)
!3802 = !DILocation(line: 39, column: 8, scope: !3403, inlinedAt: !3801)
!3803 = !DILocation(line: 39, column: 7, scope: !3396, inlinedAt: !3801)
!3804 = !DILocation(line: 40, column: 5, scope: !3403, inlinedAt: !3801)
!3805 = !DILocation(line: 0, scope: !3735, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 312, column: 10, scope: !3719, inlinedAt: !3796)
!3807 = !DILocation(line: 29, column: 10, scope: !3735, inlinedAt: !3806)
!3808 = !DILocation(line: 337, column: 3, scope: !3789)
!3809 = distinct !DISubprogram(name: "xalloc_die", scope: !706, file: !706, line: 32, type: !475, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3810)
!3810 = !{!3811}
!3811 = !DILocalVariable(name: "__errstatus", scope: !3812, file: !706, line: 34, type: !3813)
!3812 = distinct !DILexicalBlock(scope: !3809, file: !706, line: 34, column: 3)
!3813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!3814 = !DILocation(line: 34, column: 3, scope: !3812)
!3815 = !DILocation(line: 0, scope: !3812)
!3816 = !DILocation(line: 40, column: 3, scope: !3809)
!3817 = distinct !DISubprogram(name: "xgetcwd", scope: !782, file: !782, line: 35, type: !3818, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3819)
!3818 = !DISubroutineType(types: !481)
!3819 = !{!3820}
!3820 = !DILocalVariable(name: "cwd", scope: !3817, file: !782, line: 37, type: !122)
!3821 = !DILocation(line: 37, column: 15, scope: !3817)
!3822 = !DILocation(line: 0, scope: !3817)
!3823 = !DILocation(line: 38, column: 9, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3817, file: !782, line: 38, column: 7)
!3825 = !DILocation(line: 38, column: 13, scope: !3824)
!3826 = !DILocation(line: 38, column: 16, scope: !3824)
!3827 = !DILocation(line: 38, column: 22, scope: !3824)
!3828 = !DILocation(line: 38, column: 7, scope: !3817)
!3829 = !DILocation(line: 39, column: 5, scope: !3824)
!3830 = !DILocation(line: 40, column: 3, scope: !3817)
!3831 = distinct !DISubprogram(name: "close_stream", scope: !784, file: !784, line: 55, type: !3832, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3868)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!83, !3834}
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !3836)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !3837)
!3837 = !{!3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3836, file: !175, line: 51, baseType: !83, size: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3836, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3836, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3836, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3836, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3836, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3836, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3836, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3836, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3836, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3836, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3836, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3836, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3836, file: !175, line: 70, baseType: !3852, size: 64, offset: 832)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3836, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3836, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3836, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3836, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3836, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3836, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3836, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3836, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3836, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3836, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3836, file: !175, line: 93, baseType: !3852, size: 64, offset: 1344)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3836, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3836, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3836, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3836, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!3868 = !{!3869, !3870, !3872, !3873}
!3869 = !DILocalVariable(name: "stream", arg: 1, scope: !3831, file: !784, line: 55, type: !3834)
!3870 = !DILocalVariable(name: "some_pending", scope: !3831, file: !784, line: 57, type: !3871)
!3871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!3872 = !DILocalVariable(name: "prev_fail", scope: !3831, file: !784, line: 58, type: !3871)
!3873 = !DILocalVariable(name: "fclose_fail", scope: !3831, file: !784, line: 59, type: !3871)
!3874 = !DILocation(line: 0, scope: !3831)
!3875 = !DILocation(line: 57, column: 30, scope: !3831)
!3876 = !DILocalVariable(name: "__stream", arg: 1, scope: !3877, file: !1717, line: 135, type: !3834)
!3877 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1717, file: !1717, line: 135, type: !3832, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3878)
!3878 = !{!3876}
!3879 = !DILocation(line: 0, scope: !3877, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 58, column: 27, scope: !3831)
!3881 = !DILocation(line: 137, column: 10, scope: !3877, inlinedAt: !3880)
!3882 = !{!1726, !884, i64 0}
!3883 = !DILocation(line: 58, column: 43, scope: !3831)
!3884 = !DILocation(line: 59, column: 29, scope: !3831)
!3885 = !DILocation(line: 59, column: 45, scope: !3831)
!3886 = !DILocation(line: 69, column: 17, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3831, file: !784, line: 69, column: 7)
!3888 = !DILocation(line: 57, column: 50, scope: !3831)
!3889 = !DILocation(line: 69, column: 33, scope: !3887)
!3890 = !DILocation(line: 69, column: 53, scope: !3887)
!3891 = !DILocation(line: 69, column: 59, scope: !3887)
!3892 = !DILocation(line: 69, column: 7, scope: !3831)
!3893 = !DILocation(line: 71, column: 11, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3887, file: !784, line: 70, column: 5)
!3895 = !DILocation(line: 72, column: 9, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3894, file: !784, line: 71, column: 11)
!3897 = !DILocation(line: 72, column: 15, scope: !3896)
!3898 = !DILocation(line: 77, column: 1, scope: !3831)
!3899 = !DISubprogram(name: "__fpending", scope: !3900, file: !3900, line: 75, type: !3901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!3900 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!124, !3834}
!3903 = distinct !DISubprogram(name: "rpl_fclose", scope: !786, file: !786, line: 58, type: !3904, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !3940)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!83, !3906}
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !3908)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !3909)
!3909 = !{!3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3908, file: !175, line: 51, baseType: !83, size: 32)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3908, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3908, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3908, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3908, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3908, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3908, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3908, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3908, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3908, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3908, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3908, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3908, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3908, file: !175, line: 70, baseType: !3924, size: 64, offset: 832)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3908, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3908, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3908, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3908, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3908, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3908, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3908, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3908, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3908, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3908, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3908, file: !175, line: 93, baseType: !3924, size: 64, offset: 1344)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3908, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3908, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3908, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3908, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!3940 = !{!3941, !3942, !3943, !3944}
!3941 = !DILocalVariable(name: "fp", arg: 1, scope: !3903, file: !786, line: 58, type: !3906)
!3942 = !DILocalVariable(name: "saved_errno", scope: !3903, file: !786, line: 60, type: !83)
!3943 = !DILocalVariable(name: "fd", scope: !3903, file: !786, line: 63, type: !83)
!3944 = !DILocalVariable(name: "result", scope: !3903, file: !786, line: 74, type: !83)
!3945 = !DILocation(line: 0, scope: !3903)
!3946 = !DILocation(line: 63, column: 12, scope: !3903)
!3947 = !DILocation(line: 64, column: 10, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3903, file: !786, line: 64, column: 7)
!3949 = !DILocation(line: 64, column: 7, scope: !3903)
!3950 = !DILocation(line: 65, column: 12, scope: !3948)
!3951 = !DILocation(line: 65, column: 5, scope: !3948)
!3952 = !DILocation(line: 70, column: 9, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3903, file: !786, line: 70, column: 7)
!3954 = !DILocation(line: 70, column: 23, scope: !3953)
!3955 = !DILocation(line: 70, column: 33, scope: !3953)
!3956 = !DILocation(line: 70, column: 26, scope: !3953)
!3957 = !DILocation(line: 70, column: 59, scope: !3953)
!3958 = !DILocation(line: 71, column: 7, scope: !3953)
!3959 = !DILocation(line: 71, column: 10, scope: !3953)
!3960 = !DILocation(line: 70, column: 7, scope: !3903)
!3961 = !DILocation(line: 100, column: 12, scope: !3903)
!3962 = !DILocation(line: 105, column: 7, scope: !3903)
!3963 = !DILocation(line: 72, column: 19, scope: !3953)
!3964 = !DILocation(line: 105, column: 19, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3903, file: !786, line: 105, column: 7)
!3966 = !DILocation(line: 107, column: 13, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3965, file: !786, line: 106, column: 5)
!3968 = !DILocation(line: 109, column: 5, scope: !3967)
!3969 = !DILocation(line: 112, column: 1, scope: !3903)
!3970 = !DISubprogram(name: "fileno", scope: !437, file: !437, line: 809, type: !3904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!3971 = !DISubprogram(name: "fclose", scope: !437, file: !437, line: 178, type: !3904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!3972 = !DISubprogram(name: "__freading", scope: !3900, file: !3900, line: 51, type: !3904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!3973 = !DISubprogram(name: "lseek", scope: !1484, file: !1484, line: 339, type: !3974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!197, !83, !197, !83}
!3976 = distinct !DISubprogram(name: "rpl_fflush", scope: !788, file: !788, line: 130, type: !3977, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4013)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!83, !3979}
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !3981)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !3982)
!3982 = !{!3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3981, file: !175, line: 51, baseType: !83, size: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3981, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3981, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3981, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3981, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3981, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3981, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3981, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3981, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3981, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3981, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3981, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3981, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3981, file: !175, line: 70, baseType: !3997, size: 64, offset: 832)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3981, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3981, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3981, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3981, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3981, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3981, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3981, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3981, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3981, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3981, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3981, file: !175, line: 93, baseType: !3997, size: 64, offset: 1344)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3981, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3981, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3981, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3981, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!4013 = !{!4014}
!4014 = !DILocalVariable(name: "stream", arg: 1, scope: !3976, file: !788, line: 130, type: !3979)
!4015 = !DILocation(line: 0, scope: !3976)
!4016 = !DILocation(line: 151, column: 14, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !3976, file: !788, line: 151, column: 7)
!4018 = !DILocation(line: 151, column: 22, scope: !4017)
!4019 = !DILocation(line: 151, column: 27, scope: !4017)
!4020 = !DILocation(line: 151, column: 7, scope: !3976)
!4021 = !DILocation(line: 152, column: 12, scope: !4017)
!4022 = !DILocation(line: 152, column: 5, scope: !4017)
!4023 = !DILocalVariable(name: "fp", arg: 1, scope: !4024, file: !788, line: 42, type: !3979)
!4024 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !788, file: !788, line: 42, type: !4025, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4027)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{null, !3979}
!4027 = !{!4023}
!4028 = !DILocation(line: 0, scope: !4024, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 157, column: 3, scope: !3976)
!4030 = !DILocation(line: 44, column: 12, scope: !4031, inlinedAt: !4029)
!4031 = distinct !DILexicalBlock(scope: !4024, file: !788, line: 44, column: 7)
!4032 = !DILocation(line: 44, column: 19, scope: !4031, inlinedAt: !4029)
!4033 = !DILocation(line: 44, column: 7, scope: !4024, inlinedAt: !4029)
!4034 = !DILocation(line: 46, column: 5, scope: !4031, inlinedAt: !4029)
!4035 = !DILocation(line: 159, column: 10, scope: !3976)
!4036 = !DILocation(line: 159, column: 3, scope: !3976)
!4037 = !DILocation(line: 236, column: 1, scope: !3976)
!4038 = !DISubprogram(name: "fflush", scope: !437, file: !437, line: 230, type: !3977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!4039 = distinct !DISubprogram(name: "rpl_fseeko", scope: !790, file: !790, line: 28, type: !4040, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4077)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!83, !4042, !4076, !83}
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !4044)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !4045)
!4045 = !{!4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4044, file: !175, line: 51, baseType: !83, size: 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4044, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4044, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4044, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4044, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4044, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4044, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4044, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4044, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4044, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4044, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4044, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4044, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4044, file: !175, line: 70, baseType: !4060, size: 64, offset: 832)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4044, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4044, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4044, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4044, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4044, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4044, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4044, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4044, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4044, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4044, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4044, file: !175, line: 93, baseType: !4060, size: 64, offset: 1344)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4044, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4044, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4044, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4044, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!4076 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !437, line: 63, baseType: !197)
!4077 = !{!4078, !4079, !4080, !4081}
!4078 = !DILocalVariable(name: "fp", arg: 1, scope: !4039, file: !790, line: 28, type: !4042)
!4079 = !DILocalVariable(name: "offset", arg: 2, scope: !4039, file: !790, line: 28, type: !4076)
!4080 = !DILocalVariable(name: "whence", arg: 3, scope: !4039, file: !790, line: 28, type: !83)
!4081 = !DILocalVariable(name: "pos", scope: !4082, file: !790, line: 123, type: !4076)
!4082 = distinct !DILexicalBlock(scope: !4083, file: !790, line: 119, column: 5)
!4083 = distinct !DILexicalBlock(scope: !4039, file: !790, line: 55, column: 7)
!4084 = !DILocation(line: 0, scope: !4039)
!4085 = !DILocation(line: 55, column: 12, scope: !4083)
!4086 = !{!1726, !820, i64 16}
!4087 = !DILocation(line: 55, column: 33, scope: !4083)
!4088 = !{!1726, !820, i64 8}
!4089 = !DILocation(line: 55, column: 25, scope: !4083)
!4090 = !DILocation(line: 56, column: 7, scope: !4083)
!4091 = !DILocation(line: 56, column: 15, scope: !4083)
!4092 = !DILocation(line: 56, column: 37, scope: !4083)
!4093 = !{!1726, !820, i64 32}
!4094 = !DILocation(line: 56, column: 29, scope: !4083)
!4095 = !DILocation(line: 57, column: 7, scope: !4083)
!4096 = !DILocation(line: 57, column: 15, scope: !4083)
!4097 = !{!1726, !820, i64 72}
!4098 = !DILocation(line: 57, column: 29, scope: !4083)
!4099 = !DILocation(line: 55, column: 7, scope: !4039)
!4100 = !DILocation(line: 123, column: 26, scope: !4082)
!4101 = !DILocation(line: 123, column: 19, scope: !4082)
!4102 = !DILocation(line: 0, scope: !4082)
!4103 = !DILocation(line: 124, column: 15, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4082, file: !790, line: 124, column: 11)
!4105 = !DILocation(line: 124, column: 11, scope: !4082)
!4106 = !DILocation(line: 135, column: 19, scope: !4082)
!4107 = !DILocation(line: 136, column: 12, scope: !4082)
!4108 = !DILocation(line: 136, column: 20, scope: !4082)
!4109 = !{!1726, !1165, i64 144}
!4110 = !DILocation(line: 167, column: 7, scope: !4082)
!4111 = !DILocation(line: 169, column: 10, scope: !4039)
!4112 = !DILocation(line: 169, column: 3, scope: !4039)
!4113 = !DILocation(line: 170, column: 1, scope: !4039)
!4114 = !DISubprogram(name: "fseeko", scope: !437, file: !437, line: 736, type: !4115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!83, !4042, !197, !83}
!4117 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !713, file: !713, line: 100, type: !4118, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !4121)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!124, !1888, !127, !124, !4120}
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!4121 = !{!4122, !4123, !4124, !4125, !4126}
!4122 = !DILocalVariable(name: "pwc", arg: 1, scope: !4117, file: !713, line: 100, type: !1888)
!4123 = !DILocalVariable(name: "s", arg: 2, scope: !4117, file: !713, line: 100, type: !127)
!4124 = !DILocalVariable(name: "n", arg: 3, scope: !4117, file: !713, line: 100, type: !124)
!4125 = !DILocalVariable(name: "ps", arg: 4, scope: !4117, file: !713, line: 100, type: !4120)
!4126 = !DILocalVariable(name: "ret", scope: !4117, file: !713, line: 130, type: !124)
!4127 = !DILocation(line: 0, scope: !4117)
!4128 = !DILocation(line: 105, column: 9, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4117, file: !713, line: 105, column: 7)
!4130 = !DILocation(line: 105, column: 7, scope: !4117)
!4131 = !DILocation(line: 117, column: 10, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4117, file: !713, line: 117, column: 7)
!4133 = !DILocation(line: 117, column: 7, scope: !4117)
!4134 = !DILocation(line: 130, column: 16, scope: !4117)
!4135 = !DILocation(line: 135, column: 11, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4117, file: !713, line: 135, column: 7)
!4137 = !DILocation(line: 135, column: 25, scope: !4136)
!4138 = !DILocation(line: 135, column: 30, scope: !4136)
!4139 = !DILocation(line: 135, column: 7, scope: !4117)
!4140 = !DILocalVariable(name: "ps", arg: 1, scope: !4141, file: !1862, line: 1135, type: !4120)
!4141 = distinct !DISubprogram(name: "mbszero", scope: !1862, file: !1862, line: 1135, type: !4142, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !4144)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{null, !4120}
!4144 = !{!4140}
!4145 = !DILocation(line: 0, scope: !4141, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 137, column: 5, scope: !4136)
!4147 = !DILocalVariable(name: "__dest", arg: 1, scope: !4148, file: !1465, line: 57, type: !121)
!4148 = distinct !DISubprogram(name: "memset", scope: !1465, file: !1465, line: 57, type: !1871, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !4149)
!4149 = !{!4147, !4150, !4151}
!4150 = !DILocalVariable(name: "__ch", arg: 2, scope: !4148, file: !1465, line: 57, type: !83)
!4151 = !DILocalVariable(name: "__len", arg: 3, scope: !4148, file: !1465, line: 57, type: !124)
!4152 = !DILocation(line: 0, scope: !4148, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 1137, column: 3, scope: !4141, inlinedAt: !4146)
!4154 = !DILocation(line: 59, column: 10, scope: !4148, inlinedAt: !4153)
!4155 = !DILocation(line: 137, column: 5, scope: !4136)
!4156 = !DILocation(line: 138, column: 11, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4117, file: !713, line: 138, column: 7)
!4158 = !DILocation(line: 138, column: 7, scope: !4117)
!4159 = !DILocation(line: 139, column: 5, scope: !4157)
!4160 = !DILocation(line: 143, column: 26, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4117, file: !713, line: 143, column: 7)
!4162 = !DILocation(line: 143, column: 41, scope: !4161)
!4163 = !DILocation(line: 143, column: 7, scope: !4117)
!4164 = !DILocation(line: 145, column: 15, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4166, file: !713, line: 145, column: 11)
!4166 = distinct !DILexicalBlock(scope: !4161, file: !713, line: 144, column: 5)
!4167 = !DILocation(line: 145, column: 11, scope: !4166)
!4168 = !DILocation(line: 146, column: 32, scope: !4165)
!4169 = !DILocation(line: 146, column: 16, scope: !4165)
!4170 = !DILocation(line: 146, column: 14, scope: !4165)
!4171 = !DILocation(line: 146, column: 9, scope: !4165)
!4172 = !DILocation(line: 286, column: 1, scope: !4117)
!4173 = !DISubprogram(name: "mbsinit", scope: !4174, file: !4174, line: 293, type: !4175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !868)
!4174 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!83, !4177}
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!4179 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !792, file: !792, line: 27, type: !3380, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4180)
!4180 = !{!4181, !4182, !4183, !4184}
!4181 = !DILocalVariable(name: "ptr", arg: 1, scope: !4179, file: !792, line: 27, type: !121)
!4182 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4179, file: !792, line: 27, type: !124)
!4183 = !DILocalVariable(name: "size", arg: 3, scope: !4179, file: !792, line: 27, type: !124)
!4184 = !DILocalVariable(name: "nbytes", scope: !4179, file: !792, line: 29, type: !124)
!4185 = !DILocation(line: 0, scope: !4179)
!4186 = !DILocation(line: 30, column: 7, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4179, file: !792, line: 30, column: 7)
!4188 = !DILocalVariable(name: "ptr", arg: 1, scope: !4189, file: !3470, line: 2057, type: !121)
!4189 = distinct !DISubprogram(name: "rpl_realloc", scope: !3470, file: !3470, line: 2057, type: !3462, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4190)
!4190 = !{!4188, !4191}
!4191 = !DILocalVariable(name: "size", arg: 2, scope: !4189, file: !3470, line: 2057, type: !124)
!4192 = !DILocation(line: 0, scope: !4189, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 37, column: 10, scope: !4179)
!4194 = !DILocation(line: 2059, column: 24, scope: !4189, inlinedAt: !4193)
!4195 = !DILocation(line: 2059, column: 10, scope: !4189, inlinedAt: !4193)
!4196 = !DILocation(line: 37, column: 3, scope: !4179)
!4197 = !DILocation(line: 32, column: 7, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4187, file: !792, line: 31, column: 5)
!4199 = !DILocation(line: 32, column: 13, scope: !4198)
!4200 = !DILocation(line: 33, column: 7, scope: !4198)
!4201 = !DILocation(line: 38, column: 1, scope: !4179)
!4202 = distinct !DISubprogram(name: "hard_locale", scope: !731, file: !731, line: 28, type: !4203, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !4205)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!158, !83}
!4205 = !{!4206, !4207}
!4206 = !DILocalVariable(name: "category", arg: 1, scope: !4202, file: !731, line: 28, type: !83)
!4207 = !DILocalVariable(name: "locale", scope: !4202, file: !731, line: 30, type: !4208)
!4208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4209)
!4209 = !{!4210}
!4210 = !DISubrange(count: 257)
!4211 = !DILocation(line: 0, scope: !4202)
!4212 = !DILocation(line: 30, column: 3, scope: !4202)
!4213 = !DILocation(line: 30, column: 8, scope: !4202)
!4214 = !DILocation(line: 32, column: 7, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4202, file: !731, line: 32, column: 7)
!4216 = !DILocation(line: 32, column: 7, scope: !4202)
!4217 = !DILocalVariable(name: "__s1", arg: 1, scope: !4218, file: !896, line: 1359, type: !127)
!4218 = distinct !DISubprogram(name: "streq", scope: !896, file: !896, line: 1359, type: !897, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !4219)
!4219 = !{!4217, !4220}
!4220 = !DILocalVariable(name: "__s2", arg: 2, scope: !4218, file: !896, line: 1359, type: !127)
!4221 = !DILocation(line: 0, scope: !4218, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 35, column: 9, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4202, file: !731, line: 35, column: 7)
!4224 = !DILocation(line: 1361, column: 11, scope: !4218, inlinedAt: !4222)
!4225 = !DILocation(line: 1361, column: 10, scope: !4218, inlinedAt: !4222)
!4226 = !DILocation(line: 35, column: 29, scope: !4223)
!4227 = !DILocation(line: 0, scope: !4218, inlinedAt: !4228)
!4228 = distinct !DILocation(line: 35, column: 32, scope: !4223)
!4229 = !DILocation(line: 1361, column: 11, scope: !4218, inlinedAt: !4228)
!4230 = !DILocation(line: 1361, column: 10, scope: !4218, inlinedAt: !4228)
!4231 = !DILocation(line: 35, column: 7, scope: !4202)
!4232 = !DILocation(line: 46, column: 3, scope: !4202)
!4233 = !DILocation(line: 47, column: 1, scope: !4202)
!4234 = distinct !DISubprogram(name: "setlocale_null_r", scope: !797, file: !797, line: 154, type: !4235, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4237)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!83, !83, !122, !124}
!4237 = !{!4238, !4239, !4240}
!4238 = !DILocalVariable(name: "category", arg: 1, scope: !4234, file: !797, line: 154, type: !83)
!4239 = !DILocalVariable(name: "buf", arg: 2, scope: !4234, file: !797, line: 154, type: !122)
!4240 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4234, file: !797, line: 154, type: !124)
!4241 = !DILocation(line: 0, scope: !4234)
!4242 = !DILocation(line: 159, column: 10, scope: !4234)
!4243 = !DILocation(line: 159, column: 3, scope: !4234)
!4244 = distinct !DISubprogram(name: "setlocale_null", scope: !797, file: !797, line: 186, type: !4245, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4247)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!127, !83}
!4247 = !{!4248}
!4248 = !DILocalVariable(name: "category", arg: 1, scope: !4244, file: !797, line: 186, type: !83)
!4249 = !DILocation(line: 0, scope: !4244)
!4250 = !DILocation(line: 189, column: 10, scope: !4244)
!4251 = !DILocation(line: 189, column: 3, scope: !4244)
!4252 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !799, file: !799, line: 35, type: !4245, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !4253)
!4253 = !{!4254, !4255}
!4254 = !DILocalVariable(name: "category", arg: 1, scope: !4252, file: !799, line: 35, type: !83)
!4255 = !DILocalVariable(name: "result", scope: !4252, file: !799, line: 37, type: !127)
!4256 = !DILocation(line: 0, scope: !4252)
!4257 = !DILocation(line: 37, column: 24, scope: !4252)
!4258 = !DILocation(line: 62, column: 3, scope: !4252)
!4259 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !799, file: !799, line: 66, type: !4235, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !4260)
!4260 = !{!4261, !4262, !4263, !4264, !4265}
!4261 = !DILocalVariable(name: "category", arg: 1, scope: !4259, file: !799, line: 66, type: !83)
!4262 = !DILocalVariable(name: "buf", arg: 2, scope: !4259, file: !799, line: 66, type: !122)
!4263 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4259, file: !799, line: 66, type: !124)
!4264 = !DILocalVariable(name: "result", scope: !4259, file: !799, line: 111, type: !127)
!4265 = !DILocalVariable(name: "length", scope: !4266, file: !799, line: 125, type: !124)
!4266 = distinct !DILexicalBlock(scope: !4267, file: !799, line: 124, column: 5)
!4267 = distinct !DILexicalBlock(scope: !4259, file: !799, line: 113, column: 7)
!4268 = !DILocation(line: 0, scope: !4259)
!4269 = !DILocation(line: 0, scope: !4252, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 111, column: 24, scope: !4259)
!4271 = !DILocation(line: 37, column: 24, scope: !4252, inlinedAt: !4270)
!4272 = !DILocation(line: 113, column: 14, scope: !4267)
!4273 = !DILocation(line: 113, column: 7, scope: !4259)
!4274 = !DILocation(line: 116, column: 19, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4276, file: !799, line: 116, column: 11)
!4276 = distinct !DILexicalBlock(scope: !4267, file: !799, line: 114, column: 5)
!4277 = !DILocation(line: 116, column: 11, scope: !4276)
!4278 = !DILocation(line: 120, column: 16, scope: !4275)
!4279 = !DILocation(line: 120, column: 9, scope: !4275)
!4280 = !DILocation(line: 125, column: 23, scope: !4266)
!4281 = !DILocation(line: 0, scope: !4266)
!4282 = !DILocation(line: 126, column: 18, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4266, file: !799, line: 126, column: 11)
!4284 = !DILocation(line: 126, column: 11, scope: !4266)
!4285 = !DILocation(line: 128, column: 39, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4283, file: !799, line: 127, column: 9)
!4287 = !DILocalVariable(name: "__dest", arg: 1, scope: !4288, file: !1465, line: 26, type: !1468)
!4288 = distinct !DISubprogram(name: "memcpy", scope: !1465, file: !1465, line: 26, type: !1466, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !4289)
!4289 = !{!4287, !4290, !4291}
!4290 = !DILocalVariable(name: "__src", arg: 2, scope: !4288, file: !1465, line: 26, type: !1027)
!4291 = !DILocalVariable(name: "__len", arg: 3, scope: !4288, file: !1465, line: 26, type: !124)
!4292 = !DILocation(line: 0, scope: !4288, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 128, column: 11, scope: !4286)
!4294 = !DILocation(line: 29, column: 10, scope: !4288, inlinedAt: !4293)
!4295 = !DILocation(line: 129, column: 11, scope: !4286)
!4296 = !DILocation(line: 133, column: 23, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4298, file: !799, line: 133, column: 15)
!4298 = distinct !DILexicalBlock(scope: !4283, file: !799, line: 132, column: 9)
!4299 = !DILocation(line: 133, column: 15, scope: !4298)
!4300 = !DILocation(line: 138, column: 44, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4297, file: !799, line: 134, column: 13)
!4302 = !DILocation(line: 0, scope: !4288, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 138, column: 15, scope: !4301)
!4304 = !DILocation(line: 29, column: 10, scope: !4288, inlinedAt: !4303)
!4305 = !DILocation(line: 139, column: 15, scope: !4301)
!4306 = !DILocation(line: 139, column: 32, scope: !4301)
!4307 = !DILocation(line: 140, column: 13, scope: !4301)
!4308 = !DILocation(line: 0, scope: !4267)
!4309 = !DILocation(line: 145, column: 1, scope: !4259)
