; ModuleID = 'src/pwd.bc'
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
%struct.file_name = type { ptr, i64, ptr }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

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
@longopts = internal constant [5 x %struct.option] [%struct.option { ptr @.str.53, i32 0, ptr null, i32 76 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 80 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !77
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !421
@.str.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !413
@.str.1.26 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !415
@.str.2.27 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !417
@.str.3.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !419
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !423
@stderr = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !429
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !460
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !431
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !450
@.str.1.35 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !452
@.str.2.37 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !454
@.str.3.36 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !456
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !458
@.str.4.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !462
@.str.5.31 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !464
@.str.6.32 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !466
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !471
@.str.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !477
@.str.1.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !479
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !481
@.str.69 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !512
@.str.1.70 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !515
@.str.2.71 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !517
@.str.3.72 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !519
@.str.4.73 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !521
@.str.5.74 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !523
@.str.6.75 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !525
@.str.7.76 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !527
@.str.8.77 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !529
@.str.9.78 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !531
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.69, ptr @.str.1.70, ptr @.str.2.71, ptr @.str.3.72, ptr @.str.4.73, ptr @.str.5.74, ptr @.str.6.75, ptr @.str.7.76, ptr @.str.8.77, ptr @.str.9.78, ptr null], align 16, !dbg !533
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !546
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !560
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !598
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !605
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !562
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !607
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !550
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !567
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !569
@.str.12.82 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !571
@.str.13.80 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !573
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !575
@.str.91 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !613
@.str.92 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !616
@.str.1.93 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !619
@.str.2.94 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !621
@.str.3.95 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !623
@.str.4.96 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !625
@.str.5.97 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !627
@.str.6.98 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !632
@.str.7.99 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !637
@.str.8.100 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !639
@.str.9.101 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !641
@.str.10.102 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !646
@.str.11.103 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !651
@.str.12.104 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !656
@.str.13.105 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !658
@.str.14.106 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !660
@.str.15.107 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !662
@.str.16.108 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !667
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.113 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !669
@.str.18.114 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !671
@.str.19.115 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !673
@.str.20.116 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !675
@.str.21.117 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !677
@.str.22.118 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !679
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !681
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !686
@exit_failure = dso_local global i32 1, align 4, !dbg !694
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !700
@.str.1.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !703
@.str.2.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !705
@.str.148 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !707
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !710
@.str.1.153 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !725

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !804 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !808, metadata !DIExpression()), !dbg !809
  %2 = icmp eq i32 %0, 0, !dbg !810
  br i1 %2, label %8, label %3, !dbg !812

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !813, !tbaa !815
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !813
  %6 = load ptr, ptr @program_name, align 8, !dbg !813, !tbaa !815
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !813
  br label %38, !dbg !813

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !819
  %10 = load ptr, ptr @program_name, align 8, !dbg !819, !tbaa !815
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !819
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !821
  %13 = load ptr, ptr @stdout, align 8, !dbg !821, !tbaa !815
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !821
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !822
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !822
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !823
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !823
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !824
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !824
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !825
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !825
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !826
  %20 = load ptr, ptr @stdout, align 8, !dbg !826, !tbaa !815
  %21 = tail call i32 @fputs_unlocked(ptr noundef %19, ptr noundef %20), !dbg !826
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !827
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %22, ptr noundef nonnull @.str.3) #38, !dbg !827
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata !847, metadata !841, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata ptr poison, metadata !840, metadata !DIExpression()), !dbg !845
  tail call void @emit_bug_reporting_address() #38, !dbg !848
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !849
  call void @llvm.dbg.value(metadata ptr %24, metadata !843, metadata !DIExpression()), !dbg !845
  %25 = icmp eq ptr %24, null, !dbg !850
  br i1 %25, label %33, label %26, !dbg !852

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.48, i64 noundef 3) #39, !dbg !853
  %28 = icmp eq i32 %27, 0, !dbg !853
  br i1 %28, label %33, label %29, !dbg !854

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #38, !dbg !855
  %31 = load ptr, ptr @stdout, align 8, !dbg !855, !tbaa !815
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !855
  br label %33, !dbg !857

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !840, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !845
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #38, !dbg !858
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #38, !dbg !858
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #38, !dbg !859
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52) #38, !dbg !859
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !860
  unreachable, !dbg !860
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !861 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !865 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !871 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !874 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !148 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !152, metadata !DIExpression()), !dbg !878
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !153, metadata !DIExpression()), !dbg !878
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !879, !tbaa !880
  %3 = icmp eq i32 %2, -1, !dbg !882
  br i1 %3, label %4, label %16, !dbg !883

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.18) #38, !dbg !884
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !154, metadata !DIExpression()), !dbg !885
  %6 = icmp eq ptr %5, null, !dbg !886
  br i1 %6, label %14, label %7, !dbg !887

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !888, !tbaa !889
  %9 = icmp eq i8 %8, 0, !dbg !888
  br i1 %9, label %14, label %10, !dbg !890

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !891, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !897, metadata !DIExpression()), !dbg !898
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.19) #39, !dbg !900
  %12 = icmp eq i32 %11, 0, !dbg !901
  %13 = zext i1 %12 to i32, !dbg !890
  br label %14, !dbg !890

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !902, !tbaa !880
  br label %16, !dbg !903

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !904
  %18 = icmp eq i32 %17, 0, !dbg !904
  br i1 %18, label %22, label %19, !dbg !906

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !907, !tbaa !815
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !907
  br label %124, !dbg !909

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !157, metadata !DIExpression()), !dbg !878
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.20) #39, !dbg !910
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !911
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !159, metadata !DIExpression()), !dbg !878
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !912
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !160, metadata !DIExpression()), !dbg !878
  %26 = icmp eq ptr %25, null, !dbg !913
  br i1 %26, label %54, label %27, !dbg !914

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !915
  br i1 %28, label %54, label %29, !dbg !916

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !161, metadata !DIExpression()), !dbg !917
  tail call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !917
  %30 = icmp ult ptr %24, %25, !dbg !918
  br i1 %30, label %31, label %54, !dbg !919

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !878
  %33 = load ptr, ptr %32, align 8, !tbaa !815
  br label %34, !dbg !919

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !161, metadata !DIExpression()), !dbg !917
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !165, metadata !DIExpression()), !dbg !917
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !920
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !161, metadata !DIExpression()), !dbg !917
  %38 = load i8, ptr %35, align 1, !dbg !920, !tbaa !889
  %39 = sext i8 %38 to i64, !dbg !920
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !920
  %41 = load i16, ptr %40, align 2, !dbg !920, !tbaa !921
  %42 = freeze i16 %41, !dbg !923
  %43 = lshr i16 %42, 13, !dbg !923
  %44 = and i16 %43, 1, !dbg !923
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !924
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !165, metadata !DIExpression()), !dbg !917
  %47 = icmp ult ptr %37, %25, !dbg !918
  %48 = icmp ult i64 %46, 2, !dbg !925
  %49 = select i1 %47, i1 %48, i1 false, !dbg !925
  br i1 %49, label %34, label %50, !dbg !919, !llvm.loop !926

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !928
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !930
  %53 = zext i1 %51 to i8, !dbg !930
  br label %54, !dbg !930

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !878
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !878
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !157, metadata !DIExpression()), !dbg !878
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !160, metadata !DIExpression()), !dbg !878
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.21) #39, !dbg !931
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !166, metadata !DIExpression()), !dbg !878
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !932
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !167, metadata !DIExpression()), !dbg !878
  br label %59, !dbg !933

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !878
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !878
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !157, metadata !DIExpression()), !dbg !878
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !167, metadata !DIExpression()), !dbg !878
  %62 = load i8, ptr %60, align 1, !dbg !934, !tbaa !889
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !935

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !936
  %65 = load i8, ptr %64, align 1, !dbg !939, !tbaa !889
  %66 = icmp eq i8 %65, 45, !dbg !940
  %67 = select i1 %66, i8 0, i8 %61, !dbg !941
  br label %68, !dbg !941

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !878
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !157, metadata !DIExpression()), !dbg !878
  %70 = tail call ptr @__ctype_b_loc() #41, !dbg !942
  %71 = load ptr, ptr %70, align 8, !dbg !942, !tbaa !815
  %72 = sext i8 %62 to i64, !dbg !942
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !942
  %74 = load i16, ptr %73, align 2, !dbg !942, !tbaa !921
  %75 = and i16 %74, 8192, !dbg !942
  %76 = icmp eq i16 %75, 0, !dbg !942
  br i1 %76, label %92, label %77, !dbg !944

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !945
  br i1 %78, label %94, label %79, !dbg !948

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !949
  %81 = load i8, ptr %80, align 1, !dbg !949, !tbaa !889
  %82 = sext i8 %81 to i64, !dbg !949
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !949
  %84 = load i16, ptr %83, align 2, !dbg !949, !tbaa !921
  %85 = and i16 %84, 8192, !dbg !949
  %86 = icmp eq i16 %85, 0, !dbg !949
  br i1 %86, label %87, label %94, !dbg !950

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !951
  %89 = icmp ne i8 %88, 0, !dbg !951
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !953
  br i1 %91, label %92, label %94, !dbg !953

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !954
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !167, metadata !DIExpression()), !dbg !878
  br label %59, !dbg !933, !llvm.loop !955

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !957
  %96 = load ptr, ptr @stdout, align 8, !dbg !957, !tbaa !815
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !957
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !891, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata !847, metadata !897, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !891, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata !847, metadata !897, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !891, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata !847, metadata !897, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !891, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata !847, metadata !897, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !891, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata !847, metadata !897, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !891, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata !847, metadata !897, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !891, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata !847, metadata !897, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !891, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata !847, metadata !897, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !891, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata !847, metadata !897, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !891, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata !847, metadata !897, metadata !DIExpression()), !dbg !976
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !224, metadata !DIExpression()), !dbg !878
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.35, i64 noundef 6) #39, !dbg !978
  %99 = icmp eq i32 %98, 0, !dbg !978
  br i1 %99, label %103, label %100, !dbg !980

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.36, i64 noundef 9) #39, !dbg !981
  %102 = icmp eq i32 %101, 0, !dbg !981
  br i1 %102, label %103, label %106, !dbg !982

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !983
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #38, !dbg !983
  br label %109, !dbg !985

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !986
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #38, !dbg !986
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !988, !tbaa !815
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %110), !dbg !988
  %112 = load ptr, ptr @stdout, align 8, !dbg !989, !tbaa !815
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %112), !dbg !989
  %114 = ptrtoint ptr %60 to i64, !dbg !990
  %115 = sub i64 %114, %95, !dbg !990
  %116 = load ptr, ptr @stdout, align 8, !dbg !990, !tbaa !815
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !990
  %118 = load ptr, ptr @stdout, align 8, !dbg !991, !tbaa !815
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %118), !dbg !991
  %120 = load ptr, ptr @stdout, align 8, !dbg !992, !tbaa !815
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %120), !dbg !992
  %122 = load ptr, ptr @stdout, align 8, !dbg !993, !tbaa !815
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !993
  br label %124, !dbg !994

124:                                              ; preds = %109, %19
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
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1030 {
  %3 = alloca %struct.stat, align 8, !DIAssignID !1055
  %4 = alloca %struct.stat, align 8, !DIAssignID !1056
  %5 = alloca %struct.timespec, align 8, !DIAssignID !1057
  %6 = alloca %struct.stat, align 8, !DIAssignID !1058
  %7 = alloca %struct.stat, align 8, !DIAssignID !1059
  %8 = alloca %struct.stat, align 8, !DIAssignID !1060
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1035, metadata !DIExpression()), !dbg !1061
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1036, metadata !DIExpression()), !dbg !1061
  %9 = tail call ptr @getenv(ptr noundef nonnull @.str.10) #38, !dbg !1062
  %10 = icmp eq ptr %9, null, !dbg !1063
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !1037, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1061
  %11 = load ptr, ptr %1, align 8, !dbg !1064, !tbaa !815
  tail call void @set_program_name(ptr noundef %11) #38, !dbg !1065
  %12 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #38, !dbg !1066
  %13 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #38, !dbg !1067
  %14 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #38, !dbg !1068
  %15 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1069
  br label %16, !dbg !1070

16:                                               ; preds = %19, %2
  %17 = phi i1 [ %10, %2 ], [ %20, %19 ], !dbg !1071
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1037, metadata !DIExpression()), !dbg !1061
  %18 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1072
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1038, metadata !DIExpression()), !dbg !1073
  switch i32 %18, label %26 [
    i32 -1, label %28
    i32 76, label %27
    i32 80, label %19
    i32 -130, label %21
    i32 -131, label %22
  ], !dbg !1074

19:                                               ; preds = %16, %27
  %20 = phi i1 [ false, %27 ], [ true, %16 ]
  br label %16, !dbg !1061

21:                                               ; preds = %16
  tail call void @usage(i32 noundef 0) #42, !dbg !1075
  unreachable, !dbg !1075

22:                                               ; preds = %16
  %23 = load ptr, ptr @stdout, align 8, !dbg !1077, !tbaa !815
  %24 = load ptr, ptr @Version, align 8, !dbg !1077, !tbaa !815
  %25 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #38, !dbg !1077
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %24, ptr noundef %25, ptr noundef null) #38, !dbg !1077
  tail call void @exit(i32 noundef 0) #40, !dbg !1077
  unreachable, !dbg !1077

26:                                               ; preds = %16
  tail call void @usage(i32 noundef 1) #42, !dbg !1078
  unreachable, !dbg !1078

27:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1037, metadata !DIExpression()), !dbg !1061
  br label %19, !dbg !1079

28:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1037, metadata !DIExpression()), !dbg !1061
  %29 = load i32, ptr @optind, align 4, !dbg !1080, !tbaa !880
  %30 = icmp slt i32 %29, %0, !dbg !1082
  br i1 %30, label %31, label %33, !dbg !1083

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !1084
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %32) #38, !dbg !1084
  br label %33, !dbg !1084

33:                                               ; preds = %31, %28
  br i1 %17, label %73, label %34, !dbg !1085

34:                                               ; preds = %33
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1086, metadata !DIExpression(), metadata !1059, metadata ptr %7, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1093, metadata !DIExpression(), metadata !1060, metadata ptr %8, metadata !DIExpression()), !dbg !1128
  %35 = tail call ptr @getenv(ptr noundef nonnull @.str.57) #38, !dbg !1130
  call void @llvm.dbg.value(metadata ptr %35, metadata !1091, metadata !DIExpression()), !dbg !1128
  %36 = icmp eq ptr %35, null, !dbg !1131
  br i1 %36, label %73, label %37, !dbg !1133

37:                                               ; preds = %34
  %38 = load i8, ptr %35, align 1, !dbg !1134, !tbaa !889
  %39 = icmp eq i8 %38, 47, !dbg !1135
  br i1 %39, label %40, label %73, !dbg !1136

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata ptr %35, metadata !1092, metadata !DIExpression()), !dbg !1128
  %41 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) @.str.58) #39, !dbg !1137
  call void @llvm.dbg.value(metadata ptr %41, metadata !1092, metadata !DIExpression()), !dbg !1128
  %42 = icmp eq ptr %41, null, !dbg !1138
  br i1 %42, label %54, label %43, !dbg !1138

43:                                               ; preds = %40, %50
  %44 = phi ptr [ %52, %50 ], [ %41, %40 ]
  %45 = getelementptr inbounds i8, ptr %44, i64 2, !dbg !1139
  %46 = load i8, ptr %45, align 1, !dbg !1139, !tbaa !889
  switch i8 %46, label %50 [
    i8 0, label %73
    i8 47, label %73
    i8 46, label %47
  ], !dbg !1142

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %44, i64 3, !dbg !1143
  %49 = load i8, ptr %48, align 1, !dbg !1143, !tbaa !889
  switch i8 %49, label %50 [
    i8 0, label %73
    i8 47, label %73
  ], !dbg !1144

50:                                               ; preds = %47, %43
  %51 = getelementptr inbounds i8, ptr %44, i64 1, !dbg !1145
  call void @llvm.dbg.value(metadata ptr %51, metadata !1092, metadata !DIExpression()), !dbg !1128
  %52 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(1) @.str.58) #39, !dbg !1137
  call void @llvm.dbg.value(metadata ptr %52, metadata !1092, metadata !DIExpression()), !dbg !1128
  %53 = icmp eq ptr %52, null, !dbg !1138
  br i1 %53, label %54, label %43, !dbg !1138, !llvm.loop !1146

54:                                               ; preds = %50, %40
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #38, !dbg !1148
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %8) #38, !dbg !1149
  %55 = call i32 @stat(ptr noundef nonnull %35, ptr noundef nonnull %7) #38, !dbg !1150
  %56 = icmp eq i32 %55, 0, !dbg !1152
  br i1 %56, label %57, label %70, !dbg !1153

57:                                               ; preds = %54
  %58 = call i32 @stat(ptr noundef nonnull @.str.59, ptr noundef nonnull %8) #38, !dbg !1154
  %59 = icmp eq i32 %58, 0, !dbg !1155
  br i1 %59, label %60, label %70, !dbg !1156

60:                                               ; preds = %57
  call void @llvm.dbg.value(metadata ptr %7, metadata !1157, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata ptr %8, metadata !1165, metadata !DIExpression()), !dbg !1166
  %61 = load i64, ptr %7, align 8, !dbg !1168, !tbaa !1169
  %62 = load i64, ptr %8, align 8, !dbg !1168, !tbaa !1169
  %63 = icmp eq i64 %61, %62, !dbg !1168
  %64 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 1, !dbg !1168
  %65 = load i64, ptr %64, align 8, !dbg !1168, !tbaa !1173
  %66 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 1, !dbg !1168
  %67 = load i64, ptr %66, align 8, !dbg !1168, !tbaa !1173
  %68 = icmp eq i64 %65, %67, !dbg !1168
  %69 = and i1 %63, %68, !dbg !1168
  br i1 %69, label %71, label %70, !dbg !1174

70:                                               ; preds = %54, %57, %60
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %8) #38, !dbg !1175
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #38, !dbg !1175
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1040, metadata !DIExpression()), !dbg !1176
  br label %73, !dbg !1177

71:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %8) #38, !dbg !1175
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #38, !dbg !1175
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !1040, metadata !DIExpression()), !dbg !1176
  %72 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %35), !dbg !1178
  br label %232

73:                                               ; preds = %47, %47, %43, %43, %34, %37, %70, %33
  %74 = tail call noalias ptr @xgetcwd() #38, !dbg !1181
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1043, metadata !DIExpression()), !dbg !1061
  %75 = icmp eq ptr %74, null, !dbg !1182
  br i1 %75, label %78, label %76, !dbg !1183

76:                                               ; preds = %73
  %77 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %74), !dbg !1184
  tail call void @free(ptr noundef nonnull %74) #38, !dbg !1186
  br label %232, !dbg !1187

78:                                               ; preds = %73
  %79 = tail call noalias nonnull dereferenceable(24) ptr @xmalloc(i64 noundef 24) #43, !dbg !1188
  call void @llvm.dbg.value(metadata ptr %79, metadata !1193, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i32 8192, metadata !1194, metadata !DIExpression()), !dbg !1196
  %80 = getelementptr inbounds %struct.file_name, ptr %79, i64 0, i32 1, !dbg !1197
  store i64 8192, ptr %80, align 8, !dbg !1198, !tbaa !1199
  %81 = tail call noalias nonnull dereferenceable(8192) ptr @xmalloc(i64 noundef 8192) #43, !dbg !1201
  store ptr %81, ptr %79, align 8, !dbg !1202, !tbaa !1203
  %82 = getelementptr inbounds i8, ptr %81, i64 8191, !dbg !1204
  %83 = getelementptr inbounds %struct.file_name, ptr %79, i64 0, i32 2, !dbg !1205
  store ptr %82, ptr %83, align 8, !dbg !1206, !tbaa !1207
  store i8 0, ptr %82, align 1, !dbg !1208, !tbaa !889
  tail call void @llvm.dbg.value(metadata ptr %79, metadata !1044, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1210, metadata !DIExpression(), metadata !1057, metadata ptr %5, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1227, metadata !DIExpression(), metadata !1058, metadata ptr %6, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata ptr %79, metadata !1215, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i64 1, metadata !1216, metadata !DIExpression()), !dbg !1228
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #38, !dbg !1230
  %84 = call ptr @get_root_dev_ino(ptr noundef nonnull %5) #38, !dbg !1231
  call void @llvm.dbg.value(metadata ptr %84, metadata !1217, metadata !DIExpression()), !dbg !1228
  %85 = icmp eq ptr %84, null, !dbg !1232
  br i1 %85, label %86, label %91, !dbg !1234

86:                                               ; preds = %78
  %87 = tail call ptr @__errno_location() #41, !dbg !1235
  %88 = load i32, ptr %87, align 4, !dbg !1235, !tbaa !880
  %89 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #38, !dbg !1235
  %90 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull @.str.61) #38, !dbg !1235
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %88, ptr noundef %89, ptr noundef %90) #38, !dbg !1235
  unreachable, !dbg !1235

91:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #38, !dbg !1236
  %92 = call i32 @stat(ptr noundef nonnull @.str.59, ptr noundef nonnull %6) #38, !dbg !1237
  %93 = icmp slt i32 %92, 0, !dbg !1239
  br i1 %93, label %106, label %94, !dbg !1240

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.timespec, ptr %84, i64 0, i32 1
  %96 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 1
  call void @llvm.dbg.value(metadata i64 1, metadata !1216, metadata !DIExpression()), !dbg !1228
  %97 = load i64, ptr %6, align 8, !dbg !1241, !tbaa !1169
  %98 = load i64, ptr %95, align 8, !dbg !1241, !tbaa !1244
  %99 = load i64, ptr %96, align 8, !dbg !1241, !tbaa !1173
  %100 = load i64, ptr %84, align 8, !dbg !1241, !tbaa !1246
  %101 = icmp eq i64 %97, %98, !dbg !1241
  %102 = icmp eq i64 %99, %100, !dbg !1241
  %103 = and i1 %101, %102, !dbg !1241
  br i1 %103, label %222, label %104, !dbg !1247

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 1
  br label %111, !dbg !1247

106:                                              ; preds = %91
  %107 = tail call ptr @__errno_location() #41, !dbg !1248
  %108 = load i32, ptr %107, align 4, !dbg !1248, !tbaa !880
  %109 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #38, !dbg !1248
  %110 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull @.str.59) #38, !dbg !1248
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %108, ptr noundef %109, ptr noundef %110) #38, !dbg !1248
  unreachable, !dbg !1248

111:                                              ; preds = %214, %104
  %112 = phi i64 [ %99, %104 ], [ %217, %214 ]
  %113 = phi i64 [ %97, %104 ], [ %215, %214 ]
  %114 = phi i64 [ 1, %104 ], [ %115, %214 ]
  call void @llvm.dbg.value(metadata i64 %114, metadata !1216, metadata !DIExpression()), !dbg !1228
  %115 = add i64 %114, 1, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %115, metadata !1216, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1250, metadata !DIExpression(), metadata !1055, metadata ptr %3, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1285, metadata !DIExpression(), metadata !1056, metadata ptr %4, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata ptr %6, metadata !1256, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata ptr %79, metadata !1257, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %114, metadata !1258, metadata !DIExpression()), !dbg !1286
  %116 = call ptr @opendir(ptr noundef nonnull @.str.63), !dbg !1289
  call void @llvm.dbg.value(metadata ptr %116, metadata !1259, metadata !DIExpression()), !dbg !1286
  %117 = icmp eq ptr %116, null, !dbg !1290
  br i1 %117, label %118, label %124, !dbg !1292

118:                                              ; preds = %111
  %119 = tail call ptr @__errno_location() #41, !dbg !1293
  %120 = load i32, ptr %119, align 4, !dbg !1293, !tbaa !880
  %121 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1293
  %122 = call fastcc ptr @nth_parent(i64 noundef %114), !dbg !1293
  %123 = call ptr @quote(ptr noundef nonnull %122) #38, !dbg !1293
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %120, ptr noundef %121, ptr noundef %123) #38, !dbg !1293
  unreachable, !dbg !1293

124:                                              ; preds = %111
  %125 = call i32 @dirfd(ptr noundef nonnull %116) #38, !dbg !1294
  call void @llvm.dbg.value(metadata i32 %125, metadata !1264, metadata !DIExpression()), !dbg !1286
  %126 = icmp sgt i32 %125, -1, !dbg !1295
  br i1 %126, label %127, label %130, !dbg !1297

127:                                              ; preds = %124
  %128 = call i32 @fchdir(i32 noundef %125) #38, !dbg !1298
  %129 = icmp slt i32 %128, 0, !dbg !1299
  br i1 %129, label %133, label %139, !dbg !1300

130:                                              ; preds = %124
  %131 = call i32 @chdir(ptr noundef nonnull @.str.63) #38, !dbg !1301
  %132 = icmp slt i32 %131, 0, !dbg !1299
  br i1 %132, label %133, label %141, !dbg !1300

133:                                              ; preds = %130, %127
  %134 = tail call ptr @__errno_location() #41, !dbg !1302
  %135 = load i32, ptr %134, align 4, !dbg !1302, !tbaa !880
  %136 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #38, !dbg !1302
  %137 = call fastcc ptr @nth_parent(i64 noundef %114), !dbg !1302
  %138 = call ptr @quote(ptr noundef nonnull %137) #38, !dbg !1302
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %135, ptr noundef %136, ptr noundef %138) #38, !dbg !1302
  unreachable, !dbg !1302

139:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #38, !dbg !1303
  %140 = call i32 @fstat(i32 noundef %125, ptr noundef nonnull %3) #38, !dbg !1304
  br label %143, !dbg !1306

141:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #38, !dbg !1303
  %142 = call i32 @stat(ptr noundef nonnull @.str.59, ptr noundef nonnull %3) #38, !dbg !1307
  br label %143, !dbg !1306

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ], !dbg !1306
  %145 = icmp slt i32 %144, 0, !dbg !1308
  br i1 %145, label %146, label %152, !dbg !1309

146:                                              ; preds = %143
  %147 = tail call ptr @__errno_location() #41, !dbg !1310
  %148 = load i32, ptr %147, align 4, !dbg !1310, !tbaa !880
  %149 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #38, !dbg !1310
  %150 = call fastcc ptr @nth_parent(i64 noundef %114), !dbg !1310
  %151 = call ptr @quote(ptr noundef nonnull %150) #38, !dbg !1310
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %148, ptr noundef %149, ptr noundef %151) #38, !dbg !1310
  unreachable, !dbg !1310

152:                                              ; preds = %143
  %153 = load i64, ptr %3, align 8, !dbg !1311, !tbaa !1169
  %154 = icmp ne i64 %153, %113, !dbg !1312
  call void @llvm.dbg.value(metadata i1 %154, metadata !1265, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1286
  call void @llvm.dbg.value(metadata i8 0, metadata !1266, metadata !DIExpression()), !dbg !1286
  %155 = tail call ptr @__errno_location() #41, !dbg !1286
  br label %156, !dbg !1313

156:                                              ; preds = %196, %152
  call void @llvm.dbg.value(metadata ptr %116, metadata !1259, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 0, metadata !1266, metadata !DIExpression()), !dbg !1286
  store i32 0, ptr %155, align 4, !dbg !1314, !tbaa !880
  call void @llvm.dbg.value(metadata ptr %116, metadata !1315, metadata !DIExpression()), !dbg !1322
  br label %157, !dbg !1324

157:                                              ; preds = %164, %156
  %158 = call ptr @readdir(ptr noundef nonnull %116) #38, !dbg !1325
  call void @llvm.dbg.value(metadata ptr %158, metadata !1320, metadata !DIExpression()), !dbg !1326
  %159 = icmp eq ptr %158, null, !dbg !1327
  br i1 %159, label %175, label %160, !dbg !1329

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.dirent, ptr %158, i64 0, i32 4, !dbg !1330
  call void @llvm.dbg.value(metadata ptr %161, metadata !1331, metadata !DIExpression()), !dbg !1339
  %162 = load i8, ptr %161, align 1, !dbg !1341, !tbaa !889
  %163 = icmp eq i8 %162, 46, !dbg !1342
  br i1 %163, label %164, label %180, !dbg !1343

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.dirent, ptr %158, i64 0, i32 4, i64 1, !dbg !1344
  %166 = load i8, ptr %165, align 1, !dbg !1344, !tbaa !889
  %167 = icmp eq i8 %166, 46, !dbg !1345
  %168 = select i1 %167, i64 2, i64 1, !dbg !1346
  %169 = getelementptr inbounds i8, ptr %161, i64 %168, !dbg !1347
  %170 = load i8, ptr %169, align 1, !dbg !1347, !tbaa !889
  call void @llvm.dbg.value(metadata i8 %170, metadata !1336, metadata !DIExpression()), !dbg !1348
  %171 = icmp eq i8 %170, 0, !dbg !1349
  %172 = icmp eq i8 %170, 47, !dbg !1350
  %173 = or i1 %171, %172, !dbg !1350
  %174 = freeze i1 %173
  br i1 %174, label %157, label %180, !dbg !1351

175:                                              ; preds = %157
  call void @llvm.dbg.value(metadata ptr undef, metadata !1267, metadata !DIExpression()), !dbg !1288
  %176 = load i32, ptr %155, align 4, !dbg !1352, !tbaa !880
  %177 = icmp eq i32 %176, 0, !dbg !1352
  %178 = call i32 @closedir(ptr noundef nonnull %116), !dbg !1286
  br i1 %177, label %197, label %179, !dbg !1353

179:                                              ; preds = %175
  call void @llvm.dbg.value(metadata i32 %176, metadata !1279, metadata !DIExpression()), !dbg !1354
  store i32 %176, ptr %155, align 4, !dbg !1355, !tbaa !880
  call void @llvm.dbg.value(metadata ptr null, metadata !1259, metadata !DIExpression()), !dbg !1286
  br label %205, !dbg !1356

180:                                              ; preds = %164, %160
  call void @llvm.dbg.value(metadata ptr %158, metadata !1267, metadata !DIExpression()), !dbg !1288
  %181 = load i64, ptr %158, align 8, !dbg !1358, !tbaa !1359
  call void @llvm.dbg.value(metadata i64 %181, metadata !1284, metadata !DIExpression()), !dbg !1288
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #38, !dbg !1361
  %182 = icmp eq i64 %181, 0, !dbg !1362
  %183 = select i1 %182, i1 true, i1 %154, !dbg !1364
  br i1 %183, label %184, label %189, !dbg !1364

184:                                              ; preds = %180
  %185 = call i32 @lstat(ptr noundef nonnull %161, ptr noundef nonnull %4) #38, !dbg !1365
  %186 = icmp slt i32 %185, 0, !dbg !1368
  br i1 %186, label %196, label %187, !dbg !1369, !llvm.loop !1370

187:                                              ; preds = %184
  %188 = load i64, ptr %105, align 8, !dbg !1372, !tbaa !1173
  call void @llvm.dbg.value(metadata i64 %188, metadata !1284, metadata !DIExpression()), !dbg !1288
  br label %189, !dbg !1373

189:                                              ; preds = %187, %180
  %190 = phi i64 [ %188, %187 ], [ %181, %180 ], !dbg !1288
  call void @llvm.dbg.value(metadata i64 %190, metadata !1284, metadata !DIExpression()), !dbg !1288
  %191 = icmp eq i64 %190, %112, !dbg !1374
  br i1 %191, label %192, label %196, !dbg !1376, !llvm.loop !1377

192:                                              ; preds = %189
  %193 = load i64, ptr %4, align 8
  %194 = icmp ne i64 %193, %113
  %195 = select i1 %154, i1 %194, i1 false, !dbg !1378
  br i1 %195, label %196, label %199, !dbg !1378

196:                                              ; preds = %192, %189, %184
  call void @llvm.dbg.value(metadata i8 0, metadata !1266, metadata !DIExpression()), !dbg !1286
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #38, !dbg !1371
  call void @llvm.dbg.value(metadata ptr %116, metadata !1259, metadata !DIExpression()), !dbg !1286
  br label %156

197:                                              ; preds = %175
  %198 = icmp eq i32 %178, 0, !dbg !1380
  br i1 %198, label %210, label %203, !dbg !1381

199:                                              ; preds = %192
  %200 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %161) #39, !dbg !1382
  call fastcc void @file_name_prepend(ptr noundef nonnull %79, ptr noundef nonnull %161, i64 noundef %200), !dbg !1384
  call void @llvm.dbg.value(metadata i8 1, metadata !1266, metadata !DIExpression()), !dbg !1286
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #38, !dbg !1371
  call void @llvm.dbg.value(metadata ptr %116, metadata !1259, metadata !DIExpression()), !dbg !1286
  %201 = call i32 @closedir(ptr noundef nonnull %116), !dbg !1385
  %202 = icmp eq i32 %201, 0, !dbg !1380
  br i1 %202, label %214, label %203, !dbg !1381

203:                                              ; preds = %199, %197
  %204 = load i32, ptr %155, align 4, !dbg !1386, !tbaa !880
  br label %205, !dbg !1381

205:                                              ; preds = %203, %179
  %206 = phi i32 [ %204, %203 ], [ %176, %179 ], !dbg !1386
  %207 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #38, !dbg !1386
  %208 = call fastcc ptr @nth_parent(i64 noundef %114), !dbg !1386
  %209 = call ptr @quote(ptr noundef nonnull %208) #38, !dbg !1386
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %206, ptr noundef %207, ptr noundef %209) #38, !dbg !1386
  unreachable, !dbg !1386

210:                                              ; preds = %197
  %211 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #38, !dbg !1388
  %212 = call fastcc ptr @nth_parent(i64 noundef %114), !dbg !1388
  %213 = call ptr @quote(ptr noundef nonnull %212) #38, !dbg !1388
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %211, ptr noundef %213) #38, !dbg !1388
  unreachable, !dbg !1388

214:                                              ; preds = %199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(144) %3, i64 144, i1 false), !dbg !1390, !tbaa.struct !1391, !DIAssignID !1393
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1227, metadata !DIExpression(), metadata !1393, metadata ptr %6, metadata !DIExpression()), !dbg !1228
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #38, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %115, metadata !1216, metadata !DIExpression()), !dbg !1228
  %215 = load i64, ptr %6, align 8, !dbg !1241, !tbaa !1169
  %216 = load i64, ptr %95, align 8, !dbg !1241, !tbaa !1244
  %217 = load i64, ptr %96, align 8, !dbg !1241, !tbaa !1173
  %218 = load i64, ptr %84, align 8, !dbg !1241, !tbaa !1246
  %219 = icmp eq i64 %215, %216, !dbg !1241
  %220 = icmp eq i64 %217, %218, !dbg !1241
  %221 = and i1 %219, %220, !dbg !1241
  br i1 %221, label %222, label %111, !dbg !1247, !llvm.loop !1395

222:                                              ; preds = %214, %94
  %223 = load ptr, ptr %83, align 8, !dbg !1398, !tbaa !1207
  %224 = load i8, ptr %223, align 1, !dbg !1400, !tbaa !889
  %225 = icmp eq i8 %224, 0, !dbg !1401
  br i1 %225, label %226, label %228, !dbg !1402

226:                                              ; preds = %222
  call fastcc void @file_name_prepend(ptr noundef nonnull %79, ptr noundef nonnull @.str.11, i64 noundef 0), !dbg !1403
  %227 = load ptr, ptr %83, align 8, !dbg !1404, !tbaa !1207
  br label %228, !dbg !1403

228:                                              ; preds = %222, %226
  %229 = phi ptr [ %223, %222 ], [ %227, %226 ], !dbg !1404
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #38, !dbg !1405
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #38, !dbg !1405
  %230 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %229), !dbg !1406
  call void @llvm.dbg.value(metadata ptr %79, metadata !1407, metadata !DIExpression()), !dbg !1410
  %231 = load ptr, ptr %79, align 8, !dbg !1412, !tbaa !1203
  call void @free(ptr noundef %231) #38, !dbg !1413
  call void @free(ptr noundef nonnull %79) #38, !dbg !1414
  br label %232

232:                                              ; preds = %71, %76, %228
  ret i32 0, !dbg !1415
}

; Function Attrs: nounwind
declare !dbg !1416 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1419 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1420 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1423 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1429 ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1430 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1435 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1438 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1441 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1445 noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @nth_parent(i64 noundef %0) unnamed_addr #10 !dbg !1448 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !1452, metadata !DIExpression()), !dbg !1457
  %2 = tail call noalias nonnull ptr @xnmalloc(i64 noundef 3, i64 noundef %0) #44, !dbg !1458
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1453, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1454, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1455, metadata !DIExpression()), !dbg !1459
  %3 = icmp eq i64 %0, 0, !dbg !1460
  br i1 %3, label %19, label %4, !dbg !1462

4:                                                ; preds = %1
  %5 = and i64 %0, 3, !dbg !1462
  %6 = icmp ult i64 %0, 4, !dbg !1462
  br i1 %6, label %9, label %7, !dbg !1462

7:                                                ; preds = %4
  %8 = and i64 %0, -4, !dbg !1462
  br label %22, !dbg !1462

9:                                                ; preds = %22, %4
  %10 = phi ptr [ undef, %4 ], [ %28, %22 ]
  %11 = phi ptr [ %2, %4 ], [ %28, %22 ]
  %12 = icmp eq i64 %5, 0, !dbg !1462
  br i1 %12, label %19, label %13, !dbg !1462

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %9 ]
  %15 = phi i64 [ %17, %13 ], [ 0, %9 ]
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1455, metadata !DIExpression()), !dbg !1459
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1454, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata ptr %14, metadata !1463, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata ptr @.str.68, metadata !1470, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 3, metadata !1471, metadata !DIExpression()), !dbg !1472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %14, ptr noundef nonnull align 1 dereferenceable(3) @.str.68, i64 noundef 3, i1 noundef false) #38, !dbg !1475
  %16 = getelementptr inbounds i8, ptr %14, i64 3, !dbg !1476
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1454, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1455, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1459
  %17 = add i64 %15, 1, !dbg !1462
  %18 = icmp eq i64 %17, %5, !dbg !1462
  br i1 %18, label %19, label %13, !dbg !1462, !llvm.loop !1477

19:                                               ; preds = %9, %13, %1
  %20 = phi ptr [ %2, %1 ], [ %10, %9 ], [ %16, %13 ], !dbg !1457
  %21 = getelementptr inbounds i8, ptr %20, i64 -1, !dbg !1479
  store i8 0, ptr %21, align 1, !dbg !1480, !tbaa !889
  ret ptr %2, !dbg !1481

22:                                               ; preds = %22, %7
  %23 = phi ptr [ %2, %7 ], [ %28, %22 ]
  %24 = phi i64 [ 0, %7 ], [ %29, %22 ]
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1455, metadata !DIExpression()), !dbg !1459
  tail call void @llvm.dbg.value(metadata ptr %23, metadata !1454, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata ptr %23, metadata !1463, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata ptr @.str.68, metadata !1470, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 3, metadata !1471, metadata !DIExpression()), !dbg !1472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %23, ptr noundef nonnull align 1 dereferenceable(3) @.str.68, i64 noundef 3, i1 noundef false) #38, !dbg !1475
  %25 = getelementptr inbounds i8, ptr %23, i64 3, !dbg !1476
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !1454, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1455, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1459
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1455, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1459
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !1454, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata ptr %25, metadata !1463, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata ptr @.str.68, metadata !1470, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 3, metadata !1471, metadata !DIExpression()), !dbg !1472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %25, ptr noundef nonnull align 1 dereferenceable(3) @.str.68, i64 noundef 3, i1 noundef false) #38, !dbg !1475
  %26 = getelementptr inbounds i8, ptr %23, i64 6, !dbg !1476
  tail call void @llvm.dbg.value(metadata ptr %26, metadata !1454, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1455, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1459
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1455, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1459
  tail call void @llvm.dbg.value(metadata ptr %26, metadata !1454, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata ptr %26, metadata !1463, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata ptr @.str.68, metadata !1470, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 3, metadata !1471, metadata !DIExpression()), !dbg !1472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %26, ptr noundef nonnull align 1 dereferenceable(3) @.str.68, i64 noundef 3, i1 noundef false) #38, !dbg !1475
  %27 = getelementptr inbounds i8, ptr %23, i64 9, !dbg !1476
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !1454, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1455, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1459
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1455, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1459
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !1454, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata ptr %27, metadata !1463, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata ptr @.str.68, metadata !1470, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 3, metadata !1471, metadata !DIExpression()), !dbg !1472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %27, ptr noundef nonnull align 1 dereferenceable(3) @.str.68, i64 noundef 3, i1 noundef false) #38, !dbg !1475
  %28 = getelementptr inbounds i8, ptr %23, i64 12, !dbg !1476
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !1454, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1455, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1459
  %29 = add i64 %24, 4, !dbg !1462
  %30 = icmp eq i64 %29, %8, !dbg !1462
  br i1 %30, label %9, label %22, !dbg !1462, !llvm.loop !1482
}

; Function Attrs: nounwind
declare !dbg !1484 i32 @dirfd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1487 i32 @fchdir(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1491 i32 @chdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1492 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !1495 ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1499 noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1500 noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1501 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @file_name_prepend(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #10 !dbg !1504 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1508, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1509, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1510, metadata !DIExpression()), !dbg !1516
  %4 = getelementptr inbounds %struct.file_name, ptr %0, i64 0, i32 2, !dbg !1517
  %5 = load ptr, ptr %4, align 8, !dbg !1517, !tbaa !1207
  %6 = load ptr, ptr %0, align 8, !dbg !1518, !tbaa !1203
  %7 = ptrtoint ptr %5 to i64, !dbg !1519
  %8 = ptrtoint ptr %6 to i64, !dbg !1519
  %9 = sub i64 %7, %8, !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1511, metadata !DIExpression()), !dbg !1516
  %10 = add i64 %2, 1, !dbg !1520
  %11 = icmp ult i64 %9, %10, !dbg !1521
  br i1 %11, label %12, label %25, !dbg !1522

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.file_name, ptr %0, i64 0, i32 1, !dbg !1523
  %14 = load i64, ptr %13, align 8, !dbg !1523, !tbaa !1199
  %15 = sub nsw i64 %14, %9, !dbg !1524
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !1512, metadata !DIExpression()), !dbg !1525
  %16 = sub i64 %10, %9, !dbg !1526
  %17 = tail call nonnull ptr @xpalloc(ptr noundef null, ptr noundef nonnull %13, i64 noundef %16, i64 noundef -1, i64 noundef 1) #38, !dbg !1527
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !1515, metadata !DIExpression()), !dbg !1525
  %18 = load i64, ptr %13, align 8, !dbg !1528, !tbaa !1199
  %19 = getelementptr inbounds i8, ptr %17, i64 %18, !dbg !1529
  %20 = sub i64 0, %15, !dbg !1530
  %21 = getelementptr inbounds i8, ptr %19, i64 %20, !dbg !1530
  %22 = load ptr, ptr %4, align 8, !dbg !1531, !tbaa !1207
  call void @llvm.dbg.value(metadata ptr %21, metadata !1463, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata ptr %22, metadata !1470, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i64 %15, metadata !1471, metadata !DIExpression()), !dbg !1532
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %21, ptr noundef nonnull align 1 %22, i64 noundef %15, i1 noundef false) #38, !dbg !1534
  store ptr %21, ptr %4, align 8, !dbg !1535, !tbaa !1207
  %23 = load ptr, ptr %0, align 8, !dbg !1536, !tbaa !1203
  tail call void @free(ptr noundef %23) #38, !dbg !1537
  store ptr %17, ptr %0, align 8, !dbg !1538, !tbaa !1203
  %24 = load ptr, ptr %4, align 8, !dbg !1539, !tbaa !1207
  br label %25, !dbg !1540

25:                                               ; preds = %12, %3
  %26 = phi ptr [ %24, %12 ], [ %5, %3 ], !dbg !1539
  %27 = xor i64 %2, -1, !dbg !1539
  %28 = getelementptr inbounds i8, ptr %26, i64 %27, !dbg !1539
  store ptr %28, ptr %4, align 8, !dbg !1539, !tbaa !1207
  store i8 47, ptr %28, align 1, !dbg !1541, !tbaa !889
  %29 = load ptr, ptr %4, align 8, !dbg !1542, !tbaa !1207
  %30 = getelementptr inbounds i8, ptr %29, i64 1, !dbg !1543
  call void @llvm.dbg.value(metadata ptr %30, metadata !1463, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata ptr %1, metadata !1470, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %2, metadata !1471, metadata !DIExpression()), !dbg !1544
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %30, ptr noundef nonnull align 1 %1, i64 noundef %2, i1 noundef false) #38, !dbg !1546
  ret void, !dbg !1547
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1548 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1550, metadata !DIExpression()), !dbg !1551
  store ptr %0, ptr @file_name, align 8, !dbg !1552, !tbaa !815
  ret void, !dbg !1553
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #14 !dbg !1554 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1558, metadata !DIExpression()), !dbg !1559
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1560, !tbaa !1561
  ret void, !dbg !1563
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1564 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1569, !tbaa !815
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1570
  %3 = icmp eq i32 %2, 0, !dbg !1571
  br i1 %3, label %22, label %4, !dbg !1572

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1573, !tbaa !1561, !range !1574, !noundef !847
  %6 = icmp eq i8 %5, 0, !dbg !1573
  br i1 %6, label %11, label %7, !dbg !1575

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1576
  %9 = load i32, ptr %8, align 4, !dbg !1576, !tbaa !880
  %10 = icmp eq i32 %9, 32, !dbg !1577
  br i1 %10, label %22, label %11, !dbg !1578

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1.26, i32 noundef 5) #38, !dbg !1579
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1566, metadata !DIExpression()), !dbg !1580
  %13 = load ptr, ptr @file_name, align 8, !dbg !1581, !tbaa !815
  %14 = icmp eq ptr %13, null, !dbg !1581
  %15 = tail call ptr @__errno_location() #41, !dbg !1583
  %16 = load i32, ptr %15, align 4, !dbg !1583, !tbaa !880
  br i1 %14, label %19, label %17, !dbg !1584

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1585
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.27, ptr noundef %18, ptr noundef %12) #38, !dbg !1585
  br label %20, !dbg !1585

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.28, ptr noundef %12) #38, !dbg !1586
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1587, !tbaa !880
  tail call void @_exit(i32 noundef %21) #40, !dbg !1588
  unreachable, !dbg !1588

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1589, !tbaa !815
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1591
  %25 = icmp eq i32 %24, 0, !dbg !1592
  br i1 %25, label %28, label %26, !dbg !1593

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1594, !tbaa !880
  tail call void @_exit(i32 noundef %27) #40, !dbg !1595
  unreachable, !dbg !1595

28:                                               ; preds = %22
  ret void, !dbg !1596
}

; Function Attrs: noreturn
declare !dbg !1597 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #16 !dbg !1598 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1602, metadata !DIExpression()), !dbg !1606
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1603, metadata !DIExpression()), !dbg !1606
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1604, metadata !DIExpression()), !dbg !1606
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1605, metadata !DIExpression()), !dbg !1606
  tail call fastcc void @flush_stdout(), !dbg !1607
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1608, !tbaa !815
  %6 = icmp eq ptr %5, null, !dbg !1608
  br i1 %6, label %8, label %7, !dbg !1610

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !1611
  br label %12, !dbg !1611

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1612, !tbaa !815
  %10 = tail call ptr @getprogname() #39, !dbg !1612
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %10) #38, !dbg !1612
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1614
  ret void, !dbg !1615
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1616 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1618, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i32 1, metadata !1620, metadata !DIExpression()), !dbg !1623
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1626
  %2 = icmp slt i32 %1, 0, !dbg !1627
  br i1 %2, label %6, label %3, !dbg !1628

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1629, !tbaa !815
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1629
  br label %6, !dbg !1629

6:                                                ; preds = %3, %0
  ret void, !dbg !1630
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1631 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1637
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1633, metadata !DIExpression()), !dbg !1638
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1634, metadata !DIExpression()), !dbg !1638
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1635, metadata !DIExpression()), !dbg !1638
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1636, metadata !DIExpression()), !dbg !1638
  %6 = load ptr, ptr @stderr, align 8, !dbg !1639, !tbaa !815
  call void @llvm.dbg.value(metadata ptr %6, metadata !1640, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr %2, metadata !1680, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr %3, metadata !1681, metadata !DIExpression()), !dbg !1682
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !1684
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1685, !tbaa !880
  %9 = add i32 %8, 1, !dbg !1685
  store i32 %9, ptr @error_message_count, align 4, !dbg !1685, !tbaa !880
  %10 = icmp eq i32 %1, 0, !dbg !1686
  br i1 %10, label %20, label %11, !dbg !1688

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1689, metadata !DIExpression(), metadata !1637, metadata ptr %5, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 %1, metadata !1692, metadata !DIExpression()), !dbg !1697
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1699
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1700
  call void @llvm.dbg.value(metadata ptr %12, metadata !1693, metadata !DIExpression()), !dbg !1697
  %13 = icmp eq ptr %12, null, !dbg !1701
  br i1 %13, label %14, label %16, !dbg !1703

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.30, ptr noundef nonnull @.str.5.31, i32 noundef 5) #38, !dbg !1704
  call void @llvm.dbg.value(metadata ptr %15, metadata !1693, metadata !DIExpression()), !dbg !1697
  br label %16, !dbg !1705

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1697
  call void @llvm.dbg.value(metadata ptr %17, metadata !1693, metadata !DIExpression()), !dbg !1697
  %18 = load ptr, ptr @stderr, align 8, !dbg !1706, !tbaa !815
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.32, ptr noundef %17) #38, !dbg !1706
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1707
  br label %20, !dbg !1708

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1709, !tbaa !815
  call void @llvm.dbg.value(metadata i32 10, metadata !1710, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata ptr %21, metadata !1716, metadata !DIExpression()), !dbg !1717
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1719
  %23 = load ptr, ptr %22, align 8, !dbg !1719, !tbaa !1720
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1719
  %25 = load ptr, ptr %24, align 8, !dbg !1719, !tbaa !1722
  %26 = icmp ult ptr %23, %25, !dbg !1719
  br i1 %26, label %29, label %27, !dbg !1719, !prof !1723

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !1719
  br label %31, !dbg !1719

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1719
  store ptr %30, ptr %22, align 8, !dbg !1719, !tbaa !1720
  store i8 10, ptr %23, align 1, !dbg !1719, !tbaa !889
  br label %31, !dbg !1719

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1724, !tbaa !815
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !1724
  %34 = icmp eq i32 %0, 0, !dbg !1725
  br i1 %34, label %36, label %35, !dbg !1727

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #40, !dbg !1728
  unreachable, !dbg !1728

36:                                               ; preds = %31
  ret void, !dbg !1729
}

declare !dbg !1730 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1733 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1736 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1739 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1742 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1746 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1759
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1753, metadata !DIExpression(), metadata !1759, metadata ptr %4, metadata !DIExpression()), !dbg !1760
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1750, metadata !DIExpression()), !dbg !1760
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1751, metadata !DIExpression()), !dbg !1760
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1752, metadata !DIExpression()), !dbg !1760
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !1761
  call void @llvm.va_start(ptr nonnull %4), !dbg !1762
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !1763
  call void @llvm.va_end(ptr nonnull %4), !dbg !1764
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !1765
  ret void, !dbg !1765
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #16 !dbg !433 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !444, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !445, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !446, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !447, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !448, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !449, metadata !DIExpression()), !dbg !1766
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1767, !tbaa !880
  %8 = icmp eq i32 %7, 0, !dbg !1767
  br i1 %8, label %23, label %9, !dbg !1769

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1770, !tbaa !880
  %11 = icmp eq i32 %10, %3, !dbg !1773
  br i1 %11, label %12, label %22, !dbg !1774

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1775, !tbaa !815
  %14 = icmp eq ptr %13, %2, !dbg !1776
  br i1 %14, label %36, label %15, !dbg !1777

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1778
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1779
  br i1 %18, label %19, label %22, !dbg !1779

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1780
  %21 = icmp eq i32 %20, 0, !dbg !1781
  br i1 %21, label %36, label %22, !dbg !1782

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1783, !tbaa !815
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1784, !tbaa !880
  br label %23, !dbg !1785

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1786
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1787, !tbaa !815
  %25 = icmp eq ptr %24, null, !dbg !1787
  br i1 %25, label %27, label %26, !dbg !1789

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !1790
  br label %31, !dbg !1790

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1791, !tbaa !815
  %29 = tail call ptr @getprogname() #39, !dbg !1791
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.35, ptr noundef %29) #38, !dbg !1791
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1793, !tbaa !815
  %33 = icmp eq ptr %2, null, !dbg !1793
  %34 = select i1 %33, ptr @.str.3.36, ptr @.str.2.37, !dbg !1793
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !1793
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1794
  br label %36, !dbg !1795

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1795
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1796 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1806
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1805, metadata !DIExpression(), metadata !1806, metadata ptr %6, metadata !DIExpression()), !dbg !1807
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1800, metadata !DIExpression()), !dbg !1807
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1801, metadata !DIExpression()), !dbg !1807
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1802, metadata !DIExpression()), !dbg !1807
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1803, metadata !DIExpression()), !dbg !1807
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1804, metadata !DIExpression()), !dbg !1807
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !1808
  call void @llvm.va_start(ptr nonnull %6), !dbg !1809
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !1810
  call void @llvm.va_end(ptr nonnull %6), !dbg !1811
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !1812
  ret void, !dbg !1812
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1813 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1814, !tbaa !815
  ret ptr %1, !dbg !1815
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1816 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1818, metadata !DIExpression()), !dbg !1821
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1822
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1819, metadata !DIExpression()), !dbg !1821
  %3 = icmp eq ptr %2, null, !dbg !1823
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1823
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1820, metadata !DIExpression()), !dbg !1821
  %6 = ptrtoint ptr %5 to i64, !dbg !1824
  %7 = ptrtoint ptr %0 to i64, !dbg !1824
  %8 = sub i64 %6, %7, !dbg !1824
  %9 = icmp sgt i64 %8, 6, !dbg !1826
  br i1 %9, label %10, label %19, !dbg !1827

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1828
  call void @llvm.dbg.value(metadata ptr %11, metadata !1829, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata ptr @.str.46, metadata !1834, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i64 7, metadata !1835, metadata !DIExpression()), !dbg !1836
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.46, i64 7), !dbg !1838
  %13 = icmp eq i32 %12, 0, !dbg !1839
  br i1 %13, label %14, label %19, !dbg !1840

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1818, metadata !DIExpression()), !dbg !1821
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.47, i64 noundef 3) #39, !dbg !1841
  %16 = icmp eq i32 %15, 0, !dbg !1844
  %17 = select i1 %16, i64 3, i64 0, !dbg !1845
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1845
  br label %19, !dbg !1845

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1821
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1820, metadata !DIExpression()), !dbg !1821
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1818, metadata !DIExpression()), !dbg !1821
  store ptr %20, ptr @program_name, align 8, !dbg !1846, !tbaa !815
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1847, !tbaa !815
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1848, !tbaa !815
  ret void, !dbg !1849
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1850 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !483 {
  %3 = alloca i32, align 4, !DIAssignID !1851
  call void @llvm.dbg.assign(metadata i1 undef, metadata !493, metadata !DIExpression(), metadata !1851, metadata ptr %3, metadata !DIExpression()), !dbg !1852
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1853
  call void @llvm.dbg.assign(metadata i1 undef, metadata !498, metadata !DIExpression(), metadata !1853, metadata ptr %4, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !490, metadata !DIExpression()), !dbg !1852
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !491, metadata !DIExpression()), !dbg !1852
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1854
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !492, metadata !DIExpression()), !dbg !1852
  %6 = icmp eq ptr %5, %0, !dbg !1855
  br i1 %6, label %7, label %14, !dbg !1857

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1858
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1859
  call void @llvm.dbg.value(metadata ptr %4, metadata !1860, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata ptr %4, metadata !1869, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i32 0, metadata !1874, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 8, metadata !1875, metadata !DIExpression()), !dbg !1876
  store i64 0, ptr %4, align 8, !dbg !1878
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1879
  %9 = icmp eq i64 %8, 2, !dbg !1881
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1882
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1852
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1883
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1883
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1852
  ret ptr %15, !dbg !1883
}

; Function Attrs: nounwind
declare !dbg !1884 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1890 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1895, metadata !DIExpression()), !dbg !1898
  %2 = tail call ptr @__errno_location() #41, !dbg !1899
  %3 = load i32, ptr %2, align 4, !dbg !1899, !tbaa !880
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1896, metadata !DIExpression()), !dbg !1898
  %4 = icmp eq ptr %0, null, !dbg !1900
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1900
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #46, !dbg !1901
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1897, metadata !DIExpression()), !dbg !1898
  store i32 %3, ptr %2, align 4, !dbg !1902, !tbaa !880
  ret ptr %6, !dbg !1903
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1904 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1910, metadata !DIExpression()), !dbg !1911
  %2 = icmp eq ptr %0, null, !dbg !1912
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1912
  %4 = load i32, ptr %3, align 8, !dbg !1913, !tbaa !1914
  ret i32 %4, !dbg !1916
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1917 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1921, metadata !DIExpression()), !dbg !1923
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1922, metadata !DIExpression()), !dbg !1923
  %3 = icmp eq ptr %0, null, !dbg !1924
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1924
  store i32 %1, ptr %4, align 8, !dbg !1925, !tbaa !1914
  ret void, !dbg !1926
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1927 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1931, metadata !DIExpression()), !dbg !1939
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1932, metadata !DIExpression()), !dbg !1939
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1933, metadata !DIExpression()), !dbg !1939
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1934, metadata !DIExpression()), !dbg !1939
  %4 = icmp eq ptr %0, null, !dbg !1940
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1940
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1941
  %7 = lshr i8 %1, 5, !dbg !1942
  %8 = zext nneg i8 %7 to i64, !dbg !1942
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1943
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1935, metadata !DIExpression()), !dbg !1939
  %10 = and i8 %1, 31, !dbg !1944
  %11 = zext nneg i8 %10 to i32, !dbg !1944
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1937, metadata !DIExpression()), !dbg !1939
  %12 = load i32, ptr %9, align 4, !dbg !1945, !tbaa !880
  %13 = lshr i32 %12, %11, !dbg !1946
  %14 = and i32 %13, 1, !dbg !1947
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1938, metadata !DIExpression()), !dbg !1939
  %15 = xor i32 %13, %2, !dbg !1948
  %16 = and i32 %15, 1, !dbg !1948
  %17 = shl nuw i32 %16, %11, !dbg !1949
  %18 = xor i32 %17, %12, !dbg !1950
  store i32 %18, ptr %9, align 4, !dbg !1950, !tbaa !880
  ret i32 %14, !dbg !1951
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1952 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1956, metadata !DIExpression()), !dbg !1959
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1957, metadata !DIExpression()), !dbg !1959
  %3 = icmp eq ptr %0, null, !dbg !1960
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1962
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1956, metadata !DIExpression()), !dbg !1959
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1963
  %6 = load i32, ptr %5, align 4, !dbg !1963, !tbaa !1964
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1958, metadata !DIExpression()), !dbg !1959
  store i32 %1, ptr %5, align 4, !dbg !1965, !tbaa !1964
  ret i32 %6, !dbg !1966
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1967 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1971, metadata !DIExpression()), !dbg !1974
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1972, metadata !DIExpression()), !dbg !1974
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1973, metadata !DIExpression()), !dbg !1974
  %4 = icmp eq ptr %0, null, !dbg !1975
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1977
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1971, metadata !DIExpression()), !dbg !1974
  store i32 10, ptr %5, align 8, !dbg !1978, !tbaa !1914
  %6 = icmp ne ptr %1, null, !dbg !1979
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1981
  br i1 %8, label %10, label %9, !dbg !1981

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1982
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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1995, metadata !DIExpression()), !dbg !2003
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1996, metadata !DIExpression()), !dbg !2003
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1997, metadata !DIExpression()), !dbg !2003
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1998, metadata !DIExpression()), !dbg !2003
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1999, metadata !DIExpression()), !dbg !2003
  %6 = icmp eq ptr %4, null, !dbg !2004
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2004
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2000, metadata !DIExpression()), !dbg !2003
  %8 = tail call ptr @__errno_location() #41, !dbg !2005
  %9 = load i32, ptr %8, align 4, !dbg !2005, !tbaa !880
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2001, metadata !DIExpression()), !dbg !2003
  %10 = load i32, ptr %7, align 8, !dbg !2006, !tbaa !1914
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2007
  %12 = load i32, ptr %11, align 4, !dbg !2007, !tbaa !1964
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2008
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2009
  %15 = load ptr, ptr %14, align 8, !dbg !2009, !tbaa !1985
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2010
  %17 = load ptr, ptr %16, align 8, !dbg !2010, !tbaa !1988
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2011
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2002, metadata !DIExpression()), !dbg !2003
  store i32 %9, ptr %8, align 4, !dbg !2012, !tbaa !880
  ret i64 %18, !dbg !2013
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2014 {
  %10 = alloca i32, align 4, !DIAssignID !2082
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2083
  %12 = alloca i32, align 4, !DIAssignID !2084
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2085
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2086
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2060, metadata !DIExpression(), metadata !2086, metadata ptr %14, metadata !DIExpression()), !dbg !2087
  %15 = alloca i32, align 4, !DIAssignID !2088
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2063, metadata !DIExpression(), metadata !2088, metadata ptr %15, metadata !DIExpression()), !dbg !2089
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2020, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2021, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2022, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2023, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2024, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2025, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2026, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2027, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2028, metadata !DIExpression()), !dbg !2090
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !2091
  %17 = icmp eq i64 %16, 1, !dbg !2092
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2031, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2032, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2033, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2034, metadata !DIExpression()), !dbg !2090
  %18 = trunc i32 %5 to i8, !dbg !2093
  %19 = lshr i8 %18, 1, !dbg !2093
  %20 = and i8 %19, 1, !dbg !2093
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2035, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2036, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2037, metadata !DIExpression()), !dbg !2090
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2094

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2095
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2096
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2097
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2098
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2090
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2099
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2100
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2021, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2037, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2036, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2035, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2034, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2033, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2032, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2031, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2023, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2028, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2027, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2024, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.label(metadata !2038), !dbg !2101
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2039, metadata !DIExpression()), !dbg !2090
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
  ], !dbg !2102

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2035, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2024, metadata !DIExpression()), !dbg !2090
  br label %114, !dbg !2103

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2035, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2024, metadata !DIExpression()), !dbg !2090
  %43 = and i8 %37, 1, !dbg !2104
  %44 = icmp eq i8 %43, 0, !dbg !2104
  br i1 %44, label %45, label %114, !dbg !2103

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2106
  br i1 %46, label %114, label %47, !dbg !2109

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2106, !tbaa !889
  br label %114, !dbg !2106

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !584, metadata !DIExpression(), metadata !2084, metadata ptr %12, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.assign(metadata i1 undef, metadata !585, metadata !DIExpression(), metadata !2085, metadata ptr %13, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata ptr @.str.11.79, metadata !581, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i32 %29, metadata !582, metadata !DIExpression()), !dbg !2110
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.80, ptr noundef nonnull @.str.11.79, i32 noundef 5) #38, !dbg !2114
  call void @llvm.dbg.value(metadata ptr %49, metadata !583, metadata !DIExpression()), !dbg !2110
  %50 = icmp eq ptr %49, @.str.11.79, !dbg !2115
  br i1 %50, label %51, label %60, !dbg !2117

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !2118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !2119
  call void @llvm.dbg.value(metadata ptr %13, metadata !2120, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata ptr %13, metadata !2128, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i32 0, metadata !2131, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 8, metadata !2132, metadata !DIExpression()), !dbg !2133
  store i64 0, ptr %13, align 8, !dbg !2135
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !2136
  %53 = icmp eq i64 %52, 3, !dbg !2138
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2139
  %57 = icmp eq i32 %29, 9, !dbg !2139
  %58 = select i1 %57, ptr @.str.10.81, ptr @.str.12.82, !dbg !2139
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2139
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !2140
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !2140
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2110
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2027, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.assign(metadata i1 undef, metadata !584, metadata !DIExpression(), metadata !2082, metadata ptr %10, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.assign(metadata i1 undef, metadata !585, metadata !DIExpression(), metadata !2083, metadata ptr %11, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr @.str.12.82, metadata !581, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i32 %29, metadata !582, metadata !DIExpression()), !dbg !2141
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.80, ptr noundef nonnull @.str.12.82, i32 noundef 5) #38, !dbg !2143
  call void @llvm.dbg.value(metadata ptr %62, metadata !583, metadata !DIExpression()), !dbg !2141
  %63 = icmp eq ptr %62, @.str.12.82, !dbg !2144
  br i1 %63, label %64, label %73, !dbg !2145

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !2146
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !2147
  call void @llvm.dbg.value(metadata ptr %11, metadata !2120, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata ptr %11, metadata !2128, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i32 0, metadata !2131, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i64 8, metadata !2132, metadata !DIExpression()), !dbg !2150
  store i64 0, ptr %11, align 8, !dbg !2152
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !2153
  %66 = icmp eq i64 %65, 3, !dbg !2154
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2155
  %70 = icmp eq i32 %29, 9, !dbg !2155
  %71 = select i1 %70, ptr @.str.10.81, ptr @.str.12.82, !dbg !2155
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2155
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !2156
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !2156
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2028, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2027, metadata !DIExpression()), !dbg !2090
  %76 = and i8 %37, 1, !dbg !2157
  %77 = icmp eq i8 %76, 0, !dbg !2157
  br i1 %77, label %78, label %93, !dbg !2158

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2040, metadata !DIExpression()), !dbg !2159
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2030, metadata !DIExpression()), !dbg !2090
  %79 = load i8, ptr %74, align 1, !dbg !2160, !tbaa !889
  %80 = icmp eq i8 %79, 0, !dbg !2162
  br i1 %80, label %93, label %81, !dbg !2162

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2040, metadata !DIExpression()), !dbg !2159
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2030, metadata !DIExpression()), !dbg !2090
  %85 = icmp ult i64 %84, %40, !dbg !2163
  br i1 %85, label %86, label %88, !dbg !2166

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2163
  store i8 %82, ptr %87, align 1, !dbg !2163, !tbaa !889
  br label %88, !dbg !2163

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2166
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2030, metadata !DIExpression()), !dbg !2090
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2167
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2040, metadata !DIExpression()), !dbg !2159
  %91 = load i8, ptr %90, align 1, !dbg !2160, !tbaa !889
  %92 = icmp eq i8 %91, 0, !dbg !2162
  br i1 %92, label %93, label %81, !dbg !2162, !llvm.loop !2168

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2170
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2034, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2032, metadata !DIExpression()), !dbg !2090
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !2171
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2033, metadata !DIExpression()), !dbg !2090
  br label %114, !dbg !2172

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2034, metadata !DIExpression()), !dbg !2090
  br label %98, !dbg !2173

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2034, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2035, metadata !DIExpression()), !dbg !2090
  br label %98, !dbg !2174

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2098
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2035, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2034, metadata !DIExpression()), !dbg !2090
  %101 = and i8 %100, 1, !dbg !2175
  %102 = icmp eq i8 %101, 0, !dbg !2175
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2177
  br label %104, !dbg !2177

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2090
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2093
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2035, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2034, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2024, metadata !DIExpression()), !dbg !2090
  %107 = and i8 %106, 1, !dbg !2178
  %108 = icmp eq i8 %107, 0, !dbg !2178
  br i1 %108, label %109, label %114, !dbg !2180

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2181
  br i1 %110, label %114, label %111, !dbg !2184

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2181, !tbaa !889
  br label %114, !dbg !2181

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2035, metadata !DIExpression()), !dbg !2090
  br label %114, !dbg !2185

113:                                              ; preds = %28
  call void @abort() #40, !dbg !2186
  unreachable, !dbg !2186

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2170
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.81, %45 ], [ @.str.10.81, %47 ], [ @.str.10.81, %42 ], [ %34, %28 ], [ @.str.12.82, %109 ], [ @.str.12.82, %111 ], [ @.str.12.82, %104 ], [ @.str.10.81, %41 ], !dbg !2090
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2090
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2090
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2035, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2034, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2033, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2032, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2028, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2027, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2024, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2045, metadata !DIExpression()), !dbg !2187
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
  br label %138, !dbg !2188

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2170
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2095
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2099
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2100
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2189
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2190
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2021, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2045, metadata !DIExpression()), !dbg !2187
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2039, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2037, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2036, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2031, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2023, metadata !DIExpression()), !dbg !2090
  %147 = icmp eq i64 %139, -1, !dbg !2191
  br i1 %147, label %148, label %152, !dbg !2192

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2193
  %150 = load i8, ptr %149, align 1, !dbg !2193, !tbaa !889
  %151 = icmp eq i8 %150, 0, !dbg !2194
  br i1 %151, label %612, label %154, !dbg !2195

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2196
  br i1 %153, label %612, label %154, !dbg !2195

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2047, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2050, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2051, metadata !DIExpression()), !dbg !2197
  br i1 %128, label %155, label %170, !dbg !2198

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2200
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2201
  br i1 %157, label %158, label %160, !dbg !2201

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2202
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2023, metadata !DIExpression()), !dbg !2090
  br label %160, !dbg !2203

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2203
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2023, metadata !DIExpression()), !dbg !2090
  %162 = icmp ugt i64 %156, %161, !dbg !2204
  br i1 %162, label %170, label %163, !dbg !2205

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2206
  call void @llvm.dbg.value(metadata ptr %164, metadata !2207, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata ptr %119, metadata !2210, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i64 %120, metadata !2211, metadata !DIExpression()), !dbg !2212
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2214
  %166 = icmp ne i32 %165, 0, !dbg !2215
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2216
  %168 = xor i1 %166, true, !dbg !2216
  %169 = zext i1 %168 to i8, !dbg !2216
  br i1 %167, label %170, label %666, !dbg !2216

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2197
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2047, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2023, metadata !DIExpression()), !dbg !2090
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2217
  %175 = load i8, ptr %174, align 1, !dbg !2217, !tbaa !889
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2052, metadata !DIExpression()), !dbg !2197
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
  ], !dbg !2218

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2219

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2220

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2050, metadata !DIExpression()), !dbg !2197
  %179 = and i8 %144, 1, !dbg !2224
  %180 = icmp eq i8 %179, 0, !dbg !2224
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2224
  br i1 %181, label %182, label %198, !dbg !2224

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2226
  br i1 %183, label %184, label %186, !dbg !2230

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2226
  store i8 39, ptr %185, align 1, !dbg !2226, !tbaa !889
  br label %186, !dbg !2226

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2230
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2030, metadata !DIExpression()), !dbg !2090
  %188 = icmp ult i64 %187, %146, !dbg !2231
  br i1 %188, label %189, label %191, !dbg !2234

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2231
  store i8 36, ptr %190, align 1, !dbg !2231, !tbaa !889
  br label %191, !dbg !2231

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2234
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2030, metadata !DIExpression()), !dbg !2090
  %193 = icmp ult i64 %192, %146, !dbg !2235
  br i1 %193, label %194, label %196, !dbg !2238

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2235
  store i8 39, ptr %195, align 1, !dbg !2235, !tbaa !889
  br label %196, !dbg !2235

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2238
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2039, metadata !DIExpression()), !dbg !2090
  br label %198, !dbg !2239

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2090
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2039, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2030, metadata !DIExpression()), !dbg !2090
  %201 = icmp ult i64 %199, %146, !dbg !2240
  br i1 %201, label %202, label %204, !dbg !2243

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2240
  store i8 92, ptr %203, align 1, !dbg !2240, !tbaa !889
  br label %204, !dbg !2240

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2243
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2030, metadata !DIExpression()), !dbg !2090
  br i1 %125, label %206, label %476, !dbg !2244

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2246
  %208 = icmp ult i64 %207, %171, !dbg !2247
  br i1 %208, label %209, label %465, !dbg !2248

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2249
  %211 = load i8, ptr %210, align 1, !dbg !2249, !tbaa !889
  %212 = add i8 %211, -48, !dbg !2250
  %213 = icmp ult i8 %212, 10, !dbg !2250
  br i1 %213, label %214, label %465, !dbg !2250

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2251
  br i1 %215, label %216, label %218, !dbg !2255

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2251
  store i8 48, ptr %217, align 1, !dbg !2251, !tbaa !889
  br label %218, !dbg !2251

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2255
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2030, metadata !DIExpression()), !dbg !2090
  %220 = icmp ult i64 %219, %146, !dbg !2256
  br i1 %220, label %221, label %223, !dbg !2259

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2256
  store i8 48, ptr %222, align 1, !dbg !2256, !tbaa !889
  br label %223, !dbg !2256

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2259
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2030, metadata !DIExpression()), !dbg !2090
  br label %465, !dbg !2260

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2261

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2262

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2263

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2265

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2267
  %231 = icmp ult i64 %230, %171, !dbg !2268
  br i1 %231, label %232, label %465, !dbg !2269

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2270
  %234 = load i8, ptr %233, align 1, !dbg !2270, !tbaa !889
  %235 = icmp eq i8 %234, 63, !dbg !2271
  br i1 %235, label %236, label %465, !dbg !2272

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2273
  %238 = load i8, ptr %237, align 1, !dbg !2273, !tbaa !889
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
  ], !dbg !2274

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2275

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2052, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2045, metadata !DIExpression()), !dbg !2187
  %241 = icmp ult i64 %140, %146, !dbg !2277
  br i1 %241, label %242, label %244, !dbg !2280

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2277
  store i8 63, ptr %243, align 1, !dbg !2277, !tbaa !889
  br label %244, !dbg !2277

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2280
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2030, metadata !DIExpression()), !dbg !2090
  %246 = icmp ult i64 %245, %146, !dbg !2281
  br i1 %246, label %247, label %249, !dbg !2284

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2281
  store i8 34, ptr %248, align 1, !dbg !2281, !tbaa !889
  br label %249, !dbg !2281

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2284
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2030, metadata !DIExpression()), !dbg !2090
  %251 = icmp ult i64 %250, %146, !dbg !2285
  br i1 %251, label %252, label %254, !dbg !2288

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2285
  store i8 34, ptr %253, align 1, !dbg !2285, !tbaa !889
  br label %254, !dbg !2285

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2288
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2030, metadata !DIExpression()), !dbg !2090
  %256 = icmp ult i64 %255, %146, !dbg !2289
  br i1 %256, label %257, label %259, !dbg !2292

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2289
  store i8 63, ptr %258, align 1, !dbg !2289, !tbaa !889
  br label %259, !dbg !2289

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2292
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2030, metadata !DIExpression()), !dbg !2090
  br label %465, !dbg !2293

261:                                              ; preds = %170
  br label %272, !dbg !2294

262:                                              ; preds = %170
  br label %272, !dbg !2295

263:                                              ; preds = %170
  br label %270, !dbg !2296

264:                                              ; preds = %170
  br label %270, !dbg !2297

265:                                              ; preds = %170
  br label %272, !dbg !2298

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2299

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2300

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2303

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2305

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2306
  call void @llvm.dbg.label(metadata !2053), !dbg !2307
  br i1 %133, label %272, label %655, !dbg !2308

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2306
  call void @llvm.dbg.label(metadata !2056), !dbg !2310
  br i1 %124, label %520, label %476, !dbg !2311

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2312

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2313, !tbaa !889
  %277 = icmp eq i8 %276, 0, !dbg !2315
  br i1 %277, label %278, label %465, !dbg !2316

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2317
  br i1 %279, label %280, label %465, !dbg !2319

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2051, metadata !DIExpression()), !dbg !2197
  br label %281, !dbg !2320

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2051, metadata !DIExpression()), !dbg !2197
  br i1 %133, label %465, label %655, !dbg !2321

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2036, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2051, metadata !DIExpression()), !dbg !2197
  br i1 %132, label %284, label %465, !dbg !2323

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2324

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2327
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2329
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2329
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2329
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2021, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2031, metadata !DIExpression()), !dbg !2090
  %291 = icmp ult i64 %140, %290, !dbg !2330
  br i1 %291, label %292, label %294, !dbg !2333

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2330
  store i8 39, ptr %293, align 1, !dbg !2330, !tbaa !889
  br label %294, !dbg !2330

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2333
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2030, metadata !DIExpression()), !dbg !2090
  %296 = icmp ult i64 %295, %290, !dbg !2334
  br i1 %296, label %297, label %299, !dbg !2337

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2334
  store i8 92, ptr %298, align 1, !dbg !2334, !tbaa !889
  br label %299, !dbg !2334

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2337
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2030, metadata !DIExpression()), !dbg !2090
  %301 = icmp ult i64 %300, %290, !dbg !2338
  br i1 %301, label %302, label %304, !dbg !2341

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2338
  store i8 39, ptr %303, align 1, !dbg !2338, !tbaa !889
  br label %304, !dbg !2338

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2341
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2039, metadata !DIExpression()), !dbg !2090
  br label %465, !dbg !2342

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2343

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2057, metadata !DIExpression()), !dbg !2344
  %308 = tail call ptr @__ctype_b_loc() #41, !dbg !2345
  %309 = load ptr, ptr %308, align 8, !dbg !2345, !tbaa !815
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2345
  %312 = load i16, ptr %311, align 2, !dbg !2345, !tbaa !921
  %313 = and i16 %312, 16384, !dbg !2347
  %314 = icmp ne i16 %313, 0, !dbg !2347
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2059, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2344
  br label %355, !dbg !2348

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2349
  call void @llvm.dbg.value(metadata ptr %14, metadata !2120, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata ptr %14, metadata !2128, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i32 0, metadata !2131, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 8, metadata !2132, metadata !DIExpression()), !dbg !2352
  store i64 0, ptr %14, align 8, !dbg !2354
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2057, metadata !DIExpression()), !dbg !2344
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2059, metadata !DIExpression()), !dbg !2344
  %316 = icmp eq i64 %171, -1, !dbg !2355
  br i1 %316, label %317, label %319, !dbg !2357

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2358
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2023, metadata !DIExpression()), !dbg !2090
  br label %319, !dbg !2359

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2197
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2023, metadata !DIExpression()), !dbg !2090
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2360
  %321 = sub i64 %320, %145, !dbg !2361
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #38, !dbg !2362
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2067, metadata !DIExpression()), !dbg !2089
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2363

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2057, metadata !DIExpression()), !dbg !2344
  %324 = icmp ult i64 %145, %320, !dbg !2364
  br i1 %324, label %326, label %351, !dbg !2366

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2059, metadata !DIExpression()), !dbg !2344
  br label %351, !dbg !2367

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2057, metadata !DIExpression()), !dbg !2344
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2369
  %330 = load i8, ptr %329, align 1, !dbg !2369, !tbaa !889
  %331 = icmp eq i8 %330, 0, !dbg !2366
  br i1 %331, label %351, label %332, !dbg !2370

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2371
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2057, metadata !DIExpression()), !dbg !2344
  %334 = add i64 %333, %145, !dbg !2372
  %335 = icmp eq i64 %333, %321, !dbg !2364
  br i1 %335, label %351, label %326, !dbg !2366, !llvm.loop !2373

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2068, metadata !DIExpression()), !dbg !2374
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2375
  %339 = and i1 %338, %132, !dbg !2375
  br i1 %339, label %340, label %347, !dbg !2375

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2068, metadata !DIExpression()), !dbg !2374
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2376
  %343 = load i8, ptr %342, align 1, !dbg !2376, !tbaa !889
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2378

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2379
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2068, metadata !DIExpression()), !dbg !2374
  %346 = icmp eq i64 %345, %322, !dbg !2380
  br i1 %346, label %347, label %340, !dbg !2381, !llvm.loop !2382

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2384, !tbaa !880
  call void @llvm.dbg.value(metadata i32 %348, metadata !2386, metadata !DIExpression()), !dbg !2394
  %349 = call i32 @iswprint(i32 noundef %348) #38, !dbg !2396
  %350 = icmp ne i32 %349, 0, !dbg !2397
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2059, metadata !DIExpression()), !dbg !2344
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2057, metadata !DIExpression()), !dbg !2344
  br label %351, !dbg !2398

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2059, metadata !DIExpression()), !dbg !2344
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2057, metadata !DIExpression()), !dbg !2344
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2399
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2400
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2059, metadata !DIExpression()), !dbg !2344
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2057, metadata !DIExpression()), !dbg !2344
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2399
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2400
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2197
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2401
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2401
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2059, metadata !DIExpression()), !dbg !2344
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2057, metadata !DIExpression()), !dbg !2344
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2023, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2051, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2197
  %359 = icmp ult i64 %357, 2, !dbg !2402
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2403
  br i1 %361, label %461, label %362, !dbg !2403

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2404
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2076, metadata !DIExpression()), !dbg !2405
  br label %364, !dbg !2406

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2090
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2189
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2187
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2197
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2407
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2052, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2050, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2047, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2045, metadata !DIExpression()), !dbg !2187
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2039, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2030, metadata !DIExpression()), !dbg !2090
  br i1 %360, label %417, label %371, !dbg !2408

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2413

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2050, metadata !DIExpression()), !dbg !2197
  %373 = and i8 %366, 1, !dbg !2416
  %374 = icmp eq i8 %373, 0, !dbg !2416
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2416
  br i1 %375, label %376, label %392, !dbg !2416

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2418
  br i1 %377, label %378, label %380, !dbg !2422

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2418
  store i8 39, ptr %379, align 1, !dbg !2418, !tbaa !889
  br label %380, !dbg !2418

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2422
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2030, metadata !DIExpression()), !dbg !2090
  %382 = icmp ult i64 %381, %146, !dbg !2423
  br i1 %382, label %383, label %385, !dbg !2426

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2423
  store i8 36, ptr %384, align 1, !dbg !2423, !tbaa !889
  br label %385, !dbg !2423

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2426
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2030, metadata !DIExpression()), !dbg !2090
  %387 = icmp ult i64 %386, %146, !dbg !2427
  br i1 %387, label %388, label %390, !dbg !2430

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2427
  store i8 39, ptr %389, align 1, !dbg !2427, !tbaa !889
  br label %390, !dbg !2427

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2430
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2039, metadata !DIExpression()), !dbg !2090
  br label %392, !dbg !2431

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2090
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2039, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2030, metadata !DIExpression()), !dbg !2090
  %395 = icmp ult i64 %393, %146, !dbg !2432
  br i1 %395, label %396, label %398, !dbg !2435

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2432
  store i8 92, ptr %397, align 1, !dbg !2432, !tbaa !889
  br label %398, !dbg !2432

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2435
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2030, metadata !DIExpression()), !dbg !2090
  %400 = icmp ult i64 %399, %146, !dbg !2436
  br i1 %400, label %401, label %405, !dbg !2439

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2436
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2436
  store i8 %403, ptr %404, align 1, !dbg !2436, !tbaa !889
  br label %405, !dbg !2436

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2439
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2030, metadata !DIExpression()), !dbg !2090
  %407 = icmp ult i64 %406, %146, !dbg !2440
  br i1 %407, label %408, label %413, !dbg !2443

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2440
  %411 = or disjoint i8 %410, 48, !dbg !2440
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2440
  store i8 %411, ptr %412, align 1, !dbg !2440, !tbaa !889
  br label %413, !dbg !2440

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2443
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2030, metadata !DIExpression()), !dbg !2090
  %415 = and i8 %370, 7, !dbg !2444
  %416 = or disjoint i8 %415, 48, !dbg !2445
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2052, metadata !DIExpression()), !dbg !2197
  br label %426, !dbg !2446

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2447
  %419 = icmp eq i8 %418, 0, !dbg !2447
  br i1 %419, label %426, label %420, !dbg !2449

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2450
  br i1 %421, label %422, label %424, !dbg !2454

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2450
  store i8 92, ptr %423, align 1, !dbg !2450, !tbaa !889
  br label %424, !dbg !2450

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2454
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2047, metadata !DIExpression()), !dbg !2197
  br label %426, !dbg !2455

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2090
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2189
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2197
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2197
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2052, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2050, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2047, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2039, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2030, metadata !DIExpression()), !dbg !2090
  %432 = add i64 %367, 1, !dbg !2456
  %433 = icmp ugt i64 %363, %432, !dbg !2458
  br i1 %433, label %434, label %463, !dbg !2459

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2460
  %436 = icmp ne i8 %435, 0, !dbg !2460
  %437 = and i8 %430, 1, !dbg !2460
  %438 = icmp eq i8 %437, 0, !dbg !2460
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2460
  br i1 %439, label %440, label %451, !dbg !2460

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2463
  br i1 %441, label %442, label %444, !dbg !2467

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2463
  store i8 39, ptr %443, align 1, !dbg !2463, !tbaa !889
  br label %444, !dbg !2463

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2467
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2030, metadata !DIExpression()), !dbg !2090
  %446 = icmp ult i64 %445, %146, !dbg !2468
  br i1 %446, label %447, label %449, !dbg !2471

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2468
  store i8 39, ptr %448, align 1, !dbg !2468, !tbaa !889
  br label %449, !dbg !2468

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2471
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2039, metadata !DIExpression()), !dbg !2090
  br label %451, !dbg !2472

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2473
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2039, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2030, metadata !DIExpression()), !dbg !2090
  %454 = icmp ult i64 %452, %146, !dbg !2474
  br i1 %454, label %455, label %457, !dbg !2477

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2474
  store i8 %431, ptr %456, align 1, !dbg !2474, !tbaa !889
  br label %457, !dbg !2474

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2477
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2045, metadata !DIExpression()), !dbg !2187
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2478
  %460 = load i8, ptr %459, align 1, !dbg !2478, !tbaa !889
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2052, metadata !DIExpression()), !dbg !2197
  br label %364, !dbg !2479, !llvm.loop !2480

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2052, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2051, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2050, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2047, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2045, metadata !DIExpression()), !dbg !2187
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2039, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2023, metadata !DIExpression()), !dbg !2090
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2052, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2051, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2050, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2047, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2045, metadata !DIExpression()), !dbg !2187
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2039, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2023, metadata !DIExpression()), !dbg !2090
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2483
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2090
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2095
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2090
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2090
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2187
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2197
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2197
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2197
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2021, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2052, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2051, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2050, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2047, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2045, metadata !DIExpression()), !dbg !2187
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2039, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2036, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2031, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2023, metadata !DIExpression()), !dbg !2090
  br i1 %126, label %487, label %476, !dbg !2484

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
  br i1 %137, label %488, label %509, !dbg !2486

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2487

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
  %499 = lshr i8 %490, 5, !dbg !2488
  %500 = zext nneg i8 %499 to i64, !dbg !2488
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2489
  %502 = load i32, ptr %501, align 4, !dbg !2489, !tbaa !880
  %503 = and i8 %490, 31, !dbg !2490
  %504 = zext nneg i8 %503 to i32, !dbg !2490
  %505 = shl nuw i32 1, %504, !dbg !2491
  %506 = and i32 %502, %505, !dbg !2491
  %507 = icmp eq i32 %506, 0, !dbg !2491
  %508 = and i1 %172, %507, !dbg !2492
  br i1 %508, label %558, label %520, !dbg !2492

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
  br i1 %172, label %558, label %520, !dbg !2493

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2483
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2090
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2095
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2099
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2189
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2494
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2197
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2197
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2021, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2052, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2051, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2045, metadata !DIExpression()), !dbg !2187
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2039, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2036, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2031, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2023, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.label(metadata !2079), !dbg !2495
  br i1 %131, label %530, label %659, !dbg !2496

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2050, metadata !DIExpression()), !dbg !2197
  %531 = and i8 %525, 1, !dbg !2498
  %532 = icmp eq i8 %531, 0, !dbg !2498
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2498
  br i1 %533, label %534, label %550, !dbg !2498

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2500
  br i1 %535, label %536, label %538, !dbg !2504

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2500
  store i8 39, ptr %537, align 1, !dbg !2500, !tbaa !889
  br label %538, !dbg !2500

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2504
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2030, metadata !DIExpression()), !dbg !2090
  %540 = icmp ult i64 %539, %529, !dbg !2505
  br i1 %540, label %541, label %543, !dbg !2508

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2505
  store i8 36, ptr %542, align 1, !dbg !2505, !tbaa !889
  br label %543, !dbg !2505

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2508
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2030, metadata !DIExpression()), !dbg !2090
  %545 = icmp ult i64 %544, %529, !dbg !2509
  br i1 %545, label %546, label %548, !dbg !2512

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2509
  store i8 39, ptr %547, align 1, !dbg !2509, !tbaa !889
  br label %548, !dbg !2509

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2512
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2039, metadata !DIExpression()), !dbg !2090
  br label %550, !dbg !2513

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2197
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2039, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2030, metadata !DIExpression()), !dbg !2090
  %553 = icmp ult i64 %551, %529, !dbg !2514
  br i1 %553, label %554, label %556, !dbg !2517

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2514
  store i8 92, ptr %555, align 1, !dbg !2514, !tbaa !889
  br label %556, !dbg !2514

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2517
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2021, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2052, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2051, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2050, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2045, metadata !DIExpression()), !dbg !2187
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2039, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2036, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2031, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2023, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.label(metadata !2080), !dbg !2518
  br label %585, !dbg !2519

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2483
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2090
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2095
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2099
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2189
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2494
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2197
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2197
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2522
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2021, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2052, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2051, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2050, metadata !DIExpression()), !dbg !2197
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2045, metadata !DIExpression()), !dbg !2187
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2039, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2036, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2031, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2023, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.label(metadata !2080), !dbg !2518
  %569 = and i8 %563, 1, !dbg !2519
  %570 = icmp ne i8 %569, 0, !dbg !2519
  %571 = and i8 %565, 1, !dbg !2519
  %572 = icmp eq i8 %571, 0, !dbg !2519
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2519
  br i1 %573, label %574, label %585, !dbg !2519

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2523
  br i1 %575, label %576, label %578, !dbg !2527

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2523
  store i8 39, ptr %577, align 1, !dbg !2523, !tbaa !889
  br label %578, !dbg !2523

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2527
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2030, metadata !DIExpression()), !dbg !2090
  %580 = icmp ult i64 %579, %568, !dbg !2528
  br i1 %580, label %581, label %583, !dbg !2531

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2528
  store i8 39, ptr %582, align 1, !dbg !2528, !tbaa !889
  br label %583, !dbg !2528

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2531
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2039, metadata !DIExpression()), !dbg !2090
  br label %585, !dbg !2532

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2197
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2039, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2030, metadata !DIExpression()), !dbg !2090
  %595 = icmp ult i64 %593, %586, !dbg !2533
  br i1 %595, label %596, label %598, !dbg !2536

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2533
  store i8 %587, ptr %597, align 1, !dbg !2533, !tbaa !889
  br label %598, !dbg !2533

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2536
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2030, metadata !DIExpression()), !dbg !2090
  %600 = icmp eq i8 %588, 0, !dbg !2537
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2539
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2037, metadata !DIExpression()), !dbg !2090
  br label %602, !dbg !2540

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2483
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2090
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2095
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2099
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2100
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2189
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2494
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2021, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2045, metadata !DIExpression()), !dbg !2187
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2039, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2037, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2036, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2031, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2023, metadata !DIExpression()), !dbg !2090
  %611 = add i64 %609, 1, !dbg !2541
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2045, metadata !DIExpression()), !dbg !2187
  br label %138, !dbg !2542, !llvm.loop !2543

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2021, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2037, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2036, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2031, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2030, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2023, metadata !DIExpression()), !dbg !2090
  %613 = icmp eq i64 %140, 0, !dbg !2545
  %614 = and i1 %132, %613, !dbg !2547
  %615 = xor i1 %614, true, !dbg !2547
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2547
  br i1 %616, label %617, label %655, !dbg !2547

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2548
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2548
  br i1 %621, label %622, label %631, !dbg !2548

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2550
  %624 = icmp eq i8 %623, 0, !dbg !2550
  br i1 %624, label %627, label %625, !dbg !2553

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2554
  br label %672, !dbg !2555

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2556
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2558
  br i1 %630, label %28, label %631, !dbg !2558

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2559
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2561
  br i1 %634, label %635, label %650, !dbg !2561

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2032, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2030, metadata !DIExpression()), !dbg !2090
  %636 = load i8, ptr %119, align 1, !dbg !2562, !tbaa !889
  %637 = icmp eq i8 %636, 0, !dbg !2565
  br i1 %637, label %650, label %638, !dbg !2565

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2032, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2030, metadata !DIExpression()), !dbg !2090
  %642 = icmp ult i64 %641, %146, !dbg !2566
  br i1 %642, label %643, label %645, !dbg !2569

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2566
  store i8 %639, ptr %644, align 1, !dbg !2566, !tbaa !889
  br label %645, !dbg !2566

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2569
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2030, metadata !DIExpression()), !dbg !2090
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2570
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2032, metadata !DIExpression()), !dbg !2090
  %648 = load i8, ptr %647, align 1, !dbg !2562, !tbaa !889
  %649 = icmp eq i8 %648, 0, !dbg !2565
  br i1 %649, label %650, label %638, !dbg !2565, !llvm.loop !2571

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2170
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2030, metadata !DIExpression()), !dbg !2090
  %652 = icmp ult i64 %651, %146, !dbg !2573
  br i1 %652, label %653, label %672, !dbg !2575

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2576
  store i8 0, ptr %654, align 1, !dbg !2577, !tbaa !889
  br label %672, !dbg !2576

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2081), !dbg !2578
  %657 = icmp eq i8 %123, 0, !dbg !2579
  %658 = select i1 %657, i32 2, i32 4, !dbg !2579
  br label %666, !dbg !2579

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2081), !dbg !2578
  %662 = icmp eq i32 %115, 2, !dbg !2581
  %663 = icmp eq i8 %123, 0, !dbg !2579
  %664 = select i1 %663, i32 2, i32 4, !dbg !2579
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2579
  br label %666, !dbg !2579

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2024, metadata !DIExpression()), !dbg !2090
  %670 = and i32 %5, -3, !dbg !2582
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2583
  br label %672, !dbg !2584

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2585
}

; Function Attrs: nounwind
declare !dbg !2586 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2589 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2591 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2595, metadata !DIExpression()), !dbg !2598
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2596, metadata !DIExpression()), !dbg !2598
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2597, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata ptr %0, metadata !2599, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i64 %1, metadata !2604, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr null, metadata !2605, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %2, metadata !2606, metadata !DIExpression()), !dbg !2612
  %4 = icmp eq ptr %2, null, !dbg !2614
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2614
  call void @llvm.dbg.value(metadata ptr %5, metadata !2607, metadata !DIExpression()), !dbg !2612
  %6 = tail call ptr @__errno_location() #41, !dbg !2615
  %7 = load i32, ptr %6, align 4, !dbg !2615, !tbaa !880
  call void @llvm.dbg.value(metadata i32 %7, metadata !2608, metadata !DIExpression()), !dbg !2612
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2616
  %9 = load i32, ptr %8, align 4, !dbg !2616, !tbaa !1964
  %10 = or i32 %9, 1, !dbg !2617
  call void @llvm.dbg.value(metadata i32 %10, metadata !2609, metadata !DIExpression()), !dbg !2612
  %11 = load i32, ptr %5, align 8, !dbg !2618, !tbaa !1914
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2619
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2620
  %14 = load ptr, ptr %13, align 8, !dbg !2620, !tbaa !1985
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2621
  %16 = load ptr, ptr %15, align 8, !dbg !2621, !tbaa !1988
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2622
  %18 = add i64 %17, 1, !dbg !2623
  call void @llvm.dbg.value(metadata i64 %18, metadata !2610, metadata !DIExpression()), !dbg !2612
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2624
  call void @llvm.dbg.value(metadata ptr %19, metadata !2611, metadata !DIExpression()), !dbg !2612
  %20 = load i32, ptr %5, align 8, !dbg !2625, !tbaa !1914
  %21 = load ptr, ptr %13, align 8, !dbg !2626, !tbaa !1985
  %22 = load ptr, ptr %15, align 8, !dbg !2627, !tbaa !1988
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2628
  store i32 %7, ptr %6, align 4, !dbg !2629, !tbaa !880
  ret ptr %19, !dbg !2630
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2600 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2599, metadata !DIExpression()), !dbg !2631
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2604, metadata !DIExpression()), !dbg !2631
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2605, metadata !DIExpression()), !dbg !2631
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2606, metadata !DIExpression()), !dbg !2631
  %5 = icmp eq ptr %3, null, !dbg !2632
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2632
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2607, metadata !DIExpression()), !dbg !2631
  %7 = tail call ptr @__errno_location() #41, !dbg !2633
  %8 = load i32, ptr %7, align 4, !dbg !2633, !tbaa !880
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2608, metadata !DIExpression()), !dbg !2631
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2634
  %10 = load i32, ptr %9, align 4, !dbg !2634, !tbaa !1964
  %11 = icmp eq ptr %2, null, !dbg !2635
  %12 = zext i1 %11 to i32, !dbg !2635
  %13 = or i32 %10, %12, !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2609, metadata !DIExpression()), !dbg !2631
  %14 = load i32, ptr %6, align 8, !dbg !2637, !tbaa !1914
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2638
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2639
  %17 = load ptr, ptr %16, align 8, !dbg !2639, !tbaa !1985
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2640
  %19 = load ptr, ptr %18, align 8, !dbg !2640, !tbaa !1988
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2641
  %21 = add i64 %20, 1, !dbg !2642
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2610, metadata !DIExpression()), !dbg !2631
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2643
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2611, metadata !DIExpression()), !dbg !2631
  %23 = load i32, ptr %6, align 8, !dbg !2644, !tbaa !1914
  %24 = load ptr, ptr %16, align 8, !dbg !2645, !tbaa !1985
  %25 = load ptr, ptr %18, align 8, !dbg !2646, !tbaa !1988
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2647
  store i32 %8, ptr %7, align 4, !dbg !2648, !tbaa !880
  br i1 %11, label %28, label %27, !dbg !2649

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2650, !tbaa !1392
  br label %28, !dbg !2652

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2653
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2654 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2659, !tbaa !815
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2656, metadata !DIExpression()), !dbg !2660
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2657, metadata !DIExpression()), !dbg !2661
  %2 = load i32, ptr @nslots, align 4, !tbaa !880
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2657, metadata !DIExpression()), !dbg !2661
  %3 = icmp sgt i32 %2, 1, !dbg !2662
  br i1 %3, label %4, label %6, !dbg !2664

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2662
  br label %10, !dbg !2664

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2665
  %8 = load ptr, ptr %7, align 8, !dbg !2665, !tbaa !2667
  %9 = icmp eq ptr %8, @slot0, !dbg !2669
  br i1 %9, label %17, label %16, !dbg !2670

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2657, metadata !DIExpression()), !dbg !2661
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2671
  %13 = load ptr, ptr %12, align 8, !dbg !2671, !tbaa !2667
  tail call void @free(ptr noundef %13) #38, !dbg !2672
  %14 = add nuw nsw i64 %11, 1, !dbg !2673
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2657, metadata !DIExpression()), !dbg !2661
  %15 = icmp eq i64 %14, %5, !dbg !2662
  br i1 %15, label %6, label %10, !dbg !2664, !llvm.loop !2674

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2676
  store i64 256, ptr @slotvec0, align 8, !dbg !2678, !tbaa !2679
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2680, !tbaa !2667
  br label %17, !dbg !2681

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2682
  br i1 %18, label %20, label %19, !dbg !2684

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2685
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2687, !tbaa !815
  br label %20, !dbg !2688

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2689, !tbaa !880
  ret void, !dbg !2690
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2691 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2693, metadata !DIExpression()), !dbg !2695
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2694, metadata !DIExpression()), !dbg !2695
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2696
  ret ptr %3, !dbg !2697
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2698 {
  %5 = alloca i64, align 8, !DIAssignID !2718
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2712, metadata !DIExpression(), metadata !2718, metadata ptr %5, metadata !DIExpression()), !dbg !2719
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2702, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2703, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2704, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2705, metadata !DIExpression()), !dbg !2720
  %6 = tail call ptr @__errno_location() #41, !dbg !2721
  %7 = load i32, ptr %6, align 4, !dbg !2721, !tbaa !880
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2706, metadata !DIExpression()), !dbg !2720
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2722, !tbaa !815
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2707, metadata !DIExpression()), !dbg !2720
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2708, metadata !DIExpression()), !dbg !2720
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2723
  br i1 %9, label %10, label %11, !dbg !2723

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2725
  unreachable, !dbg !2725

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2726, !tbaa !880
  %13 = icmp sgt i32 %12, %0, !dbg !2727
  br i1 %13, label %32, label %14, !dbg !2728

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2729
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2709, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2719
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2730
  %16 = sext i32 %12 to i64, !dbg !2731
  store i64 %16, ptr %5, align 8, !dbg !2732, !tbaa !1392, !DIAssignID !2733
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2712, metadata !DIExpression(), metadata !2733, metadata ptr %5, metadata !DIExpression()), !dbg !2719
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2734
  %18 = add nuw nsw i32 %0, 1, !dbg !2735
  %19 = sub i32 %18, %12, !dbg !2736
  %20 = sext i32 %19 to i64, !dbg !2737
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2738
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2707, metadata !DIExpression()), !dbg !2720
  store ptr %21, ptr @slotvec, align 8, !dbg !2739, !tbaa !815
  br i1 %15, label %22, label %23, !dbg !2740

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2741, !tbaa.struct !2743
  br label %23, !dbg !2744

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2745, !tbaa !880
  %25 = sext i32 %24 to i64, !dbg !2746
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2746
  %27 = load i64, ptr %5, align 8, !dbg !2747, !tbaa !1392
  %28 = sub nsw i64 %27, %25, !dbg !2748
  %29 = shl i64 %28, 4, !dbg !2749
  call void @llvm.dbg.value(metadata ptr %26, metadata !2128, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 0, metadata !2131, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 %29, metadata !2132, metadata !DIExpression()), !dbg !2750
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2752
  %30 = load i64, ptr %5, align 8, !dbg !2753, !tbaa !1392
  %31 = trunc i64 %30 to i32, !dbg !2753
  store i32 %31, ptr @nslots, align 4, !dbg !2754, !tbaa !880
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2755
  br label %32, !dbg !2756

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2720
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2707, metadata !DIExpression()), !dbg !2720
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2757
  %36 = load i64, ptr %35, align 8, !dbg !2758, !tbaa !2679
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2713, metadata !DIExpression()), !dbg !2759
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2760
  %38 = load ptr, ptr %37, align 8, !dbg !2760, !tbaa !2667
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2715, metadata !DIExpression()), !dbg !2759
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2761
  %40 = load i32, ptr %39, align 4, !dbg !2761, !tbaa !1964
  %41 = or i32 %40, 1, !dbg !2762
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2716, metadata !DIExpression()), !dbg !2759
  %42 = load i32, ptr %3, align 8, !dbg !2763, !tbaa !1914
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2764
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2765
  %45 = load ptr, ptr %44, align 8, !dbg !2765, !tbaa !1985
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2766
  %47 = load ptr, ptr %46, align 8, !dbg !2766, !tbaa !1988
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2767
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2717, metadata !DIExpression()), !dbg !2759
  %49 = icmp ugt i64 %36, %48, !dbg !2768
  br i1 %49, label %60, label %50, !dbg !2770

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2713, metadata !DIExpression()), !dbg !2759
  store i64 %51, ptr %35, align 8, !dbg !2773, !tbaa !2679
  %52 = icmp eq ptr %38, @slot0, !dbg !2774
  br i1 %52, label %54, label %53, !dbg !2776

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2777
  br label %54, !dbg !2777

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2778
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2715, metadata !DIExpression()), !dbg !2759
  store ptr %55, ptr %37, align 8, !dbg !2779, !tbaa !2667
  %56 = load i32, ptr %3, align 8, !dbg !2780, !tbaa !1914
  %57 = load ptr, ptr %44, align 8, !dbg !2781, !tbaa !1985
  %58 = load ptr, ptr %46, align 8, !dbg !2782, !tbaa !1988
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2783
  br label %60, !dbg !2784

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2759
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2715, metadata !DIExpression()), !dbg !2759
  store i32 %7, ptr %6, align 4, !dbg !2785, !tbaa !880
  ret ptr %61, !dbg !2786
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2787 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2791, metadata !DIExpression()), !dbg !2794
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2792, metadata !DIExpression()), !dbg !2794
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2793, metadata !DIExpression()), !dbg !2794
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2795
  ret ptr %4, !dbg !2796
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2797 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2799, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i32 0, metadata !2693, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %0, metadata !2694, metadata !DIExpression()), !dbg !2801
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2803
  ret ptr %2, !dbg !2804
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2805 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2809, metadata !DIExpression()), !dbg !2811
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2810, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 0, metadata !2791, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata ptr %0, metadata !2792, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 %1, metadata !2793, metadata !DIExpression()), !dbg !2812
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2814
  ret ptr %3, !dbg !2815
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2816 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2824
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2823, metadata !DIExpression(), metadata !2824, metadata ptr %4, metadata !DIExpression()), !dbg !2825
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2820, metadata !DIExpression()), !dbg !2825
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2821, metadata !DIExpression()), !dbg !2825
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2822, metadata !DIExpression()), !dbg !2825
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2826
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2827), !dbg !2830
  call void @llvm.dbg.value(metadata i32 %1, metadata !2831, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2836, metadata !DIExpression()), !dbg !2839
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2839, !alias.scope !2827, !DIAssignID !2840
  call void @llvm.dbg.assign(metadata i8 0, metadata !2823, metadata !DIExpression(), metadata !2840, metadata ptr %4, metadata !DIExpression()), !dbg !2825
  %5 = icmp eq i32 %1, 10, !dbg !2841
  br i1 %5, label %6, label %7, !dbg !2843

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2844, !noalias !2827
  unreachable, !dbg !2844

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2845, !tbaa !1914, !alias.scope !2827, !DIAssignID !2846
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2823, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2846, metadata ptr %4, metadata !DIExpression()), !dbg !2825
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2847
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2848
  ret ptr %8, !dbg !2849
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2850 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2859
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2858, metadata !DIExpression(), metadata !2859, metadata ptr %5, metadata !DIExpression()), !dbg !2860
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2854, metadata !DIExpression()), !dbg !2860
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2855, metadata !DIExpression()), !dbg !2860
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2856, metadata !DIExpression()), !dbg !2860
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2861
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2862), !dbg !2865
  call void @llvm.dbg.value(metadata i32 %1, metadata !2831, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2836, metadata !DIExpression()), !dbg !2868
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2868, !alias.scope !2862, !DIAssignID !2869
  call void @llvm.dbg.assign(metadata i8 0, metadata !2858, metadata !DIExpression(), metadata !2869, metadata ptr %5, metadata !DIExpression()), !dbg !2860
  %6 = icmp eq i32 %1, 10, !dbg !2870
  br i1 %6, label %7, label %8, !dbg !2871

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2872, !noalias !2862
  unreachable, !dbg !2872

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2873, !tbaa !1914, !alias.scope !2862, !DIAssignID !2874
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2858, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2874, metadata ptr %5, metadata !DIExpression()), !dbg !2860
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2875
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2876
  ret ptr %9, !dbg !2877
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2878 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2884
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2882, metadata !DIExpression()), !dbg !2885
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2883, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2823, metadata !DIExpression(), metadata !2884, metadata ptr %3, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i32 0, metadata !2820, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i32 %0, metadata !2821, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata ptr %1, metadata !2822, metadata !DIExpression()), !dbg !2886
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2888
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2889), !dbg !2892
  call void @llvm.dbg.value(metadata i32 %0, metadata !2831, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2836, metadata !DIExpression()), !dbg !2895
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2895, !alias.scope !2889, !DIAssignID !2896
  call void @llvm.dbg.assign(metadata i8 0, metadata !2823, metadata !DIExpression(), metadata !2896, metadata ptr %3, metadata !DIExpression()), !dbg !2886
  %4 = icmp eq i32 %0, 10, !dbg !2897
  br i1 %4, label %5, label %6, !dbg !2898

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2899, !noalias !2889
  unreachable, !dbg !2899

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2900, !tbaa !1914, !alias.scope !2889, !DIAssignID !2901
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2823, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2901, metadata ptr %3, metadata !DIExpression()), !dbg !2886
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2902
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2903
  ret ptr %7, !dbg !2904
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2905 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2912
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2909, metadata !DIExpression()), !dbg !2913
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2910, metadata !DIExpression()), !dbg !2913
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2911, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2858, metadata !DIExpression(), metadata !2912, metadata ptr %4, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 0, metadata !2854, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 %0, metadata !2855, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata ptr %1, metadata !2856, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %2, metadata !2857, metadata !DIExpression()), !dbg !2914
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2916
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2917), !dbg !2920
  call void @llvm.dbg.value(metadata i32 %0, metadata !2831, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2836, metadata !DIExpression()), !dbg !2923
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2923, !alias.scope !2917, !DIAssignID !2924
  call void @llvm.dbg.assign(metadata i8 0, metadata !2858, metadata !DIExpression(), metadata !2924, metadata ptr %4, metadata !DIExpression()), !dbg !2914
  %5 = icmp eq i32 %0, 10, !dbg !2925
  br i1 %5, label %6, label %7, !dbg !2926

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2927, !noalias !2917
  unreachable, !dbg !2927

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2928, !tbaa !1914, !alias.scope !2917, !DIAssignID !2929
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2858, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2929, metadata ptr %4, metadata !DIExpression()), !dbg !2914
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2930
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2931
  ret ptr %8, !dbg !2932
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2933 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2941
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2940, metadata !DIExpression(), metadata !2941, metadata ptr %4, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2937, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2938, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2939, metadata !DIExpression()), !dbg !2942
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2944, !tbaa.struct !2945, !DIAssignID !2946
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2940, metadata !DIExpression(), metadata !2946, metadata ptr %4, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1931, metadata !DIExpression()), !dbg !2947
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1932, metadata !DIExpression()), !dbg !2947
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1933, metadata !DIExpression()), !dbg !2947
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1934, metadata !DIExpression()), !dbg !2947
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2949
  %6 = lshr i8 %2, 5, !dbg !2950
  %7 = zext nneg i8 %6 to i64, !dbg !2950
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2951
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1935, metadata !DIExpression()), !dbg !2947
  %9 = and i8 %2, 31, !dbg !2952
  %10 = zext nneg i8 %9 to i32, !dbg !2952
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1937, metadata !DIExpression()), !dbg !2947
  %11 = load i32, ptr %8, align 4, !dbg !2953, !tbaa !880
  %12 = lshr i32 %11, %10, !dbg !2954
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1938, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2947
  %13 = and i32 %12, 1, !dbg !2955
  %14 = xor i32 %13, 1, !dbg !2955
  %15 = shl nuw i32 %14, %10, !dbg !2956
  %16 = xor i32 %15, %11, !dbg !2957
  store i32 %16, ptr %8, align 4, !dbg !2957, !tbaa !880
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2958
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2959
  ret ptr %17, !dbg !2960
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2961 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2967
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2965, metadata !DIExpression()), !dbg !2968
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2966, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2940, metadata !DIExpression(), metadata !2967, metadata ptr %3, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata ptr %0, metadata !2937, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 -1, metadata !2938, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8 %1, metadata !2939, metadata !DIExpression()), !dbg !2969
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2972, !tbaa.struct !2945, !DIAssignID !2973
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2940, metadata !DIExpression(), metadata !2973, metadata ptr %3, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata ptr %3, metadata !1931, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 %1, metadata !1932, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i32 1, metadata !1933, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 %1, metadata !1934, metadata !DIExpression()), !dbg !2974
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2976
  %5 = lshr i8 %1, 5, !dbg !2977
  %6 = zext nneg i8 %5 to i64, !dbg !2977
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2978
  call void @llvm.dbg.value(metadata ptr %7, metadata !1935, metadata !DIExpression()), !dbg !2974
  %8 = and i8 %1, 31, !dbg !2979
  %9 = zext nneg i8 %8 to i32, !dbg !2979
  call void @llvm.dbg.value(metadata i32 %9, metadata !1937, metadata !DIExpression()), !dbg !2974
  %10 = load i32, ptr %7, align 4, !dbg !2980, !tbaa !880
  %11 = lshr i32 %10, %9, !dbg !2981
  call void @llvm.dbg.value(metadata i32 %11, metadata !1938, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2974
  %12 = and i32 %11, 1, !dbg !2982
  %13 = xor i32 %12, 1, !dbg !2982
  %14 = shl nuw i32 %13, %9, !dbg !2983
  %15 = xor i32 %14, %10, !dbg !2984
  store i32 %15, ptr %7, align 4, !dbg !2984, !tbaa !880
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2985
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2986
  ret ptr %16, !dbg !2987
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2988 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2991
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2990, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %0, metadata !2965, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8 58, metadata !2966, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2940, metadata !DIExpression(), metadata !2991, metadata ptr %2, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata ptr %0, metadata !2937, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 -1, metadata !2938, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8 58, metadata !2939, metadata !DIExpression()), !dbg !2995
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2998, !tbaa.struct !2945, !DIAssignID !2999
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2940, metadata !DIExpression(), metadata !2999, metadata ptr %2, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata ptr %2, metadata !1931, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i8 58, metadata !1932, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i32 1, metadata !1933, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i8 58, metadata !1934, metadata !DIExpression()), !dbg !3000
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3002
  call void @llvm.dbg.value(metadata ptr %3, metadata !1935, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i32 26, metadata !1937, metadata !DIExpression()), !dbg !3000
  %4 = load i32, ptr %3, align 4, !dbg !3003, !tbaa !880
  call void @llvm.dbg.value(metadata i32 %4, metadata !1938, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3000
  %5 = or i32 %4, 67108864, !dbg !3004
  store i32 %5, ptr %3, align 4, !dbg !3004, !tbaa !880
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3005
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !3006
  ret ptr %6, !dbg !3007
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3008 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3012
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3010, metadata !DIExpression()), !dbg !3013
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3011, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2940, metadata !DIExpression(), metadata !3012, metadata ptr %3, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %0, metadata !2937, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 %1, metadata !2938, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i8 58, metadata !2939, metadata !DIExpression()), !dbg !3014
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3017, !tbaa.struct !2945, !DIAssignID !3018
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2940, metadata !DIExpression(), metadata !3018, metadata ptr %3, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %3, metadata !1931, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8 58, metadata !1932, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 1, metadata !1933, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i8 58, metadata !1934, metadata !DIExpression()), !dbg !3019
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3021
  call void @llvm.dbg.value(metadata ptr %4, metadata !1935, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 26, metadata !1937, metadata !DIExpression()), !dbg !3019
  %5 = load i32, ptr %4, align 4, !dbg !3022, !tbaa !880
  call void @llvm.dbg.value(metadata i32 %5, metadata !1938, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3019
  %6 = or i32 %5, 67108864, !dbg !3023
  store i32 %6, ptr %4, align 4, !dbg !3023, !tbaa !880
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3024
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3025
  ret ptr %7, !dbg !3026
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3027 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3033
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3032, metadata !DIExpression(), metadata !3033, metadata ptr %4, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2836, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3035
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3029, metadata !DIExpression()), !dbg !3034
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3030, metadata !DIExpression()), !dbg !3034
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3031, metadata !DIExpression()), !dbg !3034
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3037
  call void @llvm.dbg.value(metadata i32 %1, metadata !2831, metadata !DIExpression()), !dbg !3038
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2836, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3038
  %5 = icmp eq i32 %1, 10, !dbg !3039
  br i1 %5, label %6, label %7, !dbg !3040

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3041, !noalias !3042
  unreachable, !dbg !3041

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2836, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3038
  store i32 %1, ptr %4, align 8, !dbg !3045, !tbaa.struct !2945, !DIAssignID !3046
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3045
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3045
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3032, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3046, metadata ptr %4, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3032, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3047, metadata ptr %8, metadata !DIExpression()), !dbg !3034
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1931, metadata !DIExpression()), !dbg !3048
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1932, metadata !DIExpression()), !dbg !3048
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1933, metadata !DIExpression()), !dbg !3048
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1934, metadata !DIExpression()), !dbg !3048
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3050
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1935, metadata !DIExpression()), !dbg !3048
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1937, metadata !DIExpression()), !dbg !3048
  %10 = load i32, ptr %9, align 4, !dbg !3051, !tbaa !880
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1938, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3048
  %11 = or i32 %10, 67108864, !dbg !3052
  store i32 %11, ptr %9, align 4, !dbg !3052, !tbaa !880, !DIAssignID !3053
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3032, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3053, metadata ptr %9, metadata !DIExpression()), !dbg !3034
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3054
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3055
  ret ptr %12, !dbg !3056
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3057 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3065
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3061, metadata !DIExpression()), !dbg !3066
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3062, metadata !DIExpression()), !dbg !3066
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3063, metadata !DIExpression()), !dbg !3066
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3064, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3067, metadata !DIExpression(), metadata !3065, metadata ptr %5, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 %0, metadata !3072, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata ptr %1, metadata !3073, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata ptr %2, metadata !3074, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata ptr %3, metadata !3075, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i64 -1, metadata !3076, metadata !DIExpression()), !dbg !3077
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3079
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3080, !tbaa.struct !2945, !DIAssignID !3081
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3067, metadata !DIExpression(), metadata !3081, metadata ptr %5, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3082, metadata ptr undef, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata ptr %5, metadata !1971, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata ptr %1, metadata !1972, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata ptr %2, metadata !1973, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata ptr %5, metadata !1971, metadata !DIExpression()), !dbg !3083
  store i32 10, ptr %5, align 8, !dbg !3085, !tbaa !1914, !DIAssignID !3086
  call void @llvm.dbg.assign(metadata i32 10, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3086, metadata ptr %5, metadata !DIExpression()), !dbg !3077
  %6 = icmp ne ptr %1, null, !dbg !3087
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3088
  br i1 %8, label %10, label %9, !dbg !3088

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3089
  unreachable, !dbg !3089

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3090
  store ptr %1, ptr %11, align 8, !dbg !3091, !tbaa !1985, !DIAssignID !3092
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3092, metadata ptr %11, metadata !DIExpression()), !dbg !3077
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3093
  store ptr %2, ptr %12, align 8, !dbg !3094, !tbaa !1988, !DIAssignID !3095
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3095, metadata ptr %12, metadata !DIExpression()), !dbg !3077
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3096
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3097
  ret ptr %13, !dbg !3098
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3068 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3099
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3067, metadata !DIExpression(), metadata !3099, metadata ptr %6, metadata !DIExpression()), !dbg !3100
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3072, metadata !DIExpression()), !dbg !3100
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3073, metadata !DIExpression()), !dbg !3100
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3074, metadata !DIExpression()), !dbg !3100
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3075, metadata !DIExpression()), !dbg !3100
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3076, metadata !DIExpression()), !dbg !3100
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !3101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3102, !tbaa.struct !2945, !DIAssignID !3103
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3067, metadata !DIExpression(), metadata !3103, metadata ptr %6, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3104, metadata ptr undef, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata ptr %6, metadata !1971, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %1, metadata !1972, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %2, metadata !1973, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %6, metadata !1971, metadata !DIExpression()), !dbg !3105
  store i32 10, ptr %6, align 8, !dbg !3107, !tbaa !1914, !DIAssignID !3108
  call void @llvm.dbg.assign(metadata i32 10, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3108, metadata ptr %6, metadata !DIExpression()), !dbg !3100
  %7 = icmp ne ptr %1, null, !dbg !3109
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3110
  br i1 %9, label %11, label %10, !dbg !3110

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !3111
  unreachable, !dbg !3111

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3112
  store ptr %1, ptr %12, align 8, !dbg !3113, !tbaa !1985, !DIAssignID !3114
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3114, metadata ptr %12, metadata !DIExpression()), !dbg !3100
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3115
  store ptr %2, ptr %13, align 8, !dbg !3116, !tbaa !1988, !DIAssignID !3117
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3117, metadata ptr %13, metadata !DIExpression()), !dbg !3100
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3118
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !3119
  ret ptr %14, !dbg !3120
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3121 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3128
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3125, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3126, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3127, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i32 0, metadata !3061, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata ptr %0, metadata !3062, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata ptr %1, metadata !3063, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata ptr %2, metadata !3064, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3067, metadata !DIExpression(), metadata !3128, metadata ptr %4, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i32 0, metadata !3072, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata ptr %0, metadata !3073, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata ptr %1, metadata !3074, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata ptr %2, metadata !3075, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i64 -1, metadata !3076, metadata !DIExpression()), !dbg !3132
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3135, !tbaa.struct !2945, !DIAssignID !3136
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3067, metadata !DIExpression(), metadata !3136, metadata ptr %4, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3137, metadata ptr undef, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata ptr %4, metadata !1971, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata ptr %0, metadata !1972, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata ptr %1, metadata !1973, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata ptr %4, metadata !1971, metadata !DIExpression()), !dbg !3138
  store i32 10, ptr %4, align 8, !dbg !3140, !tbaa !1914, !DIAssignID !3141
  call void @llvm.dbg.assign(metadata i32 10, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3141, metadata ptr %4, metadata !DIExpression()), !dbg !3132
  %5 = icmp ne ptr %0, null, !dbg !3142
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3143
  br i1 %7, label %9, label %8, !dbg !3143

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3144
  unreachable, !dbg !3144

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3145
  store ptr %0, ptr %10, align 8, !dbg !3146, !tbaa !1985, !DIAssignID !3147
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3147, metadata ptr %10, metadata !DIExpression()), !dbg !3132
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3148
  store ptr %1, ptr %11, align 8, !dbg !3149, !tbaa !1988, !DIAssignID !3150
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3150, metadata ptr %11, metadata !DIExpression()), !dbg !3132
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3151
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3152
  ret ptr %12, !dbg !3153
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3154 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3162
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3158, metadata !DIExpression()), !dbg !3163
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3159, metadata !DIExpression()), !dbg !3163
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3160, metadata !DIExpression()), !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3161, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3067, metadata !DIExpression(), metadata !3162, metadata ptr %5, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i32 0, metadata !3072, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata ptr %0, metadata !3073, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata ptr %1, metadata !3074, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata ptr %2, metadata !3075, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i64 %3, metadata !3076, metadata !DIExpression()), !dbg !3164
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3167, !tbaa.struct !2945, !DIAssignID !3168
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3067, metadata !DIExpression(), metadata !3168, metadata ptr %5, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3169, metadata ptr undef, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata ptr %5, metadata !1971, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %0, metadata !1972, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %1, metadata !1973, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %5, metadata !1971, metadata !DIExpression()), !dbg !3170
  store i32 10, ptr %5, align 8, !dbg !3172, !tbaa !1914, !DIAssignID !3173
  call void @llvm.dbg.assign(metadata i32 10, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3173, metadata ptr %5, metadata !DIExpression()), !dbg !3164
  %6 = icmp ne ptr %0, null, !dbg !3174
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3175
  br i1 %8, label %10, label %9, !dbg !3175

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3176
  unreachable, !dbg !3176

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3177
  store ptr %0, ptr %11, align 8, !dbg !3178, !tbaa !1985, !DIAssignID !3179
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3179, metadata ptr %11, metadata !DIExpression()), !dbg !3164
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3180
  store ptr %1, ptr %12, align 8, !dbg !3181, !tbaa !1988, !DIAssignID !3182
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3067, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3182, metadata ptr %12, metadata !DIExpression()), !dbg !3164
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3183
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3184
  ret ptr %13, !dbg !3185
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3186 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3190, metadata !DIExpression()), !dbg !3193
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3191, metadata !DIExpression()), !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3192, metadata !DIExpression()), !dbg !3193
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3194
  ret ptr %4, !dbg !3195
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3196 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3200, metadata !DIExpression()), !dbg !3202
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3201, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i32 0, metadata !3190, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata ptr %0, metadata !3191, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %1, metadata !3192, metadata !DIExpression()), !dbg !3203
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3205
  ret ptr %3, !dbg !3206
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3207 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3211, metadata !DIExpression()), !dbg !3213
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3212, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 %0, metadata !3190, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata ptr %1, metadata !3191, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 -1, metadata !3192, metadata !DIExpression()), !dbg !3214
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3216
  ret ptr %3, !dbg !3217
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3218 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3222, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 0, metadata !3211, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata ptr %0, metadata !3212, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i32 0, metadata !3190, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata ptr %0, metadata !3191, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i64 -1, metadata !3192, metadata !DIExpression()), !dbg !3226
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3228
  ret ptr %2, !dbg !3229
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @get_root_dev_ino(ptr noundef nonnull writeonly %0) local_unnamed_addr #26 !dbg !3230 {
  %2 = alloca %struct.stat, align 16, !DIAssignID !3263
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3241, metadata !DIExpression(), metadata !3263, metadata ptr %2, metadata !DIExpression()), !dbg !3264
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3240, metadata !DIExpression()), !dbg !3264
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #38, !dbg !3265
  %3 = call i32 @lstat(ptr noundef nonnull @.str.91, ptr noundef nonnull %2) #38, !dbg !3266
  %4 = icmp eq i32 %3, 0, !dbg !3266
  br i1 %4, label %5, label %8, !dbg !3268

5:                                                ; preds = %1
  %6 = load <2 x i64>, ptr %2, align 16, !dbg !3269, !tbaa !1392
  %7 = shufflevector <2 x i64> %6, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !3270
  store <2 x i64> %7, ptr %0, align 8, !dbg !3270, !tbaa !1392
  br label %8, !dbg !3271

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %0, %5 ], [ null, %1 ], !dbg !3264
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #38, !dbg !3272
  ret ptr %9, !dbg !3272
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3273 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3312, metadata !DIExpression()), !dbg !3318
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3313, metadata !DIExpression()), !dbg !3318
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3314, metadata !DIExpression()), !dbg !3318
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3315, metadata !DIExpression()), !dbg !3318
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3316, metadata !DIExpression()), !dbg !3318
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3317, metadata !DIExpression()), !dbg !3318
  %7 = icmp eq ptr %1, null, !dbg !3319
  br i1 %7, label %10, label %8, !dbg !3321

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.92, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3322
  br label %12, !dbg !3322

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.93, ptr noundef %2, ptr noundef %3) #38, !dbg !3323
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.3.95, i32 noundef 5) #38, !dbg !3324
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3324
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.96, ptr noundef %0), !dbg !3325
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.5.97, i32 noundef 5) #38, !dbg !3326
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.98) #38, !dbg !3326
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.96, ptr noundef %0), !dbg !3327
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
  ], !dbg !3328

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.7.99, i32 noundef 5) #38, !dbg !3329
  %21 = load ptr, ptr %4, align 8, !dbg !3329, !tbaa !815
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3329
  br label %147, !dbg !3331

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.8.100, i32 noundef 5) #38, !dbg !3332
  %25 = load ptr, ptr %4, align 8, !dbg !3332, !tbaa !815
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3332
  %27 = load ptr, ptr %26, align 8, !dbg !3332, !tbaa !815
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3332
  br label %147, !dbg !3333

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.9.101, i32 noundef 5) #38, !dbg !3334
  %31 = load ptr, ptr %4, align 8, !dbg !3334, !tbaa !815
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3334
  %33 = load ptr, ptr %32, align 8, !dbg !3334, !tbaa !815
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3334
  %35 = load ptr, ptr %34, align 8, !dbg !3334, !tbaa !815
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3334
  br label %147, !dbg !3335

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.10.102, i32 noundef 5) #38, !dbg !3336
  %39 = load ptr, ptr %4, align 8, !dbg !3336, !tbaa !815
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3336
  %41 = load ptr, ptr %40, align 8, !dbg !3336, !tbaa !815
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3336
  %43 = load ptr, ptr %42, align 8, !dbg !3336, !tbaa !815
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3336
  %45 = load ptr, ptr %44, align 8, !dbg !3336, !tbaa !815
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3336
  br label %147, !dbg !3337

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.11.103, i32 noundef 5) #38, !dbg !3338
  %49 = load ptr, ptr %4, align 8, !dbg !3338, !tbaa !815
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3338
  %51 = load ptr, ptr %50, align 8, !dbg !3338, !tbaa !815
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3338
  %53 = load ptr, ptr %52, align 8, !dbg !3338, !tbaa !815
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3338
  %55 = load ptr, ptr %54, align 8, !dbg !3338, !tbaa !815
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3338
  %57 = load ptr, ptr %56, align 8, !dbg !3338, !tbaa !815
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3338
  br label %147, !dbg !3339

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.12.104, i32 noundef 5) #38, !dbg !3340
  %61 = load ptr, ptr %4, align 8, !dbg !3340, !tbaa !815
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3340
  %63 = load ptr, ptr %62, align 8, !dbg !3340, !tbaa !815
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3340
  %65 = load ptr, ptr %64, align 8, !dbg !3340, !tbaa !815
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3340
  %67 = load ptr, ptr %66, align 8, !dbg !3340, !tbaa !815
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3340
  %69 = load ptr, ptr %68, align 8, !dbg !3340, !tbaa !815
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3340
  %71 = load ptr, ptr %70, align 8, !dbg !3340, !tbaa !815
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3340
  br label %147, !dbg !3341

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.13.105, i32 noundef 5) #38, !dbg !3342
  %75 = load ptr, ptr %4, align 8, !dbg !3342, !tbaa !815
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3342
  %77 = load ptr, ptr %76, align 8, !dbg !3342, !tbaa !815
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3342
  %79 = load ptr, ptr %78, align 8, !dbg !3342, !tbaa !815
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3342
  %81 = load ptr, ptr %80, align 8, !dbg !3342, !tbaa !815
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3342
  %83 = load ptr, ptr %82, align 8, !dbg !3342, !tbaa !815
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3342
  %85 = load ptr, ptr %84, align 8, !dbg !3342, !tbaa !815
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3342
  %87 = load ptr, ptr %86, align 8, !dbg !3342, !tbaa !815
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3342
  br label %147, !dbg !3343

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.14.106, i32 noundef 5) #38, !dbg !3344
  %91 = load ptr, ptr %4, align 8, !dbg !3344, !tbaa !815
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3344
  %93 = load ptr, ptr %92, align 8, !dbg !3344, !tbaa !815
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3344
  %95 = load ptr, ptr %94, align 8, !dbg !3344, !tbaa !815
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3344
  %97 = load ptr, ptr %96, align 8, !dbg !3344, !tbaa !815
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3344
  %99 = load ptr, ptr %98, align 8, !dbg !3344, !tbaa !815
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3344
  %101 = load ptr, ptr %100, align 8, !dbg !3344, !tbaa !815
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3344
  %103 = load ptr, ptr %102, align 8, !dbg !3344, !tbaa !815
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3344
  %105 = load ptr, ptr %104, align 8, !dbg !3344, !tbaa !815
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3344
  br label %147, !dbg !3345

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.15.107, i32 noundef 5) #38, !dbg !3346
  %109 = load ptr, ptr %4, align 8, !dbg !3346, !tbaa !815
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3346
  %111 = load ptr, ptr %110, align 8, !dbg !3346, !tbaa !815
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3346
  %113 = load ptr, ptr %112, align 8, !dbg !3346, !tbaa !815
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3346
  %115 = load ptr, ptr %114, align 8, !dbg !3346, !tbaa !815
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3346
  %117 = load ptr, ptr %116, align 8, !dbg !3346, !tbaa !815
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3346
  %119 = load ptr, ptr %118, align 8, !dbg !3346, !tbaa !815
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3346
  %121 = load ptr, ptr %120, align 8, !dbg !3346, !tbaa !815
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3346
  %123 = load ptr, ptr %122, align 8, !dbg !3346, !tbaa !815
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3346
  %125 = load ptr, ptr %124, align 8, !dbg !3346, !tbaa !815
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3346
  br label %147, !dbg !3347

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.16.108, i32 noundef 5) #38, !dbg !3348
  %129 = load ptr, ptr %4, align 8, !dbg !3348, !tbaa !815
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3348
  %131 = load ptr, ptr %130, align 8, !dbg !3348, !tbaa !815
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3348
  %133 = load ptr, ptr %132, align 8, !dbg !3348, !tbaa !815
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3348
  %135 = load ptr, ptr %134, align 8, !dbg !3348, !tbaa !815
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3348
  %137 = load ptr, ptr %136, align 8, !dbg !3348, !tbaa !815
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3348
  %139 = load ptr, ptr %138, align 8, !dbg !3348, !tbaa !815
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3348
  %141 = load ptr, ptr %140, align 8, !dbg !3348, !tbaa !815
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3348
  %143 = load ptr, ptr %142, align 8, !dbg !3348, !tbaa !815
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3348
  %145 = load ptr, ptr %144, align 8, !dbg !3348, !tbaa !815
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3348
  br label %147, !dbg !3349

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3350
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3351 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3355, metadata !DIExpression()), !dbg !3361
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3356, metadata !DIExpression()), !dbg !3361
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3357, metadata !DIExpression()), !dbg !3361
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3358, metadata !DIExpression()), !dbg !3361
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3359, metadata !DIExpression()), !dbg !3361
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3360, metadata !DIExpression()), !dbg !3361
  br label %6, !dbg !3362

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3364
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3360, metadata !DIExpression()), !dbg !3361
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3365
  %9 = load ptr, ptr %8, align 8, !dbg !3365, !tbaa !815
  %10 = icmp eq ptr %9, null, !dbg !3367
  %11 = add i64 %7, 1, !dbg !3368
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3360, metadata !DIExpression()), !dbg !3361
  br i1 %10, label %12, label %6, !dbg !3367, !llvm.loop !3369

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3371
  ret void, !dbg !3372
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3373 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3390, metadata !DIExpression(), metadata !3392, metadata ptr %6, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3384, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3385, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3386, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3387, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3388, metadata !DIExpression()), !dbg !3393
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3394
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3389, metadata !DIExpression()), !dbg !3393
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3389, metadata !DIExpression()), !dbg !3393
  %10 = icmp ult i32 %9, 41, !dbg !3395
  br i1 %10, label %11, label %16, !dbg !3395

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3395
  %13 = zext nneg i32 %9 to i64, !dbg !3395
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3395
  %15 = add nuw nsw i32 %9, 8, !dbg !3395
  store i32 %15, ptr %4, align 8, !dbg !3395
  br label %19, !dbg !3395

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3395
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3395
  store ptr %18, ptr %7, align 8, !dbg !3395
  br label %19, !dbg !3395

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3395
  %22 = load ptr, ptr %21, align 8, !dbg !3395
  store ptr %22, ptr %6, align 16, !dbg !3398, !tbaa !815
  %23 = icmp eq ptr %22, null, !dbg !3399
  br i1 %23, label %128, label %24, !dbg !3400

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3389, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3389, metadata !DIExpression()), !dbg !3393
  %25 = icmp ult i32 %20, 41, !dbg !3395
  br i1 %25, label %29, label %26, !dbg !3395

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3395
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3395
  store ptr %28, ptr %7, align 8, !dbg !3395
  br label %34, !dbg !3395

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3395
  %31 = zext nneg i32 %20 to i64, !dbg !3395
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3395
  %33 = add nuw nsw i32 %20, 8, !dbg !3395
  store i32 %33, ptr %4, align 8, !dbg !3395
  br label %34, !dbg !3395

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3395
  %37 = load ptr, ptr %36, align 8, !dbg !3395
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3401
  store ptr %37, ptr %38, align 8, !dbg !3398, !tbaa !815
  %39 = icmp eq ptr %37, null, !dbg !3399
  br i1 %39, label %128, label %40, !dbg !3400

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3389, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3389, metadata !DIExpression()), !dbg !3393
  %41 = icmp ult i32 %35, 41, !dbg !3395
  br i1 %41, label %45, label %42, !dbg !3395

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3395
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3395
  store ptr %44, ptr %7, align 8, !dbg !3395
  br label %50, !dbg !3395

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3395
  %47 = zext nneg i32 %35 to i64, !dbg !3395
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3395
  %49 = add nuw nsw i32 %35, 8, !dbg !3395
  store i32 %49, ptr %4, align 8, !dbg !3395
  br label %50, !dbg !3395

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3395
  %53 = load ptr, ptr %52, align 8, !dbg !3395
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3401
  store ptr %53, ptr %54, align 16, !dbg !3398, !tbaa !815
  %55 = icmp eq ptr %53, null, !dbg !3399
  br i1 %55, label %128, label %56, !dbg !3400

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3389, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3389, metadata !DIExpression()), !dbg !3393
  %57 = icmp ult i32 %51, 41, !dbg !3395
  br i1 %57, label %61, label %58, !dbg !3395

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3395
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3395
  store ptr %60, ptr %7, align 8, !dbg !3395
  br label %66, !dbg !3395

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3395
  %63 = zext nneg i32 %51 to i64, !dbg !3395
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3395
  %65 = add nuw nsw i32 %51, 8, !dbg !3395
  store i32 %65, ptr %4, align 8, !dbg !3395
  br label %66, !dbg !3395

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3395
  %69 = load ptr, ptr %68, align 8, !dbg !3395
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3401
  store ptr %69, ptr %70, align 8, !dbg !3398, !tbaa !815
  %71 = icmp eq ptr %69, null, !dbg !3399
  br i1 %71, label %128, label %72, !dbg !3400

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3389, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3389, metadata !DIExpression()), !dbg !3393
  %73 = icmp ult i32 %67, 41, !dbg !3395
  br i1 %73, label %77, label %74, !dbg !3395

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3395
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3395
  store ptr %76, ptr %7, align 8, !dbg !3395
  br label %82, !dbg !3395

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3395
  %79 = zext nneg i32 %67 to i64, !dbg !3395
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3395
  %81 = add nuw nsw i32 %67, 8, !dbg !3395
  store i32 %81, ptr %4, align 8, !dbg !3395
  br label %82, !dbg !3395

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3395
  %85 = load ptr, ptr %84, align 8, !dbg !3395
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3401
  store ptr %85, ptr %86, align 16, !dbg !3398, !tbaa !815
  %87 = icmp eq ptr %85, null, !dbg !3399
  br i1 %87, label %128, label %88, !dbg !3400

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3389, metadata !DIExpression()), !dbg !3393
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3389, metadata !DIExpression()), !dbg !3393
  %89 = icmp ult i32 %83, 41, !dbg !3395
  br i1 %89, label %93, label %90, !dbg !3395

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3395
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3395
  store ptr %92, ptr %7, align 8, !dbg !3395
  br label %98, !dbg !3395

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3395
  %95 = zext nneg i32 %83 to i64, !dbg !3395
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3395
  %97 = add nuw nsw i32 %83, 8, !dbg !3395
  store i32 %97, ptr %4, align 8, !dbg !3395
  br label %98, !dbg !3395

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3395
  %100 = load ptr, ptr %99, align 8, !dbg !3395
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3401
  store ptr %100, ptr %101, align 8, !dbg !3398, !tbaa !815
  %102 = icmp eq ptr %100, null, !dbg !3399
  br i1 %102, label %128, label %103, !dbg !3400

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3389, metadata !DIExpression()), !dbg !3393
  %104 = load ptr, ptr %7, align 8, !dbg !3395
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3395
  store ptr %105, ptr %7, align 8, !dbg !3395
  %106 = load ptr, ptr %104, align 8, !dbg !3395
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3401
  store ptr %106, ptr %107, align 16, !dbg !3398, !tbaa !815
  %108 = icmp eq ptr %106, null, !dbg !3399
  br i1 %108, label %128, label %109, !dbg !3400

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3389, metadata !DIExpression()), !dbg !3393
  %110 = load ptr, ptr %7, align 8, !dbg !3395
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3395
  store ptr %111, ptr %7, align 8, !dbg !3395
  %112 = load ptr, ptr %110, align 8, !dbg !3395
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3401
  store ptr %112, ptr %113, align 8, !dbg !3398, !tbaa !815
  %114 = icmp eq ptr %112, null, !dbg !3399
  br i1 %114, label %128, label %115, !dbg !3400

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3389, metadata !DIExpression()), !dbg !3393
  %116 = load ptr, ptr %7, align 8, !dbg !3395
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3395
  store ptr %117, ptr %7, align 8, !dbg !3395
  %118 = load ptr, ptr %116, align 8, !dbg !3395
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3401
  store ptr %118, ptr %119, align 16, !dbg !3398, !tbaa !815
  %120 = icmp eq ptr %118, null, !dbg !3399
  br i1 %120, label %128, label %121, !dbg !3400

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3389, metadata !DIExpression()), !dbg !3393
  %122 = load ptr, ptr %7, align 8, !dbg !3395
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3395
  store ptr %123, ptr %7, align 8, !dbg !3395
  %124 = load ptr, ptr %122, align 8, !dbg !3395
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3401
  store ptr %124, ptr %125, align 8, !dbg !3398, !tbaa !815
  %126 = icmp eq ptr %124, null, !dbg !3399
  %127 = select i1 %126, i64 9, i64 10, !dbg !3400
  br label %128, !dbg !3400

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3402
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3403
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3404
  ret void, !dbg !3404
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3405 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3413, metadata !DIExpression(), metadata !3418, metadata ptr %5, metadata !DIExpression()), !dbg !3419
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3409, metadata !DIExpression()), !dbg !3419
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3410, metadata !DIExpression()), !dbg !3419
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3411, metadata !DIExpression()), !dbg !3419
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3412, metadata !DIExpression()), !dbg !3419
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !3420
  call void @llvm.va_start(ptr nonnull %5), !dbg !3421
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3422
  call void @llvm.va_end(ptr nonnull %5), !dbg !3423
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !3424
  ret void, !dbg !3424
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3425 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3426, !tbaa !815
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.96, ptr noundef %1), !dbg !3426
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.17.113, i32 noundef 5) #38, !dbg !3427
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.114) #38, !dbg !3427
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.19.115, i32 noundef 5) #38, !dbg !3428
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.116, ptr noundef nonnull @.str.21.117) #38, !dbg !3428
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.22.118, i32 noundef 5) #38, !dbg !3429
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #38, !dbg !3429
  ret void, !dbg !3430
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3431 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3436, metadata !DIExpression()), !dbg !3439
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3437, metadata !DIExpression()), !dbg !3439
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3438, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata ptr %0, metadata !3440, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %1, metadata !3443, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %2, metadata !3444, metadata !DIExpression()), !dbg !3445
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3447
  call void @llvm.dbg.value(metadata ptr %4, metadata !3448, metadata !DIExpression()), !dbg !3453
  %5 = icmp eq ptr %4, null, !dbg !3455
  br i1 %5, label %6, label %7, !dbg !3457

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3458
  unreachable, !dbg !3458

7:                                                ; preds = %3
  ret ptr %4, !dbg !3459
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3441 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3440, metadata !DIExpression()), !dbg !3460
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3443, metadata !DIExpression()), !dbg !3460
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3444, metadata !DIExpression()), !dbg !3460
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3461
  call void @llvm.dbg.value(metadata ptr %4, metadata !3448, metadata !DIExpression()), !dbg !3462
  %5 = icmp eq ptr %4, null, !dbg !3464
  br i1 %5, label %6, label %7, !dbg !3465

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3466
  unreachable, !dbg !3466

7:                                                ; preds = %3
  ret ptr %4, !dbg !3467
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3468 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3472, metadata !DIExpression()), !dbg !3473
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3474
  call void @llvm.dbg.value(metadata ptr %2, metadata !3448, metadata !DIExpression()), !dbg !3475
  %3 = icmp eq ptr %2, null, !dbg !3477
  br i1 %3, label %4, label %5, !dbg !3478

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3479
  unreachable, !dbg !3479

5:                                                ; preds = %1
  ret ptr %2, !dbg !3480
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3481 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3482 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3486, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 %0, metadata !3488, metadata !DIExpression()), !dbg !3492
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3494
  call void @llvm.dbg.value(metadata ptr %2, metadata !3448, metadata !DIExpression()), !dbg !3495
  %3 = icmp eq ptr %2, null, !dbg !3497
  br i1 %3, label %4, label %5, !dbg !3498

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3499
  unreachable, !dbg !3499

5:                                                ; preds = %1
  ret ptr %2, !dbg !3500
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3501 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3503, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 %0, metadata !3472, metadata !DIExpression()), !dbg !3505
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3507
  call void @llvm.dbg.value(metadata ptr %2, metadata !3448, metadata !DIExpression()), !dbg !3508
  %3 = icmp eq ptr %2, null, !dbg !3510
  br i1 %3, label %4, label %5, !dbg !3511

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3512
  unreachable, !dbg !3512

5:                                                ; preds = %1
  ret ptr %2, !dbg !3513
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3514 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3518, metadata !DIExpression()), !dbg !3520
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3519, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata ptr %0, metadata !3521, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i64 %1, metadata !3525, metadata !DIExpression()), !dbg !3526
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3528
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !3529
  call void @llvm.dbg.value(metadata ptr %4, metadata !3448, metadata !DIExpression()), !dbg !3530
  %5 = icmp eq ptr %4, null, !dbg !3532
  br i1 %5, label %6, label %7, !dbg !3533

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3534
  unreachable, !dbg !3534

7:                                                ; preds = %2
  ret ptr %4, !dbg !3535
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3536 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3537 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3541, metadata !DIExpression()), !dbg !3543
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3542, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata ptr %0, metadata !3544, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i64 %1, metadata !3547, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata ptr %0, metadata !3521, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i64 %1, metadata !3525, metadata !DIExpression()), !dbg !3550
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3552
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !3553
  call void @llvm.dbg.value(metadata ptr %4, metadata !3448, metadata !DIExpression()), !dbg !3554
  %5 = icmp eq ptr %4, null, !dbg !3556
  br i1 %5, label %6, label %7, !dbg !3557

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3558
  unreachable, !dbg !3558

7:                                                ; preds = %2
  ret ptr %4, !dbg !3559
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3560 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3564, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3565, metadata !DIExpression()), !dbg !3567
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3566, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.value(metadata ptr %0, metadata !3568, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i64 %1, metadata !3571, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i64 %2, metadata !3572, metadata !DIExpression()), !dbg !3573
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3575
  call void @llvm.dbg.value(metadata ptr %4, metadata !3448, metadata !DIExpression()), !dbg !3576
  %5 = icmp eq ptr %4, null, !dbg !3578
  br i1 %5, label %6, label %7, !dbg !3579

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3580
  unreachable, !dbg !3580

7:                                                ; preds = %3
  ret ptr %4, !dbg !3581
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3582 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3586, metadata !DIExpression()), !dbg !3588
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3587, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata ptr null, metadata !3440, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i64 %0, metadata !3443, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i64 %1, metadata !3444, metadata !DIExpression()), !dbg !3589
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3591
  call void @llvm.dbg.value(metadata ptr %3, metadata !3448, metadata !DIExpression()), !dbg !3592
  %4 = icmp eq ptr %3, null, !dbg !3594
  br i1 %4, label %5, label %6, !dbg !3595

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3596
  unreachable, !dbg !3596

6:                                                ; preds = %2
  ret ptr %3, !dbg !3597
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3598 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3602, metadata !DIExpression()), !dbg !3604
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3603, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr null, metadata !3564, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i64 %0, metadata !3565, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i64 %1, metadata !3566, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata ptr null, metadata !3568, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i64 %0, metadata !3571, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.value(metadata i64 %1, metadata !3572, metadata !DIExpression()), !dbg !3607
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3609
  call void @llvm.dbg.value(metadata ptr %3, metadata !3448, metadata !DIExpression()), !dbg !3610
  %4 = icmp eq ptr %3, null, !dbg !3612
  br i1 %4, label %5, label %6, !dbg !3613

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3614
  unreachable, !dbg !3614

6:                                                ; preds = %2
  ret ptr %3, !dbg !3615
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3616 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3620, metadata !DIExpression()), !dbg !3622
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3621, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata ptr %0, metadata !748, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata ptr %1, metadata !749, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 1, metadata !750, metadata !DIExpression()), !dbg !3623
  %3 = load i64, ptr %1, align 8, !dbg !3625, !tbaa !1392
  call void @llvm.dbg.value(metadata i64 %3, metadata !751, metadata !DIExpression()), !dbg !3623
  %4 = icmp eq ptr %0, null, !dbg !3626
  br i1 %4, label %5, label %8, !dbg !3628

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3629
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3632
  br label %15, !dbg !3632

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3633
  %10 = add nuw i64 %9, 1, !dbg !3633
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3633
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3633
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3633
  call void @llvm.dbg.value(metadata i64 %13, metadata !751, metadata !DIExpression()), !dbg !3623
  br i1 %12, label %14, label %15, !dbg !3636

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !3637
  unreachable, !dbg !3637

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3623
  call void @llvm.dbg.value(metadata i64 %16, metadata !751, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata ptr %0, metadata !3440, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 %16, metadata !3443, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 1, metadata !3444, metadata !DIExpression()), !dbg !3638
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3640
  call void @llvm.dbg.value(metadata ptr %17, metadata !3448, metadata !DIExpression()), !dbg !3641
  %18 = icmp eq ptr %17, null, !dbg !3643
  br i1 %18, label %19, label %20, !dbg !3644

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !3645
  unreachable, !dbg !3645

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !748, metadata !DIExpression()), !dbg !3623
  store i64 %16, ptr %1, align 8, !dbg !3646, !tbaa !1392
  ret ptr %17, !dbg !3647
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !743 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !748, metadata !DIExpression()), !dbg !3648
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !749, metadata !DIExpression()), !dbg !3648
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !750, metadata !DIExpression()), !dbg !3648
  %4 = load i64, ptr %1, align 8, !dbg !3649, !tbaa !1392
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !751, metadata !DIExpression()), !dbg !3648
  %5 = icmp eq ptr %0, null, !dbg !3650
  br i1 %5, label %6, label %13, !dbg !3651

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3652
  br i1 %7, label %8, label %20, !dbg !3653

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3654
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !751, metadata !DIExpression()), !dbg !3648
  %10 = icmp ugt i64 %2, 128, !dbg !3656
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3657
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !751, metadata !DIExpression()), !dbg !3648
  br label %20, !dbg !3658

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3659
  %15 = add nuw i64 %14, 1, !dbg !3659
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3659
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3659
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3659
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !751, metadata !DIExpression()), !dbg !3648
  br i1 %17, label %19, label %20, !dbg !3660

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !3661
  unreachable, !dbg !3661

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3648
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !751, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata ptr %0, metadata !3440, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 %21, metadata !3443, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 %2, metadata !3444, metadata !DIExpression()), !dbg !3662
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3664
  call void @llvm.dbg.value(metadata ptr %22, metadata !3448, metadata !DIExpression()), !dbg !3665
  %23 = icmp eq ptr %22, null, !dbg !3667
  br i1 %23, label %24, label %25, !dbg !3668

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !3669
  unreachable, !dbg !3669

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !748, metadata !DIExpression()), !dbg !3648
  store i64 %21, ptr %1, align 8, !dbg !3670, !tbaa !1392
  ret ptr %22, !dbg !3671
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !755 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !764, metadata !DIExpression()), !dbg !3672
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !765, metadata !DIExpression()), !dbg !3672
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !766, metadata !DIExpression()), !dbg !3672
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !767, metadata !DIExpression()), !dbg !3672
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !768, metadata !DIExpression()), !dbg !3672
  %6 = load i64, ptr %1, align 8, !dbg !3673, !tbaa !1392
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !769, metadata !DIExpression()), !dbg !3672
  %7 = ashr i64 %6, 1, !dbg !3674
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3674
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3674
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3674
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !770, metadata !DIExpression()), !dbg !3672
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3676
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !770, metadata !DIExpression()), !dbg !3672
  %12 = icmp sgt i64 %3, -1, !dbg !3677
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3679
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !770, metadata !DIExpression()), !dbg !3672
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3680
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3680
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !771, metadata !DIExpression()), !dbg !3672
  %18 = icmp slt i64 %17, 128, !dbg !3680
  %19 = select i1 %18, i64 128, i64 0, !dbg !3680
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3680
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !772, metadata !DIExpression()), !dbg !3672
  %21 = icmp eq i64 %20, 0, !dbg !3681
  br i1 %21, label %26, label %22, !dbg !3683

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3684
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !770, metadata !DIExpression()), !dbg !3672
  %24 = srem i64 %20, %4, !dbg !3686
  %25 = sub nsw i64 %20, %24, !dbg !3687
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !771, metadata !DIExpression()), !dbg !3672
  br label %26, !dbg !3688

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3672
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3672
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !771, metadata !DIExpression()), !dbg !3672
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !770, metadata !DIExpression()), !dbg !3672
  %29 = icmp eq ptr %0, null, !dbg !3689
  br i1 %29, label %30, label %31, !dbg !3691

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3692, !tbaa !1392
  br label %31, !dbg !3693

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3694
  %33 = icmp slt i64 %32, %2, !dbg !3696
  br i1 %33, label %34, label %46, !dbg !3697

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3698
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3698
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3698
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !770, metadata !DIExpression()), !dbg !3672
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3699
  br i1 %40, label %45, label %41, !dbg !3699

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3700
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3700
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3700
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !771, metadata !DIExpression()), !dbg !3672
  br i1 %43, label %45, label %46, !dbg !3701

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #40, !dbg !3702
  unreachable, !dbg !3702

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3672
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3672
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !771, metadata !DIExpression()), !dbg !3672
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !770, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata ptr %0, metadata !3518, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %48, metadata !3519, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata ptr %0, metadata !3521, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 %48, metadata !3525, metadata !DIExpression()), !dbg !3705
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3707
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #46, !dbg !3708
  call void @llvm.dbg.value(metadata ptr %50, metadata !3448, metadata !DIExpression()), !dbg !3709
  %51 = icmp eq ptr %50, null, !dbg !3711
  br i1 %51, label %52, label %53, !dbg !3712

52:                                               ; preds = %46
  tail call void @xalloc_die() #40, !dbg !3713
  unreachable, !dbg !3713

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !764, metadata !DIExpression()), !dbg !3672
  store i64 %47, ptr %1, align 8, !dbg !3714, !tbaa !1392
  ret ptr %50, !dbg !3715
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3716 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3718, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %0, metadata !3720, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i64 1, metadata !3723, metadata !DIExpression()), !dbg !3724
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3726
  call void @llvm.dbg.value(metadata ptr %2, metadata !3448, metadata !DIExpression()), !dbg !3727
  %3 = icmp eq ptr %2, null, !dbg !3729
  br i1 %3, label %4, label %5, !dbg !3730

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3731
  unreachable, !dbg !3731

5:                                                ; preds = %1
  ret ptr %2, !dbg !3732
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3733 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3721 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3720, metadata !DIExpression()), !dbg !3734
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3723, metadata !DIExpression()), !dbg !3734
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3735
  call void @llvm.dbg.value(metadata ptr %3, metadata !3448, metadata !DIExpression()), !dbg !3736
  %4 = icmp eq ptr %3, null, !dbg !3738
  br i1 %4, label %5, label %6, !dbg !3739

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3740
  unreachable, !dbg !3740

6:                                                ; preds = %2
  ret ptr %3, !dbg !3741
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3742 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3744, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i64 %0, metadata !3746, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 1, metadata !3749, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %0, metadata !3752, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i64 1, metadata !3755, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i64 %0, metadata !3752, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i64 1, metadata !3755, metadata !DIExpression()), !dbg !3756
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3758
  call void @llvm.dbg.value(metadata ptr %2, metadata !3448, metadata !DIExpression()), !dbg !3759
  %3 = icmp eq ptr %2, null, !dbg !3761
  br i1 %3, label %4, label %5, !dbg !3762

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3763
  unreachable, !dbg !3763

5:                                                ; preds = %1
  ret ptr %2, !dbg !3764
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3747 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3746, metadata !DIExpression()), !dbg !3765
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3749, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i64 %0, metadata !3752, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i64 %1, metadata !3755, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i64 %0, metadata !3752, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i64 %1, metadata !3755, metadata !DIExpression()), !dbg !3766
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3768
  call void @llvm.dbg.value(metadata ptr %3, metadata !3448, metadata !DIExpression()), !dbg !3769
  %4 = icmp eq ptr %3, null, !dbg !3771
  br i1 %4, label %5, label %6, !dbg !3772

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3773
  unreachable, !dbg !3773

6:                                                ; preds = %2
  ret ptr %3, !dbg !3774
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3775 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3779, metadata !DIExpression()), !dbg !3781
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3780, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i64 %1, metadata !3472, metadata !DIExpression()), !dbg !3782
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3784
  call void @llvm.dbg.value(metadata ptr %3, metadata !3448, metadata !DIExpression()), !dbg !3785
  %4 = icmp eq ptr %3, null, !dbg !3787
  br i1 %4, label %5, label %6, !dbg !3788

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3789
  unreachable, !dbg !3789

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3790, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %0, metadata !3793, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 %1, metadata !3794, metadata !DIExpression()), !dbg !3795
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3797
  ret ptr %3, !dbg !3798
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3799 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3803, metadata !DIExpression()), !dbg !3805
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3804, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i64 %1, metadata !3486, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 %1, metadata !3488, metadata !DIExpression()), !dbg !3808
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3810
  call void @llvm.dbg.value(metadata ptr %3, metadata !3448, metadata !DIExpression()), !dbg !3811
  %4 = icmp eq ptr %3, null, !dbg !3813
  br i1 %4, label %5, label %6, !dbg !3814

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3815
  unreachable, !dbg !3815

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3790, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata ptr %0, metadata !3793, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i64 %1, metadata !3794, metadata !DIExpression()), !dbg !3816
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3818
  ret ptr %3, !dbg !3819
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3820 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3824, metadata !DIExpression()), !dbg !3827
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3825, metadata !DIExpression()), !dbg !3827
  %3 = add nsw i64 %1, 1, !dbg !3828
  call void @llvm.dbg.value(metadata i64 %3, metadata !3486, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i64 %3, metadata !3488, metadata !DIExpression()), !dbg !3831
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3833
  call void @llvm.dbg.value(metadata ptr %4, metadata !3448, metadata !DIExpression()), !dbg !3834
  %5 = icmp eq ptr %4, null, !dbg !3836
  br i1 %5, label %6, label %7, !dbg !3837

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3838
  unreachable, !dbg !3838

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3826, metadata !DIExpression()), !dbg !3827
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3839
  store i8 0, ptr %8, align 1, !dbg !3840, !tbaa !889
  call void @llvm.dbg.value(metadata ptr %4, metadata !3790, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata ptr %0, metadata !3793, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i64 %1, metadata !3794, metadata !DIExpression()), !dbg !3841
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3843
  ret ptr %4, !dbg !3844
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3845 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3847, metadata !DIExpression()), !dbg !3848
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3849
  %3 = add i64 %2, 1, !dbg !3850
  call void @llvm.dbg.value(metadata ptr %0, metadata !3779, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 %3, metadata !3780, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 %3, metadata !3472, metadata !DIExpression()), !dbg !3853
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3855
  call void @llvm.dbg.value(metadata ptr %4, metadata !3448, metadata !DIExpression()), !dbg !3856
  %5 = icmp eq ptr %4, null, !dbg !3858
  br i1 %5, label %6, label %7, !dbg !3859

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3860
  unreachable, !dbg !3860

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3790, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata ptr %0, metadata !3793, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i64 %3, metadata !3794, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3863
  ret ptr %4, !dbg !3864
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3865 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3870, !tbaa !880
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3867, metadata !DIExpression()), !dbg !3871
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.133, ptr noundef nonnull @.str.2.134, i32 noundef 5) #38, !dbg !3870
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef %2) #38, !dbg !3870
  %3 = icmp eq i32 %1, 0, !dbg !3870
  tail call void @llvm.assume(i1 %3), !dbg !3870
  tail call void @abort() #40, !dbg !3872
  unreachable, !dbg !3872
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xgetcwd() local_unnamed_addr #10 !dbg !3873 {
  %1 = tail call ptr @getcwd(ptr noundef null, i64 noundef 0) #38, !dbg !3878
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3877, metadata !DIExpression()), !dbg !3879
  %2 = icmp eq ptr %1, null, !dbg !3880
  br i1 %2, label %3, label %8, !dbg !3882

3:                                                ; preds = %0
  %4 = tail call ptr @__errno_location() #41, !dbg !3883
  %5 = load i32, ptr %4, align 4, !dbg !3883, !tbaa !880
  %6 = icmp eq i32 %5, 12, !dbg !3884
  br i1 %6, label %7, label %8, !dbg !3885

7:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3886
  unreachable, !dbg !3886

8:                                                ; preds = %3, %0
  ret ptr %1, !dbg !3887
}

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3888 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3926, metadata !DIExpression()), !dbg !3931
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3927, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3933, metadata !DIExpression()), !dbg !3936
  %3 = load i32, ptr %0, align 8, !dbg !3938, !tbaa !3939
  %4 = and i32 %3, 32, !dbg !3940
  %5 = icmp eq i32 %4, 0, !dbg !3940
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3929, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !3941
  %7 = icmp eq i32 %6, 0, !dbg !3942
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3930, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  br i1 %5, label %8, label %18, !dbg !3943

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3945
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3931
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3946
  %11 = xor i1 %7, true, !dbg !3946
  %12 = sext i1 %11 to i32, !dbg !3946
  br i1 %10, label %21, label %13, !dbg !3946

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !3947
  %15 = load i32, ptr %14, align 4, !dbg !3947, !tbaa !880
  %16 = icmp ne i32 %15, 9, !dbg !3948
  %17 = sext i1 %16 to i32, !dbg !3949
  br label %21, !dbg !3949

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3950

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !3952
  store i32 0, ptr %20, align 4, !dbg !3954, !tbaa !880
  br label %21, !dbg !3952

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3931
  ret i32 %22, !dbg !3955
}

; Function Attrs: nounwind
declare !dbg !3956 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3960 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3998, metadata !DIExpression()), !dbg !4002
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3999, metadata !DIExpression()), !dbg !4002
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4003
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4000, metadata !DIExpression()), !dbg !4002
  %3 = icmp slt i32 %2, 0, !dbg !4004
  br i1 %3, label %4, label %6, !dbg !4006

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4007
  br label %24, !dbg !4008

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !4009
  %8 = icmp eq i32 %7, 0, !dbg !4009
  br i1 %8, label %13, label %9, !dbg !4011

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4012
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !4013
  %12 = icmp eq i64 %11, -1, !dbg !4014
  br i1 %12, label %16, label %13, !dbg !4015

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !4016
  %15 = icmp eq i32 %14, 0, !dbg !4016
  br i1 %15, label %16, label %18, !dbg !4017

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3999, metadata !DIExpression()), !dbg !4002
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4001, metadata !DIExpression()), !dbg !4002
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4018
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4001, metadata !DIExpression()), !dbg !4002
  br label %24, !dbg !4019

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !4020
  %20 = load i32, ptr %19, align 4, !dbg !4020, !tbaa !880
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3999, metadata !DIExpression()), !dbg !4002
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4001, metadata !DIExpression()), !dbg !4002
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4018
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4001, metadata !DIExpression()), !dbg !4002
  %22 = icmp eq i32 %20, 0, !dbg !4021
  br i1 %22, label %24, label %23, !dbg !4019

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4023, !tbaa !880
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4001, metadata !DIExpression()), !dbg !4002
  br label %24, !dbg !4025

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4002
  ret i32 %25, !dbg !4026
}

; Function Attrs: nofree nounwind
declare !dbg !4027 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4028 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4029 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4030 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4033 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4071, metadata !DIExpression()), !dbg !4072
  %2 = icmp eq ptr %0, null, !dbg !4073
  br i1 %2, label %6, label %3, !dbg !4075

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !4076
  %5 = icmp eq i32 %4, 0, !dbg !4076
  br i1 %5, label %6, label %8, !dbg !4077

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4078
  br label %16, !dbg !4079

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4080, metadata !DIExpression()), !dbg !4085
  %9 = load i32, ptr %0, align 8, !dbg !4087, !tbaa !3939
  %10 = and i32 %9, 256, !dbg !4089
  %11 = icmp eq i32 %10, 0, !dbg !4089
  br i1 %11, label %14, label %12, !dbg !4090

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !4091
  br label %14, !dbg !4091

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4092
  br label %16, !dbg !4093

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4072
  ret i32 %17, !dbg !4094
}

; Function Attrs: nofree nounwind
declare !dbg !4095 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4096 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4135, metadata !DIExpression()), !dbg !4141
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4136, metadata !DIExpression()), !dbg !4141
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4137, metadata !DIExpression()), !dbg !4141
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4142
  %5 = load ptr, ptr %4, align 8, !dbg !4142, !tbaa !4143
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4144
  %7 = load ptr, ptr %6, align 8, !dbg !4144, !tbaa !4145
  %8 = icmp eq ptr %5, %7, !dbg !4146
  br i1 %8, label %9, label %27, !dbg !4147

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4148
  %11 = load ptr, ptr %10, align 8, !dbg !4148, !tbaa !1720
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4149
  %13 = load ptr, ptr %12, align 8, !dbg !4149, !tbaa !4150
  %14 = icmp eq ptr %11, %13, !dbg !4151
  br i1 %14, label %15, label %27, !dbg !4152

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4153
  %17 = load ptr, ptr %16, align 8, !dbg !4153, !tbaa !4154
  %18 = icmp eq ptr %17, null, !dbg !4155
  br i1 %18, label %19, label %27, !dbg !4156

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4157
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4138, metadata !DIExpression()), !dbg !4159
  %22 = icmp eq i64 %21, -1, !dbg !4160
  br i1 %22, label %29, label %23, !dbg !4162

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4163, !tbaa !3939
  %25 = and i32 %24, -17, !dbg !4163
  store i32 %25, ptr %0, align 8, !dbg !4163, !tbaa !3939
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4164
  store i64 %21, ptr %26, align 8, !dbg !4165, !tbaa !4166
  br label %29, !dbg !4167

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4168
  br label %29, !dbg !4169

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4141
  ret i32 %30, !dbg !4170
}

; Function Attrs: nofree nounwind
declare !dbg !4171 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4174 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4179, metadata !DIExpression()), !dbg !4184
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4180, metadata !DIExpression()), !dbg !4184
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4181, metadata !DIExpression()), !dbg !4184
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4182, metadata !DIExpression()), !dbg !4184
  %5 = icmp eq ptr %1, null, !dbg !4185
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4187
  %7 = select i1 %5, ptr @.str.148, ptr %1, !dbg !4187
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4187
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4181, metadata !DIExpression()), !dbg !4184
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4180, metadata !DIExpression()), !dbg !4184
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4179, metadata !DIExpression()), !dbg !4184
  %9 = icmp eq ptr %3, null, !dbg !4188
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4190
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4182, metadata !DIExpression()), !dbg !4184
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #38, !dbg !4191
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4183, metadata !DIExpression()), !dbg !4184
  %12 = icmp ult i64 %11, -3, !dbg !4192
  br i1 %12, label %13, label %17, !dbg !4194

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !4195
  %15 = icmp eq i32 %14, 0, !dbg !4195
  br i1 %15, label %16, label %29, !dbg !4196

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4197, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata ptr %10, metadata !4204, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 0, metadata !4207, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i64 8, metadata !4208, metadata !DIExpression()), !dbg !4209
  store i64 0, ptr %10, align 1, !dbg !4211
  br label %29, !dbg !4212

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4213
  br i1 %18, label %19, label %20, !dbg !4215

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !4216
  unreachable, !dbg !4216

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4217

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !4219
  br i1 %23, label %29, label %24, !dbg !4220

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4221
  br i1 %25, label %29, label %26, !dbg !4224

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4225, !tbaa !889
  %28 = zext i8 %27 to i32, !dbg !4226
  store i32 %28, ptr %6, align 4, !dbg !4227, !tbaa !880
  br label %29, !dbg !4228

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4184
  ret i64 %30, !dbg !4229
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4230 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4236 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4238, metadata !DIExpression()), !dbg !4242
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4239, metadata !DIExpression()), !dbg !4242
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4240, metadata !DIExpression()), !dbg !4242
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4243
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4243
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4241, metadata !DIExpression()), !dbg !4242
  br i1 %5, label %6, label %8, !dbg !4245

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #41, !dbg !4246
  store i32 12, ptr %7, align 4, !dbg !4248, !tbaa !880
  br label %12, !dbg !4249

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4243
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4241, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.value(metadata ptr %0, metadata !4250, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %9, metadata !4253, metadata !DIExpression()), !dbg !4254
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4256
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #46, !dbg !4257
  br label %12, !dbg !4258

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4242
  ret ptr %13, !dbg !4259
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4260 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4269
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4265, metadata !DIExpression(), metadata !4269, metadata ptr %2, metadata !DIExpression()), !dbg !4270
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4264, metadata !DIExpression()), !dbg !4270
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4271
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4272
  %4 = icmp eq i32 %3, 0, !dbg !4272
  br i1 %4, label %5, label %12, !dbg !4274

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4275, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata !847, metadata !4278, metadata !DIExpression()), !dbg !4279
  %6 = load i16, ptr %2, align 16, !dbg !4282
  %7 = icmp eq i16 %6, 67, !dbg !4282
  br i1 %7, label %11, label %8, !dbg !4283

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4275, metadata !DIExpression()), !dbg !4284
  call void @llvm.dbg.value(metadata ptr @.str.1.153, metadata !4278, metadata !DIExpression()), !dbg !4284
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.153, i64 6), !dbg !4286
  %10 = icmp eq i32 %9, 0, !dbg !4287
  br i1 %10, label %11, label %12, !dbg !4288

11:                                               ; preds = %8, %5
  br label %12, !dbg !4289

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4270
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4290
  ret i1 %13, !dbg !4290
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4291 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4295, metadata !DIExpression()), !dbg !4298
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4296, metadata !DIExpression()), !dbg !4298
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4297, metadata !DIExpression()), !dbg !4298
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4299
  ret i32 %4, !dbg !4300
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4301 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4305, metadata !DIExpression()), !dbg !4306
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4307
  ret ptr %2, !dbg !4308
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4309 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4311, metadata !DIExpression()), !dbg !4313
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4314
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4312, metadata !DIExpression()), !dbg !4313
  ret ptr %2, !dbg !4315
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4316 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4318, metadata !DIExpression()), !dbg !4325
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4319, metadata !DIExpression()), !dbg !4325
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4320, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i32 %0, metadata !4311, metadata !DIExpression()), !dbg !4326
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4328
  call void @llvm.dbg.value(metadata ptr %4, metadata !4312, metadata !DIExpression()), !dbg !4326
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4321, metadata !DIExpression()), !dbg !4325
  %5 = icmp eq ptr %4, null, !dbg !4329
  br i1 %5, label %6, label %9, !dbg !4330

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4331
  br i1 %7, label %19, label %8, !dbg !4334

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4335, !tbaa !889
  br label %19, !dbg !4336

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4337
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4322, metadata !DIExpression()), !dbg !4338
  %11 = icmp ult i64 %10, %2, !dbg !4339
  br i1 %11, label %12, label %14, !dbg !4341

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4342
  call void @llvm.dbg.value(metadata ptr %1, metadata !4344, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata ptr %4, metadata !4347, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata i64 %13, metadata !4348, metadata !DIExpression()), !dbg !4349
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #38, !dbg !4351
  br label %19, !dbg !4352

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4353
  br i1 %15, label %19, label %16, !dbg !4356

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4357
  call void @llvm.dbg.value(metadata ptr %1, metadata !4344, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata ptr %4, metadata !4347, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i64 %17, metadata !4348, metadata !DIExpression()), !dbg !4359
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4361
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4362
  store i8 0, ptr %18, align 1, !dbg !4363, !tbaa !889
  br label %19, !dbg !4364

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4365
  ret i32 %20, !dbg !4366
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
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!79, !406, !410, !425, !696, !728, !473, !487, !535, !730, !732, !688, !739, !774, !776, !778, !780, !782, !784, !712, !786, !788, !792, !794}
!llvm.ident = !{!796, !796, !796, !796, !796, !796, !796, !796, !796, !796, !796, !796, !796, !796, !796, !796, !796, !796, !796, !796, !796, !796, !796, !796}
!llvm.module.flags = !{!797, !798, !799, !800, !801, !802, !803}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/pwd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "706e724ab654cd1fe336b61765fe7047")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!79 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/pwd.o -MD -MP -MF src/.deps/pwd.Tpo -c src/pwd.c -o src/.pwd.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !80, retainedTypes: !120, globals: !130, splitDebugInlining: false, nameTableKind: None)
!80 = !{!81, !87, !103, !117}
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 337, baseType: !83, size: 32, elements: !84)
!82 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!86 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 18, baseType: !126)
!125 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !176)
!175 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!198 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!394 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!406 = distinct !DICompileUnit(language: DW_LANG_C11, file: !403, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !407, splitDebugInlining: false, nameTableKind: None)
!407 = !{!401, !404}
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "file_name", scope: !410, file: !411, line: 45, type: !127, isLocal: true, isDefinition: true)
!410 = distinct !DICompileUnit(language: DW_LANG_C11, file: !411, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !412, splitDebugInlining: false, nameTableKind: None)
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
!424 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !425, file: !426, line: 66, type: !468, isLocal: false, isDefinition: true)
!425 = distinct !DICompileUnit(language: DW_LANG_C11, file: !426, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !427, globals: !428, splitDebugInlining: false, nameTableKind: None)
!426 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!427 = !{!121, !129}
!428 = !{!429, !431, !450, !452, !454, !456, !423, !458, !460, !462, !464, !466}
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !426, line: 272, type: !231, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "old_file_name", scope: !433, file: !426, line: 304, type: !127, isLocal: true, isDefinition: true)
!433 = distinct !DISubprogram(name: "verror_at_line", scope: !426, file: !426, line: 298, type: !434, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !443)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !83, !83, !127, !89, !127, !436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !438)
!438 = !{!439, !440, !441, !442}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !437, file: !426, baseType: !89, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !437, file: !426, baseType: !89, size: 32, offset: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !437, file: !426, baseType: !121, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !437, file: !426, baseType: !121, size: 64, offset: 128)
!443 = !{!444, !445, !446, !447, !448, !449}
!444 = !DILocalVariable(name: "status", arg: 1, scope: !433, file: !426, line: 298, type: !83)
!445 = !DILocalVariable(name: "errnum", arg: 2, scope: !433, file: !426, line: 298, type: !83)
!446 = !DILocalVariable(name: "file_name", arg: 3, scope: !433, file: !426, line: 298, type: !127)
!447 = !DILocalVariable(name: "line_number", arg: 4, scope: !433, file: !426, line: 298, type: !89)
!448 = !DILocalVariable(name: "message", arg: 5, scope: !433, file: !426, line: 298, type: !127)
!449 = !DILocalVariable(name: "args", arg: 6, scope: !433, file: !426, line: 298, type: !436)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "old_line_number", scope: !433, file: !426, line: 305, type: !89, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !426, line: 338, type: !19, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !426, line: 346, type: !267, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !426, line: 346, type: !245, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "error_message_count", scope: !425, file: !426, line: 69, type: !89, isLocal: false, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !425, file: !426, line: 295, type: !83, isLocal: false, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !426, line: 208, type: !262, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !426, line: 208, type: !381, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !426, line: 214, type: !231, isLocal: true, isDefinition: true)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null}
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(name: "program_name", scope: !473, file: !474, line: 31, type: !127, isLocal: false, isDefinition: true)
!473 = distinct !DICompileUnit(language: DW_LANG_C11, file: !474, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !475, globals: !476, splitDebugInlining: false, nameTableKind: None)
!474 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!475 = !{!121, !122}
!476 = !{!471, !477, !479}
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !474, line: 46, type: !267, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !474, line: 49, type: !19, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "utf07FF", scope: !483, file: !484, line: 46, type: !511, isLocal: true, isDefinition: true)
!483 = distinct !DISubprogram(name: "proper_name_lite", scope: !484, file: !484, line: 38, type: !485, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !489)
!484 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!485 = !DISubroutineType(types: !486)
!486 = !{!127, !127, !127}
!487 = distinct !DICompileUnit(language: DW_LANG_C11, file: !484, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !488, splitDebugInlining: false, nameTableKind: None)
!488 = !{!481}
!489 = !{!490, !491, !492, !493, !498}
!490 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !483, file: !484, line: 38, type: !127)
!491 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !483, file: !484, line: 38, type: !127)
!492 = !DILocalVariable(name: "translation", scope: !483, file: !484, line: 40, type: !127)
!493 = !DILocalVariable(name: "w", scope: !483, file: !484, line: 47, type: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !495, line: 37, baseType: !496)
!495 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !198, line: 57, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !198, line: 42, baseType: !89)
!498 = !DILocalVariable(name: "mbs", scope: !483, file: !484, line: 48, type: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !500, line: 6, baseType: !501)
!500 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !502, line: 21, baseType: !503)
!502 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !502, line: 13, size: 64, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !503, file: !502, line: 15, baseType: !83, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !503, file: !502, line: 20, baseType: !507, size: 32, offset: 32)
!507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !503, file: !502, line: 16, size: 32, elements: !508)
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !507, file: !502, line: 18, baseType: !89, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !507, file: !502, line: 19, baseType: !19, size: 32)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 16, elements: !246)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !514, line: 78, type: !267, isLocal: true, isDefinition: true)
!514 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !514, line: 79, type: !240, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !514, line: 80, type: !138, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !514, line: 81, type: !138, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !514, line: 82, type: !220, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !514, line: 83, type: !245, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !514, line: 84, type: !267, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !514, line: 85, type: !262, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !514, line: 86, type: !262, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !514, line: 87, type: !267, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !535, file: !514, line: 76, type: !609, isLocal: false, isDefinition: true)
!535 = distinct !DICompileUnit(language: DW_LANG_C11, file: !514, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !536, retainedTypes: !544, globals: !545, splitDebugInlining: false, nameTableKind: None)
!536 = !{!537, !539, !87}
!537 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !538, line: 42, baseType: !89, size: 32, elements: !105)
!538 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!539 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !538, line: 254, baseType: !89, size: 32, elements: !540)
!540 = !{!541, !542, !543}
!541 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!542 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!543 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!544 = !{!121, !83, !123, !124}
!545 = !{!512, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !546, !550, !560, !562, !567, !569, !571, !573, !575, !598, !605, !607}
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !535, file: !514, line: 92, type: !548, isLocal: false, isDefinition: true)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 320, elements: !65)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !535, file: !514, line: 1040, type: !552, isLocal: false, isDefinition: true)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !514, line: 56, size: 448, elements: !553)
!553 = !{!554, !555, !556, !558, !559}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !552, file: !514, line: 59, baseType: !537, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !552, file: !514, line: 62, baseType: !83, size: 32, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !552, file: !514, line: 66, baseType: !557, size: 256, offset: 64)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 256, elements: !268)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !552, file: !514, line: 69, baseType: !127, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !552, file: !514, line: 72, baseType: !127, size: 64, offset: 384)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !535, file: !514, line: 107, type: !552, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "slot0", scope: !535, file: !514, line: 831, type: !564, isLocal: true, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 256)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !514, line: 321, type: !245, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !514, line: 357, type: !245, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !514, line: 358, type: !245, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !514, line: 199, type: !262, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "quote", scope: !577, file: !514, line: 228, type: !596, isLocal: true, isDefinition: true)
!577 = distinct !DISubprogram(name: "gettext_quote", scope: !514, file: !514, line: 197, type: !578, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !580)
!578 = !DISubroutineType(types: !579)
!579 = !{!127, !127, !537}
!580 = !{!581, !582, !583, !584, !585}
!581 = !DILocalVariable(name: "msgid", arg: 1, scope: !577, file: !514, line: 197, type: !127)
!582 = !DILocalVariable(name: "s", arg: 2, scope: !577, file: !514, line: 197, type: !537)
!583 = !DILocalVariable(name: "translation", scope: !577, file: !514, line: 199, type: !127)
!584 = !DILocalVariable(name: "w", scope: !577, file: !514, line: 229, type: !494)
!585 = !DILocalVariable(name: "mbs", scope: !577, file: !514, line: 230, type: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !500, line: 6, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !502, line: 21, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !502, line: 13, size: 64, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !588, file: !502, line: 15, baseType: !83, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !588, file: !502, line: 20, baseType: !592, size: 32, offset: 32)
!592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !588, file: !502, line: 16, size: 32, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !592, file: !502, line: 18, baseType: !89, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !592, file: !502, line: 19, baseType: !19, size: 32)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !597)
!597 = !{!247, !21}
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(name: "slotvec", scope: !535, file: !514, line: 834, type: !600, isLocal: true, isDefinition: true)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !514, line: 823, size: 128, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !601, file: !514, line: 825, baseType: !124, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !601, file: !514, line: 826, baseType: !122, size: 64, offset: 64)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(name: "nslots", scope: !535, file: !514, line: 832, type: !83, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(name: "slotvec0", scope: !535, file: !514, line: 833, type: !601, isLocal: true, isDefinition: true)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 704, elements: !611)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!611 = !{!612}
!612 = !DISubrange(count: 11)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !615, line: 32, type: !245, isLocal: true, isDefinition: true)
!615 = !DIFile(filename: "lib/root-dev-ino.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b0632229108c1521929601778d55996f")
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !618, line: 67, type: !338, isLocal: true, isDefinition: true)
!618 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !618, line: 69, type: !262, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !618, line: 83, type: !262, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !618, line: 83, type: !19, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !618, line: 85, type: !245, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !618, line: 88, type: !629, isLocal: true, isDefinition: true)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 171)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !618, line: 88, type: !634, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 34)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !618, line: 105, type: !54, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !618, line: 109, type: !9, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !618, line: 113, type: !643, isLocal: true, isDefinition: true)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 28)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !618, line: 120, type: !648, isLocal: true, isDefinition: true)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 32)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !618, line: 127, type: !653, isLocal: true, isDefinition: true)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 36)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !618, line: 134, type: !289, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !618, line: 142, type: !44, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !618, line: 150, type: !29, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !618, line: 159, type: !664, isLocal: true, isDefinition: true)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 52)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !618, line: 170, type: !14, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !618, line: 248, type: !220, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !618, line: 248, type: !314, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !618, line: 254, type: !220, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !618, line: 254, type: !133, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !618, line: 254, type: !289, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !618, line: 259, type: !3, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !618, line: 259, type: !683, isLocal: true, isDefinition: true)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 29)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !688, file: !689, line: 26, type: !691, isLocal: false, isDefinition: true)
!688 = distinct !DICompileUnit(language: DW_LANG_C11, file: !689, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !690, splitDebugInlining: false, nameTableKind: None)
!689 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!690 = !{!686}
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 376, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 47)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(name: "exit_failure", scope: !696, file: !697, line: 24, type: !699, isLocal: false, isDefinition: true)
!696 = distinct !DICompileUnit(language: DW_LANG_C11, file: !697, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !698, splitDebugInlining: false, nameTableKind: None)
!697 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!698 = !{!694}
!699 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !702, line: 34, type: !74, isLocal: true, isDefinition: true)
!702 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(scope: null, file: !702, line: 34, type: !262, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !702, line: 34, type: !284, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !709, line: 108, type: !59, isLocal: true, isDefinition: true)
!709 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(name: "internal_state", scope: !712, file: !709, line: 97, type: !715, isLocal: true, isDefinition: true)
!712 = distinct !DICompileUnit(language: DW_LANG_C11, file: !709, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !713, globals: !714, splitDebugInlining: false, nameTableKind: None)
!713 = !{!121, !124, !129}
!714 = !{!707, !710}
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !500, line: 6, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !502, line: 21, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !502, line: 13, size: 64, elements: !718)
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !717, file: !502, line: 15, baseType: !83, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !717, file: !502, line: 20, baseType: !721, size: 32, offset: 32)
!721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !502, line: 16, size: 32, elements: !722)
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !721, file: !502, line: 18, baseType: !89, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !721, file: !502, line: 19, baseType: !19, size: 32)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(scope: null, file: !727, line: 35, type: !240, isLocal: true, isDefinition: true)
!727 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!728 = distinct !DICompileUnit(language: DW_LANG_C11, file: !729, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !615, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-root-dev-ino.o -MD -MP -MF lib/.deps/libcoreutils_a-root-dev-ino.Tpo -c lib/root-dev-ino.c -o lib/.libcoreutils_a-root-dev-ino.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !731, splitDebugInlining: false, nameTableKind: None)
!731 = !{!613}
!732 = distinct !DICompileUnit(language: DW_LANG_C11, file: !618, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !733, retainedTypes: !737, globals: !738, splitDebugInlining: false, nameTableKind: None)
!733 = !{!734}
!734 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !618, line: 40, baseType: !89, size: 32, elements: !735)
!735 = !{!736}
!736 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!737 = !{!121}
!738 = !{!616, !619, !621, !623, !625, !627, !632, !637, !639, !641, !646, !651, !656, !658, !660, !662, !667, !669, !671, !673, !675, !677, !679, !681}
!739 = distinct !DICompileUnit(language: DW_LANG_C11, file: !740, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !741, retainedTypes: !773, splitDebugInlining: false, nameTableKind: None)
!740 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!741 = !{!742, !754}
!742 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !743, file: !740, line: 188, baseType: !89, size: 32, elements: !752)
!743 = distinct !DISubprogram(name: "x2nrealloc", scope: !740, file: !740, line: 176, type: !744, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !747)
!744 = !DISubroutineType(types: !745)
!745 = !{!121, !121, !746, !124}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!747 = !{!748, !749, !750, !751}
!748 = !DILocalVariable(name: "p", arg: 1, scope: !743, file: !740, line: 176, type: !121)
!749 = !DILocalVariable(name: "pn", arg: 2, scope: !743, file: !740, line: 176, type: !746)
!750 = !DILocalVariable(name: "s", arg: 3, scope: !743, file: !740, line: 176, type: !124)
!751 = !DILocalVariable(name: "n", scope: !743, file: !740, line: 178, type: !124)
!752 = !{!753}
!753 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!754 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !755, file: !740, line: 228, baseType: !89, size: 32, elements: !752)
!755 = distinct !DISubprogram(name: "xpalloc", scope: !740, file: !740, line: 223, type: !756, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !763)
!756 = !DISubroutineType(types: !757)
!757 = !{!121, !121, !758, !759, !761, !759}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !760, line: 130, baseType: !761)
!760 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !762, line: 18, baseType: !199)
!762 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!763 = !{!764, !765, !766, !767, !768, !769, !770, !771, !772}
!764 = !DILocalVariable(name: "pa", arg: 1, scope: !755, file: !740, line: 223, type: !121)
!765 = !DILocalVariable(name: "pn", arg: 2, scope: !755, file: !740, line: 223, type: !758)
!766 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !755, file: !740, line: 223, type: !759)
!767 = !DILocalVariable(name: "n_max", arg: 4, scope: !755, file: !740, line: 223, type: !761)
!768 = !DILocalVariable(name: "s", arg: 5, scope: !755, file: !740, line: 223, type: !759)
!769 = !DILocalVariable(name: "n0", scope: !755, file: !740, line: 230, type: !759)
!770 = !DILocalVariable(name: "n", scope: !755, file: !740, line: 237, type: !759)
!771 = !DILocalVariable(name: "nbytes", scope: !755, file: !740, line: 248, type: !759)
!772 = !DILocalVariable(name: "adjusted_nbytes", scope: !755, file: !740, line: 252, type: !759)
!773 = !{!122, !121}
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !702, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !775, splitDebugInlining: false, nameTableKind: None)
!775 = !{!700, !703, !705}
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xgetcwd.o -MD -MP -MF lib/.deps/libcoreutils_a-xgetcwd.Tpo -c lib/xgetcwd.c -o lib/.libcoreutils_a-xgetcwd.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!777 = !DIFile(filename: "lib/xgetcwd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3727157833d2e1ec9b24b353bc14eccb")
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!779 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!780 = distinct !DICompileUnit(language: DW_LANG_C11, file: !781, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!781 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !737, splitDebugInlining: false, nameTableKind: None)
!783 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !785, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !737, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!786 = distinct !DICompileUnit(language: DW_LANG_C11, file: !787, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !737, splitDebugInlining: false, nameTableKind: None)
!787 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!788 = distinct !DICompileUnit(language: DW_LANG_C11, file: !727, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !789, splitDebugInlining: false, nameTableKind: None)
!789 = !{!790, !725}
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !727, line: 35, type: !245, isLocal: true, isDefinition: true)
!792 = distinct !DICompileUnit(language: DW_LANG_C11, file: !793, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!793 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!794 = distinct !DICompileUnit(language: DW_LANG_C11, file: !795, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !737, splitDebugInlining: false, nameTableKind: None)
!795 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!796 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!797 = !{i32 7, !"Dwarf Version", i32 5}
!798 = !{i32 2, !"Debug Info Version", i32 3}
!799 = !{i32 1, !"wchar_size", i32 4}
!800 = !{i32 8, !"PIC Level", i32 2}
!801 = !{i32 7, !"PIE Level", i32 2}
!802 = !{i32 7, !"uwtable", i32 2}
!803 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!804 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 49, type: !805, scopeLine: 50, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !807)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !83}
!807 = !{!808}
!808 = !DILocalVariable(name: "status", arg: 1, scope: !804, file: !2, line: 49, type: !83)
!809 = !DILocation(line: 0, scope: !804)
!810 = !DILocation(line: 51, column: 14, scope: !811)
!811 = distinct !DILexicalBlock(scope: !804, file: !2, line: 51, column: 7)
!812 = !DILocation(line: 51, column: 7, scope: !804)
!813 = !DILocation(line: 52, column: 5, scope: !814)
!814 = distinct !DILexicalBlock(scope: !811, file: !2, line: 52, column: 5)
!815 = !{!816, !816, i64 0}
!816 = !{!"any pointer", !817, i64 0}
!817 = !{!"omnipotent char", !818, i64 0}
!818 = !{!"Simple C/C++ TBAA"}
!819 = !DILocation(line: 55, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !811, file: !2, line: 54, column: 5)
!821 = !DILocation(line: 56, column: 7, scope: !820)
!822 = !DILocation(line: 60, column: 7, scope: !820)
!823 = !DILocation(line: 64, column: 7, scope: !820)
!824 = !DILocation(line: 68, column: 7, scope: !820)
!825 = !DILocation(line: 69, column: 7, scope: !820)
!826 = !DILocation(line: 70, column: 7, scope: !820)
!827 = !DILocation(line: 73, column: 7, scope: !820)
!828 = !DILocalVariable(name: "program", arg: 1, scope: !829, file: !82, line: 836, type: !127)
!829 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !82, file: !82, line: 836, type: !830, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !127}
!832 = !{!828, !833, !840, !841, !843, !844}
!833 = !DILocalVariable(name: "infomap", scope: !829, file: !82, line: 838, type: !834)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 896, elements: !263)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !829, file: !82, line: 838, size: 128, elements: !837)
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !836, file: !82, line: 838, baseType: !127, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !836, file: !82, line: 838, baseType: !127, size: 64, offset: 64)
!840 = !DILocalVariable(name: "node", scope: !829, file: !82, line: 848, type: !127)
!841 = !DILocalVariable(name: "map_prog", scope: !829, file: !82, line: 849, type: !842)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!843 = !DILocalVariable(name: "lc_messages", scope: !829, file: !82, line: 861, type: !127)
!844 = !DILocalVariable(name: "url_program", scope: !829, file: !82, line: 874, type: !127)
!845 = !DILocation(line: 0, scope: !829, inlinedAt: !846)
!846 = distinct !DILocation(line: 74, column: 7, scope: !820)
!847 = !{}
!848 = !DILocation(line: 857, column: 3, scope: !829, inlinedAt: !846)
!849 = !DILocation(line: 861, column: 29, scope: !829, inlinedAt: !846)
!850 = !DILocation(line: 862, column: 7, scope: !851, inlinedAt: !846)
!851 = distinct !DILexicalBlock(scope: !829, file: !82, line: 862, column: 7)
!852 = !DILocation(line: 862, column: 19, scope: !851, inlinedAt: !846)
!853 = !DILocation(line: 862, column: 22, scope: !851, inlinedAt: !846)
!854 = !DILocation(line: 862, column: 7, scope: !829, inlinedAt: !846)
!855 = !DILocation(line: 868, column: 7, scope: !856, inlinedAt: !846)
!856 = distinct !DILexicalBlock(scope: !851, file: !82, line: 863, column: 5)
!857 = !DILocation(line: 870, column: 5, scope: !856, inlinedAt: !846)
!858 = !DILocation(line: 875, column: 3, scope: !829, inlinedAt: !846)
!859 = !DILocation(line: 877, column: 3, scope: !829, inlinedAt: !846)
!860 = !DILocation(line: 76, column: 3, scope: !804)
!861 = !DISubprogram(name: "dcgettext", scope: !862, file: !862, line: 51, type: !863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!862 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!863 = !DISubroutineType(types: !864)
!864 = !{!122, !127, !127, !83}
!865 = !DISubprogram(name: "__fprintf_chk", scope: !866, file: !866, line: 93, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!866 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!867 = !DISubroutineType(types: !868)
!868 = !{!83, !869, !83, !870, null}
!869 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !171)
!870 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !127)
!871 = !DISubprogram(name: "__printf_chk", scope: !866, file: !866, line: 95, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!872 = !DISubroutineType(types: !873)
!873 = !{!83, !83, !870, null}
!874 = !DISubprogram(name: "fputs_unlocked", scope: !875, file: !875, line: 691, type: !876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!875 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!876 = !DISubroutineType(types: !877)
!877 = !{!83, !870, !869}
!878 = !DILocation(line: 0, scope: !148)
!879 = !DILocation(line: 581, column: 7, scope: !156)
!880 = !{!881, !881, i64 0}
!881 = !{!"int", !817, i64 0}
!882 = !DILocation(line: 581, column: 19, scope: !156)
!883 = !DILocation(line: 581, column: 7, scope: !148)
!884 = !DILocation(line: 585, column: 26, scope: !155)
!885 = !DILocation(line: 0, scope: !155)
!886 = !DILocation(line: 586, column: 23, scope: !155)
!887 = !DILocation(line: 586, column: 28, scope: !155)
!888 = !DILocation(line: 586, column: 32, scope: !155)
!889 = !{!817, !817, i64 0}
!890 = !DILocation(line: 586, column: 38, scope: !155)
!891 = !DILocalVariable(name: "__s1", arg: 1, scope: !892, file: !893, line: 1359, type: !127)
!892 = distinct !DISubprogram(name: "streq", scope: !893, file: !893, line: 1359, type: !894, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !896)
!893 = !DIFile(filename: "./lib/string.h", directory: "/src")
!894 = !DISubroutineType(types: !895)
!895 = !{!158, !127, !127}
!896 = !{!891, !897}
!897 = !DILocalVariable(name: "__s2", arg: 2, scope: !892, file: !893, line: 1359, type: !127)
!898 = !DILocation(line: 0, scope: !892, inlinedAt: !899)
!899 = distinct !DILocation(line: 586, column: 41, scope: !155)
!900 = !DILocation(line: 1361, column: 11, scope: !892, inlinedAt: !899)
!901 = !DILocation(line: 1361, column: 10, scope: !892, inlinedAt: !899)
!902 = !DILocation(line: 586, column: 19, scope: !155)
!903 = !DILocation(line: 587, column: 5, scope: !155)
!904 = !DILocation(line: 588, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !148, file: !82, line: 588, column: 7)
!906 = !DILocation(line: 588, column: 7, scope: !148)
!907 = !DILocation(line: 590, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !82, line: 589, column: 5)
!909 = !DILocation(line: 591, column: 7, scope: !908)
!910 = !DILocation(line: 595, column: 37, scope: !148)
!911 = !DILocation(line: 595, column: 35, scope: !148)
!912 = !DILocation(line: 596, column: 29, scope: !148)
!913 = !DILocation(line: 597, column: 8, scope: !164)
!914 = !DILocation(line: 597, column: 7, scope: !148)
!915 = !DILocation(line: 604, column: 24, scope: !163)
!916 = !DILocation(line: 604, column: 12, scope: !164)
!917 = !DILocation(line: 0, scope: !162)
!918 = !DILocation(line: 610, column: 16, scope: !162)
!919 = !DILocation(line: 610, column: 7, scope: !162)
!920 = !DILocation(line: 611, column: 21, scope: !162)
!921 = !{!922, !922, i64 0}
!922 = !{!"short", !817, i64 0}
!923 = !DILocation(line: 611, column: 19, scope: !162)
!924 = !DILocation(line: 611, column: 16, scope: !162)
!925 = !DILocation(line: 610, column: 30, scope: !162)
!926 = distinct !{!926, !919, !920, !927}
!927 = !{!"llvm.loop.mustprogress"}
!928 = !DILocation(line: 612, column: 18, scope: !929)
!929 = distinct !DILexicalBlock(scope: !162, file: !82, line: 612, column: 11)
!930 = !DILocation(line: 612, column: 11, scope: !162)
!931 = !DILocation(line: 620, column: 23, scope: !148)
!932 = !DILocation(line: 625, column: 39, scope: !148)
!933 = !DILocation(line: 626, column: 3, scope: !148)
!934 = !DILocation(line: 626, column: 10, scope: !148)
!935 = !DILocation(line: 626, column: 21, scope: !148)
!936 = !DILocation(line: 628, column: 44, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !82, line: 628, column: 11)
!938 = distinct !DILexicalBlock(scope: !148, file: !82, line: 627, column: 5)
!939 = !DILocation(line: 628, column: 32, scope: !937)
!940 = !DILocation(line: 628, column: 49, scope: !937)
!941 = !DILocation(line: 628, column: 11, scope: !938)
!942 = !DILocation(line: 630, column: 11, scope: !943)
!943 = distinct !DILexicalBlock(scope: !938, file: !82, line: 630, column: 11)
!944 = !DILocation(line: 630, column: 11, scope: !938)
!945 = !DILocation(line: 632, column: 26, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !82, line: 632, column: 15)
!947 = distinct !DILexicalBlock(scope: !943, file: !82, line: 631, column: 9)
!948 = !DILocation(line: 632, column: 34, scope: !946)
!949 = !DILocation(line: 632, column: 37, scope: !946)
!950 = !DILocation(line: 632, column: 15, scope: !947)
!951 = !DILocation(line: 636, column: 16, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !82, line: 636, column: 15)
!953 = !DILocation(line: 636, column: 29, scope: !952)
!954 = !DILocation(line: 640, column: 16, scope: !938)
!955 = distinct !{!955, !933, !956, !927}
!956 = !DILocation(line: 641, column: 5, scope: !148)
!957 = !DILocation(line: 644, column: 3, scope: !148)
!958 = !DILocation(line: 0, scope: !892, inlinedAt: !959)
!959 = distinct !DILocation(line: 648, column: 31, scope: !148)
!960 = !DILocation(line: 0, scope: !892, inlinedAt: !961)
!961 = distinct !DILocation(line: 649, column: 31, scope: !148)
!962 = !DILocation(line: 0, scope: !892, inlinedAt: !963)
!963 = distinct !DILocation(line: 650, column: 31, scope: !148)
!964 = !DILocation(line: 0, scope: !892, inlinedAt: !965)
!965 = distinct !DILocation(line: 651, column: 31, scope: !148)
!966 = !DILocation(line: 0, scope: !892, inlinedAt: !967)
!967 = distinct !DILocation(line: 652, column: 31, scope: !148)
!968 = !DILocation(line: 0, scope: !892, inlinedAt: !969)
!969 = distinct !DILocation(line: 653, column: 31, scope: !148)
!970 = !DILocation(line: 0, scope: !892, inlinedAt: !971)
!971 = distinct !DILocation(line: 654, column: 31, scope: !148)
!972 = !DILocation(line: 0, scope: !892, inlinedAt: !973)
!973 = distinct !DILocation(line: 655, column: 31, scope: !148)
!974 = !DILocation(line: 0, scope: !892, inlinedAt: !975)
!975 = distinct !DILocation(line: 656, column: 31, scope: !148)
!976 = !DILocation(line: 0, scope: !892, inlinedAt: !977)
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
!995 = !DISubprogram(name: "setlocale", scope: !996, file: !996, line: 122, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!996 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!997 = !DISubroutineType(types: !998)
!998 = !{!122, !83, !127}
!999 = !DISubprogram(name: "strncmp", scope: !1000, file: !1000, line: 159, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1000 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!83, !127, !127, !124}
!1003 = !DISubprogram(name: "exit", scope: !1004, file: !1004, line: 624, type: !805, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1004 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1005 = !DISubprogram(name: "getenv", scope: !1004, file: !1004, line: 641, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!122, !127}
!1008 = !DISubprogram(name: "strcmp", scope: !1000, file: !1000, line: 156, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!83, !127, !127}
!1011 = !DISubprogram(name: "strspn", scope: !1000, file: !1000, line: 297, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!126, !127, !127}
!1014 = !DISubprogram(name: "strchr", scope: !1000, file: !1000, line: 246, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!122, !127, !83}
!1017 = !DISubprogram(name: "__ctype_b_loc", scope: !88, file: !88, line: 79, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!1023 = !DISubprogram(name: "strcspn", scope: !1000, file: !1000, line: 293, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1024 = !DISubprogram(name: "fwrite_unlocked", scope: !875, file: !875, line: 704, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!124, !1027, !124, !124, !869}
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
!1049 = !{!1050, !1051, !1054}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1048, file: !2, line: 34, baseType: !122, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "n_alloc", scope: !1048, file: !2, line: 35, baseType: !1052, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1053, line: 130, baseType: !761)
!1053 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1048, file: !2, line: 36, baseType: !122, size: 64, offset: 128)
!1055 = distinct !DIAssignID()
!1056 = distinct !DIAssignID()
!1057 = distinct !DIAssignID()
!1058 = distinct !DIAssignID()
!1059 = distinct !DIAssignID()
!1060 = distinct !DIAssignID()
!1061 = !DILocation(line: 0, scope: !1030)
!1062 = !DILocation(line: 325, column: 19, scope: !1030)
!1063 = !DILocation(line: 325, column: 46, scope: !1030)
!1064 = !DILocation(line: 328, column: 21, scope: !1030)
!1065 = !DILocation(line: 328, column: 3, scope: !1030)
!1066 = !DILocation(line: 329, column: 3, scope: !1030)
!1067 = !DILocation(line: 330, column: 3, scope: !1030)
!1068 = !DILocation(line: 331, column: 3, scope: !1030)
!1069 = !DILocation(line: 333, column: 3, scope: !1030)
!1070 = !DILocation(line: 335, column: 3, scope: !1030)
!1071 = !DILocation(line: 325, column: 8, scope: !1030)
!1072 = !DILocation(line: 337, column: 15, scope: !1039)
!1073 = !DILocation(line: 0, scope: !1039)
!1074 = !DILocation(line: 338, column: 11, scope: !1039)
!1075 = !DILocation(line: 349, column: 9, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 341, column: 9)
!1077 = !DILocation(line: 351, column: 9, scope: !1076)
!1078 = !DILocation(line: 354, column: 11, scope: !1076)
!1079 = !DILocation(line: 356, column: 5, scope: !1030)
!1080 = !DILocation(line: 358, column: 7, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 358, column: 7)
!1082 = !DILocation(line: 358, column: 14, scope: !1081)
!1083 = !DILocation(line: 358, column: 7, scope: !1030)
!1084 = !DILocation(line: 359, column: 5, scope: !1081)
!1085 = !DILocation(line: 361, column: 7, scope: !1030)
!1086 = !DILocalVariable(name: "st1", scope: !1087, file: !2, line: 311, type: !1094)
!1087 = distinct !DISubprogram(name: "logical_getcwd", scope: !2, file: !2, line: 294, type: !1088, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!127}
!1090 = !{!1091, !1092, !1086, !1093}
!1091 = !DILocalVariable(name: "wd", scope: !1087, file: !2, line: 296, type: !127)
!1092 = !DILocalVariable(name: "p", scope: !1087, file: !2, line: 301, type: !127)
!1093 = !DILocalVariable(name: "st2", scope: !1087, file: !2, line: 312, type: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1095, line: 26, size: 1152, elements: !1096)
!1095 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1096 = !{!1097, !1099, !1101, !1103, !1105, !1107, !1109, !1110, !1111, !1112, !1114, !1116, !1124, !1125, !1126}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1094, file: !1095, line: 31, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !198, line: 145, baseType: !126)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1094, file: !1095, line: 36, baseType: !1100, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !198, line: 148, baseType: !126)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1094, file: !1095, line: 44, baseType: !1102, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !198, line: 151, baseType: !126)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1094, file: !1095, line: 45, baseType: !1104, size: 32, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !198, line: 150, baseType: !89)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1094, file: !1095, line: 47, baseType: !1106, size: 32, offset: 224)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !198, line: 146, baseType: !89)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1094, file: !1095, line: 48, baseType: !1108, size: 32, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !198, line: 147, baseType: !89)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1094, file: !1095, line: 50, baseType: !83, size: 32, offset: 288)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1094, file: !1095, line: 52, baseType: !1098, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1094, file: !1095, line: 57, baseType: !197, size: 64, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1094, file: !1095, line: 61, baseType: !1113, size: 64, offset: 448)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !198, line: 175, baseType: !199)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1094, file: !1095, line: 63, baseType: !1115, size: 64, offset: 512)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !198, line: 180, baseType: !199)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1094, file: !1095, line: 74, baseType: !1117, size: 128, offset: 576)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1118, line: 11, size: 128, elements: !1119)
!1118 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1119 = !{!1120, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1117, file: !1118, line: 16, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !198, line: 160, baseType: !199)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1117, file: !1118, line: 21, baseType: !1123, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !198, line: 197, baseType: !199)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1094, file: !1095, line: 75, baseType: !1117, size: 128, offset: 704)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1094, file: !1095, line: 76, baseType: !1117, size: 128, offset: 832)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1094, file: !1095, line: 89, baseType: !1127, size: 192, offset: 960)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1123, size: 192, elements: !75)
!1128 = !DILocation(line: 0, scope: !1087, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 363, column: 24, scope: !1041)
!1130 = !DILocation(line: 296, column: 20, scope: !1087, inlinedAt: !1129)
!1131 = !DILocation(line: 299, column: 8, scope: !1132, inlinedAt: !1129)
!1132 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 299, column: 7)
!1133 = !DILocation(line: 299, column: 11, scope: !1132, inlinedAt: !1129)
!1134 = !DILocation(line: 299, column: 14, scope: !1132, inlinedAt: !1129)
!1135 = !DILocation(line: 299, column: 20, scope: !1132, inlinedAt: !1129)
!1136 = !DILocation(line: 299, column: 7, scope: !1087, inlinedAt: !1129)
!1137 = !DILocation(line: 302, column: 15, scope: !1087, inlinedAt: !1129)
!1138 = !DILocation(line: 302, column: 3, scope: !1087, inlinedAt: !1129)
!1139 = !DILocation(line: 304, column: 12, scope: !1140, inlinedAt: !1129)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !2, line: 304, column: 11)
!1141 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 303, column: 5)
!1142 = !DILocation(line: 304, column: 17, scope: !1140, inlinedAt: !1129)
!1143 = !DILocation(line: 305, column: 32, scope: !1140, inlinedAt: !1129)
!1144 = !DILocation(line: 305, column: 37, scope: !1140, inlinedAt: !1129)
!1145 = !DILocation(line: 307, column: 8, scope: !1141, inlinedAt: !1129)
!1146 = distinct !{!1146, !1138, !1147, !927}
!1147 = !DILocation(line: 308, column: 5, scope: !1087, inlinedAt: !1129)
!1148 = !DILocation(line: 311, column: 3, scope: !1087, inlinedAt: !1129)
!1149 = !DILocation(line: 312, column: 3, scope: !1087, inlinedAt: !1129)
!1150 = !DILocation(line: 313, column: 7, scope: !1151, inlinedAt: !1129)
!1151 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 313, column: 7)
!1152 = !DILocation(line: 313, column: 23, scope: !1151, inlinedAt: !1129)
!1153 = !DILocation(line: 313, column: 28, scope: !1151, inlinedAt: !1129)
!1154 = !DILocation(line: 313, column: 31, scope: !1151, inlinedAt: !1129)
!1155 = !DILocation(line: 313, column: 48, scope: !1151, inlinedAt: !1129)
!1156 = !DILocation(line: 313, column: 53, scope: !1151, inlinedAt: !1129)
!1157 = !DILocalVariable(name: "a", arg: 1, scope: !1158, file: !1159, line: 86, type: !1162)
!1158 = distinct !DISubprogram(name: "psame_inode", scope: !1159, file: !1159, line: 86, type: !1160, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1164)
!1159 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!158, !1162, !1162}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1094)
!1164 = !{!1157, !1165}
!1165 = !DILocalVariable(name: "b", arg: 2, scope: !1158, file: !1159, line: 86, type: !1162)
!1166 = !DILocation(line: 0, scope: !1158, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 313, column: 56, scope: !1151, inlinedAt: !1129)
!1168 = !DILocation(line: 90, column: 14, scope: !1158, inlinedAt: !1167)
!1169 = !{!1170, !1171, i64 0}
!1170 = !{!"stat", !1171, i64 0, !1171, i64 8, !1171, i64 16, !881, i64 24, !881, i64 28, !881, i64 32, !881, i64 36, !1171, i64 40, !1171, i64 48, !1171, i64 56, !1171, i64 64, !1172, i64 72, !1172, i64 88, !1172, i64 104, !817, i64 120}
!1171 = !{!"long", !817, i64 0}
!1172 = !{!"timespec", !1171, i64 0, !1171, i64 8}
!1173 = !{!1170, !1171, i64 8}
!1174 = !DILocation(line: 313, column: 7, scope: !1087, inlinedAt: !1129)
!1175 = !DILocation(line: 316, column: 1, scope: !1087, inlinedAt: !1129)
!1176 = !DILocation(line: 0, scope: !1041)
!1177 = !DILocation(line: 364, column: 11, scope: !1041)
!1178 = !DILocation(line: 366, column: 11, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 365, column: 9)
!1180 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 364, column: 11)
!1181 = !DILocation(line: 371, column: 14, scope: !1030)
!1182 = !DILocation(line: 372, column: 10, scope: !1046)
!1183 = !DILocation(line: 372, column: 7, scope: !1030)
!1184 = !DILocation(line: 374, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 373, column: 5)
!1186 = !DILocation(line: 375, column: 7, scope: !1185)
!1187 = !DILocation(line: 376, column: 5, scope: !1185)
!1188 = !DILocation(line: 89, column: 25, scope: !1189, inlinedAt: !1195)
!1189 = distinct !DISubprogram(name: "file_name_init", scope: !2, file: !2, line: 87, type: !1190, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1192)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!1047}
!1192 = !{!1193, !1194}
!1193 = !DILocalVariable(name: "p", scope: !1189, file: !2, line: 89, type: !1047)
!1194 = !DILocalVariable(name: "init_alloc", scope: !1189, file: !2, line: 93, type: !83)
!1195 = distinct !DILocation(line: 379, column: 37, scope: !1045)
!1196 = !DILocation(line: 0, scope: !1189, inlinedAt: !1195)
!1197 = !DILocation(line: 94, column: 6, scope: !1189, inlinedAt: !1195)
!1198 = !DILocation(line: 94, column: 14, scope: !1189, inlinedAt: !1195)
!1199 = !{!1200, !1171, i64 8}
!1200 = !{!"file_name", !816, i64 0, !1171, i64 8, !816, i64 16}
!1201 = !DILocation(line: 96, column: 12, scope: !1189, inlinedAt: !1195)
!1202 = !DILocation(line: 96, column: 10, scope: !1189, inlinedAt: !1195)
!1203 = !{!1200, !816, i64 0}
!1204 = !DILocation(line: 97, column: 34, scope: !1189, inlinedAt: !1195)
!1205 = !DILocation(line: 97, column: 6, scope: !1189, inlinedAt: !1195)
!1206 = !DILocation(line: 97, column: 12, scope: !1189, inlinedAt: !1195)
!1207 = !{!1200, !816, i64 16}
!1208 = !DILocation(line: 98, column: 15, scope: !1189, inlinedAt: !1195)
!1209 = !DILocation(line: 0, scope: !1045)
!1210 = !DILocalVariable(name: "dev_ino_buf", scope: !1211, file: !2, line: 265, type: !1219)
!1211 = distinct !DISubprogram(name: "robust_getcwd", scope: !2, file: !2, line: 262, type: !1212, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1214)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !1047}
!1214 = !{!1215, !1216, !1210, !1217, !1227}
!1215 = !DILocalVariable(name: "file_name", arg: 1, scope: !1211, file: !2, line: 262, type: !1047)
!1216 = !DILocalVariable(name: "height", scope: !1211, file: !2, line: 264, type: !124)
!1217 = !DILocalVariable(name: "root_dev_ino", scope: !1211, file: !2, line: 266, type: !1218)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !1220, line: 30, size: 128, elements: !1221)
!1220 = !DIFile(filename: "./lib/dev-ino.h", directory: "/src", checksumkind: CSK_MD5, checksum: "7eae2ded9ac0c200760eafd719dd996d")
!1221 = !{!1222, !1225}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1219, file: !1220, line: 32, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !1224, line: 47, baseType: !1100)
!1224 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1219, file: !1220, line: 33, baseType: !1226, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !1224, line: 59, baseType: !1098)
!1227 = !DILocalVariable(name: "dot_sb", scope: !1211, file: !2, line: 272, type: !1094)
!1228 = !DILocation(line: 0, scope: !1211, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 380, column: 7, scope: !1045)
!1230 = !DILocation(line: 265, column: 3, scope: !1211, inlinedAt: !1229)
!1231 = !DILocation(line: 266, column: 34, scope: !1211, inlinedAt: !1229)
!1232 = !DILocation(line: 268, column: 20, scope: !1233, inlinedAt: !1229)
!1233 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 268, column: 7)
!1234 = !DILocation(line: 268, column: 7, scope: !1211, inlinedAt: !1229)
!1235 = !DILocation(line: 269, column: 5, scope: !1233, inlinedAt: !1229)
!1236 = !DILocation(line: 272, column: 3, scope: !1211, inlinedAt: !1229)
!1237 = !DILocation(line: 273, column: 7, scope: !1238, inlinedAt: !1229)
!1238 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 273, column: 7)
!1239 = !DILocation(line: 273, column: 27, scope: !1238, inlinedAt: !1229)
!1240 = !DILocation(line: 273, column: 7, scope: !1211, inlinedAt: !1229)
!1241 = !DILocation(line: 279, column: 11, scope: !1242, inlinedAt: !1229)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 279, column: 11)
!1243 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 277, column: 5)
!1244 = !{!1245, !1171, i64 8}
!1245 = !{!"dev_ino", !1171, i64 0, !1171, i64 8}
!1246 = !{!1245, !1171, i64 0}
!1247 = !DILocation(line: 279, column: 11, scope: !1243, inlinedAt: !1229)
!1248 = !DILocation(line: 274, column: 5, scope: !1238, inlinedAt: !1229)
!1249 = !DILocation(line: 282, column: 49, scope: !1243, inlinedAt: !1229)
!1250 = !DILocalVariable(name: "parent_sb", scope: !1251, file: !2, line: 166, type: !1094)
!1251 = distinct !DISubprogram(name: "find_dir_entry", scope: !2, file: !2, line: 153, type: !1252, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1255)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{null, !1254, !1047, !124}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1255 = !{!1256, !1257, !1258, !1259, !1264, !1250, !1265, !1266, !1267, !1279, !1284, !1285}
!1256 = !DILocalVariable(name: "dot_sb", arg: 1, scope: !1251, file: !2, line: 153, type: !1254)
!1257 = !DILocalVariable(name: "file_name", arg: 2, scope: !1251, file: !2, line: 153, type: !1047)
!1258 = !DILocalVariable(name: "parent_height", arg: 3, scope: !1251, file: !2, line: 154, type: !124)
!1259 = !DILocalVariable(name: "dirp", scope: !1251, file: !2, line: 156, type: !1260)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !1262, line: 127, baseType: !1263)
!1262 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!1263 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !1262, line: 127, flags: DIFlagFwdDecl)
!1264 = !DILocalVariable(name: "fd", scope: !1251, file: !2, line: 161, type: !83)
!1265 = !DILocalVariable(name: "use_lstat", scope: !1251, file: !2, line: 173, type: !158)
!1266 = !DILocalVariable(name: "found", scope: !1251, file: !2, line: 175, type: !158)
!1267 = !DILocalVariable(name: "dp", scope: !1268, file: !2, line: 178, type: !1269)
!1268 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 177, column: 5)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !1272, line: 22, size: 2240, elements: !1273)
!1272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!1273 = !{!1274, !1275, !1276, !1277, !1278}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !1271, file: !1272, line: 25, baseType: !1100, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !1271, file: !1272, line: 26, baseType: !197, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !1271, file: !1272, line: 31, baseType: !123, size: 16, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !1271, file: !1272, line: 32, baseType: !129, size: 8, offset: 144)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1271, file: !1272, line: 33, baseType: !564, size: 2048, offset: 152)
!1279 = !DILocalVariable(name: "e", scope: !1280, file: !2, line: 186, type: !83)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 184, column: 13)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 183, column: 15)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 182, column: 9)
!1283 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 181, column: 11)
!1284 = !DILocalVariable(name: "ino", scope: !1268, file: !2, line: 196, type: !1223)
!1285 = !DILocalVariable(name: "ent_sb", scope: !1268, file: !2, line: 198, type: !1094)
!1286 = !DILocation(line: 0, scope: !1251, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 282, column: 7, scope: !1243, inlinedAt: !1229)
!1288 = !DILocation(line: 0, scope: !1268, inlinedAt: !1287)
!1289 = !DILocation(line: 156, column: 15, scope: !1251, inlinedAt: !1287)
!1290 = !DILocation(line: 157, column: 12, scope: !1291, inlinedAt: !1287)
!1291 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 157, column: 7)
!1292 = !DILocation(line: 157, column: 7, scope: !1251, inlinedAt: !1287)
!1293 = !DILocation(line: 158, column: 5, scope: !1291, inlinedAt: !1287)
!1294 = !DILocation(line: 161, column: 12, scope: !1251, inlinedAt: !1287)
!1295 = !DILocation(line: 162, column: 10, scope: !1296, inlinedAt: !1287)
!1296 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 162, column: 7)
!1297 = !DILocation(line: 162, column: 8, scope: !1296, inlinedAt: !1287)
!1298 = !DILocation(line: 162, column: 18, scope: !1296, inlinedAt: !1287)
!1299 = !DILocation(line: 162, column: 46, scope: !1296, inlinedAt: !1287)
!1300 = !DILocation(line: 162, column: 7, scope: !1251, inlinedAt: !1287)
!1301 = !DILocation(line: 162, column: 32, scope: !1296, inlinedAt: !1287)
!1302 = !DILocation(line: 163, column: 5, scope: !1296, inlinedAt: !1287)
!1303 = !DILocation(line: 166, column: 3, scope: !1251, inlinedAt: !1287)
!1304 = !DILocation(line: 167, column: 18, scope: !1305, inlinedAt: !1287)
!1305 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 167, column: 7)
!1306 = !DILocation(line: 167, column: 8, scope: !1305, inlinedAt: !1287)
!1307 = !DILocation(line: 167, column: 43, scope: !1305, inlinedAt: !1287)
!1308 = !DILocation(line: 167, column: 67, scope: !1305, inlinedAt: !1287)
!1309 = !DILocation(line: 167, column: 7, scope: !1251, inlinedAt: !1287)
!1310 = !DILocation(line: 168, column: 5, scope: !1305, inlinedAt: !1287)
!1311 = !DILocation(line: 173, column: 31, scope: !1251, inlinedAt: !1287)
!1312 = !DILocation(line: 173, column: 38, scope: !1251, inlinedAt: !1287)
!1313 = !DILocation(line: 176, column: 3, scope: !1251, inlinedAt: !1287)
!1314 = !DILocation(line: 180, column: 13, scope: !1268, inlinedAt: !1287)
!1315 = !DILocalVariable(name: "dirp", arg: 1, scope: !1316, file: !82, line: 285, type: !1260)
!1316 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !82, file: !82, line: 285, type: !1317, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1319)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!1269, !1260}
!1319 = !{!1315, !1320}
!1320 = !DILocalVariable(name: "dp", scope: !1321, file: !82, line: 289, type: !1269)
!1321 = distinct !DILexicalBlock(scope: !1316, file: !82, line: 288, column: 5)
!1322 = !DILocation(line: 0, scope: !1316, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 181, column: 17, scope: !1283, inlinedAt: !1287)
!1324 = !DILocation(line: 287, column: 3, scope: !1316, inlinedAt: !1323)
!1325 = !DILocation(line: 289, column: 33, scope: !1321, inlinedAt: !1323)
!1326 = !DILocation(line: 0, scope: !1321, inlinedAt: !1323)
!1327 = !DILocation(line: 290, column: 14, scope: !1328, inlinedAt: !1323)
!1328 = distinct !DILexicalBlock(scope: !1321, file: !82, line: 290, column: 11)
!1329 = !DILocation(line: 290, column: 22, scope: !1328, inlinedAt: !1323)
!1330 = !DILocation(line: 290, column: 46, scope: !1328, inlinedAt: !1323)
!1331 = !DILocalVariable(name: "file_name", arg: 1, scope: !1332, file: !82, line: 272, type: !127)
!1332 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !82, file: !82, line: 272, type: !1333, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1335)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!158, !127}
!1335 = !{!1331, !1336}
!1336 = !DILocalVariable(name: "sep", scope: !1337, file: !82, line: 276, type: !4)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !82, line: 275, column: 5)
!1338 = distinct !DILexicalBlock(scope: !1332, file: !82, line: 274, column: 7)
!1339 = !DILocation(line: 0, scope: !1332, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 290, column: 27, scope: !1328, inlinedAt: !1323)
!1341 = !DILocation(line: 274, column: 7, scope: !1338, inlinedAt: !1340)
!1342 = !DILocation(line: 274, column: 20, scope: !1338, inlinedAt: !1340)
!1343 = !DILocation(line: 274, column: 7, scope: !1332, inlinedAt: !1340)
!1344 = !DILocation(line: 276, column: 29, scope: !1337, inlinedAt: !1340)
!1345 = !DILocation(line: 276, column: 42, scope: !1337, inlinedAt: !1340)
!1346 = !DILocation(line: 276, column: 50, scope: !1337, inlinedAt: !1340)
!1347 = !DILocation(line: 276, column: 18, scope: !1337, inlinedAt: !1340)
!1348 = !DILocation(line: 0, scope: !1337, inlinedAt: !1340)
!1349 = !DILocation(line: 277, column: 17, scope: !1337, inlinedAt: !1340)
!1350 = !DILocation(line: 277, column: 21, scope: !1337, inlinedAt: !1340)
!1351 = !DILocation(line: 290, column: 11, scope: !1321, inlinedAt: !1323)
!1352 = !DILocation(line: 183, column: 15, scope: !1281, inlinedAt: !1287)
!1353 = !DILocation(line: 183, column: 15, scope: !1282, inlinedAt: !1287)
!1354 = !DILocation(line: 0, scope: !1280, inlinedAt: !1287)
!1355 = !DILocation(line: 188, column: 21, scope: !1280, inlinedAt: !1287)
!1356 = !DILocation(line: 222, column: 20, scope: !1357, inlinedAt: !1287)
!1357 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 222, column: 7)
!1358 = !DILocation(line: 196, column: 19, scope: !1268, inlinedAt: !1287)
!1359 = !{!1360, !1171, i64 0}
!1360 = !{!"dirent", !1171, i64 0, !1171, i64 8, !922, i64 16, !817, i64 18, !817, i64 19}
!1361 = !DILocation(line: 198, column: 7, scope: !1268, inlinedAt: !1287)
!1362 = !DILocation(line: 199, column: 15, scope: !1363, inlinedAt: !1287)
!1363 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 199, column: 11)
!1364 = !DILocation(line: 199, column: 38, scope: !1363, inlinedAt: !1287)
!1365 = !DILocation(line: 201, column: 15, scope: !1366, inlinedAt: !1287)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 201, column: 15)
!1367 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 200, column: 9)
!1368 = !DILocation(line: 201, column: 43, scope: !1366, inlinedAt: !1287)
!1369 = !DILocation(line: 201, column: 15, scope: !1367, inlinedAt: !1287)
!1370 = distinct !{!1370, !1313, !1371}
!1371 = !DILocation(line: 220, column: 5, scope: !1251, inlinedAt: !1287)
!1372 = !DILocation(line: 206, column: 24, scope: !1367, inlinedAt: !1287)
!1373 = !DILocation(line: 207, column: 9, scope: !1367, inlinedAt: !1287)
!1374 = !DILocation(line: 209, column: 15, scope: !1375, inlinedAt: !1287)
!1375 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 209, column: 11)
!1376 = !DILocation(line: 209, column: 11, scope: !1268, inlinedAt: !1287)
!1377 = distinct !{!1377, !1313, !1371}
!1378 = !DILocation(line: 214, column: 24, scope: !1379, inlinedAt: !1287)
!1379 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 214, column: 12)
!1380 = !DILocation(line: 222, column: 39, scope: !1357, inlinedAt: !1287)
!1381 = !DILocation(line: 222, column: 7, scope: !1251, inlinedAt: !1287)
!1382 = !DILocation(line: 216, column: 53, scope: !1383, inlinedAt: !1287)
!1383 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 215, column: 9)
!1384 = !DILocation(line: 216, column: 11, scope: !1383, inlinedAt: !1287)
!1385 = !DILocation(line: 222, column: 23, scope: !1357, inlinedAt: !1287)
!1386 = !DILocation(line: 226, column: 7, scope: !1387, inlinedAt: !1287)
!1387 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 223, column: 5)
!1388 = !DILocation(line: 231, column: 5, scope: !1389, inlinedAt: !1287)
!1389 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 230, column: 8)
!1390 = !DILocation(line: 235, column: 13, scope: !1251, inlinedAt: !1287)
!1391 = !{i64 0, i64 8, !1392, i64 8, i64 8, !1392, i64 16, i64 8, !1392, i64 24, i64 4, !880, i64 28, i64 4, !880, i64 32, i64 4, !880, i64 36, i64 4, !880, i64 40, i64 8, !1392, i64 48, i64 8, !1392, i64 56, i64 8, !1392, i64 64, i64 8, !1392, i64 72, i64 8, !1392, i64 80, i64 8, !1392, i64 88, i64 8, !1392, i64 96, i64 8, !1392, i64 104, i64 8, !1392, i64 112, i64 8, !1392, i64 120, i64 24, !889}
!1392 = !{!1171, !1171, i64 0}
!1393 = distinct !DIAssignID()
!1394 = !DILocation(line: 236, column: 1, scope: !1251, inlinedAt: !1287)
!1395 = distinct !{!1395, !1396, !1397}
!1396 = !DILocation(line: 276, column: 3, scope: !1211, inlinedAt: !1229)
!1397 = !DILocation(line: 283, column: 5, scope: !1211, inlinedAt: !1229)
!1398 = !DILocation(line: 286, column: 18, scope: !1399, inlinedAt: !1229)
!1399 = distinct !DILexicalBlock(scope: !1211, file: !2, line: 286, column: 7)
!1400 = !DILocation(line: 286, column: 7, scope: !1399, inlinedAt: !1229)
!1401 = !DILocation(line: 286, column: 27, scope: !1399, inlinedAt: !1229)
!1402 = !DILocation(line: 286, column: 7, scope: !1211, inlinedAt: !1229)
!1403 = !DILocation(line: 287, column: 5, scope: !1399, inlinedAt: !1229)
!1404 = !DILocation(line: 381, column: 24, scope: !1045)
!1405 = !DILocation(line: 288, column: 1, scope: !1211, inlinedAt: !1229)
!1406 = !DILocation(line: 381, column: 7, scope: !1045)
!1407 = !DILocalVariable(name: "p", arg: 1, scope: !1408, file: !2, line: 80, type: !1047)
!1408 = distinct !DISubprogram(name: "file_name_free", scope: !2, file: !2, line: 80, type: !1212, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1409)
!1409 = !{!1407}
!1410 = !DILocation(line: 0, scope: !1408, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 382, column: 7, scope: !1045)
!1412 = !DILocation(line: 82, column: 12, scope: !1408, inlinedAt: !1411)
!1413 = !DILocation(line: 82, column: 3, scope: !1408, inlinedAt: !1411)
!1414 = !DILocation(line: 83, column: 3, scope: !1408, inlinedAt: !1411)
!1415 = !DILocation(line: 386, column: 1, scope: !1030)
!1416 = !DISubprogram(name: "bindtextdomain", scope: !862, file: !862, line: 86, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!122, !127, !127}
!1419 = !DISubprogram(name: "textdomain", scope: !862, file: !862, line: 82, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1420 = !DISubprogram(name: "atexit", scope: !1004, file: !1004, line: 602, type: !1421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!83, !468}
!1423 = !DISubprogram(name: "getopt_long", scope: !394, file: !394, line: 66, type: !1424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!83, !83, !1426, !127, !1428, !399}
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!1429 = !DISubprogram(name: "strstr", scope: !1000, file: !1000, line: 350, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1430 = !DISubprogram(name: "stat", scope: !1431, file: !1431, line: 205, type: !1432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1431 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!83, !870, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1254)
!1435 = !DISubprogram(name: "puts", scope: !875, file: !875, line: 661, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!83, !127}
!1438 = !DISubprogram(name: "free", scope: !1004, file: !1004, line: 555, type: !1439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !121}
!1441 = !DISubprogram(name: "__errno_location", scope: !1442, file: !1442, line: 37, type: !1443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1442 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!399}
!1445 = !DISubprogram(name: "opendir", scope: !1262, file: !1262, line: 134, type: !1446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!1260, !127}
!1448 = distinct !DISubprogram(name: "nth_parent", scope: !2, file: !2, line: 127, type: !1449, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1451)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!122, !124}
!1451 = !{!1452, !1453, !1454, !1455}
!1452 = !DILocalVariable(name: "n", arg: 1, scope: !1448, file: !2, line: 127, type: !124)
!1453 = !DILocalVariable(name: "buf", scope: !1448, file: !2, line: 129, type: !122)
!1454 = !DILocalVariable(name: "p", scope: !1448, file: !2, line: 130, type: !122)
!1455 = !DILocalVariable(name: "i", scope: !1456, file: !2, line: 132, type: !124)
!1456 = distinct !DILexicalBlock(scope: !1448, file: !2, line: 132, column: 3)
!1457 = !DILocation(line: 0, scope: !1448)
!1458 = !DILocation(line: 129, column: 15, scope: !1448)
!1459 = !DILocation(line: 0, scope: !1456)
!1460 = !DILocation(line: 132, column: 24, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 132, column: 3)
!1462 = !DILocation(line: 132, column: 3, scope: !1456)
!1463 = !DILocalVariable(name: "__dest", arg: 1, scope: !1464, file: !1465, line: 26, type: !1468)
!1464 = distinct !DISubprogram(name: "memcpy", scope: !1465, file: !1465, line: 26, type: !1466, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1469)
!1465 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!121, !1468, !1027, !124}
!1468 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !121)
!1469 = !{!1463, !1470, !1471}
!1470 = !DILocalVariable(name: "__src", arg: 2, scope: !1464, file: !1465, line: 26, type: !1027)
!1471 = !DILocalVariable(name: "__len", arg: 3, scope: !1464, file: !1465, line: 26, type: !124)
!1472 = !DILocation(line: 0, scope: !1464, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 134, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 133, column: 5)
!1475 = !DILocation(line: 29, column: 10, scope: !1464, inlinedAt: !1473)
!1476 = !DILocation(line: 135, column: 9, scope: !1474)
!1477 = distinct !{!1477, !1478}
!1478 = !{!"llvm.loop.unroll.disable"}
!1479 = !DILocation(line: 137, column: 3, scope: !1448)
!1480 = !DILocation(line: 137, column: 9, scope: !1448)
!1481 = !DILocation(line: 138, column: 3, scope: !1448)
!1482 = distinct !{!1482, !1462, !1483, !927}
!1483 = !DILocation(line: 136, column: 5, scope: !1456)
!1484 = !DISubprogram(name: "dirfd", scope: !1262, file: !1262, line: 224, type: !1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!83, !1260}
!1487 = !DISubprogram(name: "fchdir", scope: !1488, file: !1488, line: 521, type: !1489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1488 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!83, !83}
!1491 = !DISubprogram(name: "chdir", scope: !1488, file: !1488, line: 517, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1492 = !DISubprogram(name: "fstat", scope: !1431, file: !1431, line: 210, type: !1493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!83, !83, !1254}
!1495 = !DISubprogram(name: "readdir", scope: !1262, file: !1262, line: 162, type: !1496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!1498, !1260}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1499 = !DISubprogram(name: "closedir", scope: !1262, file: !1262, line: 149, type: !1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1500 = !DISubprogram(name: "lstat", scope: !1431, file: !1431, line: 313, type: !1432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1501 = !DISubprogram(name: "strlen", scope: !1000, file: !1000, line: 407, type: !1502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!126, !127}
!1504 = distinct !DISubprogram(name: "file_name_prepend", scope: !2, file: !2, line: 104, type: !1505, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !1047, !127, !124}
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1515}
!1508 = !DILocalVariable(name: "p", arg: 1, scope: !1504, file: !2, line: 104, type: !1047)
!1509 = !DILocalVariable(name: "s", arg: 2, scope: !1504, file: !2, line: 104, type: !127)
!1510 = !DILocalVariable(name: "s_len", arg: 3, scope: !1504, file: !2, line: 104, type: !124)
!1511 = !DILocalVariable(name: "n_free", scope: !1504, file: !2, line: 106, type: !1052)
!1512 = !DILocalVariable(name: "n_used", scope: !1513, file: !2, line: 113, type: !1052)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 108, column: 5)
!1514 = distinct !DILexicalBlock(scope: !1504, file: !2, line: 107, column: 7)
!1515 = !DILocalVariable(name: "buf", scope: !1513, file: !2, line: 114, type: !122)
!1516 = !DILocation(line: 0, scope: !1504)
!1517 = !DILocation(line: 106, column: 21, scope: !1504)
!1518 = !DILocation(line: 106, column: 32, scope: !1504)
!1519 = !DILocation(line: 106, column: 27, scope: !1504)
!1520 = !DILocation(line: 107, column: 18, scope: !1514)
!1521 = !DILocation(line: 107, column: 14, scope: !1514)
!1522 = !DILocation(line: 107, column: 7, scope: !1504)
!1523 = !DILocation(line: 113, column: 25, scope: !1513)
!1524 = !DILocation(line: 113, column: 33, scope: !1513)
!1525 = !DILocation(line: 0, scope: !1513)
!1526 = !DILocation(line: 114, column: 57, scope: !1513)
!1527 = !DILocation(line: 114, column: 19, scope: !1513)
!1528 = !DILocation(line: 115, column: 35, scope: !1513)
!1529 = !DILocation(line: 115, column: 30, scope: !1513)
!1530 = !DILocation(line: 115, column: 43, scope: !1513)
!1531 = !DILocation(line: 115, column: 56, scope: !1513)
!1532 = !DILocation(line: 0, scope: !1464, inlinedAt: !1533)
!1533 = distinct !DILocation(line: 115, column: 18, scope: !1513)
!1534 = !DILocation(line: 29, column: 10, scope: !1464, inlinedAt: !1533)
!1535 = !DILocation(line: 115, column: 16, scope: !1513)
!1536 = !DILocation(line: 116, column: 16, scope: !1513)
!1537 = !DILocation(line: 116, column: 7, scope: !1513)
!1538 = !DILocation(line: 117, column: 14, scope: !1513)
!1539 = !DILocation(line: 120, column: 12, scope: !1504)
!1540 = !DILocation(line: 118, column: 5, scope: !1513)
!1541 = !DILocation(line: 121, column: 15, scope: !1504)
!1542 = !DILocation(line: 122, column: 14, scope: !1504)
!1543 = !DILocation(line: 122, column: 20, scope: !1504)
!1544 = !DILocation(line: 0, scope: !1464, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 122, column: 3, scope: !1504)
!1546 = !DILocation(line: 29, column: 10, scope: !1464, inlinedAt: !1545)
!1547 = !DILocation(line: 123, column: 1, scope: !1504)
!1548 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !411, file: !411, line: 50, type: !830, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1549)
!1549 = !{!1550}
!1550 = !DILocalVariable(name: "file", arg: 1, scope: !1548, file: !411, line: 50, type: !127)
!1551 = !DILocation(line: 0, scope: !1548)
!1552 = !DILocation(line: 52, column: 13, scope: !1548)
!1553 = !DILocation(line: 53, column: 1, scope: !1548)
!1554 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !411, file: !411, line: 87, type: !1555, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1557)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !158}
!1557 = !{!1558}
!1558 = !DILocalVariable(name: "ignore", arg: 1, scope: !1554, file: !411, line: 87, type: !158)
!1559 = !DILocation(line: 0, scope: !1554)
!1560 = !DILocation(line: 89, column: 16, scope: !1554)
!1561 = !{!1562, !1562, i64 0}
!1562 = !{!"_Bool", !817, i64 0}
!1563 = !DILocation(line: 90, column: 1, scope: !1554)
!1564 = distinct !DISubprogram(name: "close_stdout", scope: !411, file: !411, line: 116, type: !469, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1565)
!1565 = !{!1566}
!1566 = !DILocalVariable(name: "write_error", scope: !1567, file: !411, line: 121, type: !127)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !411, line: 120, column: 5)
!1568 = distinct !DILexicalBlock(scope: !1564, file: !411, line: 118, column: 7)
!1569 = !DILocation(line: 118, column: 21, scope: !1568)
!1570 = !DILocation(line: 118, column: 7, scope: !1568)
!1571 = !DILocation(line: 118, column: 29, scope: !1568)
!1572 = !DILocation(line: 119, column: 7, scope: !1568)
!1573 = !DILocation(line: 119, column: 12, scope: !1568)
!1574 = !{i8 0, i8 2}
!1575 = !DILocation(line: 119, column: 25, scope: !1568)
!1576 = !DILocation(line: 119, column: 28, scope: !1568)
!1577 = !DILocation(line: 119, column: 34, scope: !1568)
!1578 = !DILocation(line: 118, column: 7, scope: !1564)
!1579 = !DILocation(line: 121, column: 33, scope: !1567)
!1580 = !DILocation(line: 0, scope: !1567)
!1581 = !DILocation(line: 122, column: 11, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1567, file: !411, line: 122, column: 11)
!1583 = !DILocation(line: 0, scope: !1582)
!1584 = !DILocation(line: 122, column: 11, scope: !1567)
!1585 = !DILocation(line: 123, column: 9, scope: !1582)
!1586 = !DILocation(line: 126, column: 9, scope: !1582)
!1587 = !DILocation(line: 128, column: 14, scope: !1567)
!1588 = !DILocation(line: 128, column: 7, scope: !1567)
!1589 = !DILocation(line: 133, column: 42, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1564, file: !411, line: 133, column: 7)
!1591 = !DILocation(line: 133, column: 28, scope: !1590)
!1592 = !DILocation(line: 133, column: 50, scope: !1590)
!1593 = !DILocation(line: 133, column: 7, scope: !1564)
!1594 = !DILocation(line: 134, column: 12, scope: !1590)
!1595 = !DILocation(line: 134, column: 5, scope: !1590)
!1596 = !DILocation(line: 135, column: 1, scope: !1564)
!1597 = !DISubprogram(name: "_exit", scope: !1488, file: !1488, line: 624, type: !805, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1598 = distinct !DISubprogram(name: "verror", scope: !426, file: !426, line: 251, type: !1599, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1601)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !83, !83, !127, !436}
!1601 = !{!1602, !1603, !1604, !1605}
!1602 = !DILocalVariable(name: "status", arg: 1, scope: !1598, file: !426, line: 251, type: !83)
!1603 = !DILocalVariable(name: "errnum", arg: 2, scope: !1598, file: !426, line: 251, type: !83)
!1604 = !DILocalVariable(name: "message", arg: 3, scope: !1598, file: !426, line: 251, type: !127)
!1605 = !DILocalVariable(name: "args", arg: 4, scope: !1598, file: !426, line: 251, type: !436)
!1606 = !DILocation(line: 0, scope: !1598)
!1607 = !DILocation(line: 261, column: 3, scope: !1598)
!1608 = !DILocation(line: 265, column: 7, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1598, file: !426, line: 265, column: 7)
!1610 = !DILocation(line: 265, column: 7, scope: !1598)
!1611 = !DILocation(line: 266, column: 5, scope: !1609)
!1612 = !DILocation(line: 272, column: 7, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1609, file: !426, line: 268, column: 5)
!1614 = !DILocation(line: 276, column: 3, scope: !1598)
!1615 = !DILocation(line: 282, column: 1, scope: !1598)
!1616 = distinct !DISubprogram(name: "flush_stdout", scope: !426, file: !426, line: 163, type: !469, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1617)
!1617 = !{!1618}
!1618 = !DILocalVariable(name: "stdout_fd", scope: !1616, file: !426, line: 166, type: !83)
!1619 = !DILocation(line: 0, scope: !1616)
!1620 = !DILocalVariable(name: "fd", arg: 1, scope: !1621, file: !426, line: 145, type: !83)
!1621 = distinct !DISubprogram(name: "is_open", scope: !426, file: !426, line: 145, type: !1489, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1622)
!1622 = !{!1620}
!1623 = !DILocation(line: 0, scope: !1621, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 182, column: 25, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1616, file: !426, line: 182, column: 7)
!1626 = !DILocation(line: 157, column: 15, scope: !1621, inlinedAt: !1624)
!1627 = !DILocation(line: 157, column: 12, scope: !1621, inlinedAt: !1624)
!1628 = !DILocation(line: 182, column: 7, scope: !1616)
!1629 = !DILocation(line: 184, column: 5, scope: !1625)
!1630 = !DILocation(line: 185, column: 1, scope: !1616)
!1631 = distinct !DISubprogram(name: "error_tail", scope: !426, file: !426, line: 219, type: !1599, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1632)
!1632 = !{!1633, !1634, !1635, !1636}
!1633 = !DILocalVariable(name: "status", arg: 1, scope: !1631, file: !426, line: 219, type: !83)
!1634 = !DILocalVariable(name: "errnum", arg: 2, scope: !1631, file: !426, line: 219, type: !83)
!1635 = !DILocalVariable(name: "message", arg: 3, scope: !1631, file: !426, line: 219, type: !127)
!1636 = !DILocalVariable(name: "args", arg: 4, scope: !1631, file: !426, line: 219, type: !436)
!1637 = distinct !DIAssignID()
!1638 = !DILocation(line: 0, scope: !1631)
!1639 = !DILocation(line: 229, column: 13, scope: !1631)
!1640 = !DILocalVariable(name: "__stream", arg: 1, scope: !1641, file: !866, line: 132, type: !1644)
!1641 = distinct !DISubprogram(name: "vfprintf", scope: !866, file: !866, line: 132, type: !1642, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1679)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!83, !1644, !870, !436}
!1644 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1645)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !1647)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !1648)
!1648 = !{!1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1647, file: !175, line: 51, baseType: !83, size: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1647, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1647, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1647, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1647, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1647, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1647, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1647, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1647, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1647, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1647, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1647, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1647, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1647, file: !175, line: 70, baseType: !1663, size: 64, offset: 832)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1647, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1647, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1647, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1647, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1647, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1647, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1647, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1647, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1647, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1647, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1647, file: !175, line: 93, baseType: !1663, size: 64, offset: 1344)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1647, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1647, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1647, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1647, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!1679 = !{!1640, !1680, !1681}
!1680 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1641, file: !866, line: 133, type: !870)
!1681 = !DILocalVariable(name: "__ap", arg: 3, scope: !1641, file: !866, line: 133, type: !436)
!1682 = !DILocation(line: 0, scope: !1641, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 229, column: 3, scope: !1631)
!1684 = !DILocation(line: 135, column: 10, scope: !1641, inlinedAt: !1683)
!1685 = !DILocation(line: 232, column: 3, scope: !1631)
!1686 = !DILocation(line: 233, column: 7, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1631, file: !426, line: 233, column: 7)
!1688 = !DILocation(line: 233, column: 7, scope: !1631)
!1689 = !DILocalVariable(name: "errbuf", scope: !1690, file: !426, line: 193, type: !1694)
!1690 = distinct !DISubprogram(name: "print_errno_message", scope: !426, file: !426, line: 188, type: !805, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1691)
!1691 = !{!1692, !1693, !1689}
!1692 = !DILocalVariable(name: "errnum", arg: 1, scope: !1690, file: !426, line: 188, type: !83)
!1693 = !DILocalVariable(name: "s", scope: !1690, file: !426, line: 190, type: !127)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1695)
!1695 = !{!1696}
!1696 = !DISubrange(count: 1024)
!1697 = !DILocation(line: 0, scope: !1690, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 234, column: 5, scope: !1687)
!1699 = !DILocation(line: 193, column: 3, scope: !1690, inlinedAt: !1698)
!1700 = !DILocation(line: 195, column: 7, scope: !1690, inlinedAt: !1698)
!1701 = !DILocation(line: 207, column: 9, scope: !1702, inlinedAt: !1698)
!1702 = distinct !DILexicalBlock(scope: !1690, file: !426, line: 207, column: 7)
!1703 = !DILocation(line: 207, column: 7, scope: !1690, inlinedAt: !1698)
!1704 = !DILocation(line: 208, column: 9, scope: !1702, inlinedAt: !1698)
!1705 = !DILocation(line: 208, column: 5, scope: !1702, inlinedAt: !1698)
!1706 = !DILocation(line: 214, column: 3, scope: !1690, inlinedAt: !1698)
!1707 = !DILocation(line: 216, column: 1, scope: !1690, inlinedAt: !1698)
!1708 = !DILocation(line: 234, column: 5, scope: !1687)
!1709 = !DILocation(line: 238, column: 3, scope: !1631)
!1710 = !DILocalVariable(name: "__c", arg: 1, scope: !1711, file: !1712, line: 101, type: !83)
!1711 = distinct !DISubprogram(name: "putc_unlocked", scope: !1712, file: !1712, line: 101, type: !1713, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1715)
!1712 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!83, !83, !1645}
!1715 = !{!1710, !1716}
!1716 = !DILocalVariable(name: "__stream", arg: 2, scope: !1711, file: !1712, line: 101, type: !1645)
!1717 = !DILocation(line: 0, scope: !1711, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 238, column: 3, scope: !1631)
!1719 = !DILocation(line: 103, column: 10, scope: !1711, inlinedAt: !1718)
!1720 = !{!1721, !816, i64 40}
!1721 = !{!"_IO_FILE", !881, i64 0, !816, i64 8, !816, i64 16, !816, i64 24, !816, i64 32, !816, i64 40, !816, i64 48, !816, i64 56, !816, i64 64, !816, i64 72, !816, i64 80, !816, i64 88, !816, i64 96, !816, i64 104, !881, i64 112, !881, i64 116, !1171, i64 120, !922, i64 128, !817, i64 130, !817, i64 131, !816, i64 136, !1171, i64 144, !816, i64 152, !816, i64 160, !816, i64 168, !816, i64 176, !1171, i64 184, !881, i64 192, !817, i64 196}
!1722 = !{!1721, !816, i64 48}
!1723 = !{!"branch_weights", i32 2000, i32 1}
!1724 = !DILocation(line: 240, column: 3, scope: !1631)
!1725 = !DILocation(line: 241, column: 7, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1631, file: !426, line: 241, column: 7)
!1727 = !DILocation(line: 241, column: 7, scope: !1631)
!1728 = !DILocation(line: 242, column: 5, scope: !1726)
!1729 = !DILocation(line: 243, column: 1, scope: !1631)
!1730 = !DISubprogram(name: "__vfprintf_chk", scope: !866, file: !866, line: 96, type: !1731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!83, !1644, !83, !870, !436}
!1733 = !DISubprogram(name: "strerror_r", scope: !1000, file: !1000, line: 444, type: !1734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!122, !83, !122, !124}
!1736 = !DISubprogram(name: "__overflow", scope: !875, file: !875, line: 886, type: !1737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!83, !1645, !83}
!1739 = !DISubprogram(name: "fflush_unlocked", scope: !875, file: !875, line: 239, type: !1740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!83, !1645}
!1742 = !DISubprogram(name: "fcntl", scope: !1743, file: !1743, line: 149, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1743 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!83, !83, !83, null}
!1746 = distinct !DISubprogram(name: "error", scope: !426, file: !426, line: 285, type: !1747, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1749)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{null, !83, !83, !127, null}
!1749 = !{!1750, !1751, !1752, !1753}
!1750 = !DILocalVariable(name: "status", arg: 1, scope: !1746, file: !426, line: 285, type: !83)
!1751 = !DILocalVariable(name: "errnum", arg: 2, scope: !1746, file: !426, line: 285, type: !83)
!1752 = !DILocalVariable(name: "message", arg: 3, scope: !1746, file: !426, line: 285, type: !127)
!1753 = !DILocalVariable(name: "ap", scope: !1746, file: !426, line: 287, type: !1754)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !875, line: 52, baseType: !1755)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1756, line: 12, baseType: !1757)
!1756 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !426, baseType: !1758)
!1758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 192, elements: !60)
!1759 = distinct !DIAssignID()
!1760 = !DILocation(line: 0, scope: !1746)
!1761 = !DILocation(line: 287, column: 3, scope: !1746)
!1762 = !DILocation(line: 288, column: 3, scope: !1746)
!1763 = !DILocation(line: 289, column: 3, scope: !1746)
!1764 = !DILocation(line: 290, column: 3, scope: !1746)
!1765 = !DILocation(line: 291, column: 1, scope: !1746)
!1766 = !DILocation(line: 0, scope: !433)
!1767 = !DILocation(line: 302, column: 7, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !433, file: !426, line: 302, column: 7)
!1769 = !DILocation(line: 302, column: 7, scope: !433)
!1770 = !DILocation(line: 307, column: 11, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !426, line: 307, column: 11)
!1772 = distinct !DILexicalBlock(scope: !1768, file: !426, line: 303, column: 5)
!1773 = !DILocation(line: 307, column: 27, scope: !1771)
!1774 = !DILocation(line: 308, column: 11, scope: !1771)
!1775 = !DILocation(line: 308, column: 28, scope: !1771)
!1776 = !DILocation(line: 308, column: 25, scope: !1771)
!1777 = !DILocation(line: 309, column: 15, scope: !1771)
!1778 = !DILocation(line: 309, column: 33, scope: !1771)
!1779 = !DILocation(line: 310, column: 19, scope: !1771)
!1780 = !DILocation(line: 311, column: 22, scope: !1771)
!1781 = !DILocation(line: 311, column: 56, scope: !1771)
!1782 = !DILocation(line: 307, column: 11, scope: !1772)
!1783 = !DILocation(line: 316, column: 21, scope: !1772)
!1784 = !DILocation(line: 317, column: 23, scope: !1772)
!1785 = !DILocation(line: 318, column: 5, scope: !1772)
!1786 = !DILocation(line: 327, column: 3, scope: !433)
!1787 = !DILocation(line: 331, column: 7, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !433, file: !426, line: 331, column: 7)
!1789 = !DILocation(line: 331, column: 7, scope: !433)
!1790 = !DILocation(line: 332, column: 5, scope: !1788)
!1791 = !DILocation(line: 338, column: 7, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !426, line: 334, column: 5)
!1793 = !DILocation(line: 346, column: 3, scope: !433)
!1794 = !DILocation(line: 350, column: 3, scope: !433)
!1795 = !DILocation(line: 356, column: 1, scope: !433)
!1796 = distinct !DISubprogram(name: "error_at_line", scope: !426, file: !426, line: 359, type: !1797, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !83, !83, !127, !89, !127, null}
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1805}
!1800 = !DILocalVariable(name: "status", arg: 1, scope: !1796, file: !426, line: 359, type: !83)
!1801 = !DILocalVariable(name: "errnum", arg: 2, scope: !1796, file: !426, line: 359, type: !83)
!1802 = !DILocalVariable(name: "file_name", arg: 3, scope: !1796, file: !426, line: 359, type: !127)
!1803 = !DILocalVariable(name: "line_number", arg: 4, scope: !1796, file: !426, line: 360, type: !89)
!1804 = !DILocalVariable(name: "message", arg: 5, scope: !1796, file: !426, line: 360, type: !127)
!1805 = !DILocalVariable(name: "ap", scope: !1796, file: !426, line: 362, type: !1754)
!1806 = distinct !DIAssignID()
!1807 = !DILocation(line: 0, scope: !1796)
!1808 = !DILocation(line: 362, column: 3, scope: !1796)
!1809 = !DILocation(line: 363, column: 3, scope: !1796)
!1810 = !DILocation(line: 364, column: 3, scope: !1796)
!1811 = !DILocation(line: 366, column: 3, scope: !1796)
!1812 = !DILocation(line: 367, column: 1, scope: !1796)
!1813 = distinct !DISubprogram(name: "getprogname", scope: !729, file: !729, line: 54, type: !1088, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728)
!1814 = !DILocation(line: 58, column: 10, scope: !1813)
!1815 = !DILocation(line: 58, column: 3, scope: !1813)
!1816 = distinct !DISubprogram(name: "set_program_name", scope: !474, file: !474, line: 37, type: !830, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1817)
!1817 = !{!1818, !1819, !1820}
!1818 = !DILocalVariable(name: "argv0", arg: 1, scope: !1816, file: !474, line: 37, type: !127)
!1819 = !DILocalVariable(name: "slash", scope: !1816, file: !474, line: 44, type: !127)
!1820 = !DILocalVariable(name: "base", scope: !1816, file: !474, line: 45, type: !127)
!1821 = !DILocation(line: 0, scope: !1816)
!1822 = !DILocation(line: 44, column: 23, scope: !1816)
!1823 = !DILocation(line: 45, column: 22, scope: !1816)
!1824 = !DILocation(line: 46, column: 17, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1816, file: !474, line: 46, column: 7)
!1826 = !DILocation(line: 46, column: 9, scope: !1825)
!1827 = !DILocation(line: 46, column: 25, scope: !1825)
!1828 = !DILocation(line: 46, column: 40, scope: !1825)
!1829 = !DILocalVariable(name: "__s1", arg: 1, scope: !1830, file: !893, line: 974, type: !1028)
!1830 = distinct !DISubprogram(name: "memeq", scope: !893, file: !893, line: 974, type: !1831, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !473, retainedNodes: !1833)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!158, !1028, !1028, !124}
!1833 = !{!1829, !1834, !1835}
!1834 = !DILocalVariable(name: "__s2", arg: 2, scope: !1830, file: !893, line: 974, type: !1028)
!1835 = !DILocalVariable(name: "__n", arg: 3, scope: !1830, file: !893, line: 974, type: !124)
!1836 = !DILocation(line: 0, scope: !1830, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 46, column: 28, scope: !1825)
!1838 = !DILocation(line: 976, column: 11, scope: !1830, inlinedAt: !1837)
!1839 = !DILocation(line: 976, column: 10, scope: !1830, inlinedAt: !1837)
!1840 = !DILocation(line: 46, column: 7, scope: !1816)
!1841 = !DILocation(line: 49, column: 11, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !474, line: 49, column: 11)
!1843 = distinct !DILexicalBlock(scope: !1825, file: !474, line: 47, column: 5)
!1844 = !DILocation(line: 49, column: 36, scope: !1842)
!1845 = !DILocation(line: 49, column: 11, scope: !1843)
!1846 = !DILocation(line: 65, column: 16, scope: !1816)
!1847 = !DILocation(line: 71, column: 27, scope: !1816)
!1848 = !DILocation(line: 74, column: 33, scope: !1816)
!1849 = !DILocation(line: 76, column: 1, scope: !1816)
!1850 = !DISubprogram(name: "strrchr", scope: !1000, file: !1000, line: 273, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1851 = distinct !DIAssignID()
!1852 = !DILocation(line: 0, scope: !483)
!1853 = distinct !DIAssignID()
!1854 = !DILocation(line: 40, column: 29, scope: !483)
!1855 = !DILocation(line: 41, column: 19, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !483, file: !484, line: 41, column: 7)
!1857 = !DILocation(line: 41, column: 7, scope: !483)
!1858 = !DILocation(line: 47, column: 3, scope: !483)
!1859 = !DILocation(line: 48, column: 3, scope: !483)
!1860 = !DILocalVariable(name: "ps", arg: 1, scope: !1861, file: !1862, line: 1135, type: !1865)
!1861 = distinct !DISubprogram(name: "mbszero", scope: !1862, file: !1862, line: 1135, type: !1863, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1866)
!1862 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1863 = !DISubroutineType(types: !1864)
!1864 = !{null, !1865}
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!1866 = !{!1860}
!1867 = !DILocation(line: 0, scope: !1861, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 48, column: 18, scope: !483)
!1869 = !DILocalVariable(name: "__dest", arg: 1, scope: !1870, file: !1465, line: 57, type: !121)
!1870 = distinct !DISubprogram(name: "memset", scope: !1465, file: !1465, line: 57, type: !1871, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!121, !121, !83, !124}
!1873 = !{!1869, !1874, !1875}
!1874 = !DILocalVariable(name: "__ch", arg: 2, scope: !1870, file: !1465, line: 57, type: !83)
!1875 = !DILocalVariable(name: "__len", arg: 3, scope: !1870, file: !1465, line: 57, type: !124)
!1876 = !DILocation(line: 0, scope: !1870, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 1137, column: 3, scope: !1861, inlinedAt: !1868)
!1878 = !DILocation(line: 59, column: 10, scope: !1870, inlinedAt: !1877)
!1879 = !DILocation(line: 49, column: 7, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !483, file: !484, line: 49, column: 7)
!1881 = !DILocation(line: 49, column: 39, scope: !1880)
!1882 = !DILocation(line: 49, column: 44, scope: !1880)
!1883 = !DILocation(line: 54, column: 1, scope: !483)
!1884 = !DISubprogram(name: "mbrtoc32", scope: !495, file: !495, line: 57, type: !1885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!124, !1887, !870, !124, !1889}
!1887 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1888)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1865)
!1890 = distinct !DISubprogram(name: "clone_quoting_options", scope: !514, file: !514, line: 113, type: !1891, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !1894)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!1893, !1893}
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!1894 = !{!1895, !1896, !1897}
!1895 = !DILocalVariable(name: "o", arg: 1, scope: !1890, file: !514, line: 113, type: !1893)
!1896 = !DILocalVariable(name: "saved_errno", scope: !1890, file: !514, line: 115, type: !83)
!1897 = !DILocalVariable(name: "p", scope: !1890, file: !514, line: 116, type: !1893)
!1898 = !DILocation(line: 0, scope: !1890)
!1899 = !DILocation(line: 115, column: 21, scope: !1890)
!1900 = !DILocation(line: 116, column: 40, scope: !1890)
!1901 = !DILocation(line: 116, column: 31, scope: !1890)
!1902 = !DILocation(line: 118, column: 9, scope: !1890)
!1903 = !DILocation(line: 119, column: 3, scope: !1890)
!1904 = distinct !DISubprogram(name: "get_quoting_style", scope: !514, file: !514, line: 124, type: !1905, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !1909)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!537, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!1909 = !{!1910}
!1910 = !DILocalVariable(name: "o", arg: 1, scope: !1904, file: !514, line: 124, type: !1907)
!1911 = !DILocation(line: 0, scope: !1904)
!1912 = !DILocation(line: 126, column: 11, scope: !1904)
!1913 = !DILocation(line: 126, column: 46, scope: !1904)
!1914 = !{!1915, !881, i64 0}
!1915 = !{!"quoting_options", !881, i64 0, !881, i64 4, !817, i64 8, !816, i64 40, !816, i64 48}
!1916 = !DILocation(line: 126, column: 3, scope: !1904)
!1917 = distinct !DISubprogram(name: "set_quoting_style", scope: !514, file: !514, line: 132, type: !1918, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1893, !537}
!1920 = !{!1921, !1922}
!1921 = !DILocalVariable(name: "o", arg: 1, scope: !1917, file: !514, line: 132, type: !1893)
!1922 = !DILocalVariable(name: "s", arg: 2, scope: !1917, file: !514, line: 132, type: !537)
!1923 = !DILocation(line: 0, scope: !1917)
!1924 = !DILocation(line: 134, column: 4, scope: !1917)
!1925 = !DILocation(line: 134, column: 45, scope: !1917)
!1926 = !DILocation(line: 135, column: 1, scope: !1917)
!1927 = distinct !DISubprogram(name: "set_char_quoting", scope: !514, file: !514, line: 143, type: !1928, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!83, !1893, !4, !83}
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1937, !1938}
!1931 = !DILocalVariable(name: "o", arg: 1, scope: !1927, file: !514, line: 143, type: !1893)
!1932 = !DILocalVariable(name: "c", arg: 2, scope: !1927, file: !514, line: 143, type: !4)
!1933 = !DILocalVariable(name: "i", arg: 3, scope: !1927, file: !514, line: 143, type: !83)
!1934 = !DILocalVariable(name: "uc", scope: !1927, file: !514, line: 145, type: !129)
!1935 = !DILocalVariable(name: "p", scope: !1927, file: !514, line: 146, type: !1936)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!1937 = !DILocalVariable(name: "shift", scope: !1927, file: !514, line: 148, type: !83)
!1938 = !DILocalVariable(name: "r", scope: !1927, file: !514, line: 149, type: !89)
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
!1952 = distinct !DISubprogram(name: "set_quoting_flags", scope: !514, file: !514, line: 159, type: !1953, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!83, !1893, !83}
!1955 = !{!1956, !1957, !1958}
!1956 = !DILocalVariable(name: "o", arg: 1, scope: !1952, file: !514, line: 159, type: !1893)
!1957 = !DILocalVariable(name: "i", arg: 2, scope: !1952, file: !514, line: 159, type: !83)
!1958 = !DILocalVariable(name: "r", scope: !1952, file: !514, line: 163, type: !83)
!1959 = !DILocation(line: 0, scope: !1952)
!1960 = !DILocation(line: 161, column: 8, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1952, file: !514, line: 161, column: 7)
!1962 = !DILocation(line: 161, column: 7, scope: !1952)
!1963 = !DILocation(line: 163, column: 14, scope: !1952)
!1964 = !{!1915, !881, i64 4}
!1965 = !DILocation(line: 164, column: 12, scope: !1952)
!1966 = !DILocation(line: 165, column: 3, scope: !1952)
!1967 = distinct !DISubprogram(name: "set_custom_quoting", scope: !514, file: !514, line: 169, type: !1968, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !1970)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !1893, !127, !127}
!1970 = !{!1971, !1972, !1973}
!1971 = !DILocalVariable(name: "o", arg: 1, scope: !1967, file: !514, line: 169, type: !1893)
!1972 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1967, file: !514, line: 170, type: !127)
!1973 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1967, file: !514, line: 170, type: !127)
!1974 = !DILocation(line: 0, scope: !1967)
!1975 = !DILocation(line: 172, column: 8, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1967, file: !514, line: 172, column: 7)
!1977 = !DILocation(line: 172, column: 7, scope: !1967)
!1978 = !DILocation(line: 174, column: 12, scope: !1967)
!1979 = !DILocation(line: 175, column: 8, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1967, file: !514, line: 175, column: 7)
!1981 = !DILocation(line: 175, column: 19, scope: !1980)
!1982 = !DILocation(line: 176, column: 5, scope: !1980)
!1983 = !DILocation(line: 177, column: 6, scope: !1967)
!1984 = !DILocation(line: 177, column: 17, scope: !1967)
!1985 = !{!1915, !816, i64 40}
!1986 = !DILocation(line: 178, column: 6, scope: !1967)
!1987 = !DILocation(line: 178, column: 18, scope: !1967)
!1988 = !{!1915, !816, i64 48}
!1989 = !DILocation(line: 179, column: 1, scope: !1967)
!1990 = !DISubprogram(name: "abort", scope: !1004, file: !1004, line: 598, type: !469, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1991 = distinct !DISubprogram(name: "quotearg_buffer", scope: !514, file: !514, line: 774, type: !1992, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!124, !122, !124, !127, !124, !1907}
!1994 = !{!1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002}
!1995 = !DILocalVariable(name: "buffer", arg: 1, scope: !1991, file: !514, line: 774, type: !122)
!1996 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1991, file: !514, line: 774, type: !124)
!1997 = !DILocalVariable(name: "arg", arg: 3, scope: !1991, file: !514, line: 775, type: !127)
!1998 = !DILocalVariable(name: "argsize", arg: 4, scope: !1991, file: !514, line: 775, type: !124)
!1999 = !DILocalVariable(name: "o", arg: 5, scope: !1991, file: !514, line: 776, type: !1907)
!2000 = !DILocalVariable(name: "p", scope: !1991, file: !514, line: 778, type: !1907)
!2001 = !DILocalVariable(name: "saved_errno", scope: !1991, file: !514, line: 779, type: !83)
!2002 = !DILocalVariable(name: "r", scope: !1991, file: !514, line: 780, type: !124)
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
!2014 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !514, file: !514, line: 251, type: !2015, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2019)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!124, !122, !124, !127, !124, !537, !83, !2017, !127, !127}
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!2019 = !{!2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2045, !2047, !2050, !2051, !2052, !2053, !2056, !2057, !2059, !2060, !2063, !2067, !2068, !2076, !2079, !2080, !2081}
!2020 = !DILocalVariable(name: "buffer", arg: 1, scope: !2014, file: !514, line: 251, type: !122)
!2021 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2014, file: !514, line: 251, type: !124)
!2022 = !DILocalVariable(name: "arg", arg: 3, scope: !2014, file: !514, line: 252, type: !127)
!2023 = !DILocalVariable(name: "argsize", arg: 4, scope: !2014, file: !514, line: 252, type: !124)
!2024 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2014, file: !514, line: 253, type: !537)
!2025 = !DILocalVariable(name: "flags", arg: 6, scope: !2014, file: !514, line: 253, type: !83)
!2026 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2014, file: !514, line: 254, type: !2017)
!2027 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2014, file: !514, line: 255, type: !127)
!2028 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2014, file: !514, line: 256, type: !127)
!2029 = !DILocalVariable(name: "unibyte_locale", scope: !2014, file: !514, line: 258, type: !158)
!2030 = !DILocalVariable(name: "len", scope: !2014, file: !514, line: 260, type: !124)
!2031 = !DILocalVariable(name: "orig_buffersize", scope: !2014, file: !514, line: 261, type: !124)
!2032 = !DILocalVariable(name: "quote_string", scope: !2014, file: !514, line: 262, type: !127)
!2033 = !DILocalVariable(name: "quote_string_len", scope: !2014, file: !514, line: 263, type: !124)
!2034 = !DILocalVariable(name: "backslash_escapes", scope: !2014, file: !514, line: 264, type: !158)
!2035 = !DILocalVariable(name: "elide_outer_quotes", scope: !2014, file: !514, line: 265, type: !158)
!2036 = !DILocalVariable(name: "encountered_single_quote", scope: !2014, file: !514, line: 266, type: !158)
!2037 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2014, file: !514, line: 267, type: !158)
!2038 = !DILabel(scope: !2014, name: "process_input", file: !514, line: 308)
!2039 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2014, file: !514, line: 309, type: !158)
!2040 = !DILocalVariable(name: "lq", scope: !2041, file: !514, line: 361, type: !127)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !514, line: 361, column: 11)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !514, line: 360, column: 13)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !514, line: 333, column: 7)
!2044 = distinct !DILexicalBlock(scope: !2014, file: !514, line: 312, column: 5)
!2045 = !DILocalVariable(name: "i", scope: !2046, file: !514, line: 395, type: !124)
!2046 = distinct !DILexicalBlock(scope: !2014, file: !514, line: 395, column: 3)
!2047 = !DILocalVariable(name: "is_right_quote", scope: !2048, file: !514, line: 397, type: !158)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !514, line: 396, column: 5)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !514, line: 395, column: 3)
!2050 = !DILocalVariable(name: "escaping", scope: !2048, file: !514, line: 398, type: !158)
!2051 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2048, file: !514, line: 399, type: !158)
!2052 = !DILocalVariable(name: "c", scope: !2048, file: !514, line: 417, type: !129)
!2053 = !DILabel(scope: !2054, name: "c_and_shell_escape", file: !514, line: 502)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !514, line: 478, column: 9)
!2055 = distinct !DILexicalBlock(scope: !2048, file: !514, line: 419, column: 9)
!2056 = !DILabel(scope: !2054, name: "c_escape", file: !514, line: 507)
!2057 = !DILocalVariable(name: "m", scope: !2058, file: !514, line: 598, type: !124)
!2058 = distinct !DILexicalBlock(scope: !2055, file: !514, line: 596, column: 11)
!2059 = !DILocalVariable(name: "printable", scope: !2058, file: !514, line: 600, type: !158)
!2060 = !DILocalVariable(name: "mbs", scope: !2061, file: !514, line: 609, type: !586)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !514, line: 608, column: 15)
!2062 = distinct !DILexicalBlock(scope: !2058, file: !514, line: 602, column: 17)
!2063 = !DILocalVariable(name: "w", scope: !2064, file: !514, line: 618, type: !494)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !514, line: 617, column: 19)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !514, line: 616, column: 17)
!2066 = distinct !DILexicalBlock(scope: !2061, file: !514, line: 616, column: 17)
!2067 = !DILocalVariable(name: "bytes", scope: !2064, file: !514, line: 619, type: !124)
!2068 = !DILocalVariable(name: "j", scope: !2069, file: !514, line: 648, type: !124)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !514, line: 648, column: 29)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !514, line: 647, column: 27)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !514, line: 645, column: 29)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !514, line: 636, column: 23)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !514, line: 628, column: 30)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !514, line: 623, column: 30)
!2075 = distinct !DILexicalBlock(scope: !2064, file: !514, line: 621, column: 25)
!2076 = !DILocalVariable(name: "ilim", scope: !2077, file: !514, line: 674, type: !124)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !514, line: 671, column: 15)
!2078 = distinct !DILexicalBlock(scope: !2058, file: !514, line: 670, column: 17)
!2079 = !DILabel(scope: !2048, name: "store_escape", file: !514, line: 709)
!2080 = !DILabel(scope: !2048, name: "store_c", file: !514, line: 712)
!2081 = !DILabel(scope: !2014, name: "force_outer_quoting_style", file: !514, line: 753)
!2082 = distinct !DIAssignID()
!2083 = distinct !DIAssignID()
!2084 = distinct !DIAssignID()
!2085 = distinct !DIAssignID()
!2086 = distinct !DIAssignID()
!2087 = !DILocation(line: 0, scope: !2061)
!2088 = distinct !DIAssignID()
!2089 = !DILocation(line: 0, scope: !2064)
!2090 = !DILocation(line: 0, scope: !2014)
!2091 = !DILocation(line: 258, column: 25, scope: !2014)
!2092 = !DILocation(line: 258, column: 36, scope: !2014)
!2093 = !DILocation(line: 265, column: 8, scope: !2014)
!2094 = !DILocation(line: 267, column: 3, scope: !2014)
!2095 = !DILocation(line: 261, column: 10, scope: !2014)
!2096 = !DILocation(line: 262, column: 15, scope: !2014)
!2097 = !DILocation(line: 263, column: 10, scope: !2014)
!2098 = !DILocation(line: 264, column: 8, scope: !2014)
!2099 = !DILocation(line: 266, column: 8, scope: !2014)
!2100 = !DILocation(line: 267, column: 8, scope: !2014)
!2101 = !DILocation(line: 308, column: 2, scope: !2014)
!2102 = !DILocation(line: 311, column: 3, scope: !2014)
!2103 = !DILocation(line: 318, column: 11, scope: !2044)
!2104 = !DILocation(line: 318, column: 12, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2044, file: !514, line: 318, column: 11)
!2106 = !DILocation(line: 319, column: 9, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !514, line: 319, column: 9)
!2108 = distinct !DILexicalBlock(scope: !2105, file: !514, line: 319, column: 9)
!2109 = !DILocation(line: 319, column: 9, scope: !2108)
!2110 = !DILocation(line: 0, scope: !577, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 357, column: 26, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !514, line: 335, column: 11)
!2113 = distinct !DILexicalBlock(scope: !2043, file: !514, line: 334, column: 13)
!2114 = !DILocation(line: 199, column: 29, scope: !577, inlinedAt: !2111)
!2115 = !DILocation(line: 201, column: 19, scope: !2116, inlinedAt: !2111)
!2116 = distinct !DILexicalBlock(scope: !577, file: !514, line: 201, column: 7)
!2117 = !DILocation(line: 201, column: 7, scope: !577, inlinedAt: !2111)
!2118 = !DILocation(line: 229, column: 3, scope: !577, inlinedAt: !2111)
!2119 = !DILocation(line: 230, column: 3, scope: !577, inlinedAt: !2111)
!2120 = !DILocalVariable(name: "ps", arg: 1, scope: !2121, file: !1862, line: 1135, type: !2124)
!2121 = distinct !DISubprogram(name: "mbszero", scope: !1862, file: !1862, line: 1135, type: !2122, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2125)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !2124}
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!2125 = !{!2120}
!2126 = !DILocation(line: 0, scope: !2121, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 230, column: 18, scope: !577, inlinedAt: !2111)
!2128 = !DILocalVariable(name: "__dest", arg: 1, scope: !2129, file: !1465, line: 57, type: !121)
!2129 = distinct !DISubprogram(name: "memset", scope: !1465, file: !1465, line: 57, type: !1871, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2130)
!2130 = !{!2128, !2131, !2132}
!2131 = !DILocalVariable(name: "__ch", arg: 2, scope: !2129, file: !1465, line: 57, type: !83)
!2132 = !DILocalVariable(name: "__len", arg: 3, scope: !2129, file: !1465, line: 57, type: !124)
!2133 = !DILocation(line: 0, scope: !2129, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 1137, column: 3, scope: !2121, inlinedAt: !2127)
!2135 = !DILocation(line: 59, column: 10, scope: !2129, inlinedAt: !2134)
!2136 = !DILocation(line: 231, column: 7, scope: !2137, inlinedAt: !2111)
!2137 = distinct !DILexicalBlock(scope: !577, file: !514, line: 231, column: 7)
!2138 = !DILocation(line: 231, column: 40, scope: !2137, inlinedAt: !2111)
!2139 = !DILocation(line: 231, column: 45, scope: !2137, inlinedAt: !2111)
!2140 = !DILocation(line: 235, column: 1, scope: !577, inlinedAt: !2111)
!2141 = !DILocation(line: 0, scope: !577, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 358, column: 27, scope: !2112)
!2143 = !DILocation(line: 199, column: 29, scope: !577, inlinedAt: !2142)
!2144 = !DILocation(line: 201, column: 19, scope: !2116, inlinedAt: !2142)
!2145 = !DILocation(line: 201, column: 7, scope: !577, inlinedAt: !2142)
!2146 = !DILocation(line: 229, column: 3, scope: !577, inlinedAt: !2142)
!2147 = !DILocation(line: 230, column: 3, scope: !577, inlinedAt: !2142)
!2148 = !DILocation(line: 0, scope: !2121, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 230, column: 18, scope: !577, inlinedAt: !2142)
!2150 = !DILocation(line: 0, scope: !2129, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 1137, column: 3, scope: !2121, inlinedAt: !2149)
!2152 = !DILocation(line: 59, column: 10, scope: !2129, inlinedAt: !2151)
!2153 = !DILocation(line: 231, column: 7, scope: !2137, inlinedAt: !2142)
!2154 = !DILocation(line: 231, column: 40, scope: !2137, inlinedAt: !2142)
!2155 = !DILocation(line: 231, column: 45, scope: !2137, inlinedAt: !2142)
!2156 = !DILocation(line: 235, column: 1, scope: !577, inlinedAt: !2142)
!2157 = !DILocation(line: 360, column: 14, scope: !2042)
!2158 = !DILocation(line: 360, column: 13, scope: !2043)
!2159 = !DILocation(line: 0, scope: !2041)
!2160 = !DILocation(line: 361, column: 45, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2041, file: !514, line: 361, column: 11)
!2162 = !DILocation(line: 361, column: 11, scope: !2041)
!2163 = !DILocation(line: 362, column: 13, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !514, line: 362, column: 13)
!2165 = distinct !DILexicalBlock(scope: !2161, file: !514, line: 362, column: 13)
!2166 = !DILocation(line: 362, column: 13, scope: !2165)
!2167 = !DILocation(line: 361, column: 52, scope: !2161)
!2168 = distinct !{!2168, !2162, !2169, !927}
!2169 = !DILocation(line: 362, column: 13, scope: !2041)
!2170 = !DILocation(line: 260, column: 10, scope: !2014)
!2171 = !DILocation(line: 365, column: 28, scope: !2043)
!2172 = !DILocation(line: 367, column: 7, scope: !2044)
!2173 = !DILocation(line: 370, column: 7, scope: !2044)
!2174 = !DILocation(line: 373, column: 7, scope: !2044)
!2175 = !DILocation(line: 376, column: 12, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2044, file: !514, line: 376, column: 11)
!2177 = !DILocation(line: 376, column: 11, scope: !2044)
!2178 = !DILocation(line: 381, column: 12, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2044, file: !514, line: 381, column: 11)
!2180 = !DILocation(line: 381, column: 11, scope: !2044)
!2181 = !DILocation(line: 382, column: 9, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !514, line: 382, column: 9)
!2183 = distinct !DILexicalBlock(scope: !2179, file: !514, line: 382, column: 9)
!2184 = !DILocation(line: 382, column: 9, scope: !2183)
!2185 = !DILocation(line: 389, column: 7, scope: !2044)
!2186 = !DILocation(line: 392, column: 7, scope: !2044)
!2187 = !DILocation(line: 0, scope: !2046)
!2188 = !DILocation(line: 395, column: 8, scope: !2046)
!2189 = !DILocation(line: 309, column: 8, scope: !2014)
!2190 = !DILocation(line: 395, scope: !2046)
!2191 = !DILocation(line: 395, column: 34, scope: !2049)
!2192 = !DILocation(line: 395, column: 26, scope: !2049)
!2193 = !DILocation(line: 395, column: 48, scope: !2049)
!2194 = !DILocation(line: 395, column: 55, scope: !2049)
!2195 = !DILocation(line: 395, column: 3, scope: !2046)
!2196 = !DILocation(line: 395, column: 67, scope: !2049)
!2197 = !DILocation(line: 0, scope: !2048)
!2198 = !DILocation(line: 402, column: 11, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2048, file: !514, line: 401, column: 11)
!2200 = !DILocation(line: 404, column: 17, scope: !2199)
!2201 = !DILocation(line: 405, column: 39, scope: !2199)
!2202 = !DILocation(line: 409, column: 32, scope: !2199)
!2203 = !DILocation(line: 405, column: 19, scope: !2199)
!2204 = !DILocation(line: 405, column: 15, scope: !2199)
!2205 = !DILocation(line: 410, column: 11, scope: !2199)
!2206 = !DILocation(line: 410, column: 25, scope: !2199)
!2207 = !DILocalVariable(name: "__s1", arg: 1, scope: !2208, file: !893, line: 974, type: !1028)
!2208 = distinct !DISubprogram(name: "memeq", scope: !893, file: !893, line: 974, type: !1831, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2209)
!2209 = !{!2207, !2210, !2211}
!2210 = !DILocalVariable(name: "__s2", arg: 2, scope: !2208, file: !893, line: 974, type: !1028)
!2211 = !DILocalVariable(name: "__n", arg: 3, scope: !2208, file: !893, line: 974, type: !124)
!2212 = !DILocation(line: 0, scope: !2208, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 410, column: 14, scope: !2199)
!2214 = !DILocation(line: 976, column: 11, scope: !2208, inlinedAt: !2213)
!2215 = !DILocation(line: 976, column: 10, scope: !2208, inlinedAt: !2213)
!2216 = !DILocation(line: 401, column: 11, scope: !2048)
!2217 = !DILocation(line: 417, column: 25, scope: !2048)
!2218 = !DILocation(line: 418, column: 7, scope: !2048)
!2219 = !DILocation(line: 421, column: 15, scope: !2055)
!2220 = !DILocation(line: 423, column: 15, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !514, line: 423, column: 15)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !514, line: 422, column: 13)
!2223 = distinct !DILexicalBlock(scope: !2055, file: !514, line: 421, column: 15)
!2224 = !DILocation(line: 423, column: 15, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2221, file: !514, line: 423, column: 15)
!2226 = !DILocation(line: 423, column: 15, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !514, line: 423, column: 15)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !514, line: 423, column: 15)
!2229 = distinct !DILexicalBlock(scope: !2225, file: !514, line: 423, column: 15)
!2230 = !DILocation(line: 423, column: 15, scope: !2228)
!2231 = !DILocation(line: 423, column: 15, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !514, line: 423, column: 15)
!2233 = distinct !DILexicalBlock(scope: !2229, file: !514, line: 423, column: 15)
!2234 = !DILocation(line: 423, column: 15, scope: !2233)
!2235 = !DILocation(line: 423, column: 15, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !514, line: 423, column: 15)
!2237 = distinct !DILexicalBlock(scope: !2229, file: !514, line: 423, column: 15)
!2238 = !DILocation(line: 423, column: 15, scope: !2237)
!2239 = !DILocation(line: 423, column: 15, scope: !2229)
!2240 = !DILocation(line: 423, column: 15, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !514, line: 423, column: 15)
!2242 = distinct !DILexicalBlock(scope: !2221, file: !514, line: 423, column: 15)
!2243 = !DILocation(line: 423, column: 15, scope: !2242)
!2244 = !DILocation(line: 431, column: 19, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2222, file: !514, line: 430, column: 19)
!2246 = !DILocation(line: 431, column: 24, scope: !2245)
!2247 = !DILocation(line: 431, column: 28, scope: !2245)
!2248 = !DILocation(line: 431, column: 38, scope: !2245)
!2249 = !DILocation(line: 431, column: 48, scope: !2245)
!2250 = !DILocation(line: 431, column: 59, scope: !2245)
!2251 = !DILocation(line: 433, column: 19, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !514, line: 433, column: 19)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !514, line: 433, column: 19)
!2254 = distinct !DILexicalBlock(scope: !2245, file: !514, line: 432, column: 17)
!2255 = !DILocation(line: 433, column: 19, scope: !2253)
!2256 = !DILocation(line: 434, column: 19, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !514, line: 434, column: 19)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !514, line: 434, column: 19)
!2259 = !DILocation(line: 434, column: 19, scope: !2258)
!2260 = !DILocation(line: 435, column: 17, scope: !2254)
!2261 = !DILocation(line: 442, column: 20, scope: !2223)
!2262 = !DILocation(line: 447, column: 11, scope: !2055)
!2263 = !DILocation(line: 450, column: 19, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2055, file: !514, line: 448, column: 13)
!2265 = !DILocation(line: 456, column: 19, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2264, file: !514, line: 455, column: 19)
!2267 = !DILocation(line: 456, column: 24, scope: !2266)
!2268 = !DILocation(line: 456, column: 28, scope: !2266)
!2269 = !DILocation(line: 456, column: 38, scope: !2266)
!2270 = !DILocation(line: 456, column: 41, scope: !2266)
!2271 = !DILocation(line: 456, column: 52, scope: !2266)
!2272 = !DILocation(line: 455, column: 19, scope: !2264)
!2273 = !DILocation(line: 457, column: 25, scope: !2266)
!2274 = !DILocation(line: 457, column: 17, scope: !2266)
!2275 = !DILocation(line: 464, column: 25, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2266, file: !514, line: 458, column: 19)
!2277 = !DILocation(line: 468, column: 21, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !514, line: 468, column: 21)
!2279 = distinct !DILexicalBlock(scope: !2276, file: !514, line: 468, column: 21)
!2280 = !DILocation(line: 468, column: 21, scope: !2279)
!2281 = !DILocation(line: 469, column: 21, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !514, line: 469, column: 21)
!2283 = distinct !DILexicalBlock(scope: !2276, file: !514, line: 469, column: 21)
!2284 = !DILocation(line: 469, column: 21, scope: !2283)
!2285 = !DILocation(line: 470, column: 21, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !514, line: 470, column: 21)
!2287 = distinct !DILexicalBlock(scope: !2276, file: !514, line: 470, column: 21)
!2288 = !DILocation(line: 470, column: 21, scope: !2287)
!2289 = !DILocation(line: 471, column: 21, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !514, line: 471, column: 21)
!2291 = distinct !DILexicalBlock(scope: !2276, file: !514, line: 471, column: 21)
!2292 = !DILocation(line: 471, column: 21, scope: !2291)
!2293 = !DILocation(line: 472, column: 21, scope: !2276)
!2294 = !DILocation(line: 482, column: 33, scope: !2054)
!2295 = !DILocation(line: 483, column: 33, scope: !2054)
!2296 = !DILocation(line: 485, column: 33, scope: !2054)
!2297 = !DILocation(line: 486, column: 33, scope: !2054)
!2298 = !DILocation(line: 487, column: 33, scope: !2054)
!2299 = !DILocation(line: 490, column: 17, scope: !2054)
!2300 = !DILocation(line: 492, column: 21, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !514, line: 491, column: 15)
!2302 = distinct !DILexicalBlock(scope: !2054, file: !514, line: 490, column: 17)
!2303 = !DILocation(line: 499, column: 35, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2054, file: !514, line: 499, column: 17)
!2305 = !DILocation(line: 499, column: 57, scope: !2304)
!2306 = !DILocation(line: 0, scope: !2054)
!2307 = !DILocation(line: 502, column: 11, scope: !2054)
!2308 = !DILocation(line: 504, column: 17, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2054, file: !514, line: 503, column: 17)
!2310 = !DILocation(line: 507, column: 11, scope: !2054)
!2311 = !DILocation(line: 508, column: 17, scope: !2054)
!2312 = !DILocation(line: 517, column: 15, scope: !2055)
!2313 = !DILocation(line: 517, column: 40, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2055, file: !514, line: 517, column: 15)
!2315 = !DILocation(line: 517, column: 47, scope: !2314)
!2316 = !DILocation(line: 517, column: 18, scope: !2314)
!2317 = !DILocation(line: 521, column: 17, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2055, file: !514, line: 521, column: 15)
!2319 = !DILocation(line: 521, column: 15, scope: !2055)
!2320 = !DILocation(line: 525, column: 11, scope: !2055)
!2321 = !DILocation(line: 537, column: 15, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2055, file: !514, line: 536, column: 15)
!2323 = !DILocation(line: 544, column: 15, scope: !2055)
!2324 = !DILocation(line: 546, column: 19, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !514, line: 545, column: 13)
!2326 = distinct !DILexicalBlock(scope: !2055, file: !514, line: 544, column: 15)
!2327 = !DILocation(line: 549, column: 19, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2325, file: !514, line: 549, column: 19)
!2329 = !DILocation(line: 549, column: 30, scope: !2328)
!2330 = !DILocation(line: 558, column: 15, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !514, line: 558, column: 15)
!2332 = distinct !DILexicalBlock(scope: !2325, file: !514, line: 558, column: 15)
!2333 = !DILocation(line: 558, column: 15, scope: !2332)
!2334 = !DILocation(line: 559, column: 15, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !514, line: 559, column: 15)
!2336 = distinct !DILexicalBlock(scope: !2325, file: !514, line: 559, column: 15)
!2337 = !DILocation(line: 559, column: 15, scope: !2336)
!2338 = !DILocation(line: 560, column: 15, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !514, line: 560, column: 15)
!2340 = distinct !DILexicalBlock(scope: !2325, file: !514, line: 560, column: 15)
!2341 = !DILocation(line: 560, column: 15, scope: !2340)
!2342 = !DILocation(line: 562, column: 13, scope: !2325)
!2343 = !DILocation(line: 602, column: 17, scope: !2058)
!2344 = !DILocation(line: 0, scope: !2058)
!2345 = !DILocation(line: 605, column: 29, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2062, file: !514, line: 603, column: 15)
!2347 = !DILocation(line: 605, column: 27, scope: !2346)
!2348 = !DILocation(line: 606, column: 15, scope: !2346)
!2349 = !DILocation(line: 609, column: 17, scope: !2061)
!2350 = !DILocation(line: 0, scope: !2121, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 609, column: 32, scope: !2061)
!2352 = !DILocation(line: 0, scope: !2129, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 1137, column: 3, scope: !2121, inlinedAt: !2351)
!2354 = !DILocation(line: 59, column: 10, scope: !2129, inlinedAt: !2353)
!2355 = !DILocation(line: 613, column: 29, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2061, file: !514, line: 613, column: 21)
!2357 = !DILocation(line: 613, column: 21, scope: !2061)
!2358 = !DILocation(line: 614, column: 29, scope: !2356)
!2359 = !DILocation(line: 614, column: 19, scope: !2356)
!2360 = !DILocation(line: 618, column: 21, scope: !2064)
!2361 = !DILocation(line: 620, column: 54, scope: !2064)
!2362 = !DILocation(line: 619, column: 36, scope: !2064)
!2363 = !DILocation(line: 621, column: 25, scope: !2064)
!2364 = !DILocation(line: 631, column: 38, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2073, file: !514, line: 629, column: 23)
!2366 = !DILocation(line: 631, column: 48, scope: !2365)
!2367 = !DILocation(line: 626, column: 25, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2074, file: !514, line: 624, column: 23)
!2369 = !DILocation(line: 631, column: 51, scope: !2365)
!2370 = !DILocation(line: 631, column: 25, scope: !2365)
!2371 = !DILocation(line: 632, column: 28, scope: !2365)
!2372 = !DILocation(line: 631, column: 34, scope: !2365)
!2373 = distinct !{!2373, !2370, !2371, !927}
!2374 = !DILocation(line: 0, scope: !2069)
!2375 = !DILocation(line: 646, column: 29, scope: !2071)
!2376 = !DILocation(line: 649, column: 39, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2069, file: !514, line: 648, column: 29)
!2378 = !DILocation(line: 649, column: 31, scope: !2377)
!2379 = !DILocation(line: 648, column: 60, scope: !2377)
!2380 = !DILocation(line: 648, column: 50, scope: !2377)
!2381 = !DILocation(line: 648, column: 29, scope: !2069)
!2382 = distinct !{!2382, !2381, !2383, !927}
!2383 = !DILocation(line: 654, column: 33, scope: !2069)
!2384 = !DILocation(line: 657, column: 43, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2072, file: !514, line: 657, column: 29)
!2386 = !DILocalVariable(name: "wc", arg: 1, scope: !2387, file: !2388, line: 865, type: !2391)
!2387 = distinct !DISubprogram(name: "c32isprint", scope: !2388, file: !2388, line: 865, type: !2389, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2393)
!2388 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!83, !2391}
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2392, line: 20, baseType: !89)
!2392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2393 = !{!2386}
!2394 = !DILocation(line: 0, scope: !2387, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 657, column: 31, scope: !2385)
!2396 = !DILocation(line: 871, column: 10, scope: !2387, inlinedAt: !2395)
!2397 = !DILocation(line: 657, column: 31, scope: !2385)
!2398 = !DILocation(line: 664, column: 23, scope: !2064)
!2399 = !DILocation(line: 665, column: 19, scope: !2065)
!2400 = !DILocation(line: 666, column: 15, scope: !2062)
!2401 = !DILocation(line: 0, scope: !2062)
!2402 = !DILocation(line: 670, column: 19, scope: !2078)
!2403 = !DILocation(line: 670, column: 23, scope: !2078)
!2404 = !DILocation(line: 674, column: 33, scope: !2077)
!2405 = !DILocation(line: 0, scope: !2077)
!2406 = !DILocation(line: 676, column: 17, scope: !2077)
!2407 = !DILocation(line: 398, column: 12, scope: !2048)
!2408 = !DILocation(line: 678, column: 43, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !514, line: 678, column: 25)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !514, line: 677, column: 19)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !514, line: 676, column: 17)
!2412 = distinct !DILexicalBlock(scope: !2077, file: !514, line: 676, column: 17)
!2413 = !DILocation(line: 680, column: 25, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !514, line: 680, column: 25)
!2415 = distinct !DILexicalBlock(scope: !2409, file: !514, line: 679, column: 23)
!2416 = !DILocation(line: 680, column: 25, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2414, file: !514, line: 680, column: 25)
!2418 = !DILocation(line: 680, column: 25, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !514, line: 680, column: 25)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !514, line: 680, column: 25)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !514, line: 680, column: 25)
!2422 = !DILocation(line: 680, column: 25, scope: !2420)
!2423 = !DILocation(line: 680, column: 25, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !514, line: 680, column: 25)
!2425 = distinct !DILexicalBlock(scope: !2421, file: !514, line: 680, column: 25)
!2426 = !DILocation(line: 680, column: 25, scope: !2425)
!2427 = !DILocation(line: 680, column: 25, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !514, line: 680, column: 25)
!2429 = distinct !DILexicalBlock(scope: !2421, file: !514, line: 680, column: 25)
!2430 = !DILocation(line: 680, column: 25, scope: !2429)
!2431 = !DILocation(line: 680, column: 25, scope: !2421)
!2432 = !DILocation(line: 680, column: 25, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !514, line: 680, column: 25)
!2434 = distinct !DILexicalBlock(scope: !2414, file: !514, line: 680, column: 25)
!2435 = !DILocation(line: 680, column: 25, scope: !2434)
!2436 = !DILocation(line: 681, column: 25, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !514, line: 681, column: 25)
!2438 = distinct !DILexicalBlock(scope: !2415, file: !514, line: 681, column: 25)
!2439 = !DILocation(line: 681, column: 25, scope: !2438)
!2440 = !DILocation(line: 682, column: 25, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !514, line: 682, column: 25)
!2442 = distinct !DILexicalBlock(scope: !2415, file: !514, line: 682, column: 25)
!2443 = !DILocation(line: 682, column: 25, scope: !2442)
!2444 = !DILocation(line: 683, column: 38, scope: !2415)
!2445 = !DILocation(line: 683, column: 33, scope: !2415)
!2446 = !DILocation(line: 684, column: 23, scope: !2415)
!2447 = !DILocation(line: 685, column: 30, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2409, file: !514, line: 685, column: 30)
!2449 = !DILocation(line: 685, column: 30, scope: !2409)
!2450 = !DILocation(line: 687, column: 25, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !514, line: 687, column: 25)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !514, line: 687, column: 25)
!2453 = distinct !DILexicalBlock(scope: !2448, file: !514, line: 686, column: 23)
!2454 = !DILocation(line: 687, column: 25, scope: !2452)
!2455 = !DILocation(line: 689, column: 23, scope: !2453)
!2456 = !DILocation(line: 690, column: 35, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2410, file: !514, line: 690, column: 25)
!2458 = !DILocation(line: 690, column: 30, scope: !2457)
!2459 = !DILocation(line: 690, column: 25, scope: !2410)
!2460 = !DILocation(line: 692, column: 21, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !514, line: 692, column: 21)
!2462 = distinct !DILexicalBlock(scope: !2410, file: !514, line: 692, column: 21)
!2463 = !DILocation(line: 692, column: 21, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !514, line: 692, column: 21)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !514, line: 692, column: 21)
!2466 = distinct !DILexicalBlock(scope: !2461, file: !514, line: 692, column: 21)
!2467 = !DILocation(line: 692, column: 21, scope: !2465)
!2468 = !DILocation(line: 692, column: 21, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !514, line: 692, column: 21)
!2470 = distinct !DILexicalBlock(scope: !2466, file: !514, line: 692, column: 21)
!2471 = !DILocation(line: 692, column: 21, scope: !2470)
!2472 = !DILocation(line: 692, column: 21, scope: !2466)
!2473 = !DILocation(line: 0, scope: !2410)
!2474 = !DILocation(line: 693, column: 21, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !514, line: 693, column: 21)
!2476 = distinct !DILexicalBlock(scope: !2410, file: !514, line: 693, column: 21)
!2477 = !DILocation(line: 693, column: 21, scope: !2476)
!2478 = !DILocation(line: 694, column: 25, scope: !2410)
!2479 = !DILocation(line: 676, column: 17, scope: !2411)
!2480 = distinct !{!2480, !2481, !2482}
!2481 = !DILocation(line: 676, column: 17, scope: !2412)
!2482 = !DILocation(line: 695, column: 19, scope: !2412)
!2483 = !DILocation(line: 409, column: 30, scope: !2199)
!2484 = !DILocation(line: 702, column: 34, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2048, file: !514, line: 702, column: 11)
!2486 = !DILocation(line: 704, column: 14, scope: !2485)
!2487 = !DILocation(line: 705, column: 14, scope: !2485)
!2488 = !DILocation(line: 705, column: 35, scope: !2485)
!2489 = !DILocation(line: 705, column: 17, scope: !2485)
!2490 = !DILocation(line: 705, column: 47, scope: !2485)
!2491 = !DILocation(line: 705, column: 65, scope: !2485)
!2492 = !DILocation(line: 706, column: 11, scope: !2485)
!2493 = !DILocation(line: 702, column: 11, scope: !2048)
!2494 = !DILocation(line: 395, column: 15, scope: !2046)
!2495 = !DILocation(line: 709, column: 5, scope: !2048)
!2496 = !DILocation(line: 710, column: 7, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2048, file: !514, line: 710, column: 7)
!2498 = !DILocation(line: 710, column: 7, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2497, file: !514, line: 710, column: 7)
!2500 = !DILocation(line: 710, column: 7, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !514, line: 710, column: 7)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !514, line: 710, column: 7)
!2503 = distinct !DILexicalBlock(scope: !2499, file: !514, line: 710, column: 7)
!2504 = !DILocation(line: 710, column: 7, scope: !2502)
!2505 = !DILocation(line: 710, column: 7, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !514, line: 710, column: 7)
!2507 = distinct !DILexicalBlock(scope: !2503, file: !514, line: 710, column: 7)
!2508 = !DILocation(line: 710, column: 7, scope: !2507)
!2509 = !DILocation(line: 710, column: 7, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !514, line: 710, column: 7)
!2511 = distinct !DILexicalBlock(scope: !2503, file: !514, line: 710, column: 7)
!2512 = !DILocation(line: 710, column: 7, scope: !2511)
!2513 = !DILocation(line: 710, column: 7, scope: !2503)
!2514 = !DILocation(line: 710, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !514, line: 710, column: 7)
!2516 = distinct !DILexicalBlock(scope: !2497, file: !514, line: 710, column: 7)
!2517 = !DILocation(line: 710, column: 7, scope: !2516)
!2518 = !DILocation(line: 712, column: 5, scope: !2048)
!2519 = !DILocation(line: 713, column: 7, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !514, line: 713, column: 7)
!2521 = distinct !DILexicalBlock(scope: !2048, file: !514, line: 713, column: 7)
!2522 = !DILocation(line: 417, column: 21, scope: !2048)
!2523 = !DILocation(line: 713, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !514, line: 713, column: 7)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !514, line: 713, column: 7)
!2526 = distinct !DILexicalBlock(scope: !2520, file: !514, line: 713, column: 7)
!2527 = !DILocation(line: 713, column: 7, scope: !2525)
!2528 = !DILocation(line: 713, column: 7, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !514, line: 713, column: 7)
!2530 = distinct !DILexicalBlock(scope: !2526, file: !514, line: 713, column: 7)
!2531 = !DILocation(line: 713, column: 7, scope: !2530)
!2532 = !DILocation(line: 713, column: 7, scope: !2526)
!2533 = !DILocation(line: 714, column: 7, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !514, line: 714, column: 7)
!2535 = distinct !DILexicalBlock(scope: !2048, file: !514, line: 714, column: 7)
!2536 = !DILocation(line: 714, column: 7, scope: !2535)
!2537 = !DILocation(line: 716, column: 13, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2048, file: !514, line: 716, column: 11)
!2539 = !DILocation(line: 716, column: 11, scope: !2048)
!2540 = !DILocation(line: 718, column: 5, scope: !2049)
!2541 = !DILocation(line: 395, column: 82, scope: !2049)
!2542 = !DILocation(line: 395, column: 3, scope: !2049)
!2543 = distinct !{!2543, !2195, !2544, !927}
!2544 = !DILocation(line: 718, column: 5, scope: !2046)
!2545 = !DILocation(line: 720, column: 11, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2014, file: !514, line: 720, column: 7)
!2547 = !DILocation(line: 720, column: 16, scope: !2546)
!2548 = !DILocation(line: 728, column: 51, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2014, file: !514, line: 728, column: 7)
!2550 = !DILocation(line: 731, column: 11, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !514, line: 731, column: 11)
!2552 = distinct !DILexicalBlock(scope: !2549, file: !514, line: 730, column: 5)
!2553 = !DILocation(line: 731, column: 11, scope: !2552)
!2554 = !DILocation(line: 732, column: 16, scope: !2551)
!2555 = !DILocation(line: 732, column: 9, scope: !2551)
!2556 = !DILocation(line: 736, column: 18, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2551, file: !514, line: 736, column: 16)
!2558 = !DILocation(line: 736, column: 29, scope: !2557)
!2559 = !DILocation(line: 745, column: 7, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2014, file: !514, line: 745, column: 7)
!2561 = !DILocation(line: 745, column: 20, scope: !2560)
!2562 = !DILocation(line: 746, column: 12, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !514, line: 746, column: 5)
!2564 = distinct !DILexicalBlock(scope: !2560, file: !514, line: 746, column: 5)
!2565 = !DILocation(line: 746, column: 5, scope: !2564)
!2566 = !DILocation(line: 747, column: 7, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !514, line: 747, column: 7)
!2568 = distinct !DILexicalBlock(scope: !2563, file: !514, line: 747, column: 7)
!2569 = !DILocation(line: 747, column: 7, scope: !2568)
!2570 = !DILocation(line: 746, column: 39, scope: !2563)
!2571 = distinct !{!2571, !2565, !2572, !927}
!2572 = !DILocation(line: 747, column: 7, scope: !2564)
!2573 = !DILocation(line: 749, column: 11, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2014, file: !514, line: 749, column: 7)
!2575 = !DILocation(line: 749, column: 7, scope: !2014)
!2576 = !DILocation(line: 750, column: 5, scope: !2574)
!2577 = !DILocation(line: 750, column: 17, scope: !2574)
!2578 = !DILocation(line: 753, column: 2, scope: !2014)
!2579 = !DILocation(line: 756, column: 51, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2014, file: !514, line: 756, column: 7)
!2581 = !DILocation(line: 756, column: 21, scope: !2580)
!2582 = !DILocation(line: 760, column: 42, scope: !2014)
!2583 = !DILocation(line: 758, column: 10, scope: !2014)
!2584 = !DILocation(line: 758, column: 3, scope: !2014)
!2585 = !DILocation(line: 762, column: 1, scope: !2014)
!2586 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1004, file: !1004, line: 98, type: !2587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!124}
!2589 = !DISubprogram(name: "iswprint", scope: !2590, file: !2590, line: 120, type: !2389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2590 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2591 = distinct !DISubprogram(name: "quotearg_alloc", scope: !514, file: !514, line: 788, type: !2592, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!122, !127, !124, !1907}
!2594 = !{!2595, !2596, !2597}
!2595 = !DILocalVariable(name: "arg", arg: 1, scope: !2591, file: !514, line: 788, type: !127)
!2596 = !DILocalVariable(name: "argsize", arg: 2, scope: !2591, file: !514, line: 788, type: !124)
!2597 = !DILocalVariable(name: "o", arg: 3, scope: !2591, file: !514, line: 789, type: !1907)
!2598 = !DILocation(line: 0, scope: !2591)
!2599 = !DILocalVariable(name: "arg", arg: 1, scope: !2600, file: !514, line: 801, type: !127)
!2600 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !514, file: !514, line: 801, type: !2601, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!122, !127, !124, !746, !1907}
!2603 = !{!2599, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611}
!2604 = !DILocalVariable(name: "argsize", arg: 2, scope: !2600, file: !514, line: 801, type: !124)
!2605 = !DILocalVariable(name: "size", arg: 3, scope: !2600, file: !514, line: 801, type: !746)
!2606 = !DILocalVariable(name: "o", arg: 4, scope: !2600, file: !514, line: 802, type: !1907)
!2607 = !DILocalVariable(name: "p", scope: !2600, file: !514, line: 804, type: !1907)
!2608 = !DILocalVariable(name: "saved_errno", scope: !2600, file: !514, line: 805, type: !83)
!2609 = !DILocalVariable(name: "flags", scope: !2600, file: !514, line: 807, type: !83)
!2610 = !DILocalVariable(name: "bufsize", scope: !2600, file: !514, line: 808, type: !124)
!2611 = !DILocalVariable(name: "buf", scope: !2600, file: !514, line: 812, type: !122)
!2612 = !DILocation(line: 0, scope: !2600, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 791, column: 10, scope: !2591)
!2614 = !DILocation(line: 804, column: 37, scope: !2600, inlinedAt: !2613)
!2615 = !DILocation(line: 805, column: 21, scope: !2600, inlinedAt: !2613)
!2616 = !DILocation(line: 807, column: 18, scope: !2600, inlinedAt: !2613)
!2617 = !DILocation(line: 807, column: 24, scope: !2600, inlinedAt: !2613)
!2618 = !DILocation(line: 808, column: 72, scope: !2600, inlinedAt: !2613)
!2619 = !DILocation(line: 809, column: 56, scope: !2600, inlinedAt: !2613)
!2620 = !DILocation(line: 810, column: 49, scope: !2600, inlinedAt: !2613)
!2621 = !DILocation(line: 811, column: 49, scope: !2600, inlinedAt: !2613)
!2622 = !DILocation(line: 808, column: 20, scope: !2600, inlinedAt: !2613)
!2623 = !DILocation(line: 811, column: 62, scope: !2600, inlinedAt: !2613)
!2624 = !DILocation(line: 812, column: 15, scope: !2600, inlinedAt: !2613)
!2625 = !DILocation(line: 813, column: 60, scope: !2600, inlinedAt: !2613)
!2626 = !DILocation(line: 815, column: 32, scope: !2600, inlinedAt: !2613)
!2627 = !DILocation(line: 815, column: 47, scope: !2600, inlinedAt: !2613)
!2628 = !DILocation(line: 813, column: 3, scope: !2600, inlinedAt: !2613)
!2629 = !DILocation(line: 816, column: 9, scope: !2600, inlinedAt: !2613)
!2630 = !DILocation(line: 791, column: 3, scope: !2591)
!2631 = !DILocation(line: 0, scope: !2600)
!2632 = !DILocation(line: 804, column: 37, scope: !2600)
!2633 = !DILocation(line: 805, column: 21, scope: !2600)
!2634 = !DILocation(line: 807, column: 18, scope: !2600)
!2635 = !DILocation(line: 807, column: 27, scope: !2600)
!2636 = !DILocation(line: 807, column: 24, scope: !2600)
!2637 = !DILocation(line: 808, column: 72, scope: !2600)
!2638 = !DILocation(line: 809, column: 56, scope: !2600)
!2639 = !DILocation(line: 810, column: 49, scope: !2600)
!2640 = !DILocation(line: 811, column: 49, scope: !2600)
!2641 = !DILocation(line: 808, column: 20, scope: !2600)
!2642 = !DILocation(line: 811, column: 62, scope: !2600)
!2643 = !DILocation(line: 812, column: 15, scope: !2600)
!2644 = !DILocation(line: 813, column: 60, scope: !2600)
!2645 = !DILocation(line: 815, column: 32, scope: !2600)
!2646 = !DILocation(line: 815, column: 47, scope: !2600)
!2647 = !DILocation(line: 813, column: 3, scope: !2600)
!2648 = !DILocation(line: 816, column: 9, scope: !2600)
!2649 = !DILocation(line: 817, column: 7, scope: !2600)
!2650 = !DILocation(line: 818, column: 11, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2600, file: !514, line: 817, column: 7)
!2652 = !DILocation(line: 818, column: 5, scope: !2651)
!2653 = !DILocation(line: 819, column: 3, scope: !2600)
!2654 = distinct !DISubprogram(name: "quotearg_free", scope: !514, file: !514, line: 837, type: !469, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2655)
!2655 = !{!2656, !2657}
!2656 = !DILocalVariable(name: "sv", scope: !2654, file: !514, line: 839, type: !600)
!2657 = !DILocalVariable(name: "i", scope: !2658, file: !514, line: 840, type: !83)
!2658 = distinct !DILexicalBlock(scope: !2654, file: !514, line: 840, column: 3)
!2659 = !DILocation(line: 839, column: 24, scope: !2654)
!2660 = !DILocation(line: 0, scope: !2654)
!2661 = !DILocation(line: 0, scope: !2658)
!2662 = !DILocation(line: 840, column: 21, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2658, file: !514, line: 840, column: 3)
!2664 = !DILocation(line: 840, column: 3, scope: !2658)
!2665 = !DILocation(line: 842, column: 13, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2654, file: !514, line: 842, column: 7)
!2667 = !{!2668, !816, i64 8}
!2668 = !{!"slotvec", !1171, i64 0, !816, i64 8}
!2669 = !DILocation(line: 842, column: 17, scope: !2666)
!2670 = !DILocation(line: 842, column: 7, scope: !2654)
!2671 = !DILocation(line: 841, column: 17, scope: !2663)
!2672 = !DILocation(line: 841, column: 5, scope: !2663)
!2673 = !DILocation(line: 840, column: 32, scope: !2663)
!2674 = distinct !{!2674, !2664, !2675, !927}
!2675 = !DILocation(line: 841, column: 20, scope: !2658)
!2676 = !DILocation(line: 844, column: 7, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2666, file: !514, line: 843, column: 5)
!2678 = !DILocation(line: 845, column: 21, scope: !2677)
!2679 = !{!2668, !1171, i64 0}
!2680 = !DILocation(line: 846, column: 20, scope: !2677)
!2681 = !DILocation(line: 847, column: 5, scope: !2677)
!2682 = !DILocation(line: 848, column: 10, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2654, file: !514, line: 848, column: 7)
!2684 = !DILocation(line: 848, column: 7, scope: !2654)
!2685 = !DILocation(line: 850, column: 7, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2683, file: !514, line: 849, column: 5)
!2687 = !DILocation(line: 851, column: 15, scope: !2686)
!2688 = !DILocation(line: 852, column: 5, scope: !2686)
!2689 = !DILocation(line: 853, column: 10, scope: !2654)
!2690 = !DILocation(line: 854, column: 1, scope: !2654)
!2691 = distinct !DISubprogram(name: "quotearg_n", scope: !514, file: !514, line: 919, type: !997, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2692)
!2692 = !{!2693, !2694}
!2693 = !DILocalVariable(name: "n", arg: 1, scope: !2691, file: !514, line: 919, type: !83)
!2694 = !DILocalVariable(name: "arg", arg: 2, scope: !2691, file: !514, line: 919, type: !127)
!2695 = !DILocation(line: 0, scope: !2691)
!2696 = !DILocation(line: 921, column: 10, scope: !2691)
!2697 = !DILocation(line: 921, column: 3, scope: !2691)
!2698 = distinct !DISubprogram(name: "quotearg_n_options", scope: !514, file: !514, line: 866, type: !2699, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2701)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!122, !83, !127, !124, !1907}
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2712, !2713, !2715, !2716, !2717}
!2702 = !DILocalVariable(name: "n", arg: 1, scope: !2698, file: !514, line: 866, type: !83)
!2703 = !DILocalVariable(name: "arg", arg: 2, scope: !2698, file: !514, line: 866, type: !127)
!2704 = !DILocalVariable(name: "argsize", arg: 3, scope: !2698, file: !514, line: 866, type: !124)
!2705 = !DILocalVariable(name: "options", arg: 4, scope: !2698, file: !514, line: 867, type: !1907)
!2706 = !DILocalVariable(name: "saved_errno", scope: !2698, file: !514, line: 869, type: !83)
!2707 = !DILocalVariable(name: "sv", scope: !2698, file: !514, line: 871, type: !600)
!2708 = !DILocalVariable(name: "nslots_max", scope: !2698, file: !514, line: 873, type: !83)
!2709 = !DILocalVariable(name: "preallocated", scope: !2710, file: !514, line: 879, type: !158)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !514, line: 878, column: 5)
!2711 = distinct !DILexicalBlock(scope: !2698, file: !514, line: 877, column: 7)
!2712 = !DILocalVariable(name: "new_nslots", scope: !2710, file: !514, line: 880, type: !759)
!2713 = !DILocalVariable(name: "size", scope: !2714, file: !514, line: 891, type: !124)
!2714 = distinct !DILexicalBlock(scope: !2698, file: !514, line: 890, column: 3)
!2715 = !DILocalVariable(name: "val", scope: !2714, file: !514, line: 892, type: !122)
!2716 = !DILocalVariable(name: "flags", scope: !2714, file: !514, line: 894, type: !83)
!2717 = !DILocalVariable(name: "qsize", scope: !2714, file: !514, line: 895, type: !124)
!2718 = distinct !DIAssignID()
!2719 = !DILocation(line: 0, scope: !2710)
!2720 = !DILocation(line: 0, scope: !2698)
!2721 = !DILocation(line: 869, column: 21, scope: !2698)
!2722 = !DILocation(line: 871, column: 24, scope: !2698)
!2723 = !DILocation(line: 874, column: 17, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2698, file: !514, line: 874, column: 7)
!2725 = !DILocation(line: 875, column: 5, scope: !2724)
!2726 = !DILocation(line: 877, column: 7, scope: !2711)
!2727 = !DILocation(line: 877, column: 14, scope: !2711)
!2728 = !DILocation(line: 877, column: 7, scope: !2698)
!2729 = !DILocation(line: 879, column: 31, scope: !2710)
!2730 = !DILocation(line: 880, column: 7, scope: !2710)
!2731 = !DILocation(line: 880, column: 26, scope: !2710)
!2732 = !DILocation(line: 880, column: 13, scope: !2710)
!2733 = distinct !DIAssignID()
!2734 = !DILocation(line: 882, column: 31, scope: !2710)
!2735 = !DILocation(line: 883, column: 33, scope: !2710)
!2736 = !DILocation(line: 883, column: 42, scope: !2710)
!2737 = !DILocation(line: 883, column: 31, scope: !2710)
!2738 = !DILocation(line: 882, column: 22, scope: !2710)
!2739 = !DILocation(line: 882, column: 15, scope: !2710)
!2740 = !DILocation(line: 884, column: 11, scope: !2710)
!2741 = !DILocation(line: 885, column: 15, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2710, file: !514, line: 884, column: 11)
!2743 = !{i64 0, i64 8, !1392, i64 8, i64 8, !815}
!2744 = !DILocation(line: 885, column: 9, scope: !2742)
!2745 = !DILocation(line: 886, column: 20, scope: !2710)
!2746 = !DILocation(line: 886, column: 18, scope: !2710)
!2747 = !DILocation(line: 886, column: 32, scope: !2710)
!2748 = !DILocation(line: 886, column: 43, scope: !2710)
!2749 = !DILocation(line: 886, column: 53, scope: !2710)
!2750 = !DILocation(line: 0, scope: !2129, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 886, column: 7, scope: !2710)
!2752 = !DILocation(line: 59, column: 10, scope: !2129, inlinedAt: !2751)
!2753 = !DILocation(line: 887, column: 16, scope: !2710)
!2754 = !DILocation(line: 887, column: 14, scope: !2710)
!2755 = !DILocation(line: 888, column: 5, scope: !2711)
!2756 = !DILocation(line: 888, column: 5, scope: !2710)
!2757 = !DILocation(line: 891, column: 19, scope: !2714)
!2758 = !DILocation(line: 891, column: 25, scope: !2714)
!2759 = !DILocation(line: 0, scope: !2714)
!2760 = !DILocation(line: 892, column: 23, scope: !2714)
!2761 = !DILocation(line: 894, column: 26, scope: !2714)
!2762 = !DILocation(line: 894, column: 32, scope: !2714)
!2763 = !DILocation(line: 896, column: 55, scope: !2714)
!2764 = !DILocation(line: 897, column: 55, scope: !2714)
!2765 = !DILocation(line: 898, column: 55, scope: !2714)
!2766 = !DILocation(line: 899, column: 55, scope: !2714)
!2767 = !DILocation(line: 895, column: 20, scope: !2714)
!2768 = !DILocation(line: 901, column: 14, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2714, file: !514, line: 901, column: 9)
!2770 = !DILocation(line: 901, column: 9, scope: !2714)
!2771 = !DILocation(line: 903, column: 35, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2769, file: !514, line: 902, column: 7)
!2773 = !DILocation(line: 903, column: 20, scope: !2772)
!2774 = !DILocation(line: 904, column: 17, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2772, file: !514, line: 904, column: 13)
!2776 = !DILocation(line: 904, column: 13, scope: !2772)
!2777 = !DILocation(line: 905, column: 11, scope: !2775)
!2778 = !DILocation(line: 906, column: 27, scope: !2772)
!2779 = !DILocation(line: 906, column: 19, scope: !2772)
!2780 = !DILocation(line: 907, column: 69, scope: !2772)
!2781 = !DILocation(line: 909, column: 44, scope: !2772)
!2782 = !DILocation(line: 910, column: 44, scope: !2772)
!2783 = !DILocation(line: 907, column: 9, scope: !2772)
!2784 = !DILocation(line: 911, column: 7, scope: !2772)
!2785 = !DILocation(line: 913, column: 11, scope: !2714)
!2786 = !DILocation(line: 914, column: 5, scope: !2714)
!2787 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !514, file: !514, line: 925, type: !2788, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2790)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!122, !83, !127, !124}
!2790 = !{!2791, !2792, !2793}
!2791 = !DILocalVariable(name: "n", arg: 1, scope: !2787, file: !514, line: 925, type: !83)
!2792 = !DILocalVariable(name: "arg", arg: 2, scope: !2787, file: !514, line: 925, type: !127)
!2793 = !DILocalVariable(name: "argsize", arg: 3, scope: !2787, file: !514, line: 925, type: !124)
!2794 = !DILocation(line: 0, scope: !2787)
!2795 = !DILocation(line: 927, column: 10, scope: !2787)
!2796 = !DILocation(line: 927, column: 3, scope: !2787)
!2797 = distinct !DISubprogram(name: "quotearg", scope: !514, file: !514, line: 931, type: !1006, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2798)
!2798 = !{!2799}
!2799 = !DILocalVariable(name: "arg", arg: 1, scope: !2797, file: !514, line: 931, type: !127)
!2800 = !DILocation(line: 0, scope: !2797)
!2801 = !DILocation(line: 0, scope: !2691, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 933, column: 10, scope: !2797)
!2803 = !DILocation(line: 921, column: 10, scope: !2691, inlinedAt: !2802)
!2804 = !DILocation(line: 933, column: 3, scope: !2797)
!2805 = distinct !DISubprogram(name: "quotearg_mem", scope: !514, file: !514, line: 937, type: !2806, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!122, !127, !124}
!2808 = !{!2809, !2810}
!2809 = !DILocalVariable(name: "arg", arg: 1, scope: !2805, file: !514, line: 937, type: !127)
!2810 = !DILocalVariable(name: "argsize", arg: 2, scope: !2805, file: !514, line: 937, type: !124)
!2811 = !DILocation(line: 0, scope: !2805)
!2812 = !DILocation(line: 0, scope: !2787, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 939, column: 10, scope: !2805)
!2814 = !DILocation(line: 927, column: 10, scope: !2787, inlinedAt: !2813)
!2815 = !DILocation(line: 939, column: 3, scope: !2805)
!2816 = distinct !DISubprogram(name: "quotearg_n_style", scope: !514, file: !514, line: 943, type: !2817, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!122, !83, !537, !127}
!2819 = !{!2820, !2821, !2822, !2823}
!2820 = !DILocalVariable(name: "n", arg: 1, scope: !2816, file: !514, line: 943, type: !83)
!2821 = !DILocalVariable(name: "s", arg: 2, scope: !2816, file: !514, line: 943, type: !537)
!2822 = !DILocalVariable(name: "arg", arg: 3, scope: !2816, file: !514, line: 943, type: !127)
!2823 = !DILocalVariable(name: "o", scope: !2816, file: !514, line: 945, type: !1908)
!2824 = distinct !DIAssignID()
!2825 = !DILocation(line: 0, scope: !2816)
!2826 = !DILocation(line: 945, column: 3, scope: !2816)
!2827 = !{!2828}
!2828 = distinct !{!2828, !2829, !"quoting_options_from_style: argument 0"}
!2829 = distinct !{!2829, !"quoting_options_from_style"}
!2830 = !DILocation(line: 945, column: 36, scope: !2816)
!2831 = !DILocalVariable(name: "style", arg: 1, scope: !2832, file: !514, line: 183, type: !537)
!2832 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !514, file: !514, line: 183, type: !2833, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!552, !537}
!2835 = !{!2831, !2836}
!2836 = !DILocalVariable(name: "o", scope: !2832, file: !514, line: 185, type: !552)
!2837 = !DILocation(line: 0, scope: !2832, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 945, column: 36, scope: !2816)
!2839 = !DILocation(line: 185, column: 26, scope: !2832, inlinedAt: !2838)
!2840 = distinct !DIAssignID()
!2841 = !DILocation(line: 186, column: 13, scope: !2842, inlinedAt: !2838)
!2842 = distinct !DILexicalBlock(scope: !2832, file: !514, line: 186, column: 7)
!2843 = !DILocation(line: 186, column: 7, scope: !2832, inlinedAt: !2838)
!2844 = !DILocation(line: 187, column: 5, scope: !2842, inlinedAt: !2838)
!2845 = !DILocation(line: 188, column: 11, scope: !2832, inlinedAt: !2838)
!2846 = distinct !DIAssignID()
!2847 = !DILocation(line: 946, column: 10, scope: !2816)
!2848 = !DILocation(line: 947, column: 1, scope: !2816)
!2849 = !DILocation(line: 946, column: 3, scope: !2816)
!2850 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !514, file: !514, line: 950, type: !2851, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!122, !83, !537, !127, !124}
!2853 = !{!2854, !2855, !2856, !2857, !2858}
!2854 = !DILocalVariable(name: "n", arg: 1, scope: !2850, file: !514, line: 950, type: !83)
!2855 = !DILocalVariable(name: "s", arg: 2, scope: !2850, file: !514, line: 950, type: !537)
!2856 = !DILocalVariable(name: "arg", arg: 3, scope: !2850, file: !514, line: 951, type: !127)
!2857 = !DILocalVariable(name: "argsize", arg: 4, scope: !2850, file: !514, line: 951, type: !124)
!2858 = !DILocalVariable(name: "o", scope: !2850, file: !514, line: 953, type: !1908)
!2859 = distinct !DIAssignID()
!2860 = !DILocation(line: 0, scope: !2850)
!2861 = !DILocation(line: 953, column: 3, scope: !2850)
!2862 = !{!2863}
!2863 = distinct !{!2863, !2864, !"quoting_options_from_style: argument 0"}
!2864 = distinct !{!2864, !"quoting_options_from_style"}
!2865 = !DILocation(line: 953, column: 36, scope: !2850)
!2866 = !DILocation(line: 0, scope: !2832, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 953, column: 36, scope: !2850)
!2868 = !DILocation(line: 185, column: 26, scope: !2832, inlinedAt: !2867)
!2869 = distinct !DIAssignID()
!2870 = !DILocation(line: 186, column: 13, scope: !2842, inlinedAt: !2867)
!2871 = !DILocation(line: 186, column: 7, scope: !2832, inlinedAt: !2867)
!2872 = !DILocation(line: 187, column: 5, scope: !2842, inlinedAt: !2867)
!2873 = !DILocation(line: 188, column: 11, scope: !2832, inlinedAt: !2867)
!2874 = distinct !DIAssignID()
!2875 = !DILocation(line: 954, column: 10, scope: !2850)
!2876 = !DILocation(line: 955, column: 1, scope: !2850)
!2877 = !DILocation(line: 954, column: 3, scope: !2850)
!2878 = distinct !DISubprogram(name: "quotearg_style", scope: !514, file: !514, line: 958, type: !2879, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2881)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!122, !537, !127}
!2881 = !{!2882, !2883}
!2882 = !DILocalVariable(name: "s", arg: 1, scope: !2878, file: !514, line: 958, type: !537)
!2883 = !DILocalVariable(name: "arg", arg: 2, scope: !2878, file: !514, line: 958, type: !127)
!2884 = distinct !DIAssignID()
!2885 = !DILocation(line: 0, scope: !2878)
!2886 = !DILocation(line: 0, scope: !2816, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 960, column: 10, scope: !2878)
!2888 = !DILocation(line: 945, column: 3, scope: !2816, inlinedAt: !2887)
!2889 = !{!2890}
!2890 = distinct !{!2890, !2891, !"quoting_options_from_style: argument 0"}
!2891 = distinct !{!2891, !"quoting_options_from_style"}
!2892 = !DILocation(line: 945, column: 36, scope: !2816, inlinedAt: !2887)
!2893 = !DILocation(line: 0, scope: !2832, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 945, column: 36, scope: !2816, inlinedAt: !2887)
!2895 = !DILocation(line: 185, column: 26, scope: !2832, inlinedAt: !2894)
!2896 = distinct !DIAssignID()
!2897 = !DILocation(line: 186, column: 13, scope: !2842, inlinedAt: !2894)
!2898 = !DILocation(line: 186, column: 7, scope: !2832, inlinedAt: !2894)
!2899 = !DILocation(line: 187, column: 5, scope: !2842, inlinedAt: !2894)
!2900 = !DILocation(line: 188, column: 11, scope: !2832, inlinedAt: !2894)
!2901 = distinct !DIAssignID()
!2902 = !DILocation(line: 946, column: 10, scope: !2816, inlinedAt: !2887)
!2903 = !DILocation(line: 947, column: 1, scope: !2816, inlinedAt: !2887)
!2904 = !DILocation(line: 960, column: 3, scope: !2878)
!2905 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !514, file: !514, line: 964, type: !2906, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!122, !537, !127, !124}
!2908 = !{!2909, !2910, !2911}
!2909 = !DILocalVariable(name: "s", arg: 1, scope: !2905, file: !514, line: 964, type: !537)
!2910 = !DILocalVariable(name: "arg", arg: 2, scope: !2905, file: !514, line: 964, type: !127)
!2911 = !DILocalVariable(name: "argsize", arg: 3, scope: !2905, file: !514, line: 964, type: !124)
!2912 = distinct !DIAssignID()
!2913 = !DILocation(line: 0, scope: !2905)
!2914 = !DILocation(line: 0, scope: !2850, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 966, column: 10, scope: !2905)
!2916 = !DILocation(line: 953, column: 3, scope: !2850, inlinedAt: !2915)
!2917 = !{!2918}
!2918 = distinct !{!2918, !2919, !"quoting_options_from_style: argument 0"}
!2919 = distinct !{!2919, !"quoting_options_from_style"}
!2920 = !DILocation(line: 953, column: 36, scope: !2850, inlinedAt: !2915)
!2921 = !DILocation(line: 0, scope: !2832, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 953, column: 36, scope: !2850, inlinedAt: !2915)
!2923 = !DILocation(line: 185, column: 26, scope: !2832, inlinedAt: !2922)
!2924 = distinct !DIAssignID()
!2925 = !DILocation(line: 186, column: 13, scope: !2842, inlinedAt: !2922)
!2926 = !DILocation(line: 186, column: 7, scope: !2832, inlinedAt: !2922)
!2927 = !DILocation(line: 187, column: 5, scope: !2842, inlinedAt: !2922)
!2928 = !DILocation(line: 188, column: 11, scope: !2832, inlinedAt: !2922)
!2929 = distinct !DIAssignID()
!2930 = !DILocation(line: 954, column: 10, scope: !2850, inlinedAt: !2915)
!2931 = !DILocation(line: 955, column: 1, scope: !2850, inlinedAt: !2915)
!2932 = !DILocation(line: 966, column: 3, scope: !2905)
!2933 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !514, file: !514, line: 970, type: !2934, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!122, !127, !124, !4}
!2936 = !{!2937, !2938, !2939, !2940}
!2937 = !DILocalVariable(name: "arg", arg: 1, scope: !2933, file: !514, line: 970, type: !127)
!2938 = !DILocalVariable(name: "argsize", arg: 2, scope: !2933, file: !514, line: 970, type: !124)
!2939 = !DILocalVariable(name: "ch", arg: 3, scope: !2933, file: !514, line: 970, type: !4)
!2940 = !DILocalVariable(name: "options", scope: !2933, file: !514, line: 972, type: !552)
!2941 = distinct !DIAssignID()
!2942 = !DILocation(line: 0, scope: !2933)
!2943 = !DILocation(line: 972, column: 3, scope: !2933)
!2944 = !DILocation(line: 973, column: 13, scope: !2933)
!2945 = !{i64 0, i64 4, !880, i64 4, i64 4, !880, i64 8, i64 32, !889, i64 40, i64 8, !815, i64 48, i64 8, !815}
!2946 = distinct !DIAssignID()
!2947 = !DILocation(line: 0, scope: !1927, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 974, column: 3, scope: !2933)
!2949 = !DILocation(line: 147, column: 41, scope: !1927, inlinedAt: !2948)
!2950 = !DILocation(line: 147, column: 62, scope: !1927, inlinedAt: !2948)
!2951 = !DILocation(line: 147, column: 57, scope: !1927, inlinedAt: !2948)
!2952 = !DILocation(line: 148, column: 15, scope: !1927, inlinedAt: !2948)
!2953 = !DILocation(line: 149, column: 21, scope: !1927, inlinedAt: !2948)
!2954 = !DILocation(line: 149, column: 24, scope: !1927, inlinedAt: !2948)
!2955 = !DILocation(line: 150, column: 19, scope: !1927, inlinedAt: !2948)
!2956 = !DILocation(line: 150, column: 24, scope: !1927, inlinedAt: !2948)
!2957 = !DILocation(line: 150, column: 6, scope: !1927, inlinedAt: !2948)
!2958 = !DILocation(line: 975, column: 10, scope: !2933)
!2959 = !DILocation(line: 976, column: 1, scope: !2933)
!2960 = !DILocation(line: 975, column: 3, scope: !2933)
!2961 = distinct !DISubprogram(name: "quotearg_char", scope: !514, file: !514, line: 979, type: !2962, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!122, !127, !4}
!2964 = !{!2965, !2966}
!2965 = !DILocalVariable(name: "arg", arg: 1, scope: !2961, file: !514, line: 979, type: !127)
!2966 = !DILocalVariable(name: "ch", arg: 2, scope: !2961, file: !514, line: 979, type: !4)
!2967 = distinct !DIAssignID()
!2968 = !DILocation(line: 0, scope: !2961)
!2969 = !DILocation(line: 0, scope: !2933, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 981, column: 10, scope: !2961)
!2971 = !DILocation(line: 972, column: 3, scope: !2933, inlinedAt: !2970)
!2972 = !DILocation(line: 973, column: 13, scope: !2933, inlinedAt: !2970)
!2973 = distinct !DIAssignID()
!2974 = !DILocation(line: 0, scope: !1927, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 974, column: 3, scope: !2933, inlinedAt: !2970)
!2976 = !DILocation(line: 147, column: 41, scope: !1927, inlinedAt: !2975)
!2977 = !DILocation(line: 147, column: 62, scope: !1927, inlinedAt: !2975)
!2978 = !DILocation(line: 147, column: 57, scope: !1927, inlinedAt: !2975)
!2979 = !DILocation(line: 148, column: 15, scope: !1927, inlinedAt: !2975)
!2980 = !DILocation(line: 149, column: 21, scope: !1927, inlinedAt: !2975)
!2981 = !DILocation(line: 149, column: 24, scope: !1927, inlinedAt: !2975)
!2982 = !DILocation(line: 150, column: 19, scope: !1927, inlinedAt: !2975)
!2983 = !DILocation(line: 150, column: 24, scope: !1927, inlinedAt: !2975)
!2984 = !DILocation(line: 150, column: 6, scope: !1927, inlinedAt: !2975)
!2985 = !DILocation(line: 975, column: 10, scope: !2933, inlinedAt: !2970)
!2986 = !DILocation(line: 976, column: 1, scope: !2933, inlinedAt: !2970)
!2987 = !DILocation(line: 981, column: 3, scope: !2961)
!2988 = distinct !DISubprogram(name: "quotearg_colon", scope: !514, file: !514, line: 985, type: !1006, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2989)
!2989 = !{!2990}
!2990 = !DILocalVariable(name: "arg", arg: 1, scope: !2988, file: !514, line: 985, type: !127)
!2991 = distinct !DIAssignID()
!2992 = !DILocation(line: 0, scope: !2988)
!2993 = !DILocation(line: 0, scope: !2961, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 987, column: 10, scope: !2988)
!2995 = !DILocation(line: 0, scope: !2933, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 981, column: 10, scope: !2961, inlinedAt: !2994)
!2997 = !DILocation(line: 972, column: 3, scope: !2933, inlinedAt: !2996)
!2998 = !DILocation(line: 973, column: 13, scope: !2933, inlinedAt: !2996)
!2999 = distinct !DIAssignID()
!3000 = !DILocation(line: 0, scope: !1927, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 974, column: 3, scope: !2933, inlinedAt: !2996)
!3002 = !DILocation(line: 147, column: 57, scope: !1927, inlinedAt: !3001)
!3003 = !DILocation(line: 149, column: 21, scope: !1927, inlinedAt: !3001)
!3004 = !DILocation(line: 150, column: 6, scope: !1927, inlinedAt: !3001)
!3005 = !DILocation(line: 975, column: 10, scope: !2933, inlinedAt: !2996)
!3006 = !DILocation(line: 976, column: 1, scope: !2933, inlinedAt: !2996)
!3007 = !DILocation(line: 987, column: 3, scope: !2988)
!3008 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !514, file: !514, line: 991, type: !2806, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !3009)
!3009 = !{!3010, !3011}
!3010 = !DILocalVariable(name: "arg", arg: 1, scope: !3008, file: !514, line: 991, type: !127)
!3011 = !DILocalVariable(name: "argsize", arg: 2, scope: !3008, file: !514, line: 991, type: !124)
!3012 = distinct !DIAssignID()
!3013 = !DILocation(line: 0, scope: !3008)
!3014 = !DILocation(line: 0, scope: !2933, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 993, column: 10, scope: !3008)
!3016 = !DILocation(line: 972, column: 3, scope: !2933, inlinedAt: !3015)
!3017 = !DILocation(line: 973, column: 13, scope: !2933, inlinedAt: !3015)
!3018 = distinct !DIAssignID()
!3019 = !DILocation(line: 0, scope: !1927, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 974, column: 3, scope: !2933, inlinedAt: !3015)
!3021 = !DILocation(line: 147, column: 57, scope: !1927, inlinedAt: !3020)
!3022 = !DILocation(line: 149, column: 21, scope: !1927, inlinedAt: !3020)
!3023 = !DILocation(line: 150, column: 6, scope: !1927, inlinedAt: !3020)
!3024 = !DILocation(line: 975, column: 10, scope: !2933, inlinedAt: !3015)
!3025 = !DILocation(line: 976, column: 1, scope: !2933, inlinedAt: !3015)
!3026 = !DILocation(line: 993, column: 3, scope: !3008)
!3027 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !514, file: !514, line: 997, type: !2817, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !3028)
!3028 = !{!3029, !3030, !3031, !3032}
!3029 = !DILocalVariable(name: "n", arg: 1, scope: !3027, file: !514, line: 997, type: !83)
!3030 = !DILocalVariable(name: "s", arg: 2, scope: !3027, file: !514, line: 997, type: !537)
!3031 = !DILocalVariable(name: "arg", arg: 3, scope: !3027, file: !514, line: 997, type: !127)
!3032 = !DILocalVariable(name: "options", scope: !3027, file: !514, line: 999, type: !552)
!3033 = distinct !DIAssignID()
!3034 = !DILocation(line: 0, scope: !3027)
!3035 = !DILocation(line: 185, column: 26, scope: !2832, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 1000, column: 13, scope: !3027)
!3037 = !DILocation(line: 999, column: 3, scope: !3027)
!3038 = !DILocation(line: 0, scope: !2832, inlinedAt: !3036)
!3039 = !DILocation(line: 186, column: 13, scope: !2842, inlinedAt: !3036)
!3040 = !DILocation(line: 186, column: 7, scope: !2832, inlinedAt: !3036)
!3041 = !DILocation(line: 187, column: 5, scope: !2842, inlinedAt: !3036)
!3042 = !{!3043}
!3043 = distinct !{!3043, !3044, !"quoting_options_from_style: argument 0"}
!3044 = distinct !{!3044, !"quoting_options_from_style"}
!3045 = !DILocation(line: 1000, column: 13, scope: !3027)
!3046 = distinct !DIAssignID()
!3047 = distinct !DIAssignID()
!3048 = !DILocation(line: 0, scope: !1927, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 1001, column: 3, scope: !3027)
!3050 = !DILocation(line: 147, column: 57, scope: !1927, inlinedAt: !3049)
!3051 = !DILocation(line: 149, column: 21, scope: !1927, inlinedAt: !3049)
!3052 = !DILocation(line: 150, column: 6, scope: !1927, inlinedAt: !3049)
!3053 = distinct !DIAssignID()
!3054 = !DILocation(line: 1002, column: 10, scope: !3027)
!3055 = !DILocation(line: 1003, column: 1, scope: !3027)
!3056 = !DILocation(line: 1002, column: 3, scope: !3027)
!3057 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !514, file: !514, line: 1006, type: !3058, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !3060)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!122, !83, !127, !127, !127}
!3060 = !{!3061, !3062, !3063, !3064}
!3061 = !DILocalVariable(name: "n", arg: 1, scope: !3057, file: !514, line: 1006, type: !83)
!3062 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3057, file: !514, line: 1006, type: !127)
!3063 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3057, file: !514, line: 1007, type: !127)
!3064 = !DILocalVariable(name: "arg", arg: 4, scope: !3057, file: !514, line: 1007, type: !127)
!3065 = distinct !DIAssignID()
!3066 = !DILocation(line: 0, scope: !3057)
!3067 = !DILocalVariable(name: "o", scope: !3068, file: !514, line: 1018, type: !552)
!3068 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !514, file: !514, line: 1014, type: !3069, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!122, !83, !127, !127, !127, !124}
!3071 = !{!3072, !3073, !3074, !3075, !3076, !3067}
!3072 = !DILocalVariable(name: "n", arg: 1, scope: !3068, file: !514, line: 1014, type: !83)
!3073 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3068, file: !514, line: 1014, type: !127)
!3074 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3068, file: !514, line: 1015, type: !127)
!3075 = !DILocalVariable(name: "arg", arg: 4, scope: !3068, file: !514, line: 1016, type: !127)
!3076 = !DILocalVariable(name: "argsize", arg: 5, scope: !3068, file: !514, line: 1016, type: !124)
!3077 = !DILocation(line: 0, scope: !3068, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 1009, column: 10, scope: !3057)
!3079 = !DILocation(line: 1018, column: 3, scope: !3068, inlinedAt: !3078)
!3080 = !DILocation(line: 1018, column: 30, scope: !3068, inlinedAt: !3078)
!3081 = distinct !DIAssignID()
!3082 = distinct !DIAssignID()
!3083 = !DILocation(line: 0, scope: !1967, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 1019, column: 3, scope: !3068, inlinedAt: !3078)
!3085 = !DILocation(line: 174, column: 12, scope: !1967, inlinedAt: !3084)
!3086 = distinct !DIAssignID()
!3087 = !DILocation(line: 175, column: 8, scope: !1980, inlinedAt: !3084)
!3088 = !DILocation(line: 175, column: 19, scope: !1980, inlinedAt: !3084)
!3089 = !DILocation(line: 176, column: 5, scope: !1980, inlinedAt: !3084)
!3090 = !DILocation(line: 177, column: 6, scope: !1967, inlinedAt: !3084)
!3091 = !DILocation(line: 177, column: 17, scope: !1967, inlinedAt: !3084)
!3092 = distinct !DIAssignID()
!3093 = !DILocation(line: 178, column: 6, scope: !1967, inlinedAt: !3084)
!3094 = !DILocation(line: 178, column: 18, scope: !1967, inlinedAt: !3084)
!3095 = distinct !DIAssignID()
!3096 = !DILocation(line: 1020, column: 10, scope: !3068, inlinedAt: !3078)
!3097 = !DILocation(line: 1021, column: 1, scope: !3068, inlinedAt: !3078)
!3098 = !DILocation(line: 1009, column: 3, scope: !3057)
!3099 = distinct !DIAssignID()
!3100 = !DILocation(line: 0, scope: !3068)
!3101 = !DILocation(line: 1018, column: 3, scope: !3068)
!3102 = !DILocation(line: 1018, column: 30, scope: !3068)
!3103 = distinct !DIAssignID()
!3104 = distinct !DIAssignID()
!3105 = !DILocation(line: 0, scope: !1967, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 1019, column: 3, scope: !3068)
!3107 = !DILocation(line: 174, column: 12, scope: !1967, inlinedAt: !3106)
!3108 = distinct !DIAssignID()
!3109 = !DILocation(line: 175, column: 8, scope: !1980, inlinedAt: !3106)
!3110 = !DILocation(line: 175, column: 19, scope: !1980, inlinedAt: !3106)
!3111 = !DILocation(line: 176, column: 5, scope: !1980, inlinedAt: !3106)
!3112 = !DILocation(line: 177, column: 6, scope: !1967, inlinedAt: !3106)
!3113 = !DILocation(line: 177, column: 17, scope: !1967, inlinedAt: !3106)
!3114 = distinct !DIAssignID()
!3115 = !DILocation(line: 178, column: 6, scope: !1967, inlinedAt: !3106)
!3116 = !DILocation(line: 178, column: 18, scope: !1967, inlinedAt: !3106)
!3117 = distinct !DIAssignID()
!3118 = !DILocation(line: 1020, column: 10, scope: !3068)
!3119 = !DILocation(line: 1021, column: 1, scope: !3068)
!3120 = !DILocation(line: 1020, column: 3, scope: !3068)
!3121 = distinct !DISubprogram(name: "quotearg_custom", scope: !514, file: !514, line: 1024, type: !3122, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!122, !127, !127, !127}
!3124 = !{!3125, !3126, !3127}
!3125 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3121, file: !514, line: 1024, type: !127)
!3126 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3121, file: !514, line: 1024, type: !127)
!3127 = !DILocalVariable(name: "arg", arg: 3, scope: !3121, file: !514, line: 1025, type: !127)
!3128 = distinct !DIAssignID()
!3129 = !DILocation(line: 0, scope: !3121)
!3130 = !DILocation(line: 0, scope: !3057, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 1027, column: 10, scope: !3121)
!3132 = !DILocation(line: 0, scope: !3068, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 1009, column: 10, scope: !3057, inlinedAt: !3131)
!3134 = !DILocation(line: 1018, column: 3, scope: !3068, inlinedAt: !3133)
!3135 = !DILocation(line: 1018, column: 30, scope: !3068, inlinedAt: !3133)
!3136 = distinct !DIAssignID()
!3137 = distinct !DIAssignID()
!3138 = !DILocation(line: 0, scope: !1967, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 1019, column: 3, scope: !3068, inlinedAt: !3133)
!3140 = !DILocation(line: 174, column: 12, scope: !1967, inlinedAt: !3139)
!3141 = distinct !DIAssignID()
!3142 = !DILocation(line: 175, column: 8, scope: !1980, inlinedAt: !3139)
!3143 = !DILocation(line: 175, column: 19, scope: !1980, inlinedAt: !3139)
!3144 = !DILocation(line: 176, column: 5, scope: !1980, inlinedAt: !3139)
!3145 = !DILocation(line: 177, column: 6, scope: !1967, inlinedAt: !3139)
!3146 = !DILocation(line: 177, column: 17, scope: !1967, inlinedAt: !3139)
!3147 = distinct !DIAssignID()
!3148 = !DILocation(line: 178, column: 6, scope: !1967, inlinedAt: !3139)
!3149 = !DILocation(line: 178, column: 18, scope: !1967, inlinedAt: !3139)
!3150 = distinct !DIAssignID()
!3151 = !DILocation(line: 1020, column: 10, scope: !3068, inlinedAt: !3133)
!3152 = !DILocation(line: 1021, column: 1, scope: !3068, inlinedAt: !3133)
!3153 = !DILocation(line: 1027, column: 3, scope: !3121)
!3154 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !514, file: !514, line: 1031, type: !3155, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!122, !127, !127, !127, !124}
!3157 = !{!3158, !3159, !3160, !3161}
!3158 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3154, file: !514, line: 1031, type: !127)
!3159 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3154, file: !514, line: 1031, type: !127)
!3160 = !DILocalVariable(name: "arg", arg: 3, scope: !3154, file: !514, line: 1032, type: !127)
!3161 = !DILocalVariable(name: "argsize", arg: 4, scope: !3154, file: !514, line: 1032, type: !124)
!3162 = distinct !DIAssignID()
!3163 = !DILocation(line: 0, scope: !3154)
!3164 = !DILocation(line: 0, scope: !3068, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 1034, column: 10, scope: !3154)
!3166 = !DILocation(line: 1018, column: 3, scope: !3068, inlinedAt: !3165)
!3167 = !DILocation(line: 1018, column: 30, scope: !3068, inlinedAt: !3165)
!3168 = distinct !DIAssignID()
!3169 = distinct !DIAssignID()
!3170 = !DILocation(line: 0, scope: !1967, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 1019, column: 3, scope: !3068, inlinedAt: !3165)
!3172 = !DILocation(line: 174, column: 12, scope: !1967, inlinedAt: !3171)
!3173 = distinct !DIAssignID()
!3174 = !DILocation(line: 175, column: 8, scope: !1980, inlinedAt: !3171)
!3175 = !DILocation(line: 175, column: 19, scope: !1980, inlinedAt: !3171)
!3176 = !DILocation(line: 176, column: 5, scope: !1980, inlinedAt: !3171)
!3177 = !DILocation(line: 177, column: 6, scope: !1967, inlinedAt: !3171)
!3178 = !DILocation(line: 177, column: 17, scope: !1967, inlinedAt: !3171)
!3179 = distinct !DIAssignID()
!3180 = !DILocation(line: 178, column: 6, scope: !1967, inlinedAt: !3171)
!3181 = !DILocation(line: 178, column: 18, scope: !1967, inlinedAt: !3171)
!3182 = distinct !DIAssignID()
!3183 = !DILocation(line: 1020, column: 10, scope: !3068, inlinedAt: !3165)
!3184 = !DILocation(line: 1021, column: 1, scope: !3068, inlinedAt: !3165)
!3185 = !DILocation(line: 1034, column: 3, scope: !3154)
!3186 = distinct !DISubprogram(name: "quote_n_mem", scope: !514, file: !514, line: 1049, type: !3187, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!127, !83, !127, !124}
!3189 = !{!3190, !3191, !3192}
!3190 = !DILocalVariable(name: "n", arg: 1, scope: !3186, file: !514, line: 1049, type: !83)
!3191 = !DILocalVariable(name: "arg", arg: 2, scope: !3186, file: !514, line: 1049, type: !127)
!3192 = !DILocalVariable(name: "argsize", arg: 3, scope: !3186, file: !514, line: 1049, type: !124)
!3193 = !DILocation(line: 0, scope: !3186)
!3194 = !DILocation(line: 1051, column: 10, scope: !3186)
!3195 = !DILocation(line: 1051, column: 3, scope: !3186)
!3196 = distinct !DISubprogram(name: "quote_mem", scope: !514, file: !514, line: 1055, type: !3197, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !3199)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!127, !127, !124}
!3199 = !{!3200, !3201}
!3200 = !DILocalVariable(name: "arg", arg: 1, scope: !3196, file: !514, line: 1055, type: !127)
!3201 = !DILocalVariable(name: "argsize", arg: 2, scope: !3196, file: !514, line: 1055, type: !124)
!3202 = !DILocation(line: 0, scope: !3196)
!3203 = !DILocation(line: 0, scope: !3186, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 1057, column: 10, scope: !3196)
!3205 = !DILocation(line: 1051, column: 10, scope: !3186, inlinedAt: !3204)
!3206 = !DILocation(line: 1057, column: 3, scope: !3196)
!3207 = distinct !DISubprogram(name: "quote_n", scope: !514, file: !514, line: 1061, type: !3208, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !3210)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!127, !83, !127}
!3210 = !{!3211, !3212}
!3211 = !DILocalVariable(name: "n", arg: 1, scope: !3207, file: !514, line: 1061, type: !83)
!3212 = !DILocalVariable(name: "arg", arg: 2, scope: !3207, file: !514, line: 1061, type: !127)
!3213 = !DILocation(line: 0, scope: !3207)
!3214 = !DILocation(line: 0, scope: !3186, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 1063, column: 10, scope: !3207)
!3216 = !DILocation(line: 1051, column: 10, scope: !3186, inlinedAt: !3215)
!3217 = !DILocation(line: 1063, column: 3, scope: !3207)
!3218 = distinct !DISubprogram(name: "quote", scope: !514, file: !514, line: 1067, type: !3219, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !3221)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!127, !127}
!3221 = !{!3222}
!3222 = !DILocalVariable(name: "arg", arg: 1, scope: !3218, file: !514, line: 1067, type: !127)
!3223 = !DILocation(line: 0, scope: !3218)
!3224 = !DILocation(line: 0, scope: !3207, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 1069, column: 10, scope: !3218)
!3226 = !DILocation(line: 0, scope: !3186, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 1063, column: 10, scope: !3207, inlinedAt: !3225)
!3228 = !DILocation(line: 1051, column: 10, scope: !3186, inlinedAt: !3227)
!3229 = !DILocation(line: 1069, column: 3, scope: !3218)
!3230 = distinct !DISubprogram(name: "get_root_dev_ino", scope: !615, file: !615, line: 29, type: !3231, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3239)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!3233, !3233}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !3235, line: 30, size: 128, elements: !3236)
!3235 = !DIFile(filename: "lib/dev-ino.h", directory: "/src", checksumkind: CSK_MD5, checksum: "7eae2ded9ac0c200760eafd719dd996d")
!3236 = !{!3237, !3238}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3234, file: !3235, line: 32, baseType: !1223, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3234, file: !3235, line: 33, baseType: !1226, size: 64, offset: 64)
!3239 = !{!3240, !3241}
!3240 = !DILocalVariable(name: "root_d_i", arg: 1, scope: !3230, file: !615, line: 29, type: !3233)
!3241 = !DILocalVariable(name: "statbuf", scope: !3230, file: !615, line: 31, type: !3242)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1095, line: 26, size: 1152, elements: !3243)
!3243 = !{!3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3260, !3261, !3262}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3242, file: !1095, line: 31, baseType: !1098, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3242, file: !1095, line: 36, baseType: !1100, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3242, file: !1095, line: 44, baseType: !1102, size: 64, offset: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3242, file: !1095, line: 45, baseType: !1104, size: 32, offset: 192)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3242, file: !1095, line: 47, baseType: !1106, size: 32, offset: 224)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3242, file: !1095, line: 48, baseType: !1108, size: 32, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3242, file: !1095, line: 50, baseType: !83, size: 32, offset: 288)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3242, file: !1095, line: 52, baseType: !1098, size: 64, offset: 320)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3242, file: !1095, line: 57, baseType: !197, size: 64, offset: 384)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3242, file: !1095, line: 61, baseType: !1113, size: 64, offset: 448)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3242, file: !1095, line: 63, baseType: !1115, size: 64, offset: 512)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3242, file: !1095, line: 74, baseType: !3256, size: 128, offset: 576)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1118, line: 11, size: 128, elements: !3257)
!3257 = !{!3258, !3259}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3256, file: !1118, line: 16, baseType: !1121, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3256, file: !1118, line: 21, baseType: !1123, size: 64, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3242, file: !1095, line: 75, baseType: !3256, size: 128, offset: 704)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3242, file: !1095, line: 76, baseType: !3256, size: 128, offset: 832)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3242, file: !1095, line: 89, baseType: !1127, size: 192, offset: 960)
!3263 = distinct !DIAssignID()
!3264 = !DILocation(line: 0, scope: !3230)
!3265 = !DILocation(line: 31, column: 3, scope: !3230)
!3266 = !DILocation(line: 32, column: 7, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3230, file: !615, line: 32, column: 7)
!3268 = !DILocation(line: 32, column: 7, scope: !3230)
!3269 = !DILocation(line: 35, column: 30, scope: !3230)
!3270 = !DILocation(line: 34, column: 20, scope: !3230)
!3271 = !DILocation(line: 36, column: 3, scope: !3230)
!3272 = !DILocation(line: 37, column: 1, scope: !3230)
!3273 = distinct !DISubprogram(name: "version_etc_arn", scope: !618, file: !618, line: 61, type: !3274, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3311)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{null, !3276, !127, !127, !127, !3310, !124}
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !3278)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !3279)
!3279 = !{!3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3278, file: !175, line: 51, baseType: !83, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3278, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3278, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3278, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3278, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3278, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3278, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3278, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3278, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3278, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3278, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3278, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3278, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3278, file: !175, line: 70, baseType: !3294, size: 64, offset: 832)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3278, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3278, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3278, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3278, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3278, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3278, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3278, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3278, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3278, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3278, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3278, file: !175, line: 93, baseType: !3294, size: 64, offset: 1344)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3278, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3278, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3278, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3278, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3317}
!3312 = !DILocalVariable(name: "stream", arg: 1, scope: !3273, file: !618, line: 61, type: !3276)
!3313 = !DILocalVariable(name: "command_name", arg: 2, scope: !3273, file: !618, line: 62, type: !127)
!3314 = !DILocalVariable(name: "package", arg: 3, scope: !3273, file: !618, line: 62, type: !127)
!3315 = !DILocalVariable(name: "version", arg: 4, scope: !3273, file: !618, line: 63, type: !127)
!3316 = !DILocalVariable(name: "authors", arg: 5, scope: !3273, file: !618, line: 64, type: !3310)
!3317 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3273, file: !618, line: 64, type: !124)
!3318 = !DILocation(line: 0, scope: !3273)
!3319 = !DILocation(line: 66, column: 7, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3273, file: !618, line: 66, column: 7)
!3321 = !DILocation(line: 66, column: 7, scope: !3273)
!3322 = !DILocation(line: 67, column: 5, scope: !3320)
!3323 = !DILocation(line: 69, column: 5, scope: !3320)
!3324 = !DILocation(line: 83, column: 3, scope: !3273)
!3325 = !DILocation(line: 85, column: 3, scope: !3273)
!3326 = !DILocation(line: 88, column: 3, scope: !3273)
!3327 = !DILocation(line: 95, column: 3, scope: !3273)
!3328 = !DILocation(line: 97, column: 3, scope: !3273)
!3329 = !DILocation(line: 105, column: 7, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3273, file: !618, line: 98, column: 5)
!3331 = !DILocation(line: 106, column: 7, scope: !3330)
!3332 = !DILocation(line: 109, column: 7, scope: !3330)
!3333 = !DILocation(line: 110, column: 7, scope: !3330)
!3334 = !DILocation(line: 113, column: 7, scope: !3330)
!3335 = !DILocation(line: 115, column: 7, scope: !3330)
!3336 = !DILocation(line: 120, column: 7, scope: !3330)
!3337 = !DILocation(line: 122, column: 7, scope: !3330)
!3338 = !DILocation(line: 127, column: 7, scope: !3330)
!3339 = !DILocation(line: 129, column: 7, scope: !3330)
!3340 = !DILocation(line: 134, column: 7, scope: !3330)
!3341 = !DILocation(line: 137, column: 7, scope: !3330)
!3342 = !DILocation(line: 142, column: 7, scope: !3330)
!3343 = !DILocation(line: 145, column: 7, scope: !3330)
!3344 = !DILocation(line: 150, column: 7, scope: !3330)
!3345 = !DILocation(line: 154, column: 7, scope: !3330)
!3346 = !DILocation(line: 159, column: 7, scope: !3330)
!3347 = !DILocation(line: 163, column: 7, scope: !3330)
!3348 = !DILocation(line: 170, column: 7, scope: !3330)
!3349 = !DILocation(line: 174, column: 7, scope: !3330)
!3350 = !DILocation(line: 176, column: 1, scope: !3273)
!3351 = distinct !DISubprogram(name: "version_etc_ar", scope: !618, file: !618, line: 183, type: !3352, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3354)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{null, !3276, !127, !127, !127, !3310}
!3354 = !{!3355, !3356, !3357, !3358, !3359, !3360}
!3355 = !DILocalVariable(name: "stream", arg: 1, scope: !3351, file: !618, line: 183, type: !3276)
!3356 = !DILocalVariable(name: "command_name", arg: 2, scope: !3351, file: !618, line: 184, type: !127)
!3357 = !DILocalVariable(name: "package", arg: 3, scope: !3351, file: !618, line: 184, type: !127)
!3358 = !DILocalVariable(name: "version", arg: 4, scope: !3351, file: !618, line: 185, type: !127)
!3359 = !DILocalVariable(name: "authors", arg: 5, scope: !3351, file: !618, line: 185, type: !3310)
!3360 = !DILocalVariable(name: "n_authors", scope: !3351, file: !618, line: 187, type: !124)
!3361 = !DILocation(line: 0, scope: !3351)
!3362 = !DILocation(line: 189, column: 8, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3351, file: !618, line: 189, column: 3)
!3364 = !DILocation(line: 189, scope: !3363)
!3365 = !DILocation(line: 189, column: 23, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3363, file: !618, line: 189, column: 3)
!3367 = !DILocation(line: 189, column: 3, scope: !3363)
!3368 = !DILocation(line: 189, column: 52, scope: !3366)
!3369 = distinct !{!3369, !3367, !3370, !927}
!3370 = !DILocation(line: 190, column: 5, scope: !3363)
!3371 = !DILocation(line: 191, column: 3, scope: !3351)
!3372 = !DILocation(line: 192, column: 1, scope: !3351)
!3373 = distinct !DISubprogram(name: "version_etc_va", scope: !618, file: !618, line: 199, type: !3374, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3383)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !3276, !127, !127, !127, !3376}
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3378)
!3378 = !{!3379, !3380, !3381, !3382}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3377, file: !618, line: 192, baseType: !89, size: 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3377, file: !618, line: 192, baseType: !89, size: 32, offset: 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3377, file: !618, line: 192, baseType: !121, size: 64, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3377, file: !618, line: 192, baseType: !121, size: 64, offset: 128)
!3383 = !{!3384, !3385, !3386, !3387, !3388, !3389, !3390}
!3384 = !DILocalVariable(name: "stream", arg: 1, scope: !3373, file: !618, line: 199, type: !3276)
!3385 = !DILocalVariable(name: "command_name", arg: 2, scope: !3373, file: !618, line: 200, type: !127)
!3386 = !DILocalVariable(name: "package", arg: 3, scope: !3373, file: !618, line: 200, type: !127)
!3387 = !DILocalVariable(name: "version", arg: 4, scope: !3373, file: !618, line: 201, type: !127)
!3388 = !DILocalVariable(name: "authors", arg: 5, scope: !3373, file: !618, line: 201, type: !3376)
!3389 = !DILocalVariable(name: "n_authors", scope: !3373, file: !618, line: 203, type: !124)
!3390 = !DILocalVariable(name: "authtab", scope: !3373, file: !618, line: 204, type: !3391)
!3391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 640, elements: !65)
!3392 = distinct !DIAssignID()
!3393 = !DILocation(line: 0, scope: !3373)
!3394 = !DILocation(line: 204, column: 3, scope: !3373)
!3395 = !DILocation(line: 208, column: 35, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !618, line: 206, column: 3)
!3397 = distinct !DILexicalBlock(scope: !3373, file: !618, line: 206, column: 3)
!3398 = !DILocation(line: 208, column: 33, scope: !3396)
!3399 = !DILocation(line: 208, column: 67, scope: !3396)
!3400 = !DILocation(line: 206, column: 3, scope: !3397)
!3401 = !DILocation(line: 208, column: 14, scope: !3396)
!3402 = !DILocation(line: 0, scope: !3397)
!3403 = !DILocation(line: 211, column: 3, scope: !3373)
!3404 = !DILocation(line: 213, column: 1, scope: !3373)
!3405 = distinct !DISubprogram(name: "version_etc", scope: !618, file: !618, line: 230, type: !3406, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{null, !3276, !127, !127, !127, null}
!3408 = !{!3409, !3410, !3411, !3412, !3413}
!3409 = !DILocalVariable(name: "stream", arg: 1, scope: !3405, file: !618, line: 230, type: !3276)
!3410 = !DILocalVariable(name: "command_name", arg: 2, scope: !3405, file: !618, line: 231, type: !127)
!3411 = !DILocalVariable(name: "package", arg: 3, scope: !3405, file: !618, line: 231, type: !127)
!3412 = !DILocalVariable(name: "version", arg: 4, scope: !3405, file: !618, line: 232, type: !127)
!3413 = !DILocalVariable(name: "authors", scope: !3405, file: !618, line: 234, type: !3414)
!3414 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !875, line: 52, baseType: !3415)
!3415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1756, line: 12, baseType: !3416)
!3416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !618, baseType: !3417)
!3417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3377, size: 192, elements: !60)
!3418 = distinct !DIAssignID()
!3419 = !DILocation(line: 0, scope: !3405)
!3420 = !DILocation(line: 234, column: 3, scope: !3405)
!3421 = !DILocation(line: 235, column: 3, scope: !3405)
!3422 = !DILocation(line: 236, column: 3, scope: !3405)
!3423 = !DILocation(line: 237, column: 3, scope: !3405)
!3424 = !DILocation(line: 238, column: 1, scope: !3405)
!3425 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !618, file: !618, line: 241, type: !469, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732)
!3426 = !DILocation(line: 243, column: 3, scope: !3425)
!3427 = !DILocation(line: 248, column: 3, scope: !3425)
!3428 = !DILocation(line: 254, column: 3, scope: !3425)
!3429 = !DILocation(line: 259, column: 3, scope: !3425)
!3430 = !DILocation(line: 261, column: 1, scope: !3425)
!3431 = distinct !DISubprogram(name: "xnrealloc", scope: !3432, file: !3432, line: 147, type: !3433, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3435)
!3432 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!121, !121, !124, !124}
!3435 = !{!3436, !3437, !3438}
!3436 = !DILocalVariable(name: "p", arg: 1, scope: !3431, file: !3432, line: 147, type: !121)
!3437 = !DILocalVariable(name: "n", arg: 2, scope: !3431, file: !3432, line: 147, type: !124)
!3438 = !DILocalVariable(name: "s", arg: 3, scope: !3431, file: !3432, line: 147, type: !124)
!3439 = !DILocation(line: 0, scope: !3431)
!3440 = !DILocalVariable(name: "p", arg: 1, scope: !3441, file: !740, line: 83, type: !121)
!3441 = distinct !DISubprogram(name: "xreallocarray", scope: !740, file: !740, line: 83, type: !3433, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3442)
!3442 = !{!3440, !3443, !3444}
!3443 = !DILocalVariable(name: "n", arg: 2, scope: !3441, file: !740, line: 83, type: !124)
!3444 = !DILocalVariable(name: "s", arg: 3, scope: !3441, file: !740, line: 83, type: !124)
!3445 = !DILocation(line: 0, scope: !3441, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 149, column: 10, scope: !3431)
!3447 = !DILocation(line: 85, column: 25, scope: !3441, inlinedAt: !3446)
!3448 = !DILocalVariable(name: "p", arg: 1, scope: !3449, file: !740, line: 37, type: !121)
!3449 = distinct !DISubprogram(name: "check_nonnull", scope: !740, file: !740, line: 37, type: !3450, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3452)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!121, !121}
!3452 = !{!3448}
!3453 = !DILocation(line: 0, scope: !3449, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 85, column: 10, scope: !3441, inlinedAt: !3446)
!3455 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3454)
!3456 = distinct !DILexicalBlock(scope: !3449, file: !740, line: 39, column: 7)
!3457 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3454)
!3458 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3454)
!3459 = !DILocation(line: 149, column: 3, scope: !3431)
!3460 = !DILocation(line: 0, scope: !3441)
!3461 = !DILocation(line: 85, column: 25, scope: !3441)
!3462 = !DILocation(line: 0, scope: !3449, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 85, column: 10, scope: !3441)
!3464 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3463)
!3465 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3463)
!3466 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3463)
!3467 = !DILocation(line: 85, column: 3, scope: !3441)
!3468 = distinct !DISubprogram(name: "xmalloc", scope: !740, file: !740, line: 47, type: !3469, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!121, !124}
!3471 = !{!3472}
!3472 = !DILocalVariable(name: "s", arg: 1, scope: !3468, file: !740, line: 47, type: !124)
!3473 = !DILocation(line: 0, scope: !3468)
!3474 = !DILocation(line: 49, column: 25, scope: !3468)
!3475 = !DILocation(line: 0, scope: !3449, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 49, column: 10, scope: !3468)
!3477 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3476)
!3478 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3476)
!3479 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3476)
!3480 = !DILocation(line: 49, column: 3, scope: !3468)
!3481 = !DISubprogram(name: "malloc", scope: !1004, file: !1004, line: 540, type: !3469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3482 = distinct !DISubprogram(name: "ximalloc", scope: !740, file: !740, line: 53, type: !3483, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!121, !759}
!3485 = !{!3486}
!3486 = !DILocalVariable(name: "s", arg: 1, scope: !3482, file: !740, line: 53, type: !759)
!3487 = !DILocation(line: 0, scope: !3482)
!3488 = !DILocalVariable(name: "s", arg: 1, scope: !3489, file: !3490, line: 55, type: !759)
!3489 = distinct !DISubprogram(name: "imalloc", scope: !3490, file: !3490, line: 55, type: !3483, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3491)
!3490 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3491 = !{!3488}
!3492 = !DILocation(line: 0, scope: !3489, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 55, column: 25, scope: !3482)
!3494 = !DILocation(line: 57, column: 26, scope: !3489, inlinedAt: !3493)
!3495 = !DILocation(line: 0, scope: !3449, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 55, column: 10, scope: !3482)
!3497 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3496)
!3498 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3496)
!3499 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3496)
!3500 = !DILocation(line: 55, column: 3, scope: !3482)
!3501 = distinct !DISubprogram(name: "xcharalloc", scope: !740, file: !740, line: 59, type: !1449, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3502)
!3502 = !{!3503}
!3503 = !DILocalVariable(name: "n", arg: 1, scope: !3501, file: !740, line: 59, type: !124)
!3504 = !DILocation(line: 0, scope: !3501)
!3505 = !DILocation(line: 0, scope: !3468, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 61, column: 10, scope: !3501)
!3507 = !DILocation(line: 49, column: 25, scope: !3468, inlinedAt: !3506)
!3508 = !DILocation(line: 0, scope: !3449, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 49, column: 10, scope: !3468, inlinedAt: !3506)
!3510 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3509)
!3511 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3509)
!3512 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3509)
!3513 = !DILocation(line: 61, column: 3, scope: !3501)
!3514 = distinct !DISubprogram(name: "xrealloc", scope: !740, file: !740, line: 68, type: !3515, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3517)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!121, !121, !124}
!3517 = !{!3518, !3519}
!3518 = !DILocalVariable(name: "p", arg: 1, scope: !3514, file: !740, line: 68, type: !121)
!3519 = !DILocalVariable(name: "s", arg: 2, scope: !3514, file: !740, line: 68, type: !124)
!3520 = !DILocation(line: 0, scope: !3514)
!3521 = !DILocalVariable(name: "ptr", arg: 1, scope: !3522, file: !3523, line: 2057, type: !121)
!3522 = distinct !DISubprogram(name: "rpl_realloc", scope: !3523, file: !3523, line: 2057, type: !3515, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3524)
!3523 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3524 = !{!3521, !3525}
!3525 = !DILocalVariable(name: "size", arg: 2, scope: !3522, file: !3523, line: 2057, type: !124)
!3526 = !DILocation(line: 0, scope: !3522, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 70, column: 25, scope: !3514)
!3528 = !DILocation(line: 2059, column: 24, scope: !3522, inlinedAt: !3527)
!3529 = !DILocation(line: 2059, column: 10, scope: !3522, inlinedAt: !3527)
!3530 = !DILocation(line: 0, scope: !3449, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 70, column: 10, scope: !3514)
!3532 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3531)
!3533 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3531)
!3534 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3531)
!3535 = !DILocation(line: 70, column: 3, scope: !3514)
!3536 = !DISubprogram(name: "realloc", scope: !1004, file: !1004, line: 551, type: !3515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3537 = distinct !DISubprogram(name: "xirealloc", scope: !740, file: !740, line: 74, type: !3538, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3540)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!121, !121, !759}
!3540 = !{!3541, !3542}
!3541 = !DILocalVariable(name: "p", arg: 1, scope: !3537, file: !740, line: 74, type: !121)
!3542 = !DILocalVariable(name: "s", arg: 2, scope: !3537, file: !740, line: 74, type: !759)
!3543 = !DILocation(line: 0, scope: !3537)
!3544 = !DILocalVariable(name: "p", arg: 1, scope: !3545, file: !3490, line: 66, type: !121)
!3545 = distinct !DISubprogram(name: "irealloc", scope: !3490, file: !3490, line: 66, type: !3538, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3546)
!3546 = !{!3544, !3547}
!3547 = !DILocalVariable(name: "s", arg: 2, scope: !3545, file: !3490, line: 66, type: !759)
!3548 = !DILocation(line: 0, scope: !3545, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 76, column: 25, scope: !3537)
!3550 = !DILocation(line: 0, scope: !3522, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 68, column: 26, scope: !3545, inlinedAt: !3549)
!3552 = !DILocation(line: 2059, column: 24, scope: !3522, inlinedAt: !3551)
!3553 = !DILocation(line: 2059, column: 10, scope: !3522, inlinedAt: !3551)
!3554 = !DILocation(line: 0, scope: !3449, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 76, column: 10, scope: !3537)
!3556 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3555)
!3557 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3555)
!3558 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3555)
!3559 = !DILocation(line: 76, column: 3, scope: !3537)
!3560 = distinct !DISubprogram(name: "xireallocarray", scope: !740, file: !740, line: 89, type: !3561, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3563)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!121, !121, !759, !759}
!3563 = !{!3564, !3565, !3566}
!3564 = !DILocalVariable(name: "p", arg: 1, scope: !3560, file: !740, line: 89, type: !121)
!3565 = !DILocalVariable(name: "n", arg: 2, scope: !3560, file: !740, line: 89, type: !759)
!3566 = !DILocalVariable(name: "s", arg: 3, scope: !3560, file: !740, line: 89, type: !759)
!3567 = !DILocation(line: 0, scope: !3560)
!3568 = !DILocalVariable(name: "p", arg: 1, scope: !3569, file: !3490, line: 98, type: !121)
!3569 = distinct !DISubprogram(name: "ireallocarray", scope: !3490, file: !3490, line: 98, type: !3561, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3570)
!3570 = !{!3568, !3571, !3572}
!3571 = !DILocalVariable(name: "n", arg: 2, scope: !3569, file: !3490, line: 98, type: !759)
!3572 = !DILocalVariable(name: "s", arg: 3, scope: !3569, file: !3490, line: 98, type: !759)
!3573 = !DILocation(line: 0, scope: !3569, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 91, column: 25, scope: !3560)
!3575 = !DILocation(line: 101, column: 13, scope: !3569, inlinedAt: !3574)
!3576 = !DILocation(line: 0, scope: !3449, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 91, column: 10, scope: !3560)
!3578 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3577)
!3579 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3577)
!3580 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3577)
!3581 = !DILocation(line: 91, column: 3, scope: !3560)
!3582 = distinct !DISubprogram(name: "xnmalloc", scope: !740, file: !740, line: 98, type: !3583, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3585)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!121, !124, !124}
!3585 = !{!3586, !3587}
!3586 = !DILocalVariable(name: "n", arg: 1, scope: !3582, file: !740, line: 98, type: !124)
!3587 = !DILocalVariable(name: "s", arg: 2, scope: !3582, file: !740, line: 98, type: !124)
!3588 = !DILocation(line: 0, scope: !3582)
!3589 = !DILocation(line: 0, scope: !3441, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 100, column: 10, scope: !3582)
!3591 = !DILocation(line: 85, column: 25, scope: !3441, inlinedAt: !3590)
!3592 = !DILocation(line: 0, scope: !3449, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 85, column: 10, scope: !3441, inlinedAt: !3590)
!3594 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3593)
!3595 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3593)
!3596 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3593)
!3597 = !DILocation(line: 100, column: 3, scope: !3582)
!3598 = distinct !DISubprogram(name: "xinmalloc", scope: !740, file: !740, line: 104, type: !3599, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3601)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!121, !759, !759}
!3601 = !{!3602, !3603}
!3602 = !DILocalVariable(name: "n", arg: 1, scope: !3598, file: !740, line: 104, type: !759)
!3603 = !DILocalVariable(name: "s", arg: 2, scope: !3598, file: !740, line: 104, type: !759)
!3604 = !DILocation(line: 0, scope: !3598)
!3605 = !DILocation(line: 0, scope: !3560, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 106, column: 10, scope: !3598)
!3607 = !DILocation(line: 0, scope: !3569, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 91, column: 25, scope: !3560, inlinedAt: !3606)
!3609 = !DILocation(line: 101, column: 13, scope: !3569, inlinedAt: !3608)
!3610 = !DILocation(line: 0, scope: !3449, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 91, column: 10, scope: !3560, inlinedAt: !3606)
!3612 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3611)
!3613 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3611)
!3614 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3611)
!3615 = !DILocation(line: 106, column: 3, scope: !3598)
!3616 = distinct !DISubprogram(name: "x2realloc", scope: !740, file: !740, line: 116, type: !3617, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3619)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!121, !121, !746}
!3619 = !{!3620, !3621}
!3620 = !DILocalVariable(name: "p", arg: 1, scope: !3616, file: !740, line: 116, type: !121)
!3621 = !DILocalVariable(name: "ps", arg: 2, scope: !3616, file: !740, line: 116, type: !746)
!3622 = !DILocation(line: 0, scope: !3616)
!3623 = !DILocation(line: 0, scope: !743, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 118, column: 10, scope: !3616)
!3625 = !DILocation(line: 178, column: 14, scope: !743, inlinedAt: !3624)
!3626 = !DILocation(line: 180, column: 9, scope: !3627, inlinedAt: !3624)
!3627 = distinct !DILexicalBlock(scope: !743, file: !740, line: 180, column: 7)
!3628 = !DILocation(line: 180, column: 7, scope: !743, inlinedAt: !3624)
!3629 = !DILocation(line: 182, column: 13, scope: !3630, inlinedAt: !3624)
!3630 = distinct !DILexicalBlock(scope: !3631, file: !740, line: 182, column: 11)
!3631 = distinct !DILexicalBlock(scope: !3627, file: !740, line: 181, column: 5)
!3632 = !DILocation(line: 182, column: 11, scope: !3631, inlinedAt: !3624)
!3633 = !DILocation(line: 197, column: 11, scope: !3634, inlinedAt: !3624)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !740, line: 197, column: 11)
!3635 = distinct !DILexicalBlock(scope: !3627, file: !740, line: 195, column: 5)
!3636 = !DILocation(line: 197, column: 11, scope: !3635, inlinedAt: !3624)
!3637 = !DILocation(line: 198, column: 9, scope: !3634, inlinedAt: !3624)
!3638 = !DILocation(line: 0, scope: !3441, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 201, column: 7, scope: !743, inlinedAt: !3624)
!3640 = !DILocation(line: 85, column: 25, scope: !3441, inlinedAt: !3639)
!3641 = !DILocation(line: 0, scope: !3449, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 85, column: 10, scope: !3441, inlinedAt: !3639)
!3643 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3642)
!3644 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3642)
!3645 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3642)
!3646 = !DILocation(line: 202, column: 7, scope: !743, inlinedAt: !3624)
!3647 = !DILocation(line: 118, column: 3, scope: !3616)
!3648 = !DILocation(line: 0, scope: !743)
!3649 = !DILocation(line: 178, column: 14, scope: !743)
!3650 = !DILocation(line: 180, column: 9, scope: !3627)
!3651 = !DILocation(line: 180, column: 7, scope: !743)
!3652 = !DILocation(line: 182, column: 13, scope: !3630)
!3653 = !DILocation(line: 182, column: 11, scope: !3631)
!3654 = !DILocation(line: 190, column: 30, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3630, file: !740, line: 183, column: 9)
!3656 = !DILocation(line: 191, column: 16, scope: !3655)
!3657 = !DILocation(line: 191, column: 13, scope: !3655)
!3658 = !DILocation(line: 192, column: 9, scope: !3655)
!3659 = !DILocation(line: 197, column: 11, scope: !3634)
!3660 = !DILocation(line: 197, column: 11, scope: !3635)
!3661 = !DILocation(line: 198, column: 9, scope: !3634)
!3662 = !DILocation(line: 0, scope: !3441, inlinedAt: !3663)
!3663 = distinct !DILocation(line: 201, column: 7, scope: !743)
!3664 = !DILocation(line: 85, column: 25, scope: !3441, inlinedAt: !3663)
!3665 = !DILocation(line: 0, scope: !3449, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 85, column: 10, scope: !3441, inlinedAt: !3663)
!3667 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3666)
!3668 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3666)
!3669 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3666)
!3670 = !DILocation(line: 202, column: 7, scope: !743)
!3671 = !DILocation(line: 203, column: 3, scope: !743)
!3672 = !DILocation(line: 0, scope: !755)
!3673 = !DILocation(line: 230, column: 14, scope: !755)
!3674 = !DILocation(line: 238, column: 7, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !755, file: !740, line: 238, column: 7)
!3676 = !DILocation(line: 238, column: 7, scope: !755)
!3677 = !DILocation(line: 240, column: 9, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !755, file: !740, line: 240, column: 7)
!3679 = !DILocation(line: 240, column: 18, scope: !3678)
!3680 = !DILocation(line: 253, column: 8, scope: !755)
!3681 = !DILocation(line: 256, column: 7, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !755, file: !740, line: 256, column: 7)
!3683 = !DILocation(line: 256, column: 7, scope: !755)
!3684 = !DILocation(line: 258, column: 27, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3682, file: !740, line: 257, column: 5)
!3686 = !DILocation(line: 259, column: 50, scope: !3685)
!3687 = !DILocation(line: 259, column: 32, scope: !3685)
!3688 = !DILocation(line: 260, column: 5, scope: !3685)
!3689 = !DILocation(line: 262, column: 9, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !755, file: !740, line: 262, column: 7)
!3691 = !DILocation(line: 262, column: 7, scope: !755)
!3692 = !DILocation(line: 263, column: 9, scope: !3690)
!3693 = !DILocation(line: 263, column: 5, scope: !3690)
!3694 = !DILocation(line: 264, column: 9, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !755, file: !740, line: 264, column: 7)
!3696 = !DILocation(line: 264, column: 14, scope: !3695)
!3697 = !DILocation(line: 265, column: 7, scope: !3695)
!3698 = !DILocation(line: 265, column: 11, scope: !3695)
!3699 = !DILocation(line: 266, column: 11, scope: !3695)
!3700 = !DILocation(line: 267, column: 14, scope: !3695)
!3701 = !DILocation(line: 264, column: 7, scope: !755)
!3702 = !DILocation(line: 268, column: 5, scope: !3695)
!3703 = !DILocation(line: 0, scope: !3514, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 269, column: 8, scope: !755)
!3705 = !DILocation(line: 0, scope: !3522, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 70, column: 25, scope: !3514, inlinedAt: !3704)
!3707 = !DILocation(line: 2059, column: 24, scope: !3522, inlinedAt: !3706)
!3708 = !DILocation(line: 2059, column: 10, scope: !3522, inlinedAt: !3706)
!3709 = !DILocation(line: 0, scope: !3449, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 70, column: 10, scope: !3514, inlinedAt: !3704)
!3711 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3710)
!3712 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3710)
!3713 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3710)
!3714 = !DILocation(line: 270, column: 7, scope: !755)
!3715 = !DILocation(line: 271, column: 3, scope: !755)
!3716 = distinct !DISubprogram(name: "xzalloc", scope: !740, file: !740, line: 279, type: !3469, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3717)
!3717 = !{!3718}
!3718 = !DILocalVariable(name: "s", arg: 1, scope: !3716, file: !740, line: 279, type: !124)
!3719 = !DILocation(line: 0, scope: !3716)
!3720 = !DILocalVariable(name: "n", arg: 1, scope: !3721, file: !740, line: 294, type: !124)
!3721 = distinct !DISubprogram(name: "xcalloc", scope: !740, file: !740, line: 294, type: !3583, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3722)
!3722 = !{!3720, !3723}
!3723 = !DILocalVariable(name: "s", arg: 2, scope: !3721, file: !740, line: 294, type: !124)
!3724 = !DILocation(line: 0, scope: !3721, inlinedAt: !3725)
!3725 = distinct !DILocation(line: 281, column: 10, scope: !3716)
!3726 = !DILocation(line: 296, column: 25, scope: !3721, inlinedAt: !3725)
!3727 = !DILocation(line: 0, scope: !3449, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 296, column: 10, scope: !3721, inlinedAt: !3725)
!3729 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3728)
!3730 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3728)
!3731 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3728)
!3732 = !DILocation(line: 281, column: 3, scope: !3716)
!3733 = !DISubprogram(name: "calloc", scope: !1004, file: !1004, line: 543, type: !3583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3734 = !DILocation(line: 0, scope: !3721)
!3735 = !DILocation(line: 296, column: 25, scope: !3721)
!3736 = !DILocation(line: 0, scope: !3449, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 296, column: 10, scope: !3721)
!3738 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3737)
!3739 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3737)
!3740 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3737)
!3741 = !DILocation(line: 296, column: 3, scope: !3721)
!3742 = distinct !DISubprogram(name: "xizalloc", scope: !740, file: !740, line: 285, type: !3483, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3743)
!3743 = !{!3744}
!3744 = !DILocalVariable(name: "s", arg: 1, scope: !3742, file: !740, line: 285, type: !759)
!3745 = !DILocation(line: 0, scope: !3742)
!3746 = !DILocalVariable(name: "n", arg: 1, scope: !3747, file: !740, line: 300, type: !759)
!3747 = distinct !DISubprogram(name: "xicalloc", scope: !740, file: !740, line: 300, type: !3599, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3748)
!3748 = !{!3746, !3749}
!3749 = !DILocalVariable(name: "s", arg: 2, scope: !3747, file: !740, line: 300, type: !759)
!3750 = !DILocation(line: 0, scope: !3747, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 287, column: 10, scope: !3742)
!3752 = !DILocalVariable(name: "n", arg: 1, scope: !3753, file: !3490, line: 77, type: !759)
!3753 = distinct !DISubprogram(name: "icalloc", scope: !3490, file: !3490, line: 77, type: !3599, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3754)
!3754 = !{!3752, !3755}
!3755 = !DILocalVariable(name: "s", arg: 2, scope: !3753, file: !3490, line: 77, type: !759)
!3756 = !DILocation(line: 0, scope: !3753, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 302, column: 25, scope: !3747, inlinedAt: !3751)
!3758 = !DILocation(line: 91, column: 10, scope: !3753, inlinedAt: !3757)
!3759 = !DILocation(line: 0, scope: !3449, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 302, column: 10, scope: !3747, inlinedAt: !3751)
!3761 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3760)
!3762 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3760)
!3763 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3760)
!3764 = !DILocation(line: 287, column: 3, scope: !3742)
!3765 = !DILocation(line: 0, scope: !3747)
!3766 = !DILocation(line: 0, scope: !3753, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 302, column: 25, scope: !3747)
!3768 = !DILocation(line: 91, column: 10, scope: !3753, inlinedAt: !3767)
!3769 = !DILocation(line: 0, scope: !3449, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 302, column: 10, scope: !3747)
!3771 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3770)
!3772 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3770)
!3773 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3770)
!3774 = !DILocation(line: 302, column: 3, scope: !3747)
!3775 = distinct !DISubprogram(name: "xmemdup", scope: !740, file: !740, line: 310, type: !3776, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3778)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!121, !1028, !124}
!3778 = !{!3779, !3780}
!3779 = !DILocalVariable(name: "p", arg: 1, scope: !3775, file: !740, line: 310, type: !1028)
!3780 = !DILocalVariable(name: "s", arg: 2, scope: !3775, file: !740, line: 310, type: !124)
!3781 = !DILocation(line: 0, scope: !3775)
!3782 = !DILocation(line: 0, scope: !3468, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 312, column: 18, scope: !3775)
!3784 = !DILocation(line: 49, column: 25, scope: !3468, inlinedAt: !3783)
!3785 = !DILocation(line: 0, scope: !3449, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 49, column: 10, scope: !3468, inlinedAt: !3783)
!3787 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3786)
!3788 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3786)
!3789 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3786)
!3790 = !DILocalVariable(name: "__dest", arg: 1, scope: !3791, file: !1465, line: 26, type: !1468)
!3791 = distinct !DISubprogram(name: "memcpy", scope: !1465, file: !1465, line: 26, type: !1466, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3792)
!3792 = !{!3790, !3793, !3794}
!3793 = !DILocalVariable(name: "__src", arg: 2, scope: !3791, file: !1465, line: 26, type: !1027)
!3794 = !DILocalVariable(name: "__len", arg: 3, scope: !3791, file: !1465, line: 26, type: !124)
!3795 = !DILocation(line: 0, scope: !3791, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 312, column: 10, scope: !3775)
!3797 = !DILocation(line: 29, column: 10, scope: !3791, inlinedAt: !3796)
!3798 = !DILocation(line: 312, column: 3, scope: !3775)
!3799 = distinct !DISubprogram(name: "ximemdup", scope: !740, file: !740, line: 316, type: !3800, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3802)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!121, !1028, !759}
!3802 = !{!3803, !3804}
!3803 = !DILocalVariable(name: "p", arg: 1, scope: !3799, file: !740, line: 316, type: !1028)
!3804 = !DILocalVariable(name: "s", arg: 2, scope: !3799, file: !740, line: 316, type: !759)
!3805 = !DILocation(line: 0, scope: !3799)
!3806 = !DILocation(line: 0, scope: !3482, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 318, column: 18, scope: !3799)
!3808 = !DILocation(line: 0, scope: !3489, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 55, column: 25, scope: !3482, inlinedAt: !3807)
!3810 = !DILocation(line: 57, column: 26, scope: !3489, inlinedAt: !3809)
!3811 = !DILocation(line: 0, scope: !3449, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 55, column: 10, scope: !3482, inlinedAt: !3807)
!3813 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3812)
!3814 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3812)
!3815 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3812)
!3816 = !DILocation(line: 0, scope: !3791, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 318, column: 10, scope: !3799)
!3818 = !DILocation(line: 29, column: 10, scope: !3791, inlinedAt: !3817)
!3819 = !DILocation(line: 318, column: 3, scope: !3799)
!3820 = distinct !DISubprogram(name: "ximemdup0", scope: !740, file: !740, line: 325, type: !3821, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3823)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!122, !1028, !759}
!3823 = !{!3824, !3825, !3826}
!3824 = !DILocalVariable(name: "p", arg: 1, scope: !3820, file: !740, line: 325, type: !1028)
!3825 = !DILocalVariable(name: "s", arg: 2, scope: !3820, file: !740, line: 325, type: !759)
!3826 = !DILocalVariable(name: "result", scope: !3820, file: !740, line: 327, type: !122)
!3827 = !DILocation(line: 0, scope: !3820)
!3828 = !DILocation(line: 327, column: 30, scope: !3820)
!3829 = !DILocation(line: 0, scope: !3482, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 327, column: 18, scope: !3820)
!3831 = !DILocation(line: 0, scope: !3489, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 55, column: 25, scope: !3482, inlinedAt: !3830)
!3833 = !DILocation(line: 57, column: 26, scope: !3489, inlinedAt: !3832)
!3834 = !DILocation(line: 0, scope: !3449, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 55, column: 10, scope: !3482, inlinedAt: !3830)
!3836 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3835)
!3837 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3835)
!3838 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3835)
!3839 = !DILocation(line: 328, column: 3, scope: !3820)
!3840 = !DILocation(line: 328, column: 13, scope: !3820)
!3841 = !DILocation(line: 0, scope: !3791, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 329, column: 10, scope: !3820)
!3843 = !DILocation(line: 29, column: 10, scope: !3791, inlinedAt: !3842)
!3844 = !DILocation(line: 329, column: 3, scope: !3820)
!3845 = distinct !DISubprogram(name: "xstrdup", scope: !740, file: !740, line: 335, type: !1006, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3846)
!3846 = !{!3847}
!3847 = !DILocalVariable(name: "string", arg: 1, scope: !3845, file: !740, line: 335, type: !127)
!3848 = !DILocation(line: 0, scope: !3845)
!3849 = !DILocation(line: 337, column: 27, scope: !3845)
!3850 = !DILocation(line: 337, column: 43, scope: !3845)
!3851 = !DILocation(line: 0, scope: !3775, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 337, column: 10, scope: !3845)
!3853 = !DILocation(line: 0, scope: !3468, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 312, column: 18, scope: !3775, inlinedAt: !3852)
!3855 = !DILocation(line: 49, column: 25, scope: !3468, inlinedAt: !3854)
!3856 = !DILocation(line: 0, scope: !3449, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 49, column: 10, scope: !3468, inlinedAt: !3854)
!3858 = !DILocation(line: 39, column: 8, scope: !3456, inlinedAt: !3857)
!3859 = !DILocation(line: 39, column: 7, scope: !3449, inlinedAt: !3857)
!3860 = !DILocation(line: 40, column: 5, scope: !3456, inlinedAt: !3857)
!3861 = !DILocation(line: 0, scope: !3791, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 312, column: 10, scope: !3775, inlinedAt: !3852)
!3863 = !DILocation(line: 29, column: 10, scope: !3791, inlinedAt: !3862)
!3864 = !DILocation(line: 337, column: 3, scope: !3845)
!3865 = distinct !DISubprogram(name: "xalloc_die", scope: !702, file: !702, line: 32, type: !469, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3866)
!3866 = !{!3867}
!3867 = !DILocalVariable(name: "__errstatus", scope: !3868, file: !702, line: 34, type: !3869)
!3868 = distinct !DILexicalBlock(scope: !3865, file: !702, line: 34, column: 3)
!3869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!3870 = !DILocation(line: 34, column: 3, scope: !3868)
!3871 = !DILocation(line: 0, scope: !3868)
!3872 = !DILocation(line: 40, column: 3, scope: !3865)
!3873 = distinct !DISubprogram(name: "xgetcwd", scope: !777, file: !777, line: 35, type: !3874, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!122}
!3876 = !{!3877}
!3877 = !DILocalVariable(name: "cwd", scope: !3873, file: !777, line: 37, type: !122)
!3878 = !DILocation(line: 37, column: 15, scope: !3873)
!3879 = !DILocation(line: 0, scope: !3873)
!3880 = !DILocation(line: 38, column: 9, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3873, file: !777, line: 38, column: 7)
!3882 = !DILocation(line: 38, column: 13, scope: !3881)
!3883 = !DILocation(line: 38, column: 16, scope: !3881)
!3884 = !DILocation(line: 38, column: 22, scope: !3881)
!3885 = !DILocation(line: 38, column: 7, scope: !3873)
!3886 = !DILocation(line: 39, column: 5, scope: !3881)
!3887 = !DILocation(line: 40, column: 3, scope: !3873)
!3888 = distinct !DISubprogram(name: "close_stream", scope: !779, file: !779, line: 55, type: !3889, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !3925)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!83, !3891}
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !3893)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !3894)
!3894 = !{!3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3893, file: !175, line: 51, baseType: !83, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3893, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3893, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3893, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3893, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3893, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3893, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3893, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3893, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3893, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3893, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3893, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3893, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3893, file: !175, line: 70, baseType: !3909, size: 64, offset: 832)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3893, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3893, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3893, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3893, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3893, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3893, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3893, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3893, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3893, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3893, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3893, file: !175, line: 93, baseType: !3909, size: 64, offset: 1344)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3893, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3893, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3893, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3893, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!3925 = !{!3926, !3927, !3929, !3930}
!3926 = !DILocalVariable(name: "stream", arg: 1, scope: !3888, file: !779, line: 55, type: !3891)
!3927 = !DILocalVariable(name: "some_pending", scope: !3888, file: !779, line: 57, type: !3928)
!3928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!3929 = !DILocalVariable(name: "prev_fail", scope: !3888, file: !779, line: 58, type: !3928)
!3930 = !DILocalVariable(name: "fclose_fail", scope: !3888, file: !779, line: 59, type: !3928)
!3931 = !DILocation(line: 0, scope: !3888)
!3932 = !DILocation(line: 57, column: 30, scope: !3888)
!3933 = !DILocalVariable(name: "__stream", arg: 1, scope: !3934, file: !1712, line: 135, type: !3891)
!3934 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1712, file: !1712, line: 135, type: !3889, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !3935)
!3935 = !{!3933}
!3936 = !DILocation(line: 0, scope: !3934, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 58, column: 27, scope: !3888)
!3938 = !DILocation(line: 137, column: 10, scope: !3934, inlinedAt: !3937)
!3939 = !{!1721, !881, i64 0}
!3940 = !DILocation(line: 58, column: 43, scope: !3888)
!3941 = !DILocation(line: 59, column: 29, scope: !3888)
!3942 = !DILocation(line: 59, column: 45, scope: !3888)
!3943 = !DILocation(line: 69, column: 17, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3888, file: !779, line: 69, column: 7)
!3945 = !DILocation(line: 57, column: 50, scope: !3888)
!3946 = !DILocation(line: 69, column: 33, scope: !3944)
!3947 = !DILocation(line: 69, column: 53, scope: !3944)
!3948 = !DILocation(line: 69, column: 59, scope: !3944)
!3949 = !DILocation(line: 69, column: 7, scope: !3888)
!3950 = !DILocation(line: 71, column: 11, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3944, file: !779, line: 70, column: 5)
!3952 = !DILocation(line: 72, column: 9, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3951, file: !779, line: 71, column: 11)
!3954 = !DILocation(line: 72, column: 15, scope: !3953)
!3955 = !DILocation(line: 77, column: 1, scope: !3888)
!3956 = !DISubprogram(name: "__fpending", scope: !3957, file: !3957, line: 75, type: !3958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3957 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!124, !3891}
!3960 = distinct !DISubprogram(name: "rpl_fclose", scope: !781, file: !781, line: 58, type: !3961, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !3997)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!83, !3963}
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !3965)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !3966)
!3966 = !{!3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3965, file: !175, line: 51, baseType: !83, size: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3965, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3965, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3965, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3965, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3965, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3965, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3965, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3965, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3965, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3965, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3965, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3965, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3965, file: !175, line: 70, baseType: !3981, size: 64, offset: 832)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3965, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3965, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3965, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3965, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3965, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3965, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3965, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3965, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3965, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3965, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3965, file: !175, line: 93, baseType: !3981, size: 64, offset: 1344)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3965, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3965, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3965, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3965, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!3997 = !{!3998, !3999, !4000, !4001}
!3998 = !DILocalVariable(name: "fp", arg: 1, scope: !3960, file: !781, line: 58, type: !3963)
!3999 = !DILocalVariable(name: "saved_errno", scope: !3960, file: !781, line: 60, type: !83)
!4000 = !DILocalVariable(name: "fd", scope: !3960, file: !781, line: 63, type: !83)
!4001 = !DILocalVariable(name: "result", scope: !3960, file: !781, line: 74, type: !83)
!4002 = !DILocation(line: 0, scope: !3960)
!4003 = !DILocation(line: 63, column: 12, scope: !3960)
!4004 = !DILocation(line: 64, column: 10, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3960, file: !781, line: 64, column: 7)
!4006 = !DILocation(line: 64, column: 7, scope: !3960)
!4007 = !DILocation(line: 65, column: 12, scope: !4005)
!4008 = !DILocation(line: 65, column: 5, scope: !4005)
!4009 = !DILocation(line: 70, column: 9, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3960, file: !781, line: 70, column: 7)
!4011 = !DILocation(line: 70, column: 23, scope: !4010)
!4012 = !DILocation(line: 70, column: 33, scope: !4010)
!4013 = !DILocation(line: 70, column: 26, scope: !4010)
!4014 = !DILocation(line: 70, column: 59, scope: !4010)
!4015 = !DILocation(line: 71, column: 7, scope: !4010)
!4016 = !DILocation(line: 71, column: 10, scope: !4010)
!4017 = !DILocation(line: 70, column: 7, scope: !3960)
!4018 = !DILocation(line: 100, column: 12, scope: !3960)
!4019 = !DILocation(line: 105, column: 7, scope: !3960)
!4020 = !DILocation(line: 72, column: 19, scope: !4010)
!4021 = !DILocation(line: 105, column: 19, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !3960, file: !781, line: 105, column: 7)
!4023 = !DILocation(line: 107, column: 13, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4022, file: !781, line: 106, column: 5)
!4025 = !DILocation(line: 109, column: 5, scope: !4024)
!4026 = !DILocation(line: 112, column: 1, scope: !3960)
!4027 = !DISubprogram(name: "fileno", scope: !875, file: !875, line: 809, type: !3961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4028 = !DISubprogram(name: "fclose", scope: !875, file: !875, line: 178, type: !3961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4029 = !DISubprogram(name: "__freading", scope: !3957, file: !3957, line: 51, type: !3961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4030 = !DISubprogram(name: "lseek", scope: !1488, file: !1488, line: 339, type: !4031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!197, !83, !197, !83}
!4033 = distinct !DISubprogram(name: "rpl_fflush", scope: !783, file: !783, line: 130, type: !4034, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4070)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!83, !4036}
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !4038)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !4039)
!4039 = !{!4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4038, file: !175, line: 51, baseType: !83, size: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4038, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4038, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4038, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4038, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4038, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4038, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4038, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4038, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4038, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4038, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4038, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4038, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4038, file: !175, line: 70, baseType: !4054, size: 64, offset: 832)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4038, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4038, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4038, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4038, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4038, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4038, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4038, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4038, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4038, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4038, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4038, file: !175, line: 93, baseType: !4054, size: 64, offset: 1344)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4038, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4038, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4038, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4038, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!4070 = !{!4071}
!4071 = !DILocalVariable(name: "stream", arg: 1, scope: !4033, file: !783, line: 130, type: !4036)
!4072 = !DILocation(line: 0, scope: !4033)
!4073 = !DILocation(line: 151, column: 14, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4033, file: !783, line: 151, column: 7)
!4075 = !DILocation(line: 151, column: 22, scope: !4074)
!4076 = !DILocation(line: 151, column: 27, scope: !4074)
!4077 = !DILocation(line: 151, column: 7, scope: !4033)
!4078 = !DILocation(line: 152, column: 12, scope: !4074)
!4079 = !DILocation(line: 152, column: 5, scope: !4074)
!4080 = !DILocalVariable(name: "fp", arg: 1, scope: !4081, file: !783, line: 42, type: !4036)
!4081 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !783, file: !783, line: 42, type: !4082, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4084)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{null, !4036}
!4084 = !{!4080}
!4085 = !DILocation(line: 0, scope: !4081, inlinedAt: !4086)
!4086 = distinct !DILocation(line: 157, column: 3, scope: !4033)
!4087 = !DILocation(line: 44, column: 12, scope: !4088, inlinedAt: !4086)
!4088 = distinct !DILexicalBlock(scope: !4081, file: !783, line: 44, column: 7)
!4089 = !DILocation(line: 44, column: 19, scope: !4088, inlinedAt: !4086)
!4090 = !DILocation(line: 44, column: 7, scope: !4081, inlinedAt: !4086)
!4091 = !DILocation(line: 46, column: 5, scope: !4088, inlinedAt: !4086)
!4092 = !DILocation(line: 159, column: 10, scope: !4033)
!4093 = !DILocation(line: 159, column: 3, scope: !4033)
!4094 = !DILocation(line: 236, column: 1, scope: !4033)
!4095 = !DISubprogram(name: "fflush", scope: !875, file: !875, line: 230, type: !4034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4096 = distinct !DISubprogram(name: "rpl_fseeko", scope: !785, file: !785, line: 28, type: !4097, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4134)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!83, !4099, !4133, !83}
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !4101)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !4102)
!4102 = !{!4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4101, file: !175, line: 51, baseType: !83, size: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4101, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4101, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4101, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4101, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4101, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4101, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4101, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4101, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4101, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4101, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4101, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4101, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4101, file: !175, line: 70, baseType: !4117, size: 64, offset: 832)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4101, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4101, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4101, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4101, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4101, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4101, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4101, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4101, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4101, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4101, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4101, file: !175, line: 93, baseType: !4117, size: 64, offset: 1344)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4101, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4101, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4101, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4101, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!4133 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !875, line: 63, baseType: !197)
!4134 = !{!4135, !4136, !4137, !4138}
!4135 = !DILocalVariable(name: "fp", arg: 1, scope: !4096, file: !785, line: 28, type: !4099)
!4136 = !DILocalVariable(name: "offset", arg: 2, scope: !4096, file: !785, line: 28, type: !4133)
!4137 = !DILocalVariable(name: "whence", arg: 3, scope: !4096, file: !785, line: 28, type: !83)
!4138 = !DILocalVariable(name: "pos", scope: !4139, file: !785, line: 123, type: !4133)
!4139 = distinct !DILexicalBlock(scope: !4140, file: !785, line: 119, column: 5)
!4140 = distinct !DILexicalBlock(scope: !4096, file: !785, line: 55, column: 7)
!4141 = !DILocation(line: 0, scope: !4096)
!4142 = !DILocation(line: 55, column: 12, scope: !4140)
!4143 = !{!1721, !816, i64 16}
!4144 = !DILocation(line: 55, column: 33, scope: !4140)
!4145 = !{!1721, !816, i64 8}
!4146 = !DILocation(line: 55, column: 25, scope: !4140)
!4147 = !DILocation(line: 56, column: 7, scope: !4140)
!4148 = !DILocation(line: 56, column: 15, scope: !4140)
!4149 = !DILocation(line: 56, column: 37, scope: !4140)
!4150 = !{!1721, !816, i64 32}
!4151 = !DILocation(line: 56, column: 29, scope: !4140)
!4152 = !DILocation(line: 57, column: 7, scope: !4140)
!4153 = !DILocation(line: 57, column: 15, scope: !4140)
!4154 = !{!1721, !816, i64 72}
!4155 = !DILocation(line: 57, column: 29, scope: !4140)
!4156 = !DILocation(line: 55, column: 7, scope: !4096)
!4157 = !DILocation(line: 123, column: 26, scope: !4139)
!4158 = !DILocation(line: 123, column: 19, scope: !4139)
!4159 = !DILocation(line: 0, scope: !4139)
!4160 = !DILocation(line: 124, column: 15, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4139, file: !785, line: 124, column: 11)
!4162 = !DILocation(line: 124, column: 11, scope: !4139)
!4163 = !DILocation(line: 135, column: 19, scope: !4139)
!4164 = !DILocation(line: 136, column: 12, scope: !4139)
!4165 = !DILocation(line: 136, column: 20, scope: !4139)
!4166 = !{!1721, !1171, i64 144}
!4167 = !DILocation(line: 167, column: 7, scope: !4139)
!4168 = !DILocation(line: 169, column: 10, scope: !4096)
!4169 = !DILocation(line: 169, column: 3, scope: !4096)
!4170 = !DILocation(line: 170, column: 1, scope: !4096)
!4171 = !DISubprogram(name: "fseeko", scope: !875, file: !875, line: 736, type: !4172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!83, !4099, !197, !83}
!4174 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !709, file: !709, line: 100, type: !4175, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !4178)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!124, !1888, !127, !124, !4177}
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!4178 = !{!4179, !4180, !4181, !4182, !4183}
!4179 = !DILocalVariable(name: "pwc", arg: 1, scope: !4174, file: !709, line: 100, type: !1888)
!4180 = !DILocalVariable(name: "s", arg: 2, scope: !4174, file: !709, line: 100, type: !127)
!4181 = !DILocalVariable(name: "n", arg: 3, scope: !4174, file: !709, line: 100, type: !124)
!4182 = !DILocalVariable(name: "ps", arg: 4, scope: !4174, file: !709, line: 100, type: !4177)
!4183 = !DILocalVariable(name: "ret", scope: !4174, file: !709, line: 130, type: !124)
!4184 = !DILocation(line: 0, scope: !4174)
!4185 = !DILocation(line: 105, column: 9, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4174, file: !709, line: 105, column: 7)
!4187 = !DILocation(line: 105, column: 7, scope: !4174)
!4188 = !DILocation(line: 117, column: 10, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4174, file: !709, line: 117, column: 7)
!4190 = !DILocation(line: 117, column: 7, scope: !4174)
!4191 = !DILocation(line: 130, column: 16, scope: !4174)
!4192 = !DILocation(line: 135, column: 11, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4174, file: !709, line: 135, column: 7)
!4194 = !DILocation(line: 135, column: 25, scope: !4193)
!4195 = !DILocation(line: 135, column: 30, scope: !4193)
!4196 = !DILocation(line: 135, column: 7, scope: !4174)
!4197 = !DILocalVariable(name: "ps", arg: 1, scope: !4198, file: !1862, line: 1135, type: !4177)
!4198 = distinct !DISubprogram(name: "mbszero", scope: !1862, file: !1862, line: 1135, type: !4199, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !4201)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{null, !4177}
!4201 = !{!4197}
!4202 = !DILocation(line: 0, scope: !4198, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 137, column: 5, scope: !4193)
!4204 = !DILocalVariable(name: "__dest", arg: 1, scope: !4205, file: !1465, line: 57, type: !121)
!4205 = distinct !DISubprogram(name: "memset", scope: !1465, file: !1465, line: 57, type: !1871, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !4206)
!4206 = !{!4204, !4207, !4208}
!4207 = !DILocalVariable(name: "__ch", arg: 2, scope: !4205, file: !1465, line: 57, type: !83)
!4208 = !DILocalVariable(name: "__len", arg: 3, scope: !4205, file: !1465, line: 57, type: !124)
!4209 = !DILocation(line: 0, scope: !4205, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 1137, column: 3, scope: !4198, inlinedAt: !4203)
!4211 = !DILocation(line: 59, column: 10, scope: !4205, inlinedAt: !4210)
!4212 = !DILocation(line: 137, column: 5, scope: !4193)
!4213 = !DILocation(line: 138, column: 11, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4174, file: !709, line: 138, column: 7)
!4215 = !DILocation(line: 138, column: 7, scope: !4174)
!4216 = !DILocation(line: 139, column: 5, scope: !4214)
!4217 = !DILocation(line: 143, column: 26, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4174, file: !709, line: 143, column: 7)
!4219 = !DILocation(line: 143, column: 41, scope: !4218)
!4220 = !DILocation(line: 143, column: 7, scope: !4174)
!4221 = !DILocation(line: 145, column: 15, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !709, line: 145, column: 11)
!4223 = distinct !DILexicalBlock(scope: !4218, file: !709, line: 144, column: 5)
!4224 = !DILocation(line: 145, column: 11, scope: !4223)
!4225 = !DILocation(line: 146, column: 32, scope: !4222)
!4226 = !DILocation(line: 146, column: 16, scope: !4222)
!4227 = !DILocation(line: 146, column: 14, scope: !4222)
!4228 = !DILocation(line: 146, column: 9, scope: !4222)
!4229 = !DILocation(line: 286, column: 1, scope: !4174)
!4230 = !DISubprogram(name: "mbsinit", scope: !4231, file: !4231, line: 293, type: !4232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4231 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!83, !4234}
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!4236 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !787, file: !787, line: 27, type: !3433, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4237)
!4237 = !{!4238, !4239, !4240, !4241}
!4238 = !DILocalVariable(name: "ptr", arg: 1, scope: !4236, file: !787, line: 27, type: !121)
!4239 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4236, file: !787, line: 27, type: !124)
!4240 = !DILocalVariable(name: "size", arg: 3, scope: !4236, file: !787, line: 27, type: !124)
!4241 = !DILocalVariable(name: "nbytes", scope: !4236, file: !787, line: 29, type: !124)
!4242 = !DILocation(line: 0, scope: !4236)
!4243 = !DILocation(line: 30, column: 7, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4236, file: !787, line: 30, column: 7)
!4245 = !DILocation(line: 30, column: 7, scope: !4236)
!4246 = !DILocation(line: 32, column: 7, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4244, file: !787, line: 31, column: 5)
!4248 = !DILocation(line: 32, column: 13, scope: !4247)
!4249 = !DILocation(line: 33, column: 7, scope: !4247)
!4250 = !DILocalVariable(name: "ptr", arg: 1, scope: !4251, file: !3523, line: 2057, type: !121)
!4251 = distinct !DISubprogram(name: "rpl_realloc", scope: !3523, file: !3523, line: 2057, type: !3515, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4252)
!4252 = !{!4250, !4253}
!4253 = !DILocalVariable(name: "size", arg: 2, scope: !4251, file: !3523, line: 2057, type: !124)
!4254 = !DILocation(line: 0, scope: !4251, inlinedAt: !4255)
!4255 = distinct !DILocation(line: 37, column: 10, scope: !4236)
!4256 = !DILocation(line: 2059, column: 24, scope: !4251, inlinedAt: !4255)
!4257 = !DILocation(line: 2059, column: 10, scope: !4251, inlinedAt: !4255)
!4258 = !DILocation(line: 37, column: 3, scope: !4236)
!4259 = !DILocation(line: 38, column: 1, scope: !4236)
!4260 = distinct !DISubprogram(name: "hard_locale", scope: !727, file: !727, line: 28, type: !4261, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4263)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!158, !83}
!4263 = !{!4264, !4265}
!4264 = !DILocalVariable(name: "category", arg: 1, scope: !4260, file: !727, line: 28, type: !83)
!4265 = !DILocalVariable(name: "locale", scope: !4260, file: !727, line: 30, type: !4266)
!4266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4267)
!4267 = !{!4268}
!4268 = !DISubrange(count: 257)
!4269 = distinct !DIAssignID()
!4270 = !DILocation(line: 0, scope: !4260)
!4271 = !DILocation(line: 30, column: 3, scope: !4260)
!4272 = !DILocation(line: 32, column: 7, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4260, file: !727, line: 32, column: 7)
!4274 = !DILocation(line: 32, column: 7, scope: !4260)
!4275 = !DILocalVariable(name: "__s1", arg: 1, scope: !4276, file: !893, line: 1359, type: !127)
!4276 = distinct !DISubprogram(name: "streq", scope: !893, file: !893, line: 1359, type: !894, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4277)
!4277 = !{!4275, !4278}
!4278 = !DILocalVariable(name: "__s2", arg: 2, scope: !4276, file: !893, line: 1359, type: !127)
!4279 = !DILocation(line: 0, scope: !4276, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 35, column: 9, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4260, file: !727, line: 35, column: 7)
!4282 = !DILocation(line: 1361, column: 11, scope: !4276, inlinedAt: !4280)
!4283 = !DILocation(line: 35, column: 29, scope: !4281)
!4284 = !DILocation(line: 0, scope: !4276, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 35, column: 32, scope: !4281)
!4286 = !DILocation(line: 1361, column: 11, scope: !4276, inlinedAt: !4285)
!4287 = !DILocation(line: 1361, column: 10, scope: !4276, inlinedAt: !4285)
!4288 = !DILocation(line: 35, column: 7, scope: !4260)
!4289 = !DILocation(line: 46, column: 3, scope: !4260)
!4290 = !DILocation(line: 47, column: 1, scope: !4260)
!4291 = distinct !DISubprogram(name: "setlocale_null_r", scope: !793, file: !793, line: 154, type: !4292, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4294)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!83, !83, !122, !124}
!4294 = !{!4295, !4296, !4297}
!4295 = !DILocalVariable(name: "category", arg: 1, scope: !4291, file: !793, line: 154, type: !83)
!4296 = !DILocalVariable(name: "buf", arg: 2, scope: !4291, file: !793, line: 154, type: !122)
!4297 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4291, file: !793, line: 154, type: !124)
!4298 = !DILocation(line: 0, scope: !4291)
!4299 = !DILocation(line: 159, column: 10, scope: !4291)
!4300 = !DILocation(line: 159, column: 3, scope: !4291)
!4301 = distinct !DISubprogram(name: "setlocale_null", scope: !793, file: !793, line: 186, type: !4302, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4304)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!127, !83}
!4304 = !{!4305}
!4305 = !DILocalVariable(name: "category", arg: 1, scope: !4301, file: !793, line: 186, type: !83)
!4306 = !DILocation(line: 0, scope: !4301)
!4307 = !DILocation(line: 189, column: 10, scope: !4301)
!4308 = !DILocation(line: 189, column: 3, scope: !4301)
!4309 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !795, file: !795, line: 35, type: !4302, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !4310)
!4310 = !{!4311, !4312}
!4311 = !DILocalVariable(name: "category", arg: 1, scope: !4309, file: !795, line: 35, type: !83)
!4312 = !DILocalVariable(name: "result", scope: !4309, file: !795, line: 37, type: !127)
!4313 = !DILocation(line: 0, scope: !4309)
!4314 = !DILocation(line: 37, column: 24, scope: !4309)
!4315 = !DILocation(line: 62, column: 3, scope: !4309)
!4316 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !795, file: !795, line: 66, type: !4292, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !4317)
!4317 = !{!4318, !4319, !4320, !4321, !4322}
!4318 = !DILocalVariable(name: "category", arg: 1, scope: !4316, file: !795, line: 66, type: !83)
!4319 = !DILocalVariable(name: "buf", arg: 2, scope: !4316, file: !795, line: 66, type: !122)
!4320 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4316, file: !795, line: 66, type: !124)
!4321 = !DILocalVariable(name: "result", scope: !4316, file: !795, line: 111, type: !127)
!4322 = !DILocalVariable(name: "length", scope: !4323, file: !795, line: 125, type: !124)
!4323 = distinct !DILexicalBlock(scope: !4324, file: !795, line: 124, column: 5)
!4324 = distinct !DILexicalBlock(scope: !4316, file: !795, line: 113, column: 7)
!4325 = !DILocation(line: 0, scope: !4316)
!4326 = !DILocation(line: 0, scope: !4309, inlinedAt: !4327)
!4327 = distinct !DILocation(line: 111, column: 24, scope: !4316)
!4328 = !DILocation(line: 37, column: 24, scope: !4309, inlinedAt: !4327)
!4329 = !DILocation(line: 113, column: 14, scope: !4324)
!4330 = !DILocation(line: 113, column: 7, scope: !4316)
!4331 = !DILocation(line: 116, column: 19, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4333, file: !795, line: 116, column: 11)
!4333 = distinct !DILexicalBlock(scope: !4324, file: !795, line: 114, column: 5)
!4334 = !DILocation(line: 116, column: 11, scope: !4333)
!4335 = !DILocation(line: 120, column: 16, scope: !4332)
!4336 = !DILocation(line: 120, column: 9, scope: !4332)
!4337 = !DILocation(line: 125, column: 23, scope: !4323)
!4338 = !DILocation(line: 0, scope: !4323)
!4339 = !DILocation(line: 126, column: 18, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4323, file: !795, line: 126, column: 11)
!4341 = !DILocation(line: 126, column: 11, scope: !4323)
!4342 = !DILocation(line: 128, column: 39, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4340, file: !795, line: 127, column: 9)
!4344 = !DILocalVariable(name: "__dest", arg: 1, scope: !4345, file: !1465, line: 26, type: !1468)
!4345 = distinct !DISubprogram(name: "memcpy", scope: !1465, file: !1465, line: 26, type: !1466, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !4346)
!4346 = !{!4344, !4347, !4348}
!4347 = !DILocalVariable(name: "__src", arg: 2, scope: !4345, file: !1465, line: 26, type: !1027)
!4348 = !DILocalVariable(name: "__len", arg: 3, scope: !4345, file: !1465, line: 26, type: !124)
!4349 = !DILocation(line: 0, scope: !4345, inlinedAt: !4350)
!4350 = distinct !DILocation(line: 128, column: 11, scope: !4343)
!4351 = !DILocation(line: 29, column: 10, scope: !4345, inlinedAt: !4350)
!4352 = !DILocation(line: 129, column: 11, scope: !4343)
!4353 = !DILocation(line: 133, column: 23, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4355, file: !795, line: 133, column: 15)
!4355 = distinct !DILexicalBlock(scope: !4340, file: !795, line: 132, column: 9)
!4356 = !DILocation(line: 133, column: 15, scope: !4355)
!4357 = !DILocation(line: 138, column: 44, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4354, file: !795, line: 134, column: 13)
!4359 = !DILocation(line: 0, scope: !4345, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 138, column: 15, scope: !4358)
!4361 = !DILocation(line: 29, column: 10, scope: !4345, inlinedAt: !4360)
!4362 = !DILocation(line: 139, column: 15, scope: !4358)
!4363 = !DILocation(line: 139, column: 32, scope: !4358)
!4364 = !DILocation(line: 140, column: 13, scope: !4358)
!4365 = !DILocation(line: 0, scope: !4324)
!4366 = !DILocation(line: 145, column: 1, scope: !4316)
