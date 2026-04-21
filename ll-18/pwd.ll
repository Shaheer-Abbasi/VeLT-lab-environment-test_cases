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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !465
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !431
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !455
@.str.1.35 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !457
@.str.2.37 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !459
@.str.3.36 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !461
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !463
@.str.4.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !467
@.str.5.31 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !469
@.str.6.32 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !471
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !476
@.str.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !482
@.str.1.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !484
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !486
@.str.69 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !517
@.str.1.70 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !520
@.str.2.71 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !522
@.str.3.72 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !524
@.str.4.73 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !526
@.str.5.74 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !528
@.str.6.75 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !530
@.str.7.76 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !532
@.str.8.77 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !534
@.str.9.78 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !536
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.69, ptr @.str.1.70, ptr @.str.2.71, ptr @.str.3.72, ptr @.str.4.73, ptr @.str.5.74, ptr @.str.6.75, ptr @.str.7.76, ptr @.str.8.77, ptr @.str.9.78, ptr null], align 8, !dbg !538
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !551
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !565
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !603
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !610
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !567
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !612
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !555
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !572
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !574
@.str.12.82 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !576
@.str.13.80 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !578
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !580
@.str.91 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !618
@.str.92 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !621
@.str.1.93 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !624
@.str.2.94 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !626
@.str.3.95 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !628
@.str.4.96 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !630
@.str.5.97 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !632
@.str.6.98 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !637
@.str.7.99 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !642
@.str.8.100 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !644
@.str.9.101 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !646
@.str.10.102 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !651
@.str.11.103 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !656
@.str.12.104 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !661
@.str.13.105 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !663
@.str.14.106 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !665
@.str.15.107 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !667
@.str.16.108 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !672
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.113 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !674
@.str.18.114 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !676
@.str.19.115 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !678
@.str.20.116 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !680
@.str.21.117 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !682
@.str.22.118 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !684
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !686
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !691
@exit_failure = dso_local global i32 1, align 4, !dbg !699
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !705
@.str.1.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !708
@.str.2.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !710
@.str.148 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !712
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !715
@.str.153 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !730
@.str.1.154 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !733

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !810 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !814, metadata !DIExpression()), !dbg !815
  %2 = icmp eq i32 %0, 0, !dbg !816
  br i1 %2, label %8, label %3, !dbg !818

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !819, !tbaa !821
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !819
  %6 = load ptr, ptr @program_name, align 8, !dbg !819, !tbaa !821
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !819
  br label %38, !dbg !819

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !825
  %10 = load ptr, ptr @program_name, align 8, !dbg !825, !tbaa !821
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !825
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !827
  %13 = load ptr, ptr @stdout, align 8, !dbg !827, !tbaa !821
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !827
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !828
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !828
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !829
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !829
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !830
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !830
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !831
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !831
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !832
  %20 = load ptr, ptr @stdout, align 8, !dbg !832, !tbaa !821
  %21 = tail call i32 @fputs_unlocked(ptr noundef %19, ptr noundef %20), !dbg !832
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !833
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %22, ptr noundef nonnull @.str.3) #38, !dbg !833
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !834, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata !853, metadata !847, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata ptr poison, metadata !846, metadata !DIExpression()), !dbg !851
  tail call void @emit_bug_reporting_address() #38, !dbg !854
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !855
  call void @llvm.dbg.value(metadata ptr %24, metadata !849, metadata !DIExpression()), !dbg !851
  %25 = icmp eq ptr %24, null, !dbg !856
  br i1 %25, label %33, label %26, !dbg !858

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.48, i64 noundef 3) #39, !dbg !859
  %28 = icmp eq i32 %27, 0, !dbg !859
  br i1 %28, label %33, label %29, !dbg !860

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #38, !dbg !861
  %31 = load ptr, ptr @stdout, align 8, !dbg !861, !tbaa !821
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !861
  br label %33, !dbg !863

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !846, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !850, metadata !DIExpression()), !dbg !851
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #38, !dbg !864
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #38, !dbg !864
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #38, !dbg !865
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52) #38, !dbg !865
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !866
  unreachable, !dbg !866
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !867 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !871 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !877 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !880 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !148 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !152, metadata !DIExpression()), !dbg !883
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !153, metadata !DIExpression()), !dbg !883
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !884, !tbaa !885
  %3 = icmp eq i32 %2, -1, !dbg !887
  br i1 %3, label %4, label %16, !dbg !888

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.18) #38, !dbg !889
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !154, metadata !DIExpression()), !dbg !890
  %6 = icmp eq ptr %5, null, !dbg !891
  br i1 %6, label %14, label %7, !dbg !892

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !893, !tbaa !894
  %9 = icmp eq i8 %8, 0, !dbg !893
  br i1 %9, label %14, label %10, !dbg !895

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !896, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !902, metadata !DIExpression()), !dbg !903
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.19) #39, !dbg !905
  %12 = icmp eq i32 %11, 0, !dbg !906
  %13 = zext i1 %12 to i32, !dbg !895
  br label %14, !dbg !895

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !907, !tbaa !885
  br label %16, !dbg !908

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !909
  %18 = icmp eq i32 %17, 0, !dbg !909
  br i1 %18, label %22, label %19, !dbg !911

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !912, !tbaa !821
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !912
  br label %121, !dbg !914

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !157, metadata !DIExpression()), !dbg !883
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.20) #39, !dbg !915
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !916
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !159, metadata !DIExpression()), !dbg !883
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !917
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !160, metadata !DIExpression()), !dbg !883
  %26 = icmp eq ptr %25, null, !dbg !918
  br i1 %26, label %53, label %27, !dbg !919

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !920
  br i1 %28, label %53, label %29, !dbg !921

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !161, metadata !DIExpression()), !dbg !922
  tail call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !922
  %30 = icmp ult ptr %24, %25, !dbg !923
  br i1 %30, label %31, label %53, !dbg !924

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !883
  %33 = load ptr, ptr %32, align 8, !tbaa !821
  br label %34, !dbg !924

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !161, metadata !DIExpression()), !dbg !922
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !165, metadata !DIExpression()), !dbg !922
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !925
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !161, metadata !DIExpression()), !dbg !922
  %38 = load i8, ptr %35, align 1, !dbg !925, !tbaa !894
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !925
  %41 = load i16, ptr %40, align 2, !dbg !925, !tbaa !926
  %42 = freeze i16 %41, !dbg !928
  %43 = lshr i16 %42, 13, !dbg !928
  %44 = and i16 %43, 1, !dbg !928
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !929
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !165, metadata !DIExpression()), !dbg !922
  %47 = icmp ult ptr %37, %25, !dbg !923
  %48 = icmp ult i64 %46, 2, !dbg !930
  %49 = select i1 %47, i1 %48, i1 false, !dbg !930
  br i1 %49, label %34, label %50, !dbg !924, !llvm.loop !931

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !929
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !933
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !935
  br label %53, !dbg !935

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !883
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !157, metadata !DIExpression()), !dbg !883
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !160, metadata !DIExpression()), !dbg !883
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.21) #39, !dbg !936
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !166, metadata !DIExpression()), !dbg !883
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !937
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !167, metadata !DIExpression()), !dbg !883
  br label %58, !dbg !938

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !883
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !157, metadata !DIExpression()), !dbg !883
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !167, metadata !DIExpression()), !dbg !883
  %61 = load i8, ptr %59, align 1, !dbg !939, !tbaa !894
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !940

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !941
  %64 = load i8, ptr %63, align 1, !dbg !944, !tbaa !894
  %65 = icmp ne i8 %64, 45, !dbg !945
  %66 = select i1 %65, i1 %60, i1 false, !dbg !946
  br label %67, !dbg !946

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !157, metadata !DIExpression()), !dbg !883
  %69 = tail call ptr @__ctype_b_loc() #41, !dbg !947
  %70 = load ptr, ptr %69, align 8, !dbg !947, !tbaa !821
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !947
  %73 = load i16, ptr %72, align 2, !dbg !947, !tbaa !926
  %74 = and i16 %73, 8192, !dbg !947
  %75 = icmp eq i16 %74, 0, !dbg !947
  br i1 %75, label %89, label %76, !dbg !949

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !950
  br i1 %77, label %91, label %78, !dbg !953

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !954
  %80 = load i8, ptr %79, align 1, !dbg !954, !tbaa !894
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !954
  %83 = load i16, ptr %82, align 2, !dbg !954, !tbaa !926
  %84 = and i16 %83, 8192, !dbg !954
  %85 = icmp eq i16 %84, 0, !dbg !954
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !955
  br i1 %88, label %89, label %91, !dbg !955

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !956
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !167, metadata !DIExpression()), !dbg !883
  br label %58, !dbg !938, !llvm.loop !957

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !883
  %92 = ptrtoint ptr %24 to i64, !dbg !959
  %93 = load ptr, ptr @stdout, align 8, !dbg !959, !tbaa !821
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !959
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !896, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata !853, metadata !902, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !896, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata !853, metadata !902, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !896, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata !853, metadata !902, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !896, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata !853, metadata !902, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !896, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata !853, metadata !902, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !896, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata !853, metadata !902, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !896, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata !853, metadata !902, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !896, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata !853, metadata !902, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !896, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata !853, metadata !902, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !896, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata !853, metadata !902, metadata !DIExpression()), !dbg !978
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !224, metadata !DIExpression()), !dbg !883
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.35, i64 noundef 6) #39, !dbg !980
  %96 = icmp eq i32 %95, 0, !dbg !980
  br i1 %96, label %100, label %97, !dbg !982

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.36, i64 noundef 9) #39, !dbg !983
  %99 = icmp eq i32 %98, 0, !dbg !983
  br i1 %99, label %100, label %103, !dbg !984

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !985
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #38, !dbg !985
  br label %106, !dbg !987

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !988
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #38, !dbg !988
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !990, !tbaa !821
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %107), !dbg !990
  %109 = load ptr, ptr @stdout, align 8, !dbg !991, !tbaa !821
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %109), !dbg !991
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !992
  %112 = sub i64 %111, %92, !dbg !992
  %113 = load ptr, ptr @stdout, align 8, !dbg !992, !tbaa !821
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !992
  %115 = load ptr, ptr @stdout, align 8, !dbg !993, !tbaa !821
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %115), !dbg !993
  %117 = load ptr, ptr @stdout, align 8, !dbg !994, !tbaa !821
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %117), !dbg !994
  %119 = load ptr, ptr @stdout, align 8, !dbg !995, !tbaa !821
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !995
  br label %121, !dbg !996

121:                                              ; preds = %106, %19
  ret void, !dbg !996
}

; Function Attrs: nounwind
declare !dbg !997 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1001 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1005 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1007 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1010 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1013 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1016 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1019 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1025 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1026 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1032 {
  %3 = alloca %struct.stat, align 8, !DIAssignID !1057
  %4 = alloca %struct.stat, align 8, !DIAssignID !1058
  %5 = alloca %struct.timespec, align 8, !DIAssignID !1059
  %6 = alloca %struct.stat, align 8, !DIAssignID !1060
  %7 = alloca %struct.stat, align 8, !DIAssignID !1061
  %8 = alloca %struct.stat, align 8, !DIAssignID !1062
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1037, metadata !DIExpression()), !dbg !1063
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1038, metadata !DIExpression()), !dbg !1063
  %9 = tail call ptr @getenv(ptr noundef nonnull @.str.10) #38, !dbg !1064
  %10 = icmp ne ptr %9, null, !dbg !1065
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !1039, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1063
  %11 = load ptr, ptr %1, align 8, !dbg !1066, !tbaa !821
  tail call void @set_program_name(ptr noundef %11) #38, !dbg !1067
  %12 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #38, !dbg !1068
  %13 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #38, !dbg !1069
  %14 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #38, !dbg !1070
  %15 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1071
  br label %16, !dbg !1072

16:                                               ; preds = %19, %2
  %17 = phi i1 [ %10, %2 ], [ %20, %19 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1039, metadata !DIExpression()), !dbg !1063
  %18 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1073
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1040, metadata !DIExpression()), !dbg !1074
  switch i32 %18, label %26 [
    i32 -1, label %28
    i32 76, label %27
    i32 80, label %19
    i32 -2, label %21
    i32 -3, label %22
  ], !dbg !1075

19:                                               ; preds = %16, %27
  %20 = phi i1 [ true, %27 ], [ false, %16 ]
  br label %16, !dbg !1063

21:                                               ; preds = %16
  tail call void @usage(i32 noundef 0) #42, !dbg !1076
  unreachable, !dbg !1076

22:                                               ; preds = %16
  %23 = load ptr, ptr @stdout, align 8, !dbg !1078, !tbaa !821
  %24 = load ptr, ptr @Version, align 8, !dbg !1078, !tbaa !821
  %25 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #38, !dbg !1078
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %24, ptr noundef %25, ptr noundef null) #38, !dbg !1078
  tail call void @exit(i32 noundef 0) #40, !dbg !1078
  unreachable, !dbg !1078

26:                                               ; preds = %16
  tail call void @usage(i32 noundef 1) #42, !dbg !1079
  unreachable, !dbg !1079

27:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1039, metadata !DIExpression()), !dbg !1063
  br label %19, !dbg !1080

28:                                               ; preds = %16
  %.lcssa20 = phi i1 [ %17, %16 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1039, metadata !DIExpression()), !dbg !1063
  %29 = load i32, ptr @optind, align 4, !dbg !1081, !tbaa !885
  %30 = icmp slt i32 %29, %0, !dbg !1083
  br i1 %30, label %31, label %33, !dbg !1084

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !1085
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %32) #38, !dbg !1085
  br label %33, !dbg !1085

33:                                               ; preds = %31, %28
  br i1 %.lcssa20, label %34, label %73, !dbg !1086

34:                                               ; preds = %33
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1087, metadata !DIExpression(), metadata !1061, metadata ptr %7, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1094, metadata !DIExpression(), metadata !1062, metadata ptr %8, metadata !DIExpression()), !dbg !1130
  %35 = tail call ptr @getenv(ptr noundef nonnull @.str.57) #38, !dbg !1132
  call void @llvm.dbg.value(metadata ptr %35, metadata !1092, metadata !DIExpression()), !dbg !1130
  %36 = icmp eq ptr %35, null, !dbg !1133
  br i1 %36, label %73, label %37, !dbg !1135

37:                                               ; preds = %34
  %38 = load i8, ptr %35, align 1, !dbg !1136, !tbaa !894
  %39 = icmp eq i8 %38, 47, !dbg !1137
  br i1 %39, label %40, label %73, !dbg !1138

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata ptr %35, metadata !1093, metadata !DIExpression()), !dbg !1130
  %41 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) @.str.58) #39, !dbg !1139
  call void @llvm.dbg.value(metadata ptr %41, metadata !1093, metadata !DIExpression()), !dbg !1130
  %42 = icmp eq ptr %41, null, !dbg !1140
  br i1 %42, label %54, label %.preheader, !dbg !1140

.preheader:                                       ; preds = %40
  br label %43, !dbg !1140

43:                                               ; preds = %.preheader, %50
  %44 = phi ptr [ %52, %50 ], [ %41, %.preheader ]
  %45 = getelementptr inbounds i8, ptr %44, i64 2, !dbg !1141
  %46 = load i8, ptr %45, align 1, !dbg !1141, !tbaa !894
  switch i8 %46, label %50 [
    i8 0, label %.loopexit2
    i8 47, label %.loopexit2
    i8 46, label %47
  ], !dbg !1144

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %44, i64 3, !dbg !1145
  %49 = load i8, ptr %48, align 1, !dbg !1145, !tbaa !894
  switch i8 %49, label %50 [
    i8 0, label %.loopexit2
    i8 47, label %.loopexit2
  ], !dbg !1146

50:                                               ; preds = %47, %43
  %51 = getelementptr inbounds i8, ptr %44, i64 1, !dbg !1147
  call void @llvm.dbg.value(metadata ptr %51, metadata !1093, metadata !DIExpression()), !dbg !1130
  %52 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(1) @.str.58) #39, !dbg !1139
  call void @llvm.dbg.value(metadata ptr %52, metadata !1093, metadata !DIExpression()), !dbg !1130
  %53 = icmp eq ptr %52, null, !dbg !1140
  br i1 %53, label %.loopexit3, label %43, !dbg !1140, !llvm.loop !1148

.loopexit3:                                       ; preds = %50
  br label %54, !dbg !1150

54:                                               ; preds = %.loopexit3, %40
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #38, !dbg !1150
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #38, !dbg !1151
  %55 = call i32 @stat(ptr noundef nonnull %35, ptr noundef nonnull %7) #38, !dbg !1152
  %56 = icmp eq i32 %55, 0, !dbg !1154
  br i1 %56, label %57, label %70, !dbg !1155

57:                                               ; preds = %54
  %58 = call i32 @stat(ptr noundef nonnull @.str.59, ptr noundef nonnull %8) #38, !dbg !1156
  %59 = icmp eq i32 %58, 0, !dbg !1157
  br i1 %59, label %60, label %70, !dbg !1158

60:                                               ; preds = %57
  call void @llvm.dbg.value(metadata ptr %7, metadata !1159, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata ptr %8, metadata !1167, metadata !DIExpression()), !dbg !1168
  %61 = load i64, ptr %7, align 8, !dbg !1170, !tbaa !1171
  %62 = load i64, ptr %8, align 8, !dbg !1170, !tbaa !1171
  %63 = icmp eq i64 %61, %62, !dbg !1170
  %64 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 1, !dbg !1170
  %65 = load i64, ptr %64, align 8, !dbg !1170, !tbaa !1175
  %66 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 1, !dbg !1170
  %67 = load i64, ptr %66, align 8, !dbg !1170, !tbaa !1175
  %68 = icmp eq i64 %65, %67, !dbg !1170
  %69 = and i1 %63, %68, !dbg !1170
  br i1 %69, label %71, label %70, !dbg !1176

70:                                               ; preds = %54, %57, %60
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #38, !dbg !1177
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #38, !dbg !1177
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1042, metadata !DIExpression()), !dbg !1178
  br label %73, !dbg !1179

71:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #38, !dbg !1177
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #38, !dbg !1177
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !1042, metadata !DIExpression()), !dbg !1178
  %72 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %35), !dbg !1180
  br label %235

.loopexit2:                                       ; preds = %43, %43, %47, %47
  br label %73, !dbg !1183

73:                                               ; preds = %.loopexit2, %34, %37, %70, %33
  %74 = tail call noalias ptr @xgetcwd() #38, !dbg !1183
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1045, metadata !DIExpression()), !dbg !1063
  %75 = icmp eq ptr %74, null, !dbg !1184
  br i1 %75, label %78, label %76, !dbg !1185

76:                                               ; preds = %73
  %77 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %74), !dbg !1186
  tail call void @free(ptr noundef nonnull %74) #38, !dbg !1188
  br label %235, !dbg !1189

78:                                               ; preds = %73
  %79 = tail call noalias nonnull dereferenceable(24) ptr @xmalloc(i64 noundef 24) #43, !dbg !1190
  call void @llvm.dbg.value(metadata ptr %79, metadata !1195, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i32 8192, metadata !1196, metadata !DIExpression()), !dbg !1198
  %80 = getelementptr inbounds %struct.file_name, ptr %79, i64 0, i32 1, !dbg !1199
  store i64 8192, ptr %80, align 8, !dbg !1200, !tbaa !1201
  %81 = tail call noalias nonnull dereferenceable(8192) ptr @xmalloc(i64 noundef 8192) #43, !dbg !1203
  store ptr %81, ptr %79, align 8, !dbg !1204, !tbaa !1205
  %82 = getelementptr inbounds i8, ptr %81, i64 8191, !dbg !1206
  %83 = getelementptr inbounds %struct.file_name, ptr %79, i64 0, i32 2, !dbg !1207
  store ptr %82, ptr %83, align 8, !dbg !1208, !tbaa !1209
  store i8 0, ptr %82, align 1, !dbg !1210, !tbaa !894
  tail call void @llvm.dbg.value(metadata ptr %79, metadata !1046, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1212, metadata !DIExpression(), metadata !1059, metadata ptr %5, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1229, metadata !DIExpression(), metadata !1060, metadata ptr %6, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata ptr %79, metadata !1217, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i64 1, metadata !1218, metadata !DIExpression()), !dbg !1230
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #38, !dbg !1232
  %84 = call ptr @get_root_dev_ino(ptr noundef nonnull %5) #38, !dbg !1233
  call void @llvm.dbg.value(metadata ptr %84, metadata !1219, metadata !DIExpression()), !dbg !1230
  %85 = icmp eq ptr %84, null, !dbg !1234
  br i1 %85, label %86, label %91, !dbg !1236

86:                                               ; preds = %78
  %87 = tail call ptr @__errno_location() #41, !dbg !1237
  %88 = load i32, ptr %87, align 4, !dbg !1237, !tbaa !885
  %89 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #38, !dbg !1237
  %90 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull @.str.61) #38, !dbg !1237
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %88, ptr noundef %89, ptr noundef %90) #38, !dbg !1237
  unreachable, !dbg !1237

91:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #38, !dbg !1238
  %92 = call i32 @stat(ptr noundef nonnull @.str.59, ptr noundef nonnull %6) #38, !dbg !1239
  %93 = icmp slt i32 %92, 0, !dbg !1241
  br i1 %93, label %106, label %94, !dbg !1242

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.timespec, ptr %84, i64 0, i32 1
  %96 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 1
  call void @llvm.dbg.value(metadata i64 1, metadata !1218, metadata !DIExpression()), !dbg !1230
  %97 = load i64, ptr %6, align 8, !dbg !1243, !tbaa !1171
  %98 = load i64, ptr %95, align 8, !dbg !1243, !tbaa !1246
  %99 = load i64, ptr %96, align 8, !dbg !1243, !tbaa !1175
  %100 = load i64, ptr %84, align 8, !dbg !1243, !tbaa !1248
  %101 = icmp eq i64 %97, %98, !dbg !1243
  %102 = icmp eq i64 %99, %100, !dbg !1243
  %103 = and i1 %101, %102, !dbg !1243
  br i1 %103, label %225, label %104, !dbg !1249

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 1
  br label %111, !dbg !1249

106:                                              ; preds = %91
  %107 = tail call ptr @__errno_location() #41, !dbg !1250
  %108 = load i32, ptr %107, align 4, !dbg !1250, !tbaa !885
  %109 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #38, !dbg !1250
  %110 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull @.str.59) #38, !dbg !1250
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %108, ptr noundef %109, ptr noundef %110) #38, !dbg !1250
  unreachable, !dbg !1250

111:                                              ; preds = %217, %104
  %112 = phi i64 [ %99, %104 ], [ %220, %217 ]
  %113 = phi i64 [ %97, %104 ], [ %218, %217 ]
  %114 = phi i64 [ 1, %104 ], [ %115, %217 ]
  call void @llvm.dbg.value(metadata i64 %114, metadata !1218, metadata !DIExpression()), !dbg !1230
  %115 = add i64 %114, 1, !dbg !1251
  call void @llvm.dbg.value(metadata i64 %115, metadata !1218, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1252, metadata !DIExpression(), metadata !1057, metadata ptr %3, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1287, metadata !DIExpression(), metadata !1058, metadata ptr %4, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata ptr %6, metadata !1258, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata ptr %79, metadata !1259, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i64 %114, metadata !1260, metadata !DIExpression()), !dbg !1288
  %116 = call ptr @opendir(ptr noundef nonnull @.str.63), !dbg !1291
  call void @llvm.dbg.value(metadata ptr %116, metadata !1261, metadata !DIExpression()), !dbg !1288
  %117 = icmp eq ptr %116, null, !dbg !1292
  br i1 %117, label %118, label %124, !dbg !1294

118:                                              ; preds = %111
  %.lcssa11 = phi i64 [ %114, %111 ]
  %119 = tail call ptr @__errno_location() #41, !dbg !1295
  %120 = load i32, ptr %119, align 4, !dbg !1295, !tbaa !885
  %121 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #38, !dbg !1295
  %122 = call fastcc ptr @nth_parent(i64 noundef %.lcssa11), !dbg !1295
  %123 = call ptr @quote(ptr noundef nonnull %122) #38, !dbg !1295
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %120, ptr noundef %121, ptr noundef %123) #38, !dbg !1295
  unreachable, !dbg !1295

124:                                              ; preds = %111
  %125 = call i32 @dirfd(ptr noundef nonnull %116) #38, !dbg !1296
  call void @llvm.dbg.value(metadata i32 %125, metadata !1266, metadata !DIExpression()), !dbg !1288
  %126 = icmp sgt i32 %125, -1, !dbg !1297
  br i1 %126, label %127, label %130, !dbg !1299

127:                                              ; preds = %124
  %128 = call i32 @fchdir(i32 noundef %125) #38, !dbg !1300
  %129 = icmp slt i32 %128, 0, !dbg !1301
  br i1 %129, label %133, label %139, !dbg !1302

130:                                              ; preds = %124
  %131 = call i32 @chdir(ptr noundef nonnull @.str.63) #38, !dbg !1303
  %132 = icmp slt i32 %131, 0, !dbg !1301
  br i1 %132, label %133, label %141, !dbg !1302

133:                                              ; preds = %130, %127
  %.lcssa12 = phi i64 [ %114, %130 ], [ %114, %127 ]
  %134 = tail call ptr @__errno_location() #41, !dbg !1304
  %135 = load i32, ptr %134, align 4, !dbg !1304, !tbaa !885
  %136 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #38, !dbg !1304
  %137 = call fastcc ptr @nth_parent(i64 noundef %.lcssa12), !dbg !1304
  %138 = call ptr @quote(ptr noundef nonnull %137) #38, !dbg !1304
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %135, ptr noundef %136, ptr noundef %138) #38, !dbg !1304
  unreachable, !dbg !1304

139:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #38, !dbg !1305
  %140 = call i32 @fstat(i32 noundef %125, ptr noundef nonnull %3) #38, !dbg !1306
  br label %143, !dbg !1308

141:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #38, !dbg !1305
  %142 = call i32 @stat(ptr noundef nonnull @.str.59, ptr noundef nonnull %3) #38, !dbg !1309
  br label %143, !dbg !1308

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ], !dbg !1308
  %145 = icmp slt i32 %144, 0, !dbg !1310
  br i1 %145, label %146, label %152, !dbg !1311

146:                                              ; preds = %143
  %.lcssa13 = phi i64 [ %114, %143 ]
  %147 = tail call ptr @__errno_location() #41, !dbg !1312
  %148 = load i32, ptr %147, align 4, !dbg !1312, !tbaa !885
  %149 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #38, !dbg !1312
  %150 = call fastcc ptr @nth_parent(i64 noundef %.lcssa13), !dbg !1312
  %151 = call ptr @quote(ptr noundef nonnull %150) #38, !dbg !1312
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %148, ptr noundef %149, ptr noundef %151) #38, !dbg !1312
  unreachable, !dbg !1312

152:                                              ; preds = %143
  %153 = load i64, ptr %3, align 8, !dbg !1313, !tbaa !1171
  %154 = icmp ne i64 %153, %113, !dbg !1314
  call void @llvm.dbg.value(metadata i1 %154, metadata !1267, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1288
  call void @llvm.dbg.value(metadata i8 0, metadata !1268, metadata !DIExpression()), !dbg !1288
  %155 = tail call ptr @__errno_location() #41, !dbg !1288
  br label %156, !dbg !1315

156:                                              ; preds = %196, %152
  call void @llvm.dbg.value(metadata ptr %116, metadata !1261, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i8 poison, metadata !1268, metadata !DIExpression()), !dbg !1288
  store i32 0, ptr %155, align 4, !dbg !1316, !tbaa !885
  call void @llvm.dbg.value(metadata ptr %116, metadata !1317, metadata !DIExpression()), !dbg !1324
  br label %157, !dbg !1326

157:                                              ; preds = %164, %156
  %158 = call ptr @readdir(ptr noundef nonnull %116) #38, !dbg !1327
  call void @llvm.dbg.value(metadata ptr %158, metadata !1322, metadata !DIExpression()), !dbg !1328
  %159 = icmp eq ptr %158, null, !dbg !1329
  br i1 %159, label %175, label %160, !dbg !1331

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.dirent, ptr %158, i64 0, i32 4, !dbg !1332
  call void @llvm.dbg.value(metadata ptr %161, metadata !1333, metadata !DIExpression()), !dbg !1341
  %162 = load i8, ptr %161, align 1, !dbg !1343, !tbaa !894
  %163 = icmp eq i8 %162, 46, !dbg !1344
  br i1 %163, label %164, label %180, !dbg !1345

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.dirent, ptr %158, i64 0, i32 4, i64 1, !dbg !1346
  %166 = load i8, ptr %165, align 1, !dbg !1346, !tbaa !894
  %167 = icmp eq i8 %166, 46, !dbg !1347
  %168 = select i1 %167, i64 2, i64 1, !dbg !1348
  %169 = getelementptr inbounds i8, ptr %161, i64 %168, !dbg !1349
  %170 = load i8, ptr %169, align 1, !dbg !1349, !tbaa !894
  call void @llvm.dbg.value(metadata i8 %170, metadata !1338, metadata !DIExpression()), !dbg !1350
  %171 = icmp eq i8 %170, 0, !dbg !1351
  %172 = icmp eq i8 %170, 47, !dbg !1352
  %173 = or i1 %171, %172, !dbg !1352
  %174 = freeze i1 %173
  br i1 %174, label %157, label %180, !dbg !1353

175:                                              ; preds = %157
  %.lcssa17 = phi ptr [ %155, %157 ], !dbg !1288
  %.lcssa14 = phi i64 [ %114, %157 ]
  %.lcssa8 = phi ptr [ %116, %157 ], !dbg !1291
  call void @llvm.dbg.value(metadata ptr undef, metadata !1269, metadata !DIExpression()), !dbg !1290
  %176 = load i32, ptr %.lcssa17, align 4, !dbg !1354, !tbaa !885
  %177 = icmp eq i32 %176, 0, !dbg !1354
  %178 = call i32 @closedir(ptr noundef nonnull %.lcssa8), !dbg !1288
  br i1 %177, label %197, label %179, !dbg !1355

179:                                              ; preds = %175
  call void @llvm.dbg.value(metadata i32 %176, metadata !1281, metadata !DIExpression()), !dbg !1356
  store i32 %176, ptr %.lcssa17, align 4, !dbg !1357, !tbaa !885
  call void @llvm.dbg.value(metadata ptr null, metadata !1261, metadata !DIExpression()), !dbg !1288
  br label %207, !dbg !1358

180:                                              ; preds = %164, %160
  %.lcssa5 = phi ptr [ %161, %164 ], [ %161, %160 ], !dbg !1332
  %.lcssa4 = phi ptr [ %158, %164 ], [ %158, %160 ], !dbg !1327
  call void @llvm.dbg.value(metadata ptr %.lcssa4, metadata !1269, metadata !DIExpression()), !dbg !1290
  %181 = load i64, ptr %.lcssa4, align 8, !dbg !1360, !tbaa !1361
  call void @llvm.dbg.value(metadata i64 %181, metadata !1286, metadata !DIExpression()), !dbg !1290
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #38, !dbg !1363
  %182 = icmp eq i64 %181, 0, !dbg !1364
  %183 = select i1 %182, i1 true, i1 %154, !dbg !1366
  br i1 %183, label %184, label %189, !dbg !1366

184:                                              ; preds = %180
  %185 = call i32 @lstat(ptr noundef nonnull %.lcssa5, ptr noundef nonnull %4) #38, !dbg !1367
  %186 = icmp slt i32 %185, 0, !dbg !1370
  br i1 %186, label %196, label %187, !dbg !1371, !llvm.loop !1372

187:                                              ; preds = %184
  %188 = load i64, ptr %105, align 8, !dbg !1374, !tbaa !1175
  call void @llvm.dbg.value(metadata i64 %188, metadata !1286, metadata !DIExpression()), !dbg !1290
  br label %189, !dbg !1375

189:                                              ; preds = %187, %180
  %190 = phi i64 [ %188, %187 ], [ %181, %180 ], !dbg !1290
  call void @llvm.dbg.value(metadata i64 %190, metadata !1286, metadata !DIExpression()), !dbg !1290
  %191 = icmp eq i64 %190, %112, !dbg !1376
  br i1 %191, label %192, label %196, !dbg !1378, !llvm.loop !1379

192:                                              ; preds = %189
  %193 = load i64, ptr %4, align 8
  %194 = icmp ne i64 %193, %113
  %195 = select i1 %154, i1 %194, i1 false, !dbg !1380
  br i1 %195, label %196, label %199, !dbg !1380

196:                                              ; preds = %192, %189, %184
  call void @llvm.dbg.value(metadata i8 poison, metadata !1268, metadata !DIExpression()), !dbg !1288
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #38, !dbg !1373
  call void @llvm.dbg.value(metadata ptr %116, metadata !1261, metadata !DIExpression()), !dbg !1288
  br label %156

197:                                              ; preds = %175
  %198 = icmp eq i32 %178, 0, !dbg !1382
  br i1 %198, label %213, label %203, !dbg !1383

199:                                              ; preds = %192
  %.lcssa5.lcssa = phi ptr [ %.lcssa5, %192 ], !dbg !1332
  %200 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa5.lcssa) #39, !dbg !1384
  call fastcc void @file_name_prepend(ptr noundef nonnull %79, ptr noundef nonnull %.lcssa5.lcssa, i64 noundef %200), !dbg !1386
  call void @llvm.dbg.value(metadata i8 poison, metadata !1268, metadata !DIExpression()), !dbg !1288
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #38, !dbg !1373
  call void @llvm.dbg.value(metadata ptr %116, metadata !1261, metadata !DIExpression()), !dbg !1288
  %201 = call i32 @closedir(ptr noundef nonnull %116), !dbg !1387
  %202 = icmp eq i32 %201, 0, !dbg !1382
  br i1 %202, label %217, label %.loopexit, !dbg !1383

.loopexit:                                        ; preds = %199
  %.lcssa18 = phi ptr [ %155, %199 ], !dbg !1288
  %.lcssa15 = phi i64 [ %114, %199 ]
  br label %203, !dbg !1388

203:                                              ; preds = %.loopexit, %197
  %204 = phi ptr [ %.lcssa18, %.loopexit ], [ %.lcssa17, %197 ]
  %205 = phi i64 [ %.lcssa15, %.loopexit ], [ %.lcssa14, %197 ]
  %206 = load i32, ptr %204, align 4, !dbg !1388, !tbaa !885
  br label %207, !dbg !1383

207:                                              ; preds = %203, %179
  %208 = phi i64 [ %205, %203 ], [ %.lcssa14, %179 ]
  %209 = phi i32 [ %206, %203 ], [ %176, %179 ], !dbg !1388
  %210 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #38, !dbg !1388
  %211 = call fastcc ptr @nth_parent(i64 noundef %208), !dbg !1388
  %212 = call ptr @quote(ptr noundef nonnull %211) #38, !dbg !1388
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %209, ptr noundef %210, ptr noundef %212) #38, !dbg !1388
  unreachable, !dbg !1388

213:                                              ; preds = %197
  %214 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #38, !dbg !1390
  %215 = call fastcc ptr @nth_parent(i64 noundef %.lcssa14), !dbg !1390
  %216 = call ptr @quote(ptr noundef nonnull %215) #38, !dbg !1390
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %214, ptr noundef %216) #38, !dbg !1390
  unreachable, !dbg !1390

217:                                              ; preds = %199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 128, i1 false), !dbg !1392, !tbaa.struct !1393, !DIAssignID !1395
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1229, metadata !DIExpression(), metadata !1395, metadata ptr %6, metadata !DIExpression()), !dbg !1230
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #38, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %115, metadata !1218, metadata !DIExpression()), !dbg !1230
  %218 = load i64, ptr %6, align 8, !dbg !1243, !tbaa !1171
  %219 = load i64, ptr %95, align 8, !dbg !1243, !tbaa !1246
  %220 = load i64, ptr %96, align 8, !dbg !1243, !tbaa !1175
  %221 = load i64, ptr %84, align 8, !dbg !1243, !tbaa !1248
  %222 = icmp eq i64 %218, %219, !dbg !1243
  %223 = icmp eq i64 %220, %221, !dbg !1243
  %224 = and i1 %222, %223, !dbg !1243
  br i1 %224, label %.loopexit1, label %111, !dbg !1249, !llvm.loop !1397

.loopexit1:                                       ; preds = %217
  br label %225, !dbg !1400

225:                                              ; preds = %.loopexit1, %94
  %226 = load ptr, ptr %83, align 8, !dbg !1400, !tbaa !1209
  %227 = load i8, ptr %226, align 1, !dbg !1402, !tbaa !894
  %228 = icmp eq i8 %227, 0, !dbg !1403
  br i1 %228, label %229, label %231, !dbg !1404

229:                                              ; preds = %225
  call fastcc void @file_name_prepend(ptr noundef nonnull %79, ptr noundef nonnull @.str.11, i64 noundef 0), !dbg !1405
  %230 = load ptr, ptr %83, align 8, !dbg !1406, !tbaa !1209
  br label %231, !dbg !1405

231:                                              ; preds = %225, %229
  %232 = phi ptr [ %226, %225 ], [ %230, %229 ], !dbg !1406
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #38, !dbg !1407
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #38, !dbg !1407
  %233 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %232), !dbg !1408
  call void @llvm.dbg.value(metadata ptr %79, metadata !1409, metadata !DIExpression()), !dbg !1412
  %234 = load ptr, ptr %79, align 8, !dbg !1414, !tbaa !1205
  call void @free(ptr noundef %234) #38, !dbg !1415
  call void @free(ptr noundef nonnull %79) #38, !dbg !1416
  br label %235

235:                                              ; preds = %71, %76, %231
  ret i32 0, !dbg !1417
}

; Function Attrs: nounwind
declare !dbg !1418 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1421 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1422 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1425 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1431 ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1432 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1437 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1440 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1443 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !1447 noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @nth_parent(i64 noundef %0) unnamed_addr #10 !dbg !1450 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !1454, metadata !DIExpression()), !dbg !1459
  %2 = tail call noalias nonnull ptr @xnmalloc(i64 noundef 3, i64 noundef %0) #44, !dbg !1460
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1455, metadata !DIExpression()), !dbg !1459
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1456, metadata !DIExpression()), !dbg !1459
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1457, metadata !DIExpression()), !dbg !1461
  %3 = icmp eq i64 %0, 0, !dbg !1462
  br i1 %3, label %4, label %.preheader, !dbg !1464

.preheader:                                       ; preds = %1
  br label %7, !dbg !1464

.loopexit:                                        ; preds = %7
  %.lcssa = phi ptr [ %10, %7 ], !dbg !1465
  br label %4, !dbg !1467

4:                                                ; preds = %.loopexit, %1
  %5 = phi ptr [ %2, %1 ], [ %.lcssa, %.loopexit ], !dbg !1459
  %6 = getelementptr inbounds i8, ptr %5, i64 -1, !dbg !1467
  store i8 0, ptr %6, align 1, !dbg !1468, !tbaa !894
  ret ptr %2, !dbg !1469

7:                                                ; preds = %.preheader, %7
  %8 = phi i64 [ %11, %7 ], [ 0, %.preheader ]
  %9 = phi ptr [ %10, %7 ], [ %2, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1457, metadata !DIExpression()), !dbg !1461
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1456, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata ptr %9, metadata !1470, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata ptr @.str.68, metadata !1477, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 3, metadata !1478, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %9, ptr noundef nonnull align 1 dereferenceable(3) @.str.68, i64 noundef 3, i1 noundef false) #38, !dbg !1481
  %10 = getelementptr inbounds i8, ptr %9, i64 3, !dbg !1465
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1456, metadata !DIExpression()), !dbg !1459
  %11 = add nuw i64 %8, 1, !dbg !1482
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1457, metadata !DIExpression()), !dbg !1461
  %12 = icmp eq i64 %11, %0, !dbg !1462
  br i1 %12, label %.loopexit, label %7, !dbg !1464, !llvm.loop !1483
}

; Function Attrs: nounwind
declare !dbg !1485 i32 @dirfd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1488 i32 @fchdir(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1492 i32 @chdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1493 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !1496 ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1500 noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1501 noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1502 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @file_name_prepend(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #10 !dbg !1505 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1509, metadata !DIExpression()), !dbg !1517
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1510, metadata !DIExpression()), !dbg !1517
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1511, metadata !DIExpression()), !dbg !1517
  %4 = getelementptr inbounds %struct.file_name, ptr %0, i64 0, i32 2, !dbg !1518
  %5 = load ptr, ptr %4, align 8, !dbg !1518, !tbaa !1209
  %6 = load ptr, ptr %0, align 8, !dbg !1519, !tbaa !1205
  %7 = ptrtoint ptr %5 to i64, !dbg !1520
  %8 = ptrtoint ptr %6 to i64, !dbg !1520
  %9 = sub i64 %7, %8, !dbg !1520
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1512, metadata !DIExpression()), !dbg !1517
  %10 = add i64 %2, 1, !dbg !1521
  %11 = icmp ult i64 %9, %10, !dbg !1522
  br i1 %11, label %12, label %25, !dbg !1523

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.file_name, ptr %0, i64 0, i32 1, !dbg !1524
  %14 = load i64, ptr %13, align 8, !dbg !1524, !tbaa !1201
  %15 = sub nsw i64 %14, %9, !dbg !1525
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !1513, metadata !DIExpression()), !dbg !1526
  %16 = sub i64 %10, %9, !dbg !1527
  %17 = tail call nonnull ptr @xpalloc(ptr noundef null, ptr noundef nonnull %13, i64 noundef %16, i64 noundef -1, i64 noundef 1) #38, !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !1516, metadata !DIExpression()), !dbg !1526
  %18 = load i64, ptr %13, align 8, !dbg !1529, !tbaa !1201
  %19 = getelementptr inbounds i8, ptr %17, i64 %18, !dbg !1530
  %20 = sub i64 0, %15, !dbg !1531
  %21 = getelementptr inbounds i8, ptr %19, i64 %20, !dbg !1531
  %22 = load ptr, ptr %4, align 8, !dbg !1532, !tbaa !1209
  call void @llvm.dbg.value(metadata ptr %21, metadata !1470, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata ptr %22, metadata !1477, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %15, metadata !1478, metadata !DIExpression()), !dbg !1533
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %21, ptr noundef nonnull align 1 %22, i64 noundef %15, i1 noundef false) #38, !dbg !1535
  store ptr %21, ptr %4, align 8, !dbg !1536, !tbaa !1209
  %23 = load ptr, ptr %0, align 8, !dbg !1537, !tbaa !1205
  tail call void @free(ptr noundef %23) #38, !dbg !1538
  store ptr %17, ptr %0, align 8, !dbg !1539, !tbaa !1205
  %24 = load ptr, ptr %4, align 8, !dbg !1540, !tbaa !1209
  br label %25, !dbg !1541

25:                                               ; preds = %12, %3
  %26 = phi ptr [ %24, %12 ], [ %5, %3 ], !dbg !1540
  %27 = xor i64 %2, -1, !dbg !1540
  %28 = getelementptr inbounds i8, ptr %26, i64 %27, !dbg !1540
  store ptr %28, ptr %4, align 8, !dbg !1540, !tbaa !1209
  store i8 47, ptr %28, align 1, !dbg !1542, !tbaa !894
  %29 = load ptr, ptr %4, align 8, !dbg !1543, !tbaa !1209
  %30 = getelementptr inbounds i8, ptr %29, i64 1, !dbg !1544
  call void @llvm.dbg.value(metadata ptr %30, metadata !1470, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata ptr %1, metadata !1477, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %2, metadata !1478, metadata !DIExpression()), !dbg !1545
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %30, ptr noundef nonnull align 1 %1, i64 noundef %2, i1 noundef false) #38, !dbg !1547
  ret void, !dbg !1548
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1549 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1551, metadata !DIExpression()), !dbg !1552
  store ptr %0, ptr @file_name, align 8, !dbg !1553, !tbaa !821
  ret void, !dbg !1554
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !1555 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1559, metadata !DIExpression()), !dbg !1560
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1561, !tbaa !1562
  ret void, !dbg !1564
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1565 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1570, !tbaa !821
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1571
  %3 = icmp eq i32 %2, 0, !dbg !1572
  br i1 %3, label %22, label %4, !dbg !1573

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1574, !tbaa !1562, !range !1575, !noundef !853
  %6 = icmp eq i8 %5, 0, !dbg !1574
  br i1 %6, label %11, label %7, !dbg !1576

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1577
  %9 = load i32, ptr %8, align 4, !dbg !1577, !tbaa !885
  %10 = icmp eq i32 %9, 32, !dbg !1578
  br i1 %10, label %22, label %11, !dbg !1579

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1.26, i32 noundef 5) #38, !dbg !1580
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1567, metadata !DIExpression()), !dbg !1581
  %13 = load ptr, ptr @file_name, align 8, !dbg !1582, !tbaa !821
  %14 = icmp eq ptr %13, null, !dbg !1582
  %15 = tail call ptr @__errno_location() #41, !dbg !1584
  %16 = load i32, ptr %15, align 4, !dbg !1584, !tbaa !885
  br i1 %14, label %19, label %17, !dbg !1585

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1586
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.27, ptr noundef %18, ptr noundef %12) #38, !dbg !1586
  br label %20, !dbg !1586

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.28, ptr noundef %12) #38, !dbg !1587
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1588, !tbaa !885
  tail call void @_exit(i32 noundef %21) #40, !dbg !1589
  unreachable, !dbg !1589

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1590, !tbaa !821
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1592
  %25 = icmp eq i32 %24, 0, !dbg !1593
  br i1 %25, label %28, label %26, !dbg !1594

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1595, !tbaa !885
  tail call void @_exit(i32 noundef %27) #40, !dbg !1596
  unreachable, !dbg !1596

28:                                               ; preds = %22
  ret void, !dbg !1597
}

; Function Attrs: noreturn
declare !dbg !1598 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1599 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1603, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1604, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1605, metadata !DIExpression()), !dbg !1607
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1606, metadata !DIExpression(DW_OP_deref)), !dbg !1607
  tail call fastcc void @flush_stdout(), !dbg !1608
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1609, !tbaa !821
  %7 = icmp eq ptr %6, null, !dbg !1609
  br i1 %7, label %9, label %8, !dbg !1611

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !1612
  br label %13, !dbg !1612

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1613, !tbaa !821
  %11 = tail call ptr @getprogname() #39, !dbg !1613
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %11) #38, !dbg !1613
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1615, !tbaa.struct !1616
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1615
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1615
  ret void, !dbg !1617
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1618 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1620, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i32 1, metadata !1622, metadata !DIExpression()), !dbg !1625
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1628
  %2 = icmp slt i32 %1, 0, !dbg !1629
  br i1 %2, label %6, label %3, !dbg !1630

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1631, !tbaa !821
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1631
  br label %6, !dbg !1631

6:                                                ; preds = %3, %0
  ret void, !dbg !1632
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1633 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1639
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1635, metadata !DIExpression()), !dbg !1640
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1636, metadata !DIExpression()), !dbg !1640
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1637, metadata !DIExpression()), !dbg !1640
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1638, metadata !DIExpression(DW_OP_deref)), !dbg !1640
  %7 = load ptr, ptr @stderr, align 8, !dbg !1641, !tbaa !821
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1642, !noalias !1686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1690
  call void @llvm.dbg.value(metadata ptr %7, metadata !1682, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata ptr %2, metadata !1683, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata ptr poison, metadata !1684, metadata !DIExpression(DW_OP_deref)), !dbg !1691
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !1642
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1642, !noalias !1686
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1692, !tbaa !885
  %10 = add i32 %9, 1, !dbg !1692
  store i32 %10, ptr @error_message_count, align 4, !dbg !1692, !tbaa !885
  %11 = icmp eq i32 %1, 0, !dbg !1693
  br i1 %11, label %21, label %12, !dbg !1695

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1696, metadata !DIExpression(), metadata !1639, metadata ptr %5, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 %1, metadata !1699, metadata !DIExpression()), !dbg !1704
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1706
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1707
  call void @llvm.dbg.value(metadata ptr %13, metadata !1700, metadata !DIExpression()), !dbg !1704
  %14 = icmp eq ptr %13, null, !dbg !1708
  br i1 %14, label %15, label %17, !dbg !1710

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.30, ptr noundef nonnull @.str.5.31, i32 noundef 5) #38, !dbg !1711
  call void @llvm.dbg.value(metadata ptr %16, metadata !1700, metadata !DIExpression()), !dbg !1704
  br label %17, !dbg !1712

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1704
  call void @llvm.dbg.value(metadata ptr %18, metadata !1700, metadata !DIExpression()), !dbg !1704
  %19 = load ptr, ptr @stderr, align 8, !dbg !1713, !tbaa !821
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.32, ptr noundef %18) #38, !dbg !1713
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1714
  br label %21, !dbg !1715

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1716, !tbaa !821
  call void @llvm.dbg.value(metadata i32 10, metadata !1717, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata ptr %22, metadata !1723, metadata !DIExpression()), !dbg !1724
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1726
  %24 = load ptr, ptr %23, align 8, !dbg !1726, !tbaa !1727
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1726
  %26 = load ptr, ptr %25, align 8, !dbg !1726, !tbaa !1729
  %27 = icmp ult ptr %24, %26, !dbg !1726
  br i1 %27, label %30, label %28, !dbg !1726, !prof !1730

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !1726
  br label %32, !dbg !1726

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1726
  store ptr %31, ptr %23, align 8, !dbg !1726, !tbaa !1727
  store i8 10, ptr %24, align 1, !dbg !1726, !tbaa !894
  br label %32, !dbg !1726

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1731, !tbaa !821
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !1731
  %35 = icmp eq i32 %0, 0, !dbg !1732
  br i1 %35, label %37, label %36, !dbg !1734

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #40, !dbg !1735
  unreachable, !dbg !1735

37:                                               ; preds = %32
  ret void, !dbg !1736
}

declare !dbg !1737 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1740 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1743 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1746 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1749 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1753 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1761
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1760, metadata !DIExpression(), metadata !1761, metadata ptr %4, metadata !DIExpression()), !dbg !1762
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1757, metadata !DIExpression()), !dbg !1762
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1758, metadata !DIExpression()), !dbg !1762
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1759, metadata !DIExpression()), !dbg !1762
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !1763
  call void @llvm.va_start(ptr nonnull %4), !dbg !1764
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1765, !tbaa.struct !1616
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !1765
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1765
  call void @llvm.va_end(ptr nonnull %4), !dbg !1766
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !1767
  ret void, !dbg !1767
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !433 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !449, metadata !DIExpression()), !dbg !1768
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !450, metadata !DIExpression()), !dbg !1768
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !451, metadata !DIExpression()), !dbg !1768
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !452, metadata !DIExpression()), !dbg !1768
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !453, metadata !DIExpression()), !dbg !1768
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !454, metadata !DIExpression(DW_OP_deref)), !dbg !1768
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1769, !tbaa !885
  %9 = icmp eq i32 %8, 0, !dbg !1769
  br i1 %9, label %24, label %10, !dbg !1771

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1772, !tbaa !885
  %12 = icmp eq i32 %11, %3, !dbg !1775
  br i1 %12, label %13, label %23, !dbg !1776

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1777, !tbaa !821
  %15 = icmp eq ptr %14, %2, !dbg !1778
  br i1 %15, label %37, label %16, !dbg !1779

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1780
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1781
  br i1 %19, label %20, label %23, !dbg !1781

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1782
  %22 = icmp eq i32 %21, 0, !dbg !1783
  br i1 %22, label %37, label %23, !dbg !1784

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1785, !tbaa !821
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1786, !tbaa !885
  br label %24, !dbg !1787

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1788
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1789, !tbaa !821
  %26 = icmp eq ptr %25, null, !dbg !1789
  br i1 %26, label %28, label %27, !dbg !1791

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !1792
  br label %32, !dbg !1792

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1793, !tbaa !821
  %30 = tail call ptr @getprogname() #39, !dbg !1793
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.35, ptr noundef %30) #38, !dbg !1793
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1795, !tbaa !821
  %34 = icmp eq ptr %2, null, !dbg !1795
  %35 = select i1 %34, ptr @.str.3.36, ptr @.str.2.37, !dbg !1795
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !1795
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1796, !tbaa.struct !1616
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1796
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1796
  br label %37, !dbg !1797

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1797
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1798 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1808
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1807, metadata !DIExpression(), metadata !1808, metadata ptr %6, metadata !DIExpression()), !dbg !1809
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1802, metadata !DIExpression()), !dbg !1809
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1803, metadata !DIExpression()), !dbg !1809
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1804, metadata !DIExpression()), !dbg !1809
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1805, metadata !DIExpression()), !dbg !1809
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1806, metadata !DIExpression()), !dbg !1809
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1810
  call void @llvm.va_start(ptr nonnull %6), !dbg !1811
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1812, !tbaa.struct !1616
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !1812
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1812
  call void @llvm.va_end(ptr nonnull %6), !dbg !1813
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1814
  ret void, !dbg !1814
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1815 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1816, !tbaa !821
  ret ptr %1, !dbg !1817
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1818 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1820, metadata !DIExpression()), !dbg !1823
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1824
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1821, metadata !DIExpression()), !dbg !1823
  %3 = icmp eq ptr %2, null, !dbg !1825
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1825
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1822, metadata !DIExpression()), !dbg !1823
  %6 = ptrtoint ptr %5 to i64, !dbg !1826
  %7 = ptrtoint ptr %0 to i64, !dbg !1826
  %8 = sub i64 %6, %7, !dbg !1826
  %9 = icmp sgt i64 %8, 6, !dbg !1828
  br i1 %9, label %10, label %19, !dbg !1829

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1830
  call void @llvm.dbg.value(metadata ptr %11, metadata !1831, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata ptr @.str.46, metadata !1836, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 7, metadata !1837, metadata !DIExpression()), !dbg !1838
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.46, i64 7), !dbg !1840
  %13 = icmp eq i32 %12, 0, !dbg !1841
  br i1 %13, label %14, label %19, !dbg !1842

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1820, metadata !DIExpression()), !dbg !1823
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.47, i64 noundef 3) #39, !dbg !1843
  %16 = icmp eq i32 %15, 0, !dbg !1846
  %17 = select i1 %16, i64 3, i64 0, !dbg !1847
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1847
  br label %19, !dbg !1847

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1822, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1820, metadata !DIExpression()), !dbg !1823
  store ptr %20, ptr @program_name, align 8, !dbg !1848, !tbaa !821
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1849, !tbaa !821
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1850, !tbaa !821
  ret void, !dbg !1851
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1852 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !488 {
  %3 = alloca i32, align 4, !DIAssignID !1853
  call void @llvm.dbg.assign(metadata i1 undef, metadata !498, metadata !DIExpression(), metadata !1853, metadata ptr %3, metadata !DIExpression()), !dbg !1854
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1855
  call void @llvm.dbg.assign(metadata i1 undef, metadata !503, metadata !DIExpression(), metadata !1855, metadata ptr %4, metadata !DIExpression()), !dbg !1854
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !495, metadata !DIExpression()), !dbg !1854
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !496, metadata !DIExpression()), !dbg !1854
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1856
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !497, metadata !DIExpression()), !dbg !1854
  %6 = icmp eq ptr %5, %0, !dbg !1857
  br i1 %6, label %7, label %14, !dbg !1859

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1860
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1861
  call void @llvm.dbg.value(metadata ptr %4, metadata !1862, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata ptr %4, metadata !1871, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i32 0, metadata !1876, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 8, metadata !1877, metadata !DIExpression()), !dbg !1878
  store i64 0, ptr %4, align 8, !dbg !1880
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1881
  %9 = icmp eq i64 %8, 2, !dbg !1883
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1884
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1854
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1885
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1885
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1854
  ret ptr %15, !dbg !1885
}

; Function Attrs: nounwind
declare !dbg !1886 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1892 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1897, metadata !DIExpression()), !dbg !1900
  %2 = tail call ptr @__errno_location() #41, !dbg !1901
  %3 = load i32, ptr %2, align 4, !dbg !1901, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1898, metadata !DIExpression()), !dbg !1900
  %4 = icmp eq ptr %0, null, !dbg !1902
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1902
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #46, !dbg !1903
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1899, metadata !DIExpression()), !dbg !1900
  store i32 %3, ptr %2, align 4, !dbg !1904, !tbaa !885
  ret ptr %6, !dbg !1905
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1906 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1912, metadata !DIExpression()), !dbg !1913
  %2 = icmp eq ptr %0, null, !dbg !1914
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1914
  %4 = load i32, ptr %3, align 8, !dbg !1915, !tbaa !1916
  ret i32 %4, !dbg !1918
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1919 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1923, metadata !DIExpression()), !dbg !1925
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1924, metadata !DIExpression()), !dbg !1925
  %3 = icmp eq ptr %0, null, !dbg !1926
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1926
  store i32 %1, ptr %4, align 8, !dbg !1927, !tbaa !1916
  ret void, !dbg !1928
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1929 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1933, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1934, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1935, metadata !DIExpression()), !dbg !1941
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1936, metadata !DIExpression()), !dbg !1941
  %4 = icmp eq ptr %0, null, !dbg !1942
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1942
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1943
  %7 = lshr i8 %1, 5, !dbg !1944
  %8 = zext nneg i8 %7 to i64, !dbg !1944
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1945
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1937, metadata !DIExpression()), !dbg !1941
  %10 = and i8 %1, 31, !dbg !1946
  %11 = zext nneg i8 %10 to i32, !dbg !1946
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1939, metadata !DIExpression()), !dbg !1941
  %12 = load i32, ptr %9, align 4, !dbg !1947, !tbaa !885
  %13 = lshr i32 %12, %11, !dbg !1948
  %14 = and i32 %13, 1, !dbg !1949
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1940, metadata !DIExpression()), !dbg !1941
  %15 = xor i32 %13, %2, !dbg !1950
  %16 = and i32 %15, 1, !dbg !1950
  %17 = shl nuw i32 %16, %11, !dbg !1951
  %18 = xor i32 %17, %12, !dbg !1952
  store i32 %18, ptr %9, align 4, !dbg !1952, !tbaa !885
  ret i32 %14, !dbg !1953
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1954 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1958, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1959, metadata !DIExpression()), !dbg !1961
  %3 = icmp eq ptr %0, null, !dbg !1962
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1964
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1958, metadata !DIExpression()), !dbg !1961
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1965
  %6 = load i32, ptr %5, align 4, !dbg !1965, !tbaa !1966
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1960, metadata !DIExpression()), !dbg !1961
  store i32 %1, ptr %5, align 4, !dbg !1967, !tbaa !1966
  ret i32 %6, !dbg !1968
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1969 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1973, metadata !DIExpression()), !dbg !1976
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1974, metadata !DIExpression()), !dbg !1976
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1975, metadata !DIExpression()), !dbg !1976
  %4 = icmp eq ptr %0, null, !dbg !1977
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1979
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1973, metadata !DIExpression()), !dbg !1976
  store i32 10, ptr %5, align 8, !dbg !1980, !tbaa !1916
  %6 = icmp ne ptr %1, null, !dbg !1981
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1983
  br i1 %8, label %10, label %9, !dbg !1983

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1984
  unreachable, !dbg !1984

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1985
  store ptr %1, ptr %11, align 8, !dbg !1986, !tbaa !1987
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1988
  store ptr %2, ptr %12, align 8, !dbg !1989, !tbaa !1990
  ret void, !dbg !1991
}

; Function Attrs: noreturn nounwind
declare !dbg !1992 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1993 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1997, metadata !DIExpression()), !dbg !2005
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1998, metadata !DIExpression()), !dbg !2005
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1999, metadata !DIExpression()), !dbg !2005
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2000, metadata !DIExpression()), !dbg !2005
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2001, metadata !DIExpression()), !dbg !2005
  %6 = icmp eq ptr %4, null, !dbg !2006
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2006
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2002, metadata !DIExpression()), !dbg !2005
  %8 = tail call ptr @__errno_location() #41, !dbg !2007
  %9 = load i32, ptr %8, align 4, !dbg !2007, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2003, metadata !DIExpression()), !dbg !2005
  %10 = load i32, ptr %7, align 8, !dbg !2008, !tbaa !1916
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2009
  %12 = load i32, ptr %11, align 4, !dbg !2009, !tbaa !1966
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2010
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2011
  %15 = load ptr, ptr %14, align 8, !dbg !2011, !tbaa !1987
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2012
  %17 = load ptr, ptr %16, align 8, !dbg !2012, !tbaa !1990
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2013
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2004, metadata !DIExpression()), !dbg !2005
  store i32 %9, ptr %8, align 4, !dbg !2014, !tbaa !885
  ret i64 %18, !dbg !2015
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2016 {
  %10 = alloca i32, align 4, !DIAssignID !2084
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2085
  %12 = alloca i32, align 4, !DIAssignID !2086
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2087
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2088
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2062, metadata !DIExpression(), metadata !2088, metadata ptr %14, metadata !DIExpression()), !dbg !2089
  %15 = alloca i32, align 4, !DIAssignID !2090
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2065, metadata !DIExpression(), metadata !2090, metadata ptr %15, metadata !DIExpression()), !dbg !2091
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2022, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2023, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2024, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2025, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2026, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2027, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2028, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2029, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2030, metadata !DIExpression()), !dbg !2092
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !2093
  %17 = icmp eq i64 %16, 1, !dbg !2094
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2031, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2033, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2034, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2035, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2036, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2037, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2038, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2039, metadata !DIExpression()), !dbg !2092
  %18 = and i32 %5, 2, !dbg !2095
  %19 = icmp ne i32 %18, 0, !dbg !2095
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2095

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2096
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2097
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2098
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2023, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2039, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2037, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2036, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2035, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2034, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2033, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2025, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2030, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2029, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2026, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.label(metadata !2040), !dbg !2099
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2041, metadata !DIExpression()), !dbg !2092
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
  ], !dbg !2100

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2037, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2026, metadata !DIExpression()), !dbg !2092
  br label %101, !dbg !2101

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2037, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2026, metadata !DIExpression()), !dbg !2092
  br i1 %36, label %101, label %42, !dbg !2101

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2102
  br i1 %43, label %101, label %44, !dbg !2106

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2102, !tbaa !894
  br label %101, !dbg !2102

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !589, metadata !DIExpression(), metadata !2086, metadata ptr %12, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.assign(metadata i1 undef, metadata !590, metadata !DIExpression(), metadata !2087, metadata ptr %13, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata ptr @.str.11.79, metadata !586, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i32 %28, metadata !587, metadata !DIExpression()), !dbg !2107
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.80, ptr noundef nonnull @.str.11.79, i32 noundef 5) #38, !dbg !2111
  call void @llvm.dbg.value(metadata ptr %46, metadata !588, metadata !DIExpression()), !dbg !2107
  %47 = icmp eq ptr %46, @.str.11.79, !dbg !2112
  br i1 %47, label %48, label %57, !dbg !2114

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !2115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !2116
  call void @llvm.dbg.value(metadata ptr %13, metadata !2117, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata ptr %13, metadata !2125, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i32 0, metadata !2128, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 8, metadata !2129, metadata !DIExpression()), !dbg !2130
  store i64 0, ptr %13, align 8, !dbg !2132
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !2133
  %50 = icmp eq i64 %49, 3, !dbg !2135
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2136
  %54 = icmp eq i32 %28, 9, !dbg !2136
  %55 = select i1 %54, ptr @.str.10.81, ptr @.str.12.82, !dbg !2136
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2136
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !2137
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !2137
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2107
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2029, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.assign(metadata i1 undef, metadata !589, metadata !DIExpression(), metadata !2084, metadata ptr %10, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.assign(metadata i1 undef, metadata !590, metadata !DIExpression(), metadata !2085, metadata ptr %11, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata ptr @.str.12.82, metadata !586, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 %28, metadata !587, metadata !DIExpression()), !dbg !2138
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.80, ptr noundef nonnull @.str.12.82, i32 noundef 5) #38, !dbg !2140
  call void @llvm.dbg.value(metadata ptr %59, metadata !588, metadata !DIExpression()), !dbg !2138
  %60 = icmp eq ptr %59, @.str.12.82, !dbg !2141
  br i1 %60, label %61, label %70, !dbg !2142

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !2143
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !2144
  call void @llvm.dbg.value(metadata ptr %11, metadata !2117, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata ptr %11, metadata !2125, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 0, metadata !2128, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i64 8, metadata !2129, metadata !DIExpression()), !dbg !2147
  store i64 0, ptr %11, align 8, !dbg !2149
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !2150
  %63 = icmp eq i64 %62, 3, !dbg !2151
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2152
  %67 = icmp eq i32 %28, 9, !dbg !2152
  %68 = select i1 %67, ptr @.str.10.81, ptr @.str.12.82, !dbg !2152
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2152
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !2153
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !2153
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2030, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2029, metadata !DIExpression()), !dbg !2092
  br i1 %36, label %88, label %73, !dbg !2154

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2042, metadata !DIExpression()), !dbg !2155
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2032, metadata !DIExpression()), !dbg !2092
  %74 = load i8, ptr %71, align 1, !dbg !2156, !tbaa !894
  %75 = icmp eq i8 %74, 0, !dbg !2158
  br i1 %75, label %88, label %.preheader11, !dbg !2158

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2158

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2042, metadata !DIExpression()), !dbg !2155
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2032, metadata !DIExpression()), !dbg !2092
  %80 = icmp ult i64 %79, %39, !dbg !2159
  br i1 %80, label %81, label %83, !dbg !2162

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2159
  store i8 %77, ptr %82, align 1, !dbg !2159, !tbaa !894
  br label %83, !dbg !2159

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2162
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2032, metadata !DIExpression()), !dbg !2092
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2163
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2042, metadata !DIExpression()), !dbg !2155
  %86 = load i8, ptr %85, align 1, !dbg !2156, !tbaa !894
  %87 = icmp eq i8 %86, 0, !dbg !2158
  br i1 %87, label %.loopexit12, label %76, !dbg !2158, !llvm.loop !2164

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2162
  br label %88, !dbg !2166

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2167
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2036, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2034, metadata !DIExpression()), !dbg !2092
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !2166
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2035, metadata !DIExpression()), !dbg !2092
  br label %101, !dbg !2168

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2036, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2037, metadata !DIExpression()), !dbg !2092
  br label %101, !dbg !2169

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2037, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2036, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2026, metadata !DIExpression()), !dbg !2092
  br label %101, !dbg !2170

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2037, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2036, metadata !DIExpression()), !dbg !2092
  br i1 %36, label %101, label %95, !dbg !2171

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2037, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2036, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2026, metadata !DIExpression()), !dbg !2092
  br i1 %36, label %101, label %95, !dbg !2170

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2172
  br i1 %97, label %101, label %98, !dbg !2176

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2172, !tbaa !894
  br label %101, !dbg !2172

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2037, metadata !DIExpression()), !dbg !2092
  br label %101, !dbg !2177

100:                                              ; preds = %27
  call void @abort() #40, !dbg !2178
  unreachable, !dbg !2178

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2167
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.81, %42 ], [ @.str.10.81, %44 ], [ @.str.10.81, %41 ], [ %33, %27 ], [ @.str.12.82, %95 ], [ @.str.12.82, %98 ], [ @.str.12.82, %94 ], [ @.str.10.81, %40 ], [ @.str.12.82, %91 ], [ @.str.12.82, %92 ], [ @.str.12.82, %93 ], !dbg !2092
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2092
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2037, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2036, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2035, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2034, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2030, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2029, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2026, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2047, metadata !DIExpression()), !dbg !2179
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
  br label %121, !dbg !2180

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2167
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2096
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2181
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2023, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2047, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2041, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2039, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2033, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2025, metadata !DIExpression()), !dbg !2092
  %130 = icmp eq i64 %122, -1, !dbg !2182
  br i1 %130, label %131, label %135, !dbg !2183

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2184
  %133 = load i8, ptr %132, align 1, !dbg !2184, !tbaa !894
  %134 = icmp eq i8 %133, 0, !dbg !2185
  br i1 %134, label %573, label %137, !dbg !2186

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2187
  br i1 %136, label %573, label %137, !dbg !2186

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2049, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2052, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2053, metadata !DIExpression()), !dbg !2188
  br i1 %113, label %138, label %151, !dbg !2189

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2191
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2192
  br i1 %140, label %141, label %143, !dbg !2192

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2193
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2025, metadata !DIExpression()), !dbg !2092
  br label %143, !dbg !2194

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2194
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2025, metadata !DIExpression()), !dbg !2092
  %145 = icmp ugt i64 %139, %144, !dbg !2195
  br i1 %145, label %151, label %146, !dbg !2196

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2197
  call void @llvm.dbg.value(metadata ptr %147, metadata !2198, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata ptr %106, metadata !2201, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %107, metadata !2202, metadata !DIExpression()), !dbg !2203
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2205
  %149 = icmp eq i32 %148, 0, !dbg !2206
  %150 = and i1 %149, %109, !dbg !2207
  br i1 %150, label %.loopexit7, label %151, !dbg !2207

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2049, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2025, metadata !DIExpression()), !dbg !2092
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2208
  %155 = load i8, ptr %154, align 1, !dbg !2208, !tbaa !894
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2054, metadata !DIExpression()), !dbg !2188
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
  ], !dbg !2209

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2210

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2211

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2052, metadata !DIExpression()), !dbg !2188
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2215
  br i1 %159, label %176, label %160, !dbg !2215

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2217
  br i1 %161, label %162, label %164, !dbg !2221

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2217
  store i8 39, ptr %163, align 1, !dbg !2217, !tbaa !894
  br label %164, !dbg !2217

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2221
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2032, metadata !DIExpression()), !dbg !2092
  %166 = icmp ult i64 %165, %129, !dbg !2222
  br i1 %166, label %167, label %169, !dbg !2225

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2222
  store i8 36, ptr %168, align 1, !dbg !2222, !tbaa !894
  br label %169, !dbg !2222

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2225
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2032, metadata !DIExpression()), !dbg !2092
  %171 = icmp ult i64 %170, %129, !dbg !2226
  br i1 %171, label %172, label %174, !dbg !2229

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2226
  store i8 39, ptr %173, align 1, !dbg !2226, !tbaa !894
  br label %174, !dbg !2226

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2229
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2041, metadata !DIExpression()), !dbg !2092
  br label %176, !dbg !2230

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2092
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2041, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2032, metadata !DIExpression()), !dbg !2092
  %179 = icmp ult i64 %177, %129, !dbg !2231
  br i1 %179, label %180, label %182, !dbg !2234

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2231
  store i8 92, ptr %181, align 1, !dbg !2231, !tbaa !894
  br label %182, !dbg !2231

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2234
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2032, metadata !DIExpression()), !dbg !2092
  br i1 %110, label %184, label %476, !dbg !2235

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2237
  %186 = icmp ult i64 %185, %152, !dbg !2238
  br i1 %186, label %187, label %433, !dbg !2239

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2240
  %189 = load i8, ptr %188, align 1, !dbg !2240, !tbaa !894
  %190 = add i8 %189, -48, !dbg !2241
  %191 = icmp ult i8 %190, 10, !dbg !2241
  br i1 %191, label %192, label %433, !dbg !2241

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2242
  br i1 %193, label %194, label %196, !dbg !2246

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2242
  store i8 48, ptr %195, align 1, !dbg !2242, !tbaa !894
  br label %196, !dbg !2242

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2032, metadata !DIExpression()), !dbg !2092
  %198 = icmp ult i64 %197, %129, !dbg !2247
  br i1 %198, label %199, label %201, !dbg !2250

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2247
  store i8 48, ptr %200, align 1, !dbg !2247, !tbaa !894
  br label %201, !dbg !2247

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2250
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2032, metadata !DIExpression()), !dbg !2092
  br label %433, !dbg !2251

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2252

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2253

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2254

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2256

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2258
  %209 = icmp ult i64 %208, %152, !dbg !2259
  br i1 %209, label %210, label %433, !dbg !2260

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2261
  %212 = load i8, ptr %211, align 1, !dbg !2261, !tbaa !894
  %213 = icmp eq i8 %212, 63, !dbg !2262
  br i1 %213, label %214, label %433, !dbg !2263

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2264
  %216 = load i8, ptr %215, align 1, !dbg !2264, !tbaa !894
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
  ], !dbg !2265

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2266

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2054, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2047, metadata !DIExpression()), !dbg !2179
  %219 = icmp ult i64 %123, %129, !dbg !2268
  br i1 %219, label %220, label %222, !dbg !2271

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2268
  store i8 63, ptr %221, align 1, !dbg !2268, !tbaa !894
  br label %222, !dbg !2268

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2271
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2032, metadata !DIExpression()), !dbg !2092
  %224 = icmp ult i64 %223, %129, !dbg !2272
  br i1 %224, label %225, label %227, !dbg !2275

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2272
  store i8 34, ptr %226, align 1, !dbg !2272, !tbaa !894
  br label %227, !dbg !2272

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2275
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2032, metadata !DIExpression()), !dbg !2092
  %229 = icmp ult i64 %228, %129, !dbg !2276
  br i1 %229, label %230, label %232, !dbg !2279

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2276
  store i8 34, ptr %231, align 1, !dbg !2276, !tbaa !894
  br label %232, !dbg !2276

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2279
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2032, metadata !DIExpression()), !dbg !2092
  %234 = icmp ult i64 %233, %129, !dbg !2280
  br i1 %234, label %235, label %237, !dbg !2283

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2280
  store i8 63, ptr %236, align 1, !dbg !2280, !tbaa !894
  br label %237, !dbg !2280

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2283
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2032, metadata !DIExpression()), !dbg !2092
  br label %433, !dbg !2284

239:                                              ; preds = %151
  br label %249, !dbg !2285

240:                                              ; preds = %151
  br label %249, !dbg !2286

241:                                              ; preds = %151
  br label %247, !dbg !2287

242:                                              ; preds = %151
  br label %247, !dbg !2288

243:                                              ; preds = %151
  br label %249, !dbg !2289

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2290

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2291

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2294

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2296
  call void @llvm.dbg.label(metadata !2055), !dbg !2297
  br i1 %118, label %.loopexit8, label %249, !dbg !2298

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2296
  call void @llvm.dbg.label(metadata !2058), !dbg !2300
  br i1 %108, label %487, label %444, !dbg !2301

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2302

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2303, !tbaa !894
  %254 = icmp eq i8 %253, 0, !dbg !2305
  br i1 %254, label %255, label %433, !dbg !2306

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2307
  br i1 %256, label %257, label %433, !dbg !2309

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2053, metadata !DIExpression()), !dbg !2188
  br label %258, !dbg !2310

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2053, metadata !DIExpression()), !dbg !2188
  br i1 %115, label %260, label %433, !dbg !2311

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2313

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2038, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2053, metadata !DIExpression()), !dbg !2188
  br i1 %115, label %262, label %433, !dbg !2314

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2315

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2318
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2320
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2320
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2320
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2023, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2033, metadata !DIExpression()), !dbg !2092
  %269 = icmp ult i64 %123, %268, !dbg !2321
  br i1 %269, label %270, label %272, !dbg !2324

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2321
  store i8 39, ptr %271, align 1, !dbg !2321, !tbaa !894
  br label %272, !dbg !2321

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2324
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2032, metadata !DIExpression()), !dbg !2092
  %274 = icmp ult i64 %273, %268, !dbg !2325
  br i1 %274, label %275, label %277, !dbg !2328

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2325
  store i8 92, ptr %276, align 1, !dbg !2325, !tbaa !894
  br label %277, !dbg !2325

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2328
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2032, metadata !DIExpression()), !dbg !2092
  %279 = icmp ult i64 %278, %268, !dbg !2329
  br i1 %279, label %280, label %282, !dbg !2332

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2329
  store i8 39, ptr %281, align 1, !dbg !2329, !tbaa !894
  br label %282, !dbg !2329

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2332
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2041, metadata !DIExpression()), !dbg !2092
  br label %433, !dbg !2333

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2334

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2059, metadata !DIExpression()), !dbg !2335
  %286 = tail call ptr @__ctype_b_loc() #41, !dbg !2336
  %287 = load ptr, ptr %286, align 8, !dbg !2336, !tbaa !821
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2336
  %290 = load i16, ptr %289, align 2, !dbg !2336, !tbaa !926
  %291 = and i16 %290, 16384, !dbg !2336
  %292 = icmp ne i16 %291, 0, !dbg !2338
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2061, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2335
  br label %334, !dbg !2339

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2340
  call void @llvm.dbg.value(metadata ptr %14, metadata !2117, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata ptr %14, metadata !2125, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i32 0, metadata !2128, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 8, metadata !2129, metadata !DIExpression()), !dbg !2343
  store i64 0, ptr %14, align 8, !dbg !2345
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2059, metadata !DIExpression()), !dbg !2335
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2061, metadata !DIExpression()), !dbg !2335
  %294 = icmp eq i64 %152, -1, !dbg !2346
  br i1 %294, label %295, label %297, !dbg !2348

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2349
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2025, metadata !DIExpression()), !dbg !2092
  br label %297, !dbg !2350

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2188
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2025, metadata !DIExpression()), !dbg !2092
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2351
  %299 = sub i64 %298, %128, !dbg !2352
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #38, !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2069, metadata !DIExpression()), !dbg !2091
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2354

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2059, metadata !DIExpression()), !dbg !2335
  %302 = icmp ult i64 %128, %298, !dbg !2355
  br i1 %302, label %.preheader5, label %329, !dbg !2357

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2358

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2061, metadata !DIExpression()), !dbg !2335
  br label %329, !dbg !2359

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2059, metadata !DIExpression()), !dbg !2335
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2361
  %308 = load i8, ptr %307, align 1, !dbg !2361, !tbaa !894
  %309 = icmp eq i8 %308, 0, !dbg !2357
  br i1 %309, label %.loopexit6, label %310, !dbg !2358

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2362
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2059, metadata !DIExpression()), !dbg !2335
  %312 = add i64 %311, %128, !dbg !2363
  %313 = icmp eq i64 %311, %299, !dbg !2355
  br i1 %313, label %.loopexit6, label %304, !dbg !2357, !llvm.loop !2364

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2070, metadata !DIExpression()), !dbg !2365
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2366
  %317 = and i1 %316, %109, !dbg !2366
  br i1 %317, label %.preheader3, label %325, !dbg !2366

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2367

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2070, metadata !DIExpression()), !dbg !2365
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2368
  %321 = load i8, ptr %320, align 1, !dbg !2368, !tbaa !894
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2370

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2371
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2070, metadata !DIExpression()), !dbg !2365
  %324 = icmp eq i64 %323, %300, !dbg !2372
  br i1 %324, label %.loopexit4, label %318, !dbg !2367, !llvm.loop !2373

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2375

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2375, !tbaa !885
  call void @llvm.dbg.value(metadata i32 %326, metadata !2377, metadata !DIExpression()), !dbg !2385
  %327 = call i32 @iswprint(i32 noundef %326) #38, !dbg !2387
  %328 = icmp ne i32 %327, 0, !dbg !2388
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2061, metadata !DIExpression()), !dbg !2335
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2059, metadata !DIExpression()), !dbg !2335
  br label %329, !dbg !2389

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2390

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2061, metadata !DIExpression()), !dbg !2335
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2059, metadata !DIExpression()), !dbg !2335
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2390
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2391
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2061, metadata !DIExpression()), !dbg !2335
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2059, metadata !DIExpression()), !dbg !2335
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2390
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2391
  call void @llvm.dbg.label(metadata !2083), !dbg !2392
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2393
  br label %624, !dbg !2393

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2188
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2395
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2061, metadata !DIExpression()), !dbg !2335
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2059, metadata !DIExpression()), !dbg !2335
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2025, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2053, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2188
  %338 = icmp ult i64 %336, 2, !dbg !2396
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2397
  br i1 %340, label %433, label %341, !dbg !2397

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2398
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2078, metadata !DIExpression()), !dbg !2399
  br label %343, !dbg !2400

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2092
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2179
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2054, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2052, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2049, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2047, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2041, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2032, metadata !DIExpression()), !dbg !2092
  br i1 %339, label %394, label %350, !dbg !2401

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2406

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2052, metadata !DIExpression()), !dbg !2188
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2409
  br i1 %352, label %369, label %353, !dbg !2409

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2411
  br i1 %354, label %355, label %357, !dbg !2415

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2411
  store i8 39, ptr %356, align 1, !dbg !2411, !tbaa !894
  br label %357, !dbg !2411

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2415
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2032, metadata !DIExpression()), !dbg !2092
  %359 = icmp ult i64 %358, %129, !dbg !2416
  br i1 %359, label %360, label %362, !dbg !2419

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2416
  store i8 36, ptr %361, align 1, !dbg !2416, !tbaa !894
  br label %362, !dbg !2416

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2419
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2032, metadata !DIExpression()), !dbg !2092
  %364 = icmp ult i64 %363, %129, !dbg !2420
  br i1 %364, label %365, label %367, !dbg !2423

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2420
  store i8 39, ptr %366, align 1, !dbg !2420, !tbaa !894
  br label %367, !dbg !2420

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2041, metadata !DIExpression()), !dbg !2092
  br label %369, !dbg !2424

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2092
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2041, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2032, metadata !DIExpression()), !dbg !2092
  %372 = icmp ult i64 %370, %129, !dbg !2425
  br i1 %372, label %373, label %375, !dbg !2428

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2425
  store i8 92, ptr %374, align 1, !dbg !2425, !tbaa !894
  br label %375, !dbg !2425

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2428
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2032, metadata !DIExpression()), !dbg !2092
  %377 = icmp ult i64 %376, %129, !dbg !2429
  br i1 %377, label %378, label %382, !dbg !2432

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2429
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2429
  store i8 %380, ptr %381, align 1, !dbg !2429, !tbaa !894
  br label %382, !dbg !2429

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2432
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2032, metadata !DIExpression()), !dbg !2092
  %384 = icmp ult i64 %383, %129, !dbg !2433
  br i1 %384, label %385, label %390, !dbg !2436

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2433
  %388 = or disjoint i8 %387, 48, !dbg !2433
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2433
  store i8 %388, ptr %389, align 1, !dbg !2433, !tbaa !894
  br label %390, !dbg !2433

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2436
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2032, metadata !DIExpression()), !dbg !2092
  %392 = and i8 %349, 7, !dbg !2437
  %393 = or disjoint i8 %392, 48, !dbg !2438
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2054, metadata !DIExpression()), !dbg !2188
  br label %401, !dbg !2439

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2440

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2441
  br i1 %396, label %397, label %399, !dbg !2446

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2441
  store i8 92, ptr %398, align 1, !dbg !2441, !tbaa !894
  br label %399, !dbg !2441

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2446
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2049, metadata !DIExpression()), !dbg !2188
  br label %401, !dbg !2447

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2092
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2054, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2052, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2049, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2041, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2032, metadata !DIExpression()), !dbg !2092
  %407 = add i64 %346, 1, !dbg !2448
  %408 = icmp ugt i64 %342, %407, !dbg !2450
  br i1 %408, label %409, label %.loopexit2, !dbg !2451

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2452
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2452
  br i1 %411, label %423, label %412, !dbg !2452

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2455
  br i1 %413, label %414, label %416, !dbg !2459

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2455
  store i8 39, ptr %415, align 1, !dbg !2455, !tbaa !894
  br label %416, !dbg !2455

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2459
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2032, metadata !DIExpression()), !dbg !2092
  %418 = icmp ult i64 %417, %129, !dbg !2460
  br i1 %418, label %419, label %421, !dbg !2463

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2460
  store i8 39, ptr %420, align 1, !dbg !2460, !tbaa !894
  br label %421, !dbg !2460

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2463
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2041, metadata !DIExpression()), !dbg !2092
  br label %423, !dbg !2464

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2465
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2041, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2032, metadata !DIExpression()), !dbg !2092
  %426 = icmp ult i64 %424, %129, !dbg !2466
  br i1 %426, label %427, label %429, !dbg !2469

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2466
  store i8 %406, ptr %428, align 1, !dbg !2466, !tbaa !894
  br label %429, !dbg !2466

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2469
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2047, metadata !DIExpression()), !dbg !2179
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2470
  %432 = load i8, ptr %431, align 1, !dbg !2470, !tbaa !894
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2054, metadata !DIExpression()), !dbg !2188
  br label %343, !dbg !2471, !llvm.loop !2472

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2475
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2092
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2096
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2179
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2188
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2023, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2054, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2053, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2052, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2049, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2047, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2041, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2033, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2025, metadata !DIExpression()), !dbg !2092
  br i1 %111, label %455, label %444, !dbg !2476

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
  br i1 %120, label %456, label %476, !dbg !2478

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2479

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
  %467 = lshr i8 %458, 5, !dbg !2480
  %468 = zext nneg i8 %467 to i64, !dbg !2480
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2481
  %470 = load i32, ptr %469, align 4, !dbg !2481, !tbaa !885
  %471 = and i8 %458, 31, !dbg !2482
  %472 = zext nneg i8 %471 to i32, !dbg !2482
  %473 = shl nuw i32 1, %472, !dbg !2483
  %474 = and i32 %470, %473, !dbg !2483
  %475 = icmp eq i32 %474, 0, !dbg !2483
  br i1 %475, label %476, label %487, !dbg !2484

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
  br i1 %153, label %487, label %523, !dbg !2485

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2475
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2092
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2096
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2486
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2188
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2023, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2054, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2053, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2047, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2041, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2033, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2025, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.label(metadata !2081), !dbg !2487
  br i1 %109, label %.loopexit8, label %497, !dbg !2488

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2052, metadata !DIExpression()), !dbg !2188
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2490
  br i1 %498, label %515, label %499, !dbg !2490

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2492
  br i1 %500, label %501, label %503, !dbg !2496

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2492
  store i8 39, ptr %502, align 1, !dbg !2492, !tbaa !894
  br label %503, !dbg !2492

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2496
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2032, metadata !DIExpression()), !dbg !2092
  %505 = icmp ult i64 %504, %496, !dbg !2497
  br i1 %505, label %506, label %508, !dbg !2500

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2497
  store i8 36, ptr %507, align 1, !dbg !2497, !tbaa !894
  br label %508, !dbg !2497

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2500
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2032, metadata !DIExpression()), !dbg !2092
  %510 = icmp ult i64 %509, %496, !dbg !2501
  br i1 %510, label %511, label %513, !dbg !2504

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2501
  store i8 39, ptr %512, align 1, !dbg !2501, !tbaa !894
  br label %513, !dbg !2501

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2504
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2041, metadata !DIExpression()), !dbg !2092
  br label %515, !dbg !2505

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2188
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2041, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2032, metadata !DIExpression()), !dbg !2092
  %518 = icmp ult i64 %516, %496, !dbg !2506
  br i1 %518, label %519, label %521, !dbg !2509

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2506
  store i8 92, ptr %520, align 1, !dbg !2506, !tbaa !894
  br label %521, !dbg !2506

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2509
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2023, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2054, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2053, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2052, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2047, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2041, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2033, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2025, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.label(metadata !2082), !dbg !2510
  br label %547, !dbg !2511

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2092
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2188
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2179
  br label %523, !dbg !2511

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2475
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2092
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2096
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2486
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2514
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2023, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2054, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2053, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2052, metadata !DIExpression()), !dbg !2188
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2047, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2041, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2033, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2025, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.label(metadata !2082), !dbg !2510
  %534 = xor i1 %528, true, !dbg !2511
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2511
  br i1 %535, label %547, label %536, !dbg !2511

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2515
  br i1 %537, label %538, label %540, !dbg !2519

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2515
  store i8 39, ptr %539, align 1, !dbg !2515, !tbaa !894
  br label %540, !dbg !2515

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2519
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2032, metadata !DIExpression()), !dbg !2092
  %542 = icmp ult i64 %541, %533, !dbg !2520
  br i1 %542, label %543, label %545, !dbg !2523

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2520
  store i8 39, ptr %544, align 1, !dbg !2520, !tbaa !894
  br label %545, !dbg !2520

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2523
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2041, metadata !DIExpression()), !dbg !2092
  br label %547, !dbg !2524

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2188
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2041, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2032, metadata !DIExpression()), !dbg !2092
  %557 = icmp ult i64 %555, %548, !dbg !2525
  br i1 %557, label %558, label %560, !dbg !2528

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2525
  store i8 %549, ptr %559, align 1, !dbg !2525, !tbaa !894
  br label %560, !dbg !2525

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2528
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2032, metadata !DIExpression()), !dbg !2092
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2529
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2039, metadata !DIExpression()), !dbg !2092
  br label %563, !dbg !2530

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2475
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2092
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2096
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2486
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2023, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2047, metadata !DIExpression()), !dbg !2179
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2041, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2039, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2033, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2025, metadata !DIExpression()), !dbg !2092
  %572 = add i64 %570, 1, !dbg !2531
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2047, metadata !DIExpression()), !dbg !2179
  br label %121, !dbg !2532, !llvm.loop !2533

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2167
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2096
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2023, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2039, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2038, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2033, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2032, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2025, metadata !DIExpression()), !dbg !2092
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2535
  %575 = xor i1 %109, true, !dbg !2537
  %576 = or i1 %574, %575, !dbg !2537
  %577 = or i1 %576, %110, !dbg !2537
  br i1 %577, label %578, label %.loopexit13, !dbg !2537

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2538
  %580 = xor i1 %.lcssa38, true, !dbg !2538
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2538
  br i1 %581, label %589, label %582, !dbg !2538

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2540

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2096
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2542
  br label %638, !dbg !2544

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2545
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2547
  br i1 %588, label %27, label %589, !dbg !2547

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2092
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2167
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2548
  %592 = or i1 %591, %590, !dbg !2550
  br i1 %592, label %608, label %593, !dbg !2550

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2034, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2032, metadata !DIExpression()), !dbg !2092
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2551, !tbaa !894
  %595 = icmp eq i8 %594, 0, !dbg !2554
  br i1 %595, label %608, label %.preheader, !dbg !2554

.preheader:                                       ; preds = %593
  br label %596, !dbg !2554

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2034, metadata !DIExpression()), !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2032, metadata !DIExpression()), !dbg !2092
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2555
  br i1 %600, label %601, label %603, !dbg !2558

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2555
  store i8 %597, ptr %602, align 1, !dbg !2555, !tbaa !894
  br label %603, !dbg !2555

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2558
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2032, metadata !DIExpression()), !dbg !2092
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2559
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2034, metadata !DIExpression()), !dbg !2092
  %606 = load i8, ptr %605, align 1, !dbg !2551, !tbaa !894
  %607 = icmp eq i8 %606, 0, !dbg !2554
  br i1 %607, label %.loopexit, label %596, !dbg !2554, !llvm.loop !2560

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2558
  br label %608, !dbg !2562

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2167
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2032, metadata !DIExpression()), !dbg !2092
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2562
  br i1 %610, label %611, label %638, !dbg !2564

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2565
  store i8 0, ptr %612, align 1, !dbg !2566, !tbaa !894
  br label %638, !dbg !2565

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2083), !dbg !2392
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2567
  br i1 %614, label %624, label %630, !dbg !2393

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2188
  br label %615, !dbg !2567

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2567

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2567

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2083), !dbg !2392
  %622 = icmp eq i32 %616, 2, !dbg !2567
  %623 = select i1 %619, i32 4, i32 2, !dbg !2393
  br i1 %622, label %624, label %630, !dbg !2393

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2393

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2194
  br label %630, !dbg !2568

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2026, metadata !DIExpression()), !dbg !2092
  %636 = and i32 %5, -3, !dbg !2568
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2569
  br label %638, !dbg !2570

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2571
}

; Function Attrs: nounwind
declare !dbg !2572 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2575 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2577 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2581, metadata !DIExpression()), !dbg !2584
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2582, metadata !DIExpression()), !dbg !2584
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2583, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata ptr %0, metadata !2585, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i64 %1, metadata !2590, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata ptr null, metadata !2591, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata ptr %2, metadata !2592, metadata !DIExpression()), !dbg !2598
  %4 = icmp eq ptr %2, null, !dbg !2600
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2600
  call void @llvm.dbg.value(metadata ptr %5, metadata !2593, metadata !DIExpression()), !dbg !2598
  %6 = tail call ptr @__errno_location() #41, !dbg !2601
  %7 = load i32, ptr %6, align 4, !dbg !2601, !tbaa !885
  call void @llvm.dbg.value(metadata i32 %7, metadata !2594, metadata !DIExpression()), !dbg !2598
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2602
  %9 = load i32, ptr %8, align 4, !dbg !2602, !tbaa !1966
  %10 = or i32 %9, 1, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %10, metadata !2595, metadata !DIExpression()), !dbg !2598
  %11 = load i32, ptr %5, align 8, !dbg !2604, !tbaa !1916
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2605
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2606
  %14 = load ptr, ptr %13, align 8, !dbg !2606, !tbaa !1987
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2607
  %16 = load ptr, ptr %15, align 8, !dbg !2607, !tbaa !1990
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2608
  %18 = add i64 %17, 1, !dbg !2609
  call void @llvm.dbg.value(metadata i64 %18, metadata !2596, metadata !DIExpression()), !dbg !2598
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2610
  call void @llvm.dbg.value(metadata ptr %19, metadata !2597, metadata !DIExpression()), !dbg !2598
  %20 = load i32, ptr %5, align 8, !dbg !2611, !tbaa !1916
  %21 = load ptr, ptr %13, align 8, !dbg !2612, !tbaa !1987
  %22 = load ptr, ptr %15, align 8, !dbg !2613, !tbaa !1990
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2614
  store i32 %7, ptr %6, align 4, !dbg !2615, !tbaa !885
  ret ptr %19, !dbg !2616
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2586 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2585, metadata !DIExpression()), !dbg !2617
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2590, metadata !DIExpression()), !dbg !2617
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2591, metadata !DIExpression()), !dbg !2617
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2592, metadata !DIExpression()), !dbg !2617
  %5 = icmp eq ptr %3, null, !dbg !2618
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2618
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2593, metadata !DIExpression()), !dbg !2617
  %7 = tail call ptr @__errno_location() #41, !dbg !2619
  %8 = load i32, ptr %7, align 4, !dbg !2619, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2594, metadata !DIExpression()), !dbg !2617
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2620
  %10 = load i32, ptr %9, align 4, !dbg !2620, !tbaa !1966
  %11 = icmp eq ptr %2, null, !dbg !2621
  %12 = zext i1 %11 to i32, !dbg !2621
  %13 = or i32 %10, %12, !dbg !2622
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2595, metadata !DIExpression()), !dbg !2617
  %14 = load i32, ptr %6, align 8, !dbg !2623, !tbaa !1916
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2624
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2625
  %17 = load ptr, ptr %16, align 8, !dbg !2625, !tbaa !1987
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2626
  %19 = load ptr, ptr %18, align 8, !dbg !2626, !tbaa !1990
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2627
  %21 = add i64 %20, 1, !dbg !2628
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2596, metadata !DIExpression()), !dbg !2617
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2629
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2597, metadata !DIExpression()), !dbg !2617
  %23 = load i32, ptr %6, align 8, !dbg !2630, !tbaa !1916
  %24 = load ptr, ptr %16, align 8, !dbg !2631, !tbaa !1987
  %25 = load ptr, ptr %18, align 8, !dbg !2632, !tbaa !1990
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2633
  store i32 %8, ptr %7, align 4, !dbg !2634, !tbaa !885
  br i1 %11, label %28, label %27, !dbg !2635

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2636, !tbaa !1394
  br label %28, !dbg !2638

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2639
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2640 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2645, !tbaa !821
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2642, metadata !DIExpression()), !dbg !2646
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2643, metadata !DIExpression()), !dbg !2647
  %2 = load i32, ptr @nslots, align 4, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2643, metadata !DIExpression()), !dbg !2647
  %3 = icmp sgt i32 %2, 1, !dbg !2648
  br i1 %3, label %4, label %6, !dbg !2650

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2648
  br label %10, !dbg !2650

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2651

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2651
  %8 = load ptr, ptr %7, align 8, !dbg !2651, !tbaa !2653
  %9 = icmp eq ptr %8, @slot0, !dbg !2655
  br i1 %9, label %17, label %16, !dbg !2656

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2643, metadata !DIExpression()), !dbg !2647
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2657
  %13 = load ptr, ptr %12, align 8, !dbg !2657, !tbaa !2653
  tail call void @free(ptr noundef %13) #38, !dbg !2658
  %14 = add nuw nsw i64 %11, 1, !dbg !2659
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2643, metadata !DIExpression()), !dbg !2647
  %15 = icmp eq i64 %14, %5, !dbg !2648
  br i1 %15, label %.loopexit, label %10, !dbg !2650, !llvm.loop !2660

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2662
  store i64 256, ptr @slotvec0, align 8, !dbg !2664, !tbaa !2665
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2666, !tbaa !2653
  br label %17, !dbg !2667

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2668
  br i1 %18, label %20, label %19, !dbg !2670

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2671
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2673, !tbaa !821
  br label %20, !dbg !2674

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2675, !tbaa !885
  ret void, !dbg !2676
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2677 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2679, metadata !DIExpression()), !dbg !2681
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2680, metadata !DIExpression()), !dbg !2681
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2682
  ret ptr %3, !dbg !2683
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2684 {
  %5 = alloca i64, align 8, !DIAssignID !2704
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2698, metadata !DIExpression(), metadata !2704, metadata ptr %5, metadata !DIExpression()), !dbg !2705
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2688, metadata !DIExpression()), !dbg !2706
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2689, metadata !DIExpression()), !dbg !2706
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2690, metadata !DIExpression()), !dbg !2706
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2691, metadata !DIExpression()), !dbg !2706
  %6 = tail call ptr @__errno_location() #41, !dbg !2707
  %7 = load i32, ptr %6, align 4, !dbg !2707, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2692, metadata !DIExpression()), !dbg !2706
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2708, !tbaa !821
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2693, metadata !DIExpression()), !dbg !2706
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2694, metadata !DIExpression()), !dbg !2706
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2709
  br i1 %9, label %10, label %11, !dbg !2709

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2711
  unreachable, !dbg !2711

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2712, !tbaa !885
  %13 = icmp sgt i32 %12, %0, !dbg !2713
  br i1 %13, label %32, label %14, !dbg !2714

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2715
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2695, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2705
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2716
  %16 = sext i32 %12 to i64, !dbg !2717
  store i64 %16, ptr %5, align 8, !dbg !2718, !tbaa !1394, !DIAssignID !2719
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2698, metadata !DIExpression(), metadata !2719, metadata ptr %5, metadata !DIExpression()), !dbg !2705
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2720
  %18 = add nuw nsw i32 %0, 1, !dbg !2721
  %19 = sub i32 %18, %12, !dbg !2722
  %20 = sext i32 %19 to i64, !dbg !2723
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2724
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2693, metadata !DIExpression()), !dbg !2706
  store ptr %21, ptr @slotvec, align 8, !dbg !2725, !tbaa !821
  br i1 %15, label %22, label %23, !dbg !2726

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2727, !tbaa.struct !2729
  br label %23, !dbg !2730

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2731, !tbaa !885
  %25 = sext i32 %24 to i64, !dbg !2732
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2732
  %27 = load i64, ptr %5, align 8, !dbg !2733, !tbaa !1394
  %28 = sub nsw i64 %27, %25, !dbg !2734
  %29 = shl i64 %28, 4, !dbg !2735
  call void @llvm.dbg.value(metadata ptr %26, metadata !2125, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i32 0, metadata !2128, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %29, metadata !2129, metadata !DIExpression()), !dbg !2736
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2738
  %30 = load i64, ptr %5, align 8, !dbg !2739, !tbaa !1394
  %31 = trunc i64 %30 to i32, !dbg !2739
  store i32 %31, ptr @nslots, align 4, !dbg !2740, !tbaa !885
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2741
  br label %32, !dbg !2742

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2706
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2693, metadata !DIExpression()), !dbg !2706
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2743
  %36 = load i64, ptr %35, align 8, !dbg !2744, !tbaa !2665
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2699, metadata !DIExpression()), !dbg !2745
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2746
  %38 = load ptr, ptr %37, align 8, !dbg !2746, !tbaa !2653
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2701, metadata !DIExpression()), !dbg !2745
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2747
  %40 = load i32, ptr %39, align 4, !dbg !2747, !tbaa !1966
  %41 = or i32 %40, 1, !dbg !2748
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2702, metadata !DIExpression()), !dbg !2745
  %42 = load i32, ptr %3, align 8, !dbg !2749, !tbaa !1916
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2750
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2751
  %45 = load ptr, ptr %44, align 8, !dbg !2751, !tbaa !1987
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2752
  %47 = load ptr, ptr %46, align 8, !dbg !2752, !tbaa !1990
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2753
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2703, metadata !DIExpression()), !dbg !2745
  %49 = icmp ugt i64 %36, %48, !dbg !2754
  br i1 %49, label %60, label %50, !dbg !2756

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2757
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2699, metadata !DIExpression()), !dbg !2745
  store i64 %51, ptr %35, align 8, !dbg !2759, !tbaa !2665
  %52 = icmp eq ptr %38, @slot0, !dbg !2760
  br i1 %52, label %54, label %53, !dbg !2762

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2763
  br label %54, !dbg !2763

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2764
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2701, metadata !DIExpression()), !dbg !2745
  store ptr %55, ptr %37, align 8, !dbg !2765, !tbaa !2653
  %56 = load i32, ptr %3, align 8, !dbg !2766, !tbaa !1916
  %57 = load ptr, ptr %44, align 8, !dbg !2767, !tbaa !1987
  %58 = load ptr, ptr %46, align 8, !dbg !2768, !tbaa !1990
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2769
  br label %60, !dbg !2770

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2745
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2701, metadata !DIExpression()), !dbg !2745
  store i32 %7, ptr %6, align 4, !dbg !2771, !tbaa !885
  ret ptr %61, !dbg !2772
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2773 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2777, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2778, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2779, metadata !DIExpression()), !dbg !2780
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2781
  ret ptr %4, !dbg !2782
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2783 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2785, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i32 0, metadata !2679, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata ptr %0, metadata !2680, metadata !DIExpression()), !dbg !2787
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2789
  ret ptr %2, !dbg !2790
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2791 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2795, metadata !DIExpression()), !dbg !2797
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2796, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i32 0, metadata !2777, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata ptr %0, metadata !2778, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i64 %1, metadata !2779, metadata !DIExpression()), !dbg !2798
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2800
  ret ptr %3, !dbg !2801
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2802 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2810
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(), metadata !2810, metadata ptr %4, metadata !DIExpression()), !dbg !2811
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2806, metadata !DIExpression()), !dbg !2811
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2807, metadata !DIExpression()), !dbg !2811
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2808, metadata !DIExpression()), !dbg !2811
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2812
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2813), !dbg !2816
  call void @llvm.dbg.value(metadata i32 %1, metadata !2817, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2822, metadata !DIExpression()), !dbg !2825
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2825, !alias.scope !2813, !DIAssignID !2826
  call void @llvm.dbg.assign(metadata i8 0, metadata !2809, metadata !DIExpression(), metadata !2826, metadata ptr %4, metadata !DIExpression()), !dbg !2811
  %5 = icmp eq i32 %1, 10, !dbg !2827
  br i1 %5, label %6, label %7, !dbg !2829

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2830, !noalias !2813
  unreachable, !dbg !2830

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2831, !tbaa !1916, !alias.scope !2813, !DIAssignID !2832
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2832, metadata ptr %4, metadata !DIExpression()), !dbg !2811
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2833
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2834
  ret ptr %8, !dbg !2835
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2836 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2845
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2844, metadata !DIExpression(), metadata !2845, metadata ptr %5, metadata !DIExpression()), !dbg !2846
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2840, metadata !DIExpression()), !dbg !2846
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2841, metadata !DIExpression()), !dbg !2846
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2842, metadata !DIExpression()), !dbg !2846
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2843, metadata !DIExpression()), !dbg !2846
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2847
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2848), !dbg !2851
  call void @llvm.dbg.value(metadata i32 %1, metadata !2817, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2822, metadata !DIExpression()), !dbg !2854
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2854, !alias.scope !2848, !DIAssignID !2855
  call void @llvm.dbg.assign(metadata i8 0, metadata !2844, metadata !DIExpression(), metadata !2855, metadata ptr %5, metadata !DIExpression()), !dbg !2846
  %6 = icmp eq i32 %1, 10, !dbg !2856
  br i1 %6, label %7, label %8, !dbg !2857

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2858, !noalias !2848
  unreachable, !dbg !2858

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2859, !tbaa !1916, !alias.scope !2848, !DIAssignID !2860
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2860, metadata ptr %5, metadata !DIExpression()), !dbg !2846
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2861
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2862
  ret ptr %9, !dbg !2863
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2864 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2870
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2868, metadata !DIExpression()), !dbg !2871
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2869, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(), metadata !2870, metadata ptr %3, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 0, metadata !2806, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32 %0, metadata !2807, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata ptr %1, metadata !2808, metadata !DIExpression()), !dbg !2872
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2874
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2875), !dbg !2878
  call void @llvm.dbg.value(metadata i32 %0, metadata !2817, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2822, metadata !DIExpression()), !dbg !2881
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2881, !alias.scope !2875, !DIAssignID !2882
  call void @llvm.dbg.assign(metadata i8 0, metadata !2809, metadata !DIExpression(), metadata !2882, metadata ptr %3, metadata !DIExpression()), !dbg !2872
  %4 = icmp eq i32 %0, 10, !dbg !2883
  br i1 %4, label %5, label %6, !dbg !2884

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2885, !noalias !2875
  unreachable, !dbg !2885

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2886, !tbaa !1916, !alias.scope !2875, !DIAssignID !2887
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2887, metadata ptr %3, metadata !DIExpression()), !dbg !2872
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2888
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2889
  ret ptr %7, !dbg !2890
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2891 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2898
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2895, metadata !DIExpression()), !dbg !2899
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2896, metadata !DIExpression()), !dbg !2899
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2897, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2844, metadata !DIExpression(), metadata !2898, metadata ptr %4, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i32 0, metadata !2840, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i32 %0, metadata !2841, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata ptr %1, metadata !2842, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %2, metadata !2843, metadata !DIExpression()), !dbg !2900
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2902
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2903), !dbg !2906
  call void @llvm.dbg.value(metadata i32 %0, metadata !2817, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2822, metadata !DIExpression()), !dbg !2909
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2909, !alias.scope !2903, !DIAssignID !2910
  call void @llvm.dbg.assign(metadata i8 0, metadata !2844, metadata !DIExpression(), metadata !2910, metadata ptr %4, metadata !DIExpression()), !dbg !2900
  %5 = icmp eq i32 %0, 10, !dbg !2911
  br i1 %5, label %6, label %7, !dbg !2912

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2913, !noalias !2903
  unreachable, !dbg !2913

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2914, !tbaa !1916, !alias.scope !2903, !DIAssignID !2915
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2844, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2915, metadata ptr %4, metadata !DIExpression()), !dbg !2900
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2916
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2917
  ret ptr %8, !dbg !2918
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2919 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2927
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2926, metadata !DIExpression(), metadata !2927, metadata ptr %4, metadata !DIExpression()), !dbg !2928
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !2928
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2924, metadata !DIExpression()), !dbg !2928
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2925, metadata !DIExpression()), !dbg !2928
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2930, !tbaa.struct !2931, !DIAssignID !2932
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2926, metadata !DIExpression(), metadata !2932, metadata ptr %4, metadata !DIExpression()), !dbg !2928
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1933, metadata !DIExpression()), !dbg !2933
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1934, metadata !DIExpression()), !dbg !2933
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1935, metadata !DIExpression()), !dbg !2933
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1936, metadata !DIExpression()), !dbg !2933
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2935
  %6 = lshr i8 %2, 5, !dbg !2936
  %7 = zext nneg i8 %6 to i64, !dbg !2936
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2937
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1937, metadata !DIExpression()), !dbg !2933
  %9 = and i8 %2, 31, !dbg !2938
  %10 = zext nneg i8 %9 to i32, !dbg !2938
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1939, metadata !DIExpression()), !dbg !2933
  %11 = load i32, ptr %8, align 4, !dbg !2939, !tbaa !885
  %12 = lshr i32 %11, %10, !dbg !2940
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1940, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2933
  %13 = and i32 %12, 1, !dbg !2941
  %14 = xor i32 %13, 1, !dbg !2941
  %15 = shl nuw i32 %14, %10, !dbg !2942
  %16 = xor i32 %15, %11, !dbg !2943
  store i32 %16, ptr %8, align 4, !dbg !2943, !tbaa !885
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2944
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2945
  ret ptr %17, !dbg !2946
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2947 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2953
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2951, metadata !DIExpression()), !dbg !2954
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2952, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2926, metadata !DIExpression(), metadata !2953, metadata ptr %3, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i64 -1, metadata !2924, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i8 %1, metadata !2925, metadata !DIExpression()), !dbg !2955
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2958, !tbaa.struct !2931, !DIAssignID !2959
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2926, metadata !DIExpression(), metadata !2959, metadata ptr %3, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata ptr %3, metadata !1933, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 %1, metadata !1934, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 1, metadata !1935, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8 %1, metadata !1936, metadata !DIExpression()), !dbg !2960
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2962
  %5 = lshr i8 %1, 5, !dbg !2963
  %6 = zext nneg i8 %5 to i64, !dbg !2963
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2964
  call void @llvm.dbg.value(metadata ptr %7, metadata !1937, metadata !DIExpression()), !dbg !2960
  %8 = and i8 %1, 31, !dbg !2965
  %9 = zext nneg i8 %8 to i32, !dbg !2965
  call void @llvm.dbg.value(metadata i32 %9, metadata !1939, metadata !DIExpression()), !dbg !2960
  %10 = load i32, ptr %7, align 4, !dbg !2966, !tbaa !885
  %11 = lshr i32 %10, %9, !dbg !2967
  call void @llvm.dbg.value(metadata i32 %11, metadata !1940, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2960
  %12 = and i32 %11, 1, !dbg !2968
  %13 = xor i32 %12, 1, !dbg !2968
  %14 = shl nuw i32 %13, %9, !dbg !2969
  %15 = xor i32 %14, %10, !dbg !2970
  store i32 %15, ptr %7, align 4, !dbg !2970, !tbaa !885
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2971
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2972
  ret ptr %16, !dbg !2973
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2974 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2977
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2976, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata ptr %0, metadata !2951, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8 58, metadata !2952, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2926, metadata !DIExpression(), metadata !2977, metadata ptr %2, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 -1, metadata !2924, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i8 58, metadata !2925, metadata !DIExpression()), !dbg !2981
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2984, !tbaa.struct !2931, !DIAssignID !2985
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2926, metadata !DIExpression(), metadata !2985, metadata ptr %2, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata ptr %2, metadata !1933, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 58, metadata !1934, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 1, metadata !1935, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 58, metadata !1936, metadata !DIExpression()), !dbg !2986
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2988
  call void @llvm.dbg.value(metadata ptr %3, metadata !1937, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 26, metadata !1939, metadata !DIExpression()), !dbg !2986
  %4 = load i32, ptr %3, align 4, !dbg !2989, !tbaa !885
  call void @llvm.dbg.value(metadata i32 %4, metadata !1940, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2986
  %5 = or i32 %4, 67108864, !dbg !2990
  store i32 %5, ptr %3, align 4, !dbg !2990, !tbaa !885
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2991
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2992
  ret ptr %6, !dbg !2993
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2994 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2998
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2996, metadata !DIExpression()), !dbg !2999
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2997, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2926, metadata !DIExpression(), metadata !2998, metadata ptr %3, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64 %1, metadata !2924, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i8 58, metadata !2925, metadata !DIExpression()), !dbg !3000
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3003, !tbaa.struct !2931, !DIAssignID !3004
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2926, metadata !DIExpression(), metadata !3004, metadata ptr %3, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata ptr %3, metadata !1933, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8 58, metadata !1934, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i32 1, metadata !1935, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8 58, metadata !1936, metadata !DIExpression()), !dbg !3005
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3007
  call void @llvm.dbg.value(metadata ptr %4, metadata !1937, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i32 26, metadata !1939, metadata !DIExpression()), !dbg !3005
  %5 = load i32, ptr %4, align 4, !dbg !3008, !tbaa !885
  call void @llvm.dbg.value(metadata i32 %5, metadata !1940, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3005
  %6 = or i32 %5, 67108864, !dbg !3009
  store i32 %6, ptr %4, align 4, !dbg !3009, !tbaa !885
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3010
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3011
  ret ptr %7, !dbg !3012
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3013 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3019
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3018, metadata !DIExpression(), metadata !3019, metadata ptr %4, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2822, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3021
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3015, metadata !DIExpression()), !dbg !3020
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3016, metadata !DIExpression()), !dbg !3020
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3017, metadata !DIExpression()), !dbg !3020
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3023
  call void @llvm.dbg.value(metadata i32 %1, metadata !2817, metadata !DIExpression()), !dbg !3024
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2822, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3024
  %5 = icmp eq i32 %1, 10, !dbg !3025
  br i1 %5, label %6, label %7, !dbg !3026

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3027, !noalias !3028
  unreachable, !dbg !3027

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2822, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3024
  store i32 %1, ptr %4, align 8, !dbg !3031, !tbaa.struct !2931, !DIAssignID !3032
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3031
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3031
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3018, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3032, metadata ptr %4, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3018, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3033, metadata ptr %8, metadata !DIExpression()), !dbg !3020
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1933, metadata !DIExpression()), !dbg !3034
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1934, metadata !DIExpression()), !dbg !3034
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1935, metadata !DIExpression()), !dbg !3034
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1936, metadata !DIExpression()), !dbg !3034
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3036
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1937, metadata !DIExpression()), !dbg !3034
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1939, metadata !DIExpression()), !dbg !3034
  %10 = load i32, ptr %9, align 4, !dbg !3037, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1940, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3034
  %11 = or i32 %10, 67108864, !dbg !3038
  store i32 %11, ptr %9, align 4, !dbg !3038, !tbaa !885, !DIAssignID !3039
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3018, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3039, metadata ptr %9, metadata !DIExpression()), !dbg !3020
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3040
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3041
  ret ptr %12, !dbg !3042
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3043 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3051
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3047, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3048, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3049, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3050, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3053, metadata !DIExpression(), metadata !3051, metadata ptr %5, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i32 %0, metadata !3058, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %1, metadata !3059, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %2, metadata !3060, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %3, metadata !3061, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 -1, metadata !3062, metadata !DIExpression()), !dbg !3063
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3066, !tbaa.struct !2931, !DIAssignID !3067
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3053, metadata !DIExpression(), metadata !3067, metadata ptr %5, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3068, metadata ptr undef, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata ptr %5, metadata !1973, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %1, metadata !1974, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %2, metadata !1975, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %5, metadata !1973, metadata !DIExpression()), !dbg !3069
  store i32 10, ptr %5, align 8, !dbg !3071, !tbaa !1916, !DIAssignID !3072
  call void @llvm.dbg.assign(metadata i32 10, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3072, metadata ptr %5, metadata !DIExpression()), !dbg !3063
  %6 = icmp ne ptr %1, null, !dbg !3073
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3074
  br i1 %8, label %10, label %9, !dbg !3074

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3075
  unreachable, !dbg !3075

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3076
  store ptr %1, ptr %11, align 8, !dbg !3077, !tbaa !1987, !DIAssignID !3078
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3078, metadata ptr %11, metadata !DIExpression()), !dbg !3063
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3079
  store ptr %2, ptr %12, align 8, !dbg !3080, !tbaa !1990, !DIAssignID !3081
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3081, metadata ptr %12, metadata !DIExpression()), !dbg !3063
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3082
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3083
  ret ptr %13, !dbg !3084
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3054 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3085
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3053, metadata !DIExpression(), metadata !3085, metadata ptr %6, metadata !DIExpression()), !dbg !3086
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3058, metadata !DIExpression()), !dbg !3086
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3059, metadata !DIExpression()), !dbg !3086
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3060, metadata !DIExpression()), !dbg !3086
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3061, metadata !DIExpression()), !dbg !3086
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3062, metadata !DIExpression()), !dbg !3086
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !3087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3088, !tbaa.struct !2931, !DIAssignID !3089
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3053, metadata !DIExpression(), metadata !3089, metadata ptr %6, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3090, metadata ptr undef, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata ptr %6, metadata !1973, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata ptr %1, metadata !1974, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata ptr %2, metadata !1975, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata ptr %6, metadata !1973, metadata !DIExpression()), !dbg !3091
  store i32 10, ptr %6, align 8, !dbg !3093, !tbaa !1916, !DIAssignID !3094
  call void @llvm.dbg.assign(metadata i32 10, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3094, metadata ptr %6, metadata !DIExpression()), !dbg !3086
  %7 = icmp ne ptr %1, null, !dbg !3095
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3096
  br i1 %9, label %11, label %10, !dbg !3096

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !3097
  unreachable, !dbg !3097

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3098
  store ptr %1, ptr %12, align 8, !dbg !3099, !tbaa !1987, !DIAssignID !3100
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3100, metadata ptr %12, metadata !DIExpression()), !dbg !3086
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3101
  store ptr %2, ptr %13, align 8, !dbg !3102, !tbaa !1990, !DIAssignID !3103
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3103, metadata ptr %13, metadata !DIExpression()), !dbg !3086
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3104
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !3105
  ret ptr %14, !dbg !3106
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3107 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3114
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3111, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3112, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3113, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i32 0, metadata !3047, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %0, metadata !3048, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %1, metadata !3049, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %2, metadata !3050, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3053, metadata !DIExpression(), metadata !3114, metadata ptr %4, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 0, metadata !3058, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata ptr %0, metadata !3059, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata ptr %1, metadata !3060, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata ptr %2, metadata !3061, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 -1, metadata !3062, metadata !DIExpression()), !dbg !3118
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3121, !tbaa.struct !2931, !DIAssignID !3122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3053, metadata !DIExpression(), metadata !3122, metadata ptr %4, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3123, metadata ptr undef, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata ptr %4, metadata !1973, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata ptr %0, metadata !1974, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata ptr %1, metadata !1975, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata ptr %4, metadata !1973, metadata !DIExpression()), !dbg !3124
  store i32 10, ptr %4, align 8, !dbg !3126, !tbaa !1916, !DIAssignID !3127
  call void @llvm.dbg.assign(metadata i32 10, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3127, metadata ptr %4, metadata !DIExpression()), !dbg !3118
  %5 = icmp ne ptr %0, null, !dbg !3128
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3129
  br i1 %7, label %9, label %8, !dbg !3129

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3130
  unreachable, !dbg !3130

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3131
  store ptr %0, ptr %10, align 8, !dbg !3132, !tbaa !1987, !DIAssignID !3133
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3133, metadata ptr %10, metadata !DIExpression()), !dbg !3118
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3134
  store ptr %1, ptr %11, align 8, !dbg !3135, !tbaa !1990, !DIAssignID !3136
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3136, metadata ptr %11, metadata !DIExpression()), !dbg !3118
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3137
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3138
  ret ptr %12, !dbg !3139
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3140 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3148
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3144, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3145, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3146, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3147, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3053, metadata !DIExpression(), metadata !3148, metadata ptr %5, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i32 0, metadata !3058, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata ptr %0, metadata !3059, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata ptr %1, metadata !3060, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata ptr %2, metadata !3061, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 %3, metadata !3062, metadata !DIExpression()), !dbg !3150
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3153, !tbaa.struct !2931, !DIAssignID !3154
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3053, metadata !DIExpression(), metadata !3154, metadata ptr %5, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3155, metadata ptr undef, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata ptr %5, metadata !1973, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata ptr %0, metadata !1974, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata ptr %1, metadata !1975, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata ptr %5, metadata !1973, metadata !DIExpression()), !dbg !3156
  store i32 10, ptr %5, align 8, !dbg !3158, !tbaa !1916, !DIAssignID !3159
  call void @llvm.dbg.assign(metadata i32 10, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3159, metadata ptr %5, metadata !DIExpression()), !dbg !3150
  %6 = icmp ne ptr %0, null, !dbg !3160
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3161
  br i1 %8, label %10, label %9, !dbg !3161

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3162
  unreachable, !dbg !3162

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3163
  store ptr %0, ptr %11, align 8, !dbg !3164, !tbaa !1987, !DIAssignID !3165
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3165, metadata ptr %11, metadata !DIExpression()), !dbg !3150
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3166
  store ptr %1, ptr %12, align 8, !dbg !3167, !tbaa !1990, !DIAssignID !3168
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3053, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3168, metadata ptr %12, metadata !DIExpression()), !dbg !3150
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3169
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3170
  ret ptr %13, !dbg !3171
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3172 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3176, metadata !DIExpression()), !dbg !3179
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3177, metadata !DIExpression()), !dbg !3179
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3178, metadata !DIExpression()), !dbg !3179
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3180
  ret ptr %4, !dbg !3181
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3182 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3186, metadata !DIExpression()), !dbg !3188
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3187, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i32 0, metadata !3176, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata ptr %0, metadata !3177, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 %1, metadata !3178, metadata !DIExpression()), !dbg !3189
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3191
  ret ptr %3, !dbg !3192
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3193 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3197, metadata !DIExpression()), !dbg !3199
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3198, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i32 %0, metadata !3176, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata ptr %1, metadata !3177, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 -1, metadata !3178, metadata !DIExpression()), !dbg !3200
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3202
  ret ptr %3, !dbg !3203
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3204 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3208, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 0, metadata !3197, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata ptr %0, metadata !3198, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i32 0, metadata !3176, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata ptr %0, metadata !3177, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 -1, metadata !3178, metadata !DIExpression()), !dbg !3212
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3214
  ret ptr %2, !dbg !3215
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef ptr @get_root_dev_ino(ptr noundef nonnull writeonly %0) local_unnamed_addr #26 !dbg !3216 {
  %2 = alloca %struct.stat, align 16, !DIAssignID !3250
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3227, metadata !DIExpression(), metadata !3250, metadata ptr %2, metadata !DIExpression()), !dbg !3251
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3226, metadata !DIExpression()), !dbg !3251
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #38, !dbg !3252
  %3 = call i32 @lstat(ptr noundef nonnull @.str.91, ptr noundef nonnull %2) #38, !dbg !3253
  %4 = icmp eq i32 %3, 0, !dbg !3253
  br i1 %4, label %5, label %8, !dbg !3255

5:                                                ; preds = %1
  %6 = load <2 x i64>, ptr %2, align 16, !dbg !3256, !tbaa !1394
  %7 = shufflevector <2 x i64> %6, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !3257
  store <2 x i64> %7, ptr %0, align 8, !dbg !3257, !tbaa !1394
  br label %8, !dbg !3258

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %0, %5 ], [ null, %1 ], !dbg !3251
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #38, !dbg !3259
  ret ptr %9, !dbg !3259
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3260 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3299, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3300, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3301, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3302, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3303, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3304, metadata !DIExpression()), !dbg !3305
  %7 = icmp eq ptr %1, null, !dbg !3306
  br i1 %7, label %10, label %8, !dbg !3308

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.92, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3309
  br label %12, !dbg !3309

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.93, ptr noundef %2, ptr noundef %3) #38, !dbg !3310
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.3.95, i32 noundef 5) #38, !dbg !3311
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3311
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.96, ptr noundef %0), !dbg !3312
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.5.97, i32 noundef 5) #38, !dbg !3313
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.98) #38, !dbg !3313
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.96, ptr noundef %0), !dbg !3314
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
  ], !dbg !3315

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.7.99, i32 noundef 5) #38, !dbg !3316
  %21 = load ptr, ptr %4, align 8, !dbg !3316, !tbaa !821
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3316
  br label %147, !dbg !3318

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.8.100, i32 noundef 5) #38, !dbg !3319
  %25 = load ptr, ptr %4, align 8, !dbg !3319, !tbaa !821
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3319
  %27 = load ptr, ptr %26, align 8, !dbg !3319, !tbaa !821
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3319
  br label %147, !dbg !3320

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.9.101, i32 noundef 5) #38, !dbg !3321
  %31 = load ptr, ptr %4, align 8, !dbg !3321, !tbaa !821
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3321
  %33 = load ptr, ptr %32, align 8, !dbg !3321, !tbaa !821
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3321
  %35 = load ptr, ptr %34, align 8, !dbg !3321, !tbaa !821
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3321
  br label %147, !dbg !3322

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.10.102, i32 noundef 5) #38, !dbg !3323
  %39 = load ptr, ptr %4, align 8, !dbg !3323, !tbaa !821
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3323
  %41 = load ptr, ptr %40, align 8, !dbg !3323, !tbaa !821
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3323
  %43 = load ptr, ptr %42, align 8, !dbg !3323, !tbaa !821
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3323
  %45 = load ptr, ptr %44, align 8, !dbg !3323, !tbaa !821
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3323
  br label %147, !dbg !3324

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.11.103, i32 noundef 5) #38, !dbg !3325
  %49 = load ptr, ptr %4, align 8, !dbg !3325, !tbaa !821
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3325
  %51 = load ptr, ptr %50, align 8, !dbg !3325, !tbaa !821
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3325
  %53 = load ptr, ptr %52, align 8, !dbg !3325, !tbaa !821
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3325
  %55 = load ptr, ptr %54, align 8, !dbg !3325, !tbaa !821
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3325
  %57 = load ptr, ptr %56, align 8, !dbg !3325, !tbaa !821
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3325
  br label %147, !dbg !3326

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.12.104, i32 noundef 5) #38, !dbg !3327
  %61 = load ptr, ptr %4, align 8, !dbg !3327, !tbaa !821
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3327
  %63 = load ptr, ptr %62, align 8, !dbg !3327, !tbaa !821
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3327
  %65 = load ptr, ptr %64, align 8, !dbg !3327, !tbaa !821
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3327
  %67 = load ptr, ptr %66, align 8, !dbg !3327, !tbaa !821
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3327
  %69 = load ptr, ptr %68, align 8, !dbg !3327, !tbaa !821
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3327
  %71 = load ptr, ptr %70, align 8, !dbg !3327, !tbaa !821
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3327
  br label %147, !dbg !3328

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.13.105, i32 noundef 5) #38, !dbg !3329
  %75 = load ptr, ptr %4, align 8, !dbg !3329, !tbaa !821
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3329
  %77 = load ptr, ptr %76, align 8, !dbg !3329, !tbaa !821
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3329
  %79 = load ptr, ptr %78, align 8, !dbg !3329, !tbaa !821
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3329
  %81 = load ptr, ptr %80, align 8, !dbg !3329, !tbaa !821
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3329
  %83 = load ptr, ptr %82, align 8, !dbg !3329, !tbaa !821
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3329
  %85 = load ptr, ptr %84, align 8, !dbg !3329, !tbaa !821
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3329
  %87 = load ptr, ptr %86, align 8, !dbg !3329, !tbaa !821
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3329
  br label %147, !dbg !3330

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.14.106, i32 noundef 5) #38, !dbg !3331
  %91 = load ptr, ptr %4, align 8, !dbg !3331, !tbaa !821
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3331
  %93 = load ptr, ptr %92, align 8, !dbg !3331, !tbaa !821
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3331
  %95 = load ptr, ptr %94, align 8, !dbg !3331, !tbaa !821
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3331
  %97 = load ptr, ptr %96, align 8, !dbg !3331, !tbaa !821
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3331
  %99 = load ptr, ptr %98, align 8, !dbg !3331, !tbaa !821
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3331
  %101 = load ptr, ptr %100, align 8, !dbg !3331, !tbaa !821
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3331
  %103 = load ptr, ptr %102, align 8, !dbg !3331, !tbaa !821
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3331
  %105 = load ptr, ptr %104, align 8, !dbg !3331, !tbaa !821
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3331
  br label %147, !dbg !3332

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.15.107, i32 noundef 5) #38, !dbg !3333
  %109 = load ptr, ptr %4, align 8, !dbg !3333, !tbaa !821
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3333
  %111 = load ptr, ptr %110, align 8, !dbg !3333, !tbaa !821
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3333
  %113 = load ptr, ptr %112, align 8, !dbg !3333, !tbaa !821
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3333
  %115 = load ptr, ptr %114, align 8, !dbg !3333, !tbaa !821
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3333
  %117 = load ptr, ptr %116, align 8, !dbg !3333, !tbaa !821
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3333
  %119 = load ptr, ptr %118, align 8, !dbg !3333, !tbaa !821
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3333
  %121 = load ptr, ptr %120, align 8, !dbg !3333, !tbaa !821
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3333
  %123 = load ptr, ptr %122, align 8, !dbg !3333, !tbaa !821
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3333
  %125 = load ptr, ptr %124, align 8, !dbg !3333, !tbaa !821
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3333
  br label %147, !dbg !3334

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.16.108, i32 noundef 5) #38, !dbg !3335
  %129 = load ptr, ptr %4, align 8, !dbg !3335, !tbaa !821
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3335
  %131 = load ptr, ptr %130, align 8, !dbg !3335, !tbaa !821
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3335
  %133 = load ptr, ptr %132, align 8, !dbg !3335, !tbaa !821
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3335
  %135 = load ptr, ptr %134, align 8, !dbg !3335, !tbaa !821
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3335
  %137 = load ptr, ptr %136, align 8, !dbg !3335, !tbaa !821
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3335
  %139 = load ptr, ptr %138, align 8, !dbg !3335, !tbaa !821
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3335
  %141 = load ptr, ptr %140, align 8, !dbg !3335, !tbaa !821
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3335
  %143 = load ptr, ptr %142, align 8, !dbg !3335, !tbaa !821
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3335
  %145 = load ptr, ptr %144, align 8, !dbg !3335, !tbaa !821
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3335
  br label %147, !dbg !3336

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3337
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3338 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3342, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3343, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3344, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3345, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3346, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3347, metadata !DIExpression()), !dbg !3348
  br label %6, !dbg !3349

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3351
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3347, metadata !DIExpression()), !dbg !3348
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3352
  %9 = load ptr, ptr %8, align 8, !dbg !3352, !tbaa !821
  %10 = icmp eq ptr %9, null, !dbg !3354
  %11 = add i64 %7, 1, !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3347, metadata !DIExpression()), !dbg !3348
  br i1 %10, label %12, label %6, !dbg !3354, !llvm.loop !3356

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3351
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3358
  ret void, !dbg !3359
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3360 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3382
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3380, metadata !DIExpression(), metadata !3382, metadata ptr %6, metadata !DIExpression()), !dbg !3383
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3374, metadata !DIExpression()), !dbg !3383
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3375, metadata !DIExpression()), !dbg !3383
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3376, metadata !DIExpression()), !dbg !3383
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3377, metadata !DIExpression()), !dbg !3383
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3378, metadata !DIExpression(DW_OP_deref)), !dbg !3383
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3384
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3379, metadata !DIExpression()), !dbg !3383
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3379, metadata !DIExpression()), !dbg !3383
  %10 = icmp sgt i32 %9, -1, !dbg !3385
  br i1 %10, label %18, label %11, !dbg !3385

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3385
  store i32 %12, ptr %7, align 8, !dbg !3385
  %13 = icmp ult i32 %9, -7, !dbg !3385
  br i1 %13, label %14, label %18, !dbg !3385

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3385
  %16 = sext i32 %9 to i64, !dbg !3385
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3385
  br label %22, !dbg !3385

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3385
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3385
  store ptr %21, ptr %4, align 8, !dbg !3385
  br label %22, !dbg !3385

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3385
  %25 = load ptr, ptr %24, align 8, !dbg !3385
  store ptr %25, ptr %6, align 8, !dbg !3388, !tbaa !821
  %26 = icmp eq ptr %25, null, !dbg !3389
  br i1 %26, label %197, label %27, !dbg !3390

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3379, metadata !DIExpression()), !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3379, metadata !DIExpression()), !dbg !3383
  %28 = icmp sgt i32 %23, -1, !dbg !3385
  br i1 %28, label %36, label %29, !dbg !3385

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3385
  store i32 %30, ptr %7, align 8, !dbg !3385
  %31 = icmp ult i32 %23, -7, !dbg !3385
  br i1 %31, label %32, label %36, !dbg !3385

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3385
  %34 = sext i32 %23 to i64, !dbg !3385
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3385
  br label %40, !dbg !3385

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3385
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3385
  store ptr %39, ptr %4, align 8, !dbg !3385
  br label %40, !dbg !3385

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3385
  %43 = load ptr, ptr %42, align 8, !dbg !3385
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3391
  store ptr %43, ptr %44, align 8, !dbg !3388, !tbaa !821
  %45 = icmp eq ptr %43, null, !dbg !3389
  br i1 %45, label %197, label %46, !dbg !3390

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3379, metadata !DIExpression()), !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3379, metadata !DIExpression()), !dbg !3383
  %47 = icmp sgt i32 %41, -1, !dbg !3385
  br i1 %47, label %55, label %48, !dbg !3385

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3385
  store i32 %49, ptr %7, align 8, !dbg !3385
  %50 = icmp ult i32 %41, -7, !dbg !3385
  br i1 %50, label %51, label %55, !dbg !3385

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3385
  %53 = sext i32 %41 to i64, !dbg !3385
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3385
  br label %59, !dbg !3385

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3385
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3385
  store ptr %58, ptr %4, align 8, !dbg !3385
  br label %59, !dbg !3385

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3385
  %62 = load ptr, ptr %61, align 8, !dbg !3385
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3391
  store ptr %62, ptr %63, align 8, !dbg !3388, !tbaa !821
  %64 = icmp eq ptr %62, null, !dbg !3389
  br i1 %64, label %197, label %65, !dbg !3390

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3379, metadata !DIExpression()), !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3379, metadata !DIExpression()), !dbg !3383
  %66 = icmp sgt i32 %60, -1, !dbg !3385
  br i1 %66, label %74, label %67, !dbg !3385

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3385
  store i32 %68, ptr %7, align 8, !dbg !3385
  %69 = icmp ult i32 %60, -7, !dbg !3385
  br i1 %69, label %70, label %74, !dbg !3385

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3385
  %72 = sext i32 %60 to i64, !dbg !3385
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3385
  br label %78, !dbg !3385

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3385
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3385
  store ptr %77, ptr %4, align 8, !dbg !3385
  br label %78, !dbg !3385

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3385
  %81 = load ptr, ptr %80, align 8, !dbg !3385
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3391
  store ptr %81, ptr %82, align 8, !dbg !3388, !tbaa !821
  %83 = icmp eq ptr %81, null, !dbg !3389
  br i1 %83, label %197, label %84, !dbg !3390

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3379, metadata !DIExpression()), !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3379, metadata !DIExpression()), !dbg !3383
  %85 = icmp sgt i32 %79, -1, !dbg !3385
  br i1 %85, label %93, label %86, !dbg !3385

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3385
  store i32 %87, ptr %7, align 8, !dbg !3385
  %88 = icmp ult i32 %79, -7, !dbg !3385
  br i1 %88, label %89, label %93, !dbg !3385

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3385
  %91 = sext i32 %79 to i64, !dbg !3385
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3385
  br label %97, !dbg !3385

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3385
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3385
  store ptr %96, ptr %4, align 8, !dbg !3385
  br label %97, !dbg !3385

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3385
  %100 = load ptr, ptr %99, align 8, !dbg !3385
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3391
  store ptr %100, ptr %101, align 8, !dbg !3388, !tbaa !821
  %102 = icmp eq ptr %100, null, !dbg !3389
  br i1 %102, label %197, label %103, !dbg !3390

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3379, metadata !DIExpression()), !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3379, metadata !DIExpression()), !dbg !3383
  %104 = icmp sgt i32 %98, -1, !dbg !3385
  br i1 %104, label %112, label %105, !dbg !3385

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3385
  store i32 %106, ptr %7, align 8, !dbg !3385
  %107 = icmp ult i32 %98, -7, !dbg !3385
  br i1 %107, label %108, label %112, !dbg !3385

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3385
  %110 = sext i32 %98 to i64, !dbg !3385
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3385
  br label %116, !dbg !3385

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3385
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3385
  store ptr %115, ptr %4, align 8, !dbg !3385
  br label %116, !dbg !3385

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3385
  %119 = load ptr, ptr %118, align 8, !dbg !3385
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3391
  store ptr %119, ptr %120, align 8, !dbg !3388, !tbaa !821
  %121 = icmp eq ptr %119, null, !dbg !3389
  br i1 %121, label %197, label %122, !dbg !3390

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3379, metadata !DIExpression()), !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3379, metadata !DIExpression()), !dbg !3383
  %123 = icmp sgt i32 %117, -1, !dbg !3385
  br i1 %123, label %131, label %124, !dbg !3385

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3385
  store i32 %125, ptr %7, align 8, !dbg !3385
  %126 = icmp ult i32 %117, -7, !dbg !3385
  br i1 %126, label %127, label %131, !dbg !3385

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3385
  %129 = sext i32 %117 to i64, !dbg !3385
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3385
  br label %135, !dbg !3385

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3385
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3385
  store ptr %134, ptr %4, align 8, !dbg !3385
  br label %135, !dbg !3385

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3385
  %138 = load ptr, ptr %137, align 8, !dbg !3385
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3391
  store ptr %138, ptr %139, align 8, !dbg !3388, !tbaa !821
  %140 = icmp eq ptr %138, null, !dbg !3389
  br i1 %140, label %197, label %141, !dbg !3390

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3379, metadata !DIExpression()), !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3379, metadata !DIExpression()), !dbg !3383
  %142 = icmp sgt i32 %136, -1, !dbg !3385
  br i1 %142, label %150, label %143, !dbg !3385

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3385
  store i32 %144, ptr %7, align 8, !dbg !3385
  %145 = icmp ult i32 %136, -7, !dbg !3385
  br i1 %145, label %146, label %150, !dbg !3385

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3385
  %148 = sext i32 %136 to i64, !dbg !3385
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3385
  br label %154, !dbg !3385

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3385
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3385
  store ptr %153, ptr %4, align 8, !dbg !3385
  br label %154, !dbg !3385

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3385
  %157 = load ptr, ptr %156, align 8, !dbg !3385
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3391
  store ptr %157, ptr %158, align 8, !dbg !3388, !tbaa !821
  %159 = icmp eq ptr %157, null, !dbg !3389
  br i1 %159, label %197, label %160, !dbg !3390

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3379, metadata !DIExpression()), !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3379, metadata !DIExpression()), !dbg !3383
  %161 = icmp sgt i32 %155, -1, !dbg !3385
  br i1 %161, label %169, label %162, !dbg !3385

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3385
  store i32 %163, ptr %7, align 8, !dbg !3385
  %164 = icmp ult i32 %155, -7, !dbg !3385
  br i1 %164, label %165, label %169, !dbg !3385

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3385
  %167 = sext i32 %155 to i64, !dbg !3385
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3385
  br label %173, !dbg !3385

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3385
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3385
  store ptr %172, ptr %4, align 8, !dbg !3385
  br label %173, !dbg !3385

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3385
  %176 = load ptr, ptr %175, align 8, !dbg !3385
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3391
  store ptr %176, ptr %177, align 8, !dbg !3388, !tbaa !821
  %178 = icmp eq ptr %176, null, !dbg !3389
  br i1 %178, label %197, label %179, !dbg !3390

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3379, metadata !DIExpression()), !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3379, metadata !DIExpression()), !dbg !3383
  %180 = icmp sgt i32 %174, -1, !dbg !3385
  br i1 %180, label %188, label %181, !dbg !3385

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3385
  store i32 %182, ptr %7, align 8, !dbg !3385
  %183 = icmp ult i32 %174, -7, !dbg !3385
  br i1 %183, label %184, label %188, !dbg !3385

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3385
  %186 = sext i32 %174 to i64, !dbg !3385
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3385
  br label %191, !dbg !3385

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3385
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3385
  store ptr %190, ptr %4, align 8, !dbg !3385
  br label %191, !dbg !3385

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3385
  %193 = load ptr, ptr %192, align 8, !dbg !3385
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3391
  store ptr %193, ptr %194, align 8, !dbg !3388, !tbaa !821
  %195 = icmp eq ptr %193, null, !dbg !3389
  %196 = select i1 %195, i64 9, i64 10, !dbg !3390
  br label %197, !dbg !3390

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3392
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3393
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3394
  ret void, !dbg !3394
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3395 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3404
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3403, metadata !DIExpression(), metadata !3404, metadata ptr %5, metadata !DIExpression()), !dbg !3405
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3399, metadata !DIExpression()), !dbg !3405
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3400, metadata !DIExpression()), !dbg !3405
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3401, metadata !DIExpression()), !dbg !3405
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3402, metadata !DIExpression()), !dbg !3405
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !3406
  call void @llvm.va_start(ptr nonnull %5), !dbg !3407
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !3408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3408, !tbaa.struct !1616
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3408
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !3408
  call void @llvm.va_end(ptr nonnull %5), !dbg !3409
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !3410
  ret void, !dbg !3410
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3411 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3412, !tbaa !821
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.96, ptr noundef %1), !dbg !3412
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.17.113, i32 noundef 5) #38, !dbg !3413
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.114) #38, !dbg !3413
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.19.115, i32 noundef 5) #38, !dbg !3414
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.116, ptr noundef nonnull @.str.21.117) #38, !dbg !3414
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.22.118, i32 noundef 5) #38, !dbg !3415
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #38, !dbg !3415
  ret void, !dbg !3416
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3417 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3422, metadata !DIExpression()), !dbg !3425
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3423, metadata !DIExpression()), !dbg !3425
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3424, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata ptr %0, metadata !3426, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 %1, metadata !3429, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 %2, metadata !3430, metadata !DIExpression()), !dbg !3431
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3433
  call void @llvm.dbg.value(metadata ptr %4, metadata !3434, metadata !DIExpression()), !dbg !3439
  %5 = icmp eq ptr %4, null, !dbg !3441
  br i1 %5, label %6, label %7, !dbg !3443

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3444
  unreachable, !dbg !3444

7:                                                ; preds = %3
  ret ptr %4, !dbg !3445
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3427 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3426, metadata !DIExpression()), !dbg !3446
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3429, metadata !DIExpression()), !dbg !3446
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3430, metadata !DIExpression()), !dbg !3446
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3447
  call void @llvm.dbg.value(metadata ptr %4, metadata !3434, metadata !DIExpression()), !dbg !3448
  %5 = icmp eq ptr %4, null, !dbg !3450
  br i1 %5, label %6, label %7, !dbg !3451

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3452
  unreachable, !dbg !3452

7:                                                ; preds = %3
  ret ptr %4, !dbg !3453
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3454 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3458, metadata !DIExpression()), !dbg !3459
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3460
  call void @llvm.dbg.value(metadata ptr %2, metadata !3434, metadata !DIExpression()), !dbg !3461
  %3 = icmp eq ptr %2, null, !dbg !3463
  br i1 %3, label %4, label %5, !dbg !3464

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3465
  unreachable, !dbg !3465

5:                                                ; preds = %1
  ret ptr %2, !dbg !3466
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3467 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3468 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3472, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 %0, metadata !3474, metadata !DIExpression()), !dbg !3478
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3480
  call void @llvm.dbg.value(metadata ptr %2, metadata !3434, metadata !DIExpression()), !dbg !3481
  %3 = icmp eq ptr %2, null, !dbg !3483
  br i1 %3, label %4, label %5, !dbg !3484

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3485
  unreachable, !dbg !3485

5:                                                ; preds = %1
  ret ptr %2, !dbg !3486
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3487 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3489, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %0, metadata !3458, metadata !DIExpression()), !dbg !3491
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3493
  call void @llvm.dbg.value(metadata ptr %2, metadata !3434, metadata !DIExpression()), !dbg !3494
  %3 = icmp eq ptr %2, null, !dbg !3496
  br i1 %3, label %4, label %5, !dbg !3497

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3498
  unreachable, !dbg !3498

5:                                                ; preds = %1
  ret ptr %2, !dbg !3499
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3500 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3504, metadata !DIExpression()), !dbg !3506
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3505, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata ptr %0, metadata !3507, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i64 %1, metadata !3511, metadata !DIExpression()), !dbg !3512
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3514
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !3515
  call void @llvm.dbg.value(metadata ptr %4, metadata !3434, metadata !DIExpression()), !dbg !3516
  %5 = icmp eq ptr %4, null, !dbg !3518
  br i1 %5, label %6, label %7, !dbg !3519

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3520
  unreachable, !dbg !3520

7:                                                ; preds = %2
  ret ptr %4, !dbg !3521
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3522 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3523 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3527, metadata !DIExpression()), !dbg !3529
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3528, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata ptr %0, metadata !3530, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i64 %1, metadata !3533, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata ptr %0, metadata !3507, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64 %1, metadata !3511, metadata !DIExpression()), !dbg !3536
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3538
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !3539
  call void @llvm.dbg.value(metadata ptr %4, metadata !3434, metadata !DIExpression()), !dbg !3540
  %5 = icmp eq ptr %4, null, !dbg !3542
  br i1 %5, label %6, label %7, !dbg !3543

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3544
  unreachable, !dbg !3544

7:                                                ; preds = %2
  ret ptr %4, !dbg !3545
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3546 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3550, metadata !DIExpression()), !dbg !3553
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3551, metadata !DIExpression()), !dbg !3553
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3552, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.value(metadata ptr %0, metadata !3554, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 %1, metadata !3557, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 %2, metadata !3558, metadata !DIExpression()), !dbg !3559
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3561
  call void @llvm.dbg.value(metadata ptr %4, metadata !3434, metadata !DIExpression()), !dbg !3562
  %5 = icmp eq ptr %4, null, !dbg !3564
  br i1 %5, label %6, label %7, !dbg !3565

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3566
  unreachable, !dbg !3566

7:                                                ; preds = %3
  ret ptr %4, !dbg !3567
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3568 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3572, metadata !DIExpression()), !dbg !3574
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3573, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata ptr null, metadata !3426, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i64 %0, metadata !3429, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i64 %1, metadata !3430, metadata !DIExpression()), !dbg !3575
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3577
  call void @llvm.dbg.value(metadata ptr %3, metadata !3434, metadata !DIExpression()), !dbg !3578
  %4 = icmp eq ptr %3, null, !dbg !3580
  br i1 %4, label %5, label %6, !dbg !3581

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3582
  unreachable, !dbg !3582

6:                                                ; preds = %2
  ret ptr %3, !dbg !3583
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3584 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3588, metadata !DIExpression()), !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3589, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata ptr null, metadata !3550, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i64 %0, metadata !3551, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i64 %1, metadata !3552, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata ptr null, metadata !3554, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i64 %0, metadata !3557, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i64 %1, metadata !3558, metadata !DIExpression()), !dbg !3593
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3595
  call void @llvm.dbg.value(metadata ptr %3, metadata !3434, metadata !DIExpression()), !dbg !3596
  %4 = icmp eq ptr %3, null, !dbg !3598
  br i1 %4, label %5, label %6, !dbg !3599

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3600
  unreachable, !dbg !3600

6:                                                ; preds = %2
  ret ptr %3, !dbg !3601
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3602 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3606, metadata !DIExpression()), !dbg !3608
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3607, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata ptr %0, metadata !755, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata ptr %1, metadata !756, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i64 1, metadata !757, metadata !DIExpression()), !dbg !3609
  %3 = load i64, ptr %1, align 8, !dbg !3611, !tbaa !1394
  call void @llvm.dbg.value(metadata i64 %3, metadata !758, metadata !DIExpression()), !dbg !3609
  %4 = icmp eq ptr %0, null, !dbg !3612
  br i1 %4, label %5, label %8, !dbg !3614

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3615
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3618
  br label %15, !dbg !3618

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3619
  %10 = add nuw i64 %9, 1, !dbg !3619
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3619
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3619
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3619
  call void @llvm.dbg.value(metadata i64 %13, metadata !758, metadata !DIExpression()), !dbg !3609
  br i1 %12, label %14, label %15, !dbg !3622

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !3623
  unreachable, !dbg !3623

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3609
  call void @llvm.dbg.value(metadata i64 %16, metadata !758, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata ptr %0, metadata !3426, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 %16, metadata !3429, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i64 1, metadata !3430, metadata !DIExpression()), !dbg !3624
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3626
  call void @llvm.dbg.value(metadata ptr %17, metadata !3434, metadata !DIExpression()), !dbg !3627
  %18 = icmp eq ptr %17, null, !dbg !3629
  br i1 %18, label %19, label %20, !dbg !3630

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !3631
  unreachable, !dbg !3631

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !755, metadata !DIExpression()), !dbg !3609
  store i64 %16, ptr %1, align 8, !dbg !3632, !tbaa !1394
  ret ptr %17, !dbg !3633
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !750 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !755, metadata !DIExpression()), !dbg !3634
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !756, metadata !DIExpression()), !dbg !3634
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !757, metadata !DIExpression()), !dbg !3634
  %4 = load i64, ptr %1, align 8, !dbg !3635, !tbaa !1394
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !758, metadata !DIExpression()), !dbg !3634
  %5 = icmp eq ptr %0, null, !dbg !3636
  br i1 %5, label %6, label %13, !dbg !3637

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3638
  br i1 %7, label %8, label %20, !dbg !3639

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3640
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !758, metadata !DIExpression()), !dbg !3634
  %10 = icmp ugt i64 %2, 128, !dbg !3642
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3643
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !758, metadata !DIExpression()), !dbg !3634
  br label %20, !dbg !3644

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3645
  %15 = add nuw i64 %14, 1, !dbg !3645
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3645
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3645
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3645
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !758, metadata !DIExpression()), !dbg !3634
  br i1 %17, label %19, label %20, !dbg !3646

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !3647
  unreachable, !dbg !3647

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3634
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !758, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata ptr %0, metadata !3426, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %21, metadata !3429, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %2, metadata !3430, metadata !DIExpression()), !dbg !3648
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3650
  call void @llvm.dbg.value(metadata ptr %22, metadata !3434, metadata !DIExpression()), !dbg !3651
  %23 = icmp eq ptr %22, null, !dbg !3653
  br i1 %23, label %24, label %25, !dbg !3654

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !3655
  unreachable, !dbg !3655

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !755, metadata !DIExpression()), !dbg !3634
  store i64 %21, ptr %1, align 8, !dbg !3656, !tbaa !1394
  ret ptr %22, !dbg !3657
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !762 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !771, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !772, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !773, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !774, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !775, metadata !DIExpression()), !dbg !3658
  %6 = load i64, ptr %1, align 8, !dbg !3659, !tbaa !1394
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !776, metadata !DIExpression()), !dbg !3658
  %7 = ashr i64 %6, 1, !dbg !3660
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3660
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3660
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3660
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !777, metadata !DIExpression()), !dbg !3658
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3662
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !777, metadata !DIExpression()), !dbg !3658
  %12 = icmp sgt i64 %3, -1, !dbg !3663
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3665
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3665
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !777, metadata !DIExpression()), !dbg !3658
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3666
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3666
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3666
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !778, metadata !DIExpression()), !dbg !3658
  %18 = icmp slt i64 %17, 128, !dbg !3666
  %19 = select i1 %18, i64 128, i64 0, !dbg !3666
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3666
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !779, metadata !DIExpression()), !dbg !3658
  %21 = icmp eq i64 %20, 0, !dbg !3667
  br i1 %21, label %28, label %22, !dbg !3669

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3670
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !777, metadata !DIExpression()), !dbg !3658
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3672
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !778, metadata !DIExpression()), !dbg !3658
  br label %28, !dbg !3673

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3658
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !778, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !777, metadata !DIExpression()), !dbg !3658
  %31 = icmp eq ptr %0, null, !dbg !3674
  br i1 %31, label %32, label %33, !dbg !3676

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3677, !tbaa !1394
  br label %33, !dbg !3678

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3679
  %35 = icmp slt i64 %34, %2, !dbg !3681
  br i1 %35, label %36, label %48, !dbg !3682

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3683
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3683
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3683
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !777, metadata !DIExpression()), !dbg !3658
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3684
  br i1 %42, label %47, label %43, !dbg !3684

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3685
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3685
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3685
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !778, metadata !DIExpression()), !dbg !3658
  br i1 %45, label %47, label %48, !dbg !3686

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #40, !dbg !3687
  unreachable, !dbg !3687

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3658
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !778, metadata !DIExpression()), !dbg !3658
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !777, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.value(metadata ptr %0, metadata !3504, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i64 %50, metadata !3505, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata ptr %0, metadata !3507, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i64 %50, metadata !3511, metadata !DIExpression()), !dbg !3690
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3692
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #46, !dbg !3693
  call void @llvm.dbg.value(metadata ptr %52, metadata !3434, metadata !DIExpression()), !dbg !3694
  %53 = icmp eq ptr %52, null, !dbg !3696
  br i1 %53, label %54, label %55, !dbg !3697

54:                                               ; preds = %48
  tail call void @xalloc_die() #40, !dbg !3698
  unreachable, !dbg !3698

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !771, metadata !DIExpression()), !dbg !3658
  store i64 %49, ptr %1, align 8, !dbg !3699, !tbaa !1394
  ret ptr %52, !dbg !3700
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3701 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3703, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i64 %0, metadata !3705, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i64 1, metadata !3708, metadata !DIExpression()), !dbg !3709
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3711
  call void @llvm.dbg.value(metadata ptr %2, metadata !3434, metadata !DIExpression()), !dbg !3712
  %3 = icmp eq ptr %2, null, !dbg !3714
  br i1 %3, label %4, label %5, !dbg !3715

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3716
  unreachable, !dbg !3716

5:                                                ; preds = %1
  ret ptr %2, !dbg !3717
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3718 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3706 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3705, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3708, metadata !DIExpression()), !dbg !3719
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3720
  call void @llvm.dbg.value(metadata ptr %3, metadata !3434, metadata !DIExpression()), !dbg !3721
  %4 = icmp eq ptr %3, null, !dbg !3723
  br i1 %4, label %5, label %6, !dbg !3724

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3725
  unreachable, !dbg !3725

6:                                                ; preds = %2
  ret ptr %3, !dbg !3726
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3727 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3729, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %0, metadata !3731, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i64 1, metadata !3734, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i64 %0, metadata !3737, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 1, metadata !3740, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %0, metadata !3737, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 1, metadata !3740, metadata !DIExpression()), !dbg !3741
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3743
  call void @llvm.dbg.value(metadata ptr %2, metadata !3434, metadata !DIExpression()), !dbg !3744
  %3 = icmp eq ptr %2, null, !dbg !3746
  br i1 %3, label %4, label %5, !dbg !3747

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3748
  unreachable, !dbg !3748

5:                                                ; preds = %1
  ret ptr %2, !dbg !3749
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3732 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3731, metadata !DIExpression()), !dbg !3750
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3734, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %0, metadata !3737, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 %1, metadata !3740, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 %0, metadata !3737, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 %1, metadata !3740, metadata !DIExpression()), !dbg !3751
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3753
  call void @llvm.dbg.value(metadata ptr %3, metadata !3434, metadata !DIExpression()), !dbg !3754
  %4 = icmp eq ptr %3, null, !dbg !3756
  br i1 %4, label %5, label %6, !dbg !3757

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3758
  unreachable, !dbg !3758

6:                                                ; preds = %2
  ret ptr %3, !dbg !3759
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3760 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3764, metadata !DIExpression()), !dbg !3766
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3765, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i64 %1, metadata !3458, metadata !DIExpression()), !dbg !3767
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3769
  call void @llvm.dbg.value(metadata ptr %3, metadata !3434, metadata !DIExpression()), !dbg !3770
  %4 = icmp eq ptr %3, null, !dbg !3772
  br i1 %4, label %5, label %6, !dbg !3773

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3774
  unreachable, !dbg !3774

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3775, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata ptr %0, metadata !3778, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i64 %1, metadata !3779, metadata !DIExpression()), !dbg !3780
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3782
  ret ptr %3, !dbg !3783
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3784 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3788, metadata !DIExpression()), !dbg !3790
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3789, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i64 %1, metadata !3472, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i64 %1, metadata !3474, metadata !DIExpression()), !dbg !3793
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3795
  call void @llvm.dbg.value(metadata ptr %3, metadata !3434, metadata !DIExpression()), !dbg !3796
  %4 = icmp eq ptr %3, null, !dbg !3798
  br i1 %4, label %5, label %6, !dbg !3799

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3800
  unreachable, !dbg !3800

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3775, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata ptr %0, metadata !3778, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i64 %1, metadata !3779, metadata !DIExpression()), !dbg !3801
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3803
  ret ptr %3, !dbg !3804
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3805 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3809, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3810, metadata !DIExpression()), !dbg !3812
  %3 = add nsw i64 %1, 1, !dbg !3813
  call void @llvm.dbg.value(metadata i64 %3, metadata !3472, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i64 %3, metadata !3474, metadata !DIExpression()), !dbg !3816
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3818
  call void @llvm.dbg.value(metadata ptr %4, metadata !3434, metadata !DIExpression()), !dbg !3819
  %5 = icmp eq ptr %4, null, !dbg !3821
  br i1 %5, label %6, label %7, !dbg !3822

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3823
  unreachable, !dbg !3823

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3811, metadata !DIExpression()), !dbg !3812
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3824
  store i8 0, ptr %8, align 1, !dbg !3825, !tbaa !894
  call void @llvm.dbg.value(metadata ptr %4, metadata !3775, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata ptr %0, metadata !3778, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i64 %1, metadata !3779, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3828
  ret ptr %4, !dbg !3829
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3830 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3832, metadata !DIExpression()), !dbg !3833
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3834
  %3 = add i64 %2, 1, !dbg !3835
  call void @llvm.dbg.value(metadata ptr %0, metadata !3764, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i64 %3, metadata !3765, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i64 %3, metadata !3458, metadata !DIExpression()), !dbg !3838
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3840
  call void @llvm.dbg.value(metadata ptr %4, metadata !3434, metadata !DIExpression()), !dbg !3841
  %5 = icmp eq ptr %4, null, !dbg !3843
  br i1 %5, label %6, label %7, !dbg !3844

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3845
  unreachable, !dbg !3845

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3775, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata ptr %0, metadata !3778, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i64 %3, metadata !3779, metadata !DIExpression()), !dbg !3846
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3848
  ret ptr %4, !dbg !3849
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3850 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3855, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3852, metadata !DIExpression()), !dbg !3856
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.133, ptr noundef nonnull @.str.2.134, i32 noundef 5) #38, !dbg !3855
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef %2) #38, !dbg !3855
  %3 = icmp eq i32 %1, 0, !dbg !3855
  tail call void @llvm.assume(i1 %3), !dbg !3855
  tail call void @abort() #40, !dbg !3857
  unreachable, !dbg !3857
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xgetcwd() local_unnamed_addr #10 !dbg !3858 {
  %1 = tail call ptr @getcwd(ptr noundef null, i64 noundef 0) #38, !dbg !3863
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3862, metadata !DIExpression()), !dbg !3864
  %2 = icmp eq ptr %1, null, !dbg !3865
  br i1 %2, label %3, label %8, !dbg !3867

3:                                                ; preds = %0
  %4 = tail call ptr @__errno_location() #41, !dbg !3868
  %5 = load i32, ptr %4, align 4, !dbg !3868, !tbaa !885
  %6 = icmp eq i32 %5, 12, !dbg !3869
  br i1 %6, label %7, label %8, !dbg !3870

7:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3871
  unreachable, !dbg !3871

8:                                                ; preds = %3, %0
  ret ptr %1, !dbg !3872
}

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3873 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3911, metadata !DIExpression()), !dbg !3916
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !3917
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3912, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3916
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3918, metadata !DIExpression()), !dbg !3921
  %3 = load i32, ptr %0, align 8, !dbg !3923, !tbaa !3924
  %4 = and i32 %3, 32, !dbg !3925
  %5 = icmp eq i32 %4, 0, !dbg !3925
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3914, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3916
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !3926
  %7 = icmp eq i32 %6, 0, !dbg !3927
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3915, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3916
  br i1 %5, label %8, label %18, !dbg !3928

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3930
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3912, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3916
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3931
  %11 = xor i1 %7, true, !dbg !3931
  %12 = sext i1 %11 to i32, !dbg !3931
  br i1 %10, label %21, label %13, !dbg !3931

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !3932
  %15 = load i32, ptr %14, align 4, !dbg !3932, !tbaa !885
  %16 = icmp ne i32 %15, 9, !dbg !3933
  %17 = sext i1 %16 to i32, !dbg !3934
  br label %21, !dbg !3934

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3935

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !3937
  store i32 0, ptr %20, align 4, !dbg !3939, !tbaa !885
  br label %21, !dbg !3937

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3916
  ret i32 %22, !dbg !3940
}

; Function Attrs: nounwind
declare !dbg !3941 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3945 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3983, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression()), !dbg !3987
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3988
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3985, metadata !DIExpression()), !dbg !3987
  %3 = icmp slt i32 %2, 0, !dbg !3989
  br i1 %3, label %4, label %6, !dbg !3991

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3992
  br label %24, !dbg !3993

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3994
  %8 = icmp eq i32 %7, 0, !dbg !3994
  br i1 %8, label %13, label %9, !dbg !3996

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3997
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !3998
  %12 = icmp eq i64 %11, -1, !dbg !3999
  br i1 %12, label %16, label %13, !dbg !4000

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !4001
  %15 = icmp eq i32 %14, 0, !dbg !4001
  br i1 %15, label %16, label %18, !dbg !4002

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3984, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3986, metadata !DIExpression()), !dbg !3987
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4003
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3986, metadata !DIExpression()), !dbg !3987
  br label %24, !dbg !4004

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !4005
  %20 = load i32, ptr %19, align 4, !dbg !4005, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3984, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3986, metadata !DIExpression()), !dbg !3987
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4003
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3986, metadata !DIExpression()), !dbg !3987
  %22 = icmp eq i32 %20, 0, !dbg !4006
  br i1 %22, label %24, label %23, !dbg !4004

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4008, !tbaa !885
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3986, metadata !DIExpression()), !dbg !3987
  br label %24, !dbg !4010

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3987
  ret i32 %25, !dbg !4011
}

; Function Attrs: nofree nounwind
declare !dbg !4012 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4013 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4014 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4015 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4018 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4056, metadata !DIExpression()), !dbg !4057
  %2 = icmp eq ptr %0, null, !dbg !4058
  br i1 %2, label %6, label %3, !dbg !4060

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !4061
  %5 = icmp eq i32 %4, 0, !dbg !4061
  br i1 %5, label %6, label %8, !dbg !4062

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4063
  br label %16, !dbg !4064

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4065, metadata !DIExpression()), !dbg !4070
  %9 = load i32, ptr %0, align 8, !dbg !4072, !tbaa !3924
  %10 = and i32 %9, 256, !dbg !4074
  %11 = icmp eq i32 %10, 0, !dbg !4074
  br i1 %11, label %14, label %12, !dbg !4075

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !4076
  br label %14, !dbg !4076

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4077
  br label %16, !dbg !4078

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4057
  ret i32 %17, !dbg !4079
}

; Function Attrs: nofree nounwind
declare !dbg !4080 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4081 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4120, metadata !DIExpression()), !dbg !4126
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4121, metadata !DIExpression()), !dbg !4126
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4122, metadata !DIExpression()), !dbg !4126
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4127
  %5 = load ptr, ptr %4, align 8, !dbg !4127, !tbaa !4128
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4129
  %7 = load ptr, ptr %6, align 8, !dbg !4129, !tbaa !4130
  %8 = icmp eq ptr %5, %7, !dbg !4131
  br i1 %8, label %9, label %27, !dbg !4132

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4133
  %11 = load ptr, ptr %10, align 8, !dbg !4133, !tbaa !1727
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4134
  %13 = load ptr, ptr %12, align 8, !dbg !4134, !tbaa !4135
  %14 = icmp eq ptr %11, %13, !dbg !4136
  br i1 %14, label %15, label %27, !dbg !4137

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4138
  %17 = load ptr, ptr %16, align 8, !dbg !4138, !tbaa !4139
  %18 = icmp eq ptr %17, null, !dbg !4140
  br i1 %18, label %19, label %27, !dbg !4141

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !4142
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !4143
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4123, metadata !DIExpression()), !dbg !4144
  %22 = icmp eq i64 %21, -1, !dbg !4145
  br i1 %22, label %29, label %23, !dbg !4147

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4148, !tbaa !3924
  %25 = and i32 %24, -17, !dbg !4148
  store i32 %25, ptr %0, align 8, !dbg !4148, !tbaa !3924
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4149
  store i64 %21, ptr %26, align 8, !dbg !4150, !tbaa !4151
  br label %29, !dbg !4152

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4153
  br label %29, !dbg !4154

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4126
  ret i32 %30, !dbg !4155
}

; Function Attrs: nofree nounwind
declare !dbg !4156 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4159 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4164, metadata !DIExpression()), !dbg !4169
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4165, metadata !DIExpression()), !dbg !4169
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4166, metadata !DIExpression()), !dbg !4169
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4167, metadata !DIExpression()), !dbg !4169
  %5 = icmp eq ptr %1, null, !dbg !4170
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4172
  %7 = select i1 %5, ptr @.str.148, ptr %1, !dbg !4172
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4172
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4166, metadata !DIExpression()), !dbg !4169
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4165, metadata !DIExpression()), !dbg !4169
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4164, metadata !DIExpression()), !dbg !4169
  %9 = icmp eq ptr %3, null, !dbg !4173
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4175
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4167, metadata !DIExpression()), !dbg !4169
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #38, !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4168, metadata !DIExpression()), !dbg !4169
  %12 = icmp ult i64 %11, -3, !dbg !4177
  br i1 %12, label %13, label %17, !dbg !4179

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !4180
  %15 = icmp eq i32 %14, 0, !dbg !4180
  br i1 %15, label %16, label %29, !dbg !4181

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4182, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.value(metadata ptr %10, metadata !4189, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i32 0, metadata !4192, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i64 8, metadata !4193, metadata !DIExpression()), !dbg !4194
  store i64 0, ptr %10, align 1, !dbg !4196
  br label %29, !dbg !4197

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4198
  br i1 %18, label %19, label %20, !dbg !4200

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !4201
  unreachable, !dbg !4201

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4202

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !4204
  br i1 %23, label %29, label %24, !dbg !4205

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4206
  br i1 %25, label %29, label %26, !dbg !4209

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4210, !tbaa !894
  %28 = zext i8 %27 to i32, !dbg !4211
  store i32 %28, ptr %6, align 4, !dbg !4212, !tbaa !885
  br label %29, !dbg !4213

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4169
  ret i64 %30, !dbg !4214
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4215 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !4221 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4223, metadata !DIExpression()), !dbg !4227
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4224, metadata !DIExpression()), !dbg !4227
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4225, metadata !DIExpression()), !dbg !4227
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4228
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4228
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4226, metadata !DIExpression()), !dbg !4227
  br i1 %5, label %6, label %8, !dbg !4230

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #41, !dbg !4231
  store i32 12, ptr %7, align 4, !dbg !4233, !tbaa !885
  br label %12, !dbg !4234

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4228
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4226, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata ptr %0, metadata !4235, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %9, metadata !4238, metadata !DIExpression()), !dbg !4239
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4241
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #46, !dbg !4242
  br label %12, !dbg !4243

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4227
  ret ptr %13, !dbg !4244
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4245 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4254
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4250, metadata !DIExpression(), metadata !4254, metadata ptr %2, metadata !DIExpression()), !dbg !4255
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4249, metadata !DIExpression()), !dbg !4255
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !4256
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !4257
  %4 = icmp eq i32 %3, 0, !dbg !4257
  br i1 %4, label %5, label %12, !dbg !4259

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4260, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata ptr @.str.153, metadata !4263, metadata !DIExpression()), !dbg !4264
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.153, i64 2), !dbg !4267
  %7 = icmp eq i32 %6, 0, !dbg !4268
  br i1 %7, label %11, label %8, !dbg !4269

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4260, metadata !DIExpression()), !dbg !4270
  call void @llvm.dbg.value(metadata ptr @.str.1.154, metadata !4263, metadata !DIExpression()), !dbg !4270
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.154, i64 6), !dbg !4272
  %10 = icmp eq i32 %9, 0, !dbg !4273
  br i1 %10, label %11, label %12, !dbg !4274

11:                                               ; preds = %8, %5
  br label %12, !dbg !4275

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4255
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !4276
  ret i1 %13, !dbg !4276
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4277 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4281, metadata !DIExpression()), !dbg !4284
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4282, metadata !DIExpression()), !dbg !4284
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4283, metadata !DIExpression()), !dbg !4284
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !4285
  ret i32 %4, !dbg !4286
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4287 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4291, metadata !DIExpression()), !dbg !4292
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !4293
  ret ptr %2, !dbg !4294
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4295 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4297, metadata !DIExpression()), !dbg !4299
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4300
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4298, metadata !DIExpression()), !dbg !4299
  ret ptr %2, !dbg !4301
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4302 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4304, metadata !DIExpression()), !dbg !4311
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4305, metadata !DIExpression()), !dbg !4311
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4306, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i32 %0, metadata !4297, metadata !DIExpression()), !dbg !4312
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4314
  call void @llvm.dbg.value(metadata ptr %4, metadata !4298, metadata !DIExpression()), !dbg !4312
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4307, metadata !DIExpression()), !dbg !4311
  %5 = icmp eq ptr %4, null, !dbg !4315
  br i1 %5, label %6, label %9, !dbg !4316

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4317
  br i1 %7, label %19, label %8, !dbg !4320

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4321, !tbaa !894
  br label %19, !dbg !4322

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4323
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4308, metadata !DIExpression()), !dbg !4324
  %11 = icmp ult i64 %10, %2, !dbg !4325
  br i1 %11, label %12, label %14, !dbg !4327

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4328
  call void @llvm.dbg.value(metadata ptr %1, metadata !4330, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata ptr %4, metadata !4333, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i64 %13, metadata !4334, metadata !DIExpression()), !dbg !4335
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #38, !dbg !4337
  br label %19, !dbg !4338

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4339
  br i1 %15, label %19, label %16, !dbg !4342

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4343
  call void @llvm.dbg.value(metadata ptr %1, metadata !4330, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata ptr %4, metadata !4333, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i64 %17, metadata !4334, metadata !DIExpression()), !dbg !4345
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4347
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4348
  store i8 0, ptr %18, align 1, !dbg !4349, !tbaa !894
  br label %19, !dbg !4350

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4351
  ret i32 %20, !dbg !4352
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
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!79, !406, !410, !425, !701, !735, !478, !492, !540, !737, !739, !693, !746, !781, !783, !785, !787, !789, !791, !717, !793, !795, !797, !799}
!llvm.ident = !{!801, !801, !801, !801, !801, !801, !801, !801, !801, !801, !801, !801, !801, !801, !801, !801, !801, !801, !801, !801, !801, !801, !801, !801}
!llvm.module.flags = !{!802, !803, !804, !805, !806, !807, !808, !809}

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
!79 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/pwd.o -MD -MP -MF src/.deps/pwd.Tpo -c src/pwd.c -o src/.pwd.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !80, retainedTypes: !120, globals: !130, splitDebugInlining: false, nameTableKind: None)
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
!424 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !425, file: !426, line: 66, type: !473, isLocal: false, isDefinition: true)
!425 = distinct !DICompileUnit(language: DW_LANG_C11, file: !426, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !427, globals: !428, splitDebugInlining: false, nameTableKind: None)
!426 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!427 = !{!121, !129}
!428 = !{!429, !431, !455, !457, !459, !461, !423, !463, !465, !467, !469, !471}
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !426, line: 272, type: !231, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "old_file_name", scope: !433, file: !426, line: 304, type: !127, isLocal: true, isDefinition: true)
!433 = distinct !DISubprogram(name: "verror_at_line", scope: !426, file: !426, line: 298, type: !434, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !448)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !83, !83, !127, !89, !127, !436}
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !437, line: 52, baseType: !438)
!437 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !439, line: 12, baseType: !440)
!439 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !426, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !442)
!442 = !{!443, !444, !445, !446, !447}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !441, file: !426, baseType: !121, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !441, file: !426, baseType: !121, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !441, file: !426, baseType: !121, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !441, file: !426, baseType: !83, size: 32, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !441, file: !426, baseType: !83, size: 32, offset: 224)
!448 = !{!449, !450, !451, !452, !453, !454}
!449 = !DILocalVariable(name: "status", arg: 1, scope: !433, file: !426, line: 298, type: !83)
!450 = !DILocalVariable(name: "errnum", arg: 2, scope: !433, file: !426, line: 298, type: !83)
!451 = !DILocalVariable(name: "file_name", arg: 3, scope: !433, file: !426, line: 298, type: !127)
!452 = !DILocalVariable(name: "line_number", arg: 4, scope: !433, file: !426, line: 298, type: !89)
!453 = !DILocalVariable(name: "message", arg: 5, scope: !433, file: !426, line: 298, type: !127)
!454 = !DILocalVariable(name: "args", arg: 6, scope: !433, file: !426, line: 298, type: !436)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "old_line_number", scope: !433, file: !426, line: 305, type: !89, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !426, line: 338, type: !19, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !426, line: 346, type: !267, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !426, line: 346, type: !245, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "error_message_count", scope: !425, file: !426, line: 69, type: !89, isLocal: false, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !425, file: !426, line: 295, type: !83, isLocal: false, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !426, line: 208, type: !262, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !426, line: 208, type: !381, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !426, line: 214, type: !231, isLocal: true, isDefinition: true)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null}
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "program_name", scope: !478, file: !479, line: 31, type: !127, isLocal: false, isDefinition: true)
!478 = distinct !DICompileUnit(language: DW_LANG_C11, file: !479, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !480, globals: !481, splitDebugInlining: false, nameTableKind: None)
!479 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!480 = !{!121, !122}
!481 = !{!476, !482, !484}
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !479, line: 46, type: !267, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !479, line: 49, type: !19, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "utf07FF", scope: !488, file: !489, line: 46, type: !516, isLocal: true, isDefinition: true)
!488 = distinct !DISubprogram(name: "proper_name_lite", scope: !489, file: !489, line: 38, type: !490, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !494)
!489 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!490 = !DISubroutineType(types: !491)
!491 = !{!127, !127, !127}
!492 = distinct !DICompileUnit(language: DW_LANG_C11, file: !489, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !493, splitDebugInlining: false, nameTableKind: None)
!493 = !{!486}
!494 = !{!495, !496, !497, !498, !503}
!495 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !488, file: !489, line: 38, type: !127)
!496 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !488, file: !489, line: 38, type: !127)
!497 = !DILocalVariable(name: "translation", scope: !488, file: !489, line: 40, type: !127)
!498 = !DILocalVariable(name: "w", scope: !488, file: !489, line: 47, type: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !500, line: 37, baseType: !501)
!500 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !198, line: 57, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !198, line: 42, baseType: !89)
!503 = !DILocalVariable(name: "mbs", scope: !488, file: !489, line: 48, type: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !505, line: 6, baseType: !506)
!505 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !507, line: 21, baseType: !508)
!507 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !507, line: 13, size: 64, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !508, file: !507, line: 15, baseType: !83, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !508, file: !507, line: 20, baseType: !512, size: 32, offset: 32)
!512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !508, file: !507, line: 16, size: 32, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !512, file: !507, line: 18, baseType: !89, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !512, file: !507, line: 19, baseType: !19, size: 32)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 16, elements: !246)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !519, line: 78, type: !267, isLocal: true, isDefinition: true)
!519 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !519, line: 79, type: !240, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !519, line: 80, type: !138, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !519, line: 81, type: !138, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !519, line: 82, type: !220, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !519, line: 83, type: !245, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !519, line: 84, type: !267, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !519, line: 85, type: !262, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !519, line: 86, type: !262, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !519, line: 87, type: !267, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !540, file: !519, line: 76, type: !614, isLocal: false, isDefinition: true)
!540 = distinct !DICompileUnit(language: DW_LANG_C11, file: !519, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !541, retainedTypes: !549, globals: !550, splitDebugInlining: false, nameTableKind: None)
!541 = !{!542, !544, !87}
!542 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !543, line: 42, baseType: !89, size: 32, elements: !105)
!543 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!544 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !543, line: 254, baseType: !89, size: 32, elements: !545)
!545 = !{!546, !547, !548}
!546 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!547 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!548 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!549 = !{!121, !83, !123, !124}
!550 = !{!517, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !551, !555, !565, !567, !572, !574, !576, !578, !580, !603, !610, !612}
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !540, file: !519, line: 92, type: !553, isLocal: false, isDefinition: true)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 320, elements: !65)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !540, file: !519, line: 1040, type: !557, isLocal: false, isDefinition: true)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !519, line: 56, size: 448, elements: !558)
!558 = !{!559, !560, !561, !563, !564}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !557, file: !519, line: 59, baseType: !542, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !557, file: !519, line: 62, baseType: !83, size: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !557, file: !519, line: 66, baseType: !562, size: 256, offset: 64)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 256, elements: !268)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !557, file: !519, line: 69, baseType: !127, size: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !557, file: !519, line: 72, baseType: !127, size: 64, offset: 384)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !540, file: !519, line: 107, type: !557, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(name: "slot0", scope: !540, file: !519, line: 831, type: !569, isLocal: true, isDefinition: true)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 256)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !519, line: 321, type: !245, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !519, line: 357, type: !245, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !519, line: 358, type: !245, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !519, line: 199, type: !262, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "quote", scope: !582, file: !519, line: 228, type: !601, isLocal: true, isDefinition: true)
!582 = distinct !DISubprogram(name: "gettext_quote", scope: !519, file: !519, line: 197, type: !583, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !585)
!583 = !DISubroutineType(types: !584)
!584 = !{!127, !127, !542}
!585 = !{!586, !587, !588, !589, !590}
!586 = !DILocalVariable(name: "msgid", arg: 1, scope: !582, file: !519, line: 197, type: !127)
!587 = !DILocalVariable(name: "s", arg: 2, scope: !582, file: !519, line: 197, type: !542)
!588 = !DILocalVariable(name: "translation", scope: !582, file: !519, line: 199, type: !127)
!589 = !DILocalVariable(name: "w", scope: !582, file: !519, line: 229, type: !499)
!590 = !DILocalVariable(name: "mbs", scope: !582, file: !519, line: 230, type: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !505, line: 6, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !507, line: 21, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !507, line: 13, size: 64, elements: !594)
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !593, file: !507, line: 15, baseType: !83, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !593, file: !507, line: 20, baseType: !597, size: 32, offset: 32)
!597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !593, file: !507, line: 16, size: 32, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !597, file: !507, line: 18, baseType: !89, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !597, file: !507, line: 19, baseType: !19, size: 32)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !602)
!602 = !{!247, !21}
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(name: "slotvec", scope: !540, file: !519, line: 834, type: !605, isLocal: true, isDefinition: true)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !519, line: 823, size: 128, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !606, file: !519, line: 825, baseType: !124, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !606, file: !519, line: 826, baseType: !122, size: 64, offset: 64)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(name: "nslots", scope: !540, file: !519, line: 832, type: !83, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(name: "slotvec0", scope: !540, file: !519, line: 833, type: !606, isLocal: true, isDefinition: true)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 704, elements: !616)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!616 = !{!617}
!617 = !DISubrange(count: 11)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !620, line: 32, type: !245, isLocal: true, isDefinition: true)
!620 = !DIFile(filename: "lib/root-dev-ino.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b0632229108c1521929601778d55996f")
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !623, line: 67, type: !338, isLocal: true, isDefinition: true)
!623 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !623, line: 69, type: !262, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !623, line: 83, type: !262, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !623, line: 83, type: !19, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !623, line: 85, type: !245, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !623, line: 88, type: !634, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 171)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !623, line: 88, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 34)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !623, line: 105, type: !54, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !623, line: 109, type: !9, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !623, line: 113, type: !648, isLocal: true, isDefinition: true)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 28)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !623, line: 120, type: !653, isLocal: true, isDefinition: true)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 32)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !623, line: 127, type: !658, isLocal: true, isDefinition: true)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 36)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !623, line: 134, type: !289, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !623, line: 142, type: !44, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !623, line: 150, type: !29, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !623, line: 159, type: !669, isLocal: true, isDefinition: true)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 52)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !623, line: 170, type: !14, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !623, line: 248, type: !220, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !623, line: 248, type: !314, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !623, line: 254, type: !220, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !623, line: 254, type: !133, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !623, line: 254, type: !289, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !623, line: 259, type: !3, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !623, line: 259, type: !688, isLocal: true, isDefinition: true)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 29)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !693, file: !694, line: 26, type: !696, isLocal: false, isDefinition: true)
!693 = distinct !DICompileUnit(language: DW_LANG_C11, file: !694, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !695, splitDebugInlining: false, nameTableKind: None)
!694 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!695 = !{!691}
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 376, elements: !697)
!697 = !{!698}
!698 = !DISubrange(count: 47)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(name: "exit_failure", scope: !701, file: !702, line: 24, type: !704, isLocal: false, isDefinition: true)
!701 = distinct !DICompileUnit(language: DW_LANG_C11, file: !702, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !703, splitDebugInlining: false, nameTableKind: None)
!702 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!703 = !{!699}
!704 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !707, line: 34, type: !74, isLocal: true, isDefinition: true)
!707 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !707, line: 34, type: !262, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !707, line: 34, type: !284, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !714, line: 108, type: !59, isLocal: true, isDefinition: true)
!714 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(name: "internal_state", scope: !717, file: !714, line: 97, type: !720, isLocal: true, isDefinition: true)
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !714, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !718, globals: !719, splitDebugInlining: false, nameTableKind: None)
!718 = !{!121, !124, !129}
!719 = !{!712, !715}
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !505, line: 6, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !507, line: 21, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !507, line: 13, size: 64, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !722, file: !507, line: 15, baseType: !83, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !722, file: !507, line: 20, baseType: !726, size: 32, offset: 32)
!726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !722, file: !507, line: 16, size: 32, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !726, file: !507, line: 18, baseType: !89, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !726, file: !507, line: 19, baseType: !19, size: 32)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !732, line: 35, type: !245, isLocal: true, isDefinition: true)
!732 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !732, line: 35, type: !240, isLocal: true, isDefinition: true)
!735 = distinct !DICompileUnit(language: DW_LANG_C11, file: !736, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!736 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!737 = distinct !DICompileUnit(language: DW_LANG_C11, file: !620, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-root-dev-ino.o -MD -MP -MF lib/.deps/libcoreutils_a-root-dev-ino.Tpo -c lib/root-dev-ino.c -o lib/.libcoreutils_a-root-dev-ino.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !738, splitDebugInlining: false, nameTableKind: None)
!738 = !{!618}
!739 = distinct !DICompileUnit(language: DW_LANG_C11, file: !623, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !740, retainedTypes: !744, globals: !745, splitDebugInlining: false, nameTableKind: None)
!740 = !{!741}
!741 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !623, line: 40, baseType: !89, size: 32, elements: !742)
!742 = !{!743}
!743 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!744 = !{!121}
!745 = !{!621, !624, !626, !628, !630, !632, !637, !642, !644, !646, !651, !656, !661, !663, !665, !667, !672, !674, !676, !678, !680, !682, !684, !686}
!746 = distinct !DICompileUnit(language: DW_LANG_C11, file: !747, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !748, retainedTypes: !780, splitDebugInlining: false, nameTableKind: None)
!747 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!748 = !{!749, !761}
!749 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !750, file: !747, line: 188, baseType: !89, size: 32, elements: !759)
!750 = distinct !DISubprogram(name: "x2nrealloc", scope: !747, file: !747, line: 176, type: !751, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !754)
!751 = !DISubroutineType(types: !752)
!752 = !{!121, !121, !753, !124}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!754 = !{!755, !756, !757, !758}
!755 = !DILocalVariable(name: "p", arg: 1, scope: !750, file: !747, line: 176, type: !121)
!756 = !DILocalVariable(name: "pn", arg: 2, scope: !750, file: !747, line: 176, type: !753)
!757 = !DILocalVariable(name: "s", arg: 3, scope: !750, file: !747, line: 176, type: !124)
!758 = !DILocalVariable(name: "n", scope: !750, file: !747, line: 178, type: !124)
!759 = !{!760}
!760 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!761 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !762, file: !747, line: 228, baseType: !89, size: 32, elements: !759)
!762 = distinct !DISubprogram(name: "xpalloc", scope: !747, file: !747, line: 223, type: !763, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !770)
!763 = !DISubroutineType(types: !764)
!764 = !{!121, !121, !765, !766, !768, !766}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !767, line: 130, baseType: !768)
!767 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !769, line: 18, baseType: !199)
!769 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!770 = !{!771, !772, !773, !774, !775, !776, !777, !778, !779}
!771 = !DILocalVariable(name: "pa", arg: 1, scope: !762, file: !747, line: 223, type: !121)
!772 = !DILocalVariable(name: "pn", arg: 2, scope: !762, file: !747, line: 223, type: !765)
!773 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !762, file: !747, line: 223, type: !766)
!774 = !DILocalVariable(name: "n_max", arg: 4, scope: !762, file: !747, line: 223, type: !768)
!775 = !DILocalVariable(name: "s", arg: 5, scope: !762, file: !747, line: 223, type: !766)
!776 = !DILocalVariable(name: "n0", scope: !762, file: !747, line: 230, type: !766)
!777 = !DILocalVariable(name: "n", scope: !762, file: !747, line: 237, type: !766)
!778 = !DILocalVariable(name: "nbytes", scope: !762, file: !747, line: 248, type: !766)
!779 = !DILocalVariable(name: "adjusted_nbytes", scope: !762, file: !747, line: 252, type: !766)
!780 = !{!122, !121}
!781 = distinct !DICompileUnit(language: DW_LANG_C11, file: !707, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !782, splitDebugInlining: false, nameTableKind: None)
!782 = !{!705, !708, !710}
!783 = distinct !DICompileUnit(language: DW_LANG_C11, file: !784, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xgetcwd.o -MD -MP -MF lib/.deps/libcoreutils_a-xgetcwd.Tpo -c lib/xgetcwd.c -o lib/.libcoreutils_a-xgetcwd.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!784 = !DIFile(filename: "lib/xgetcwd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3727157833d2e1ec9b24b353bc14eccb")
!785 = distinct !DICompileUnit(language: DW_LANG_C11, file: !786, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!786 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!787 = distinct !DICompileUnit(language: DW_LANG_C11, file: !788, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!788 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!789 = distinct !DICompileUnit(language: DW_LANG_C11, file: !790, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !744, splitDebugInlining: false, nameTableKind: None)
!790 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!791 = distinct !DICompileUnit(language: DW_LANG_C11, file: !792, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !744, splitDebugInlining: false, nameTableKind: None)
!792 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!793 = distinct !DICompileUnit(language: DW_LANG_C11, file: !794, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !744, splitDebugInlining: false, nameTableKind: None)
!794 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!795 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !796, splitDebugInlining: false, nameTableKind: None)
!796 = !{!730, !733}
!797 = distinct !DICompileUnit(language: DW_LANG_C11, file: !798, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!798 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!799 = distinct !DICompileUnit(language: DW_LANG_C11, file: !800, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !744, splitDebugInlining: false, nameTableKind: None)
!800 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!801 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!802 = !{i32 7, !"Dwarf Version", i32 5}
!803 = !{i32 2, !"Debug Info Version", i32 3}
!804 = !{i32 1, !"wchar_size", i32 4}
!805 = !{i32 8, !"PIC Level", i32 2}
!806 = !{i32 7, !"PIE Level", i32 2}
!807 = !{i32 7, !"uwtable", i32 2}
!808 = !{i32 7, !"frame-pointer", i32 1}
!809 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!810 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 49, type: !811, scopeLine: 50, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !83}
!813 = !{!814}
!814 = !DILocalVariable(name: "status", arg: 1, scope: !810, file: !2, line: 49, type: !83)
!815 = !DILocation(line: 0, scope: !810)
!816 = !DILocation(line: 51, column: 14, scope: !817)
!817 = distinct !DILexicalBlock(scope: !810, file: !2, line: 51, column: 7)
!818 = !DILocation(line: 51, column: 7, scope: !810)
!819 = !DILocation(line: 52, column: 5, scope: !820)
!820 = distinct !DILexicalBlock(scope: !817, file: !2, line: 52, column: 5)
!821 = !{!822, !822, i64 0}
!822 = !{!"any pointer", !823, i64 0}
!823 = !{!"omnipotent char", !824, i64 0}
!824 = !{!"Simple C/C++ TBAA"}
!825 = !DILocation(line: 55, column: 7, scope: !826)
!826 = distinct !DILexicalBlock(scope: !817, file: !2, line: 54, column: 5)
!827 = !DILocation(line: 56, column: 7, scope: !826)
!828 = !DILocation(line: 60, column: 7, scope: !826)
!829 = !DILocation(line: 64, column: 7, scope: !826)
!830 = !DILocation(line: 68, column: 7, scope: !826)
!831 = !DILocation(line: 69, column: 7, scope: !826)
!832 = !DILocation(line: 70, column: 7, scope: !826)
!833 = !DILocation(line: 73, column: 7, scope: !826)
!834 = !DILocalVariable(name: "program", arg: 1, scope: !835, file: !82, line: 836, type: !127)
!835 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !82, file: !82, line: 836, type: !836, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !127}
!838 = !{!834, !839, !846, !847, !849, !850}
!839 = !DILocalVariable(name: "infomap", scope: !835, file: !82, line: 838, type: !840)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 896, elements: !263)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !835, file: !82, line: 838, size: 128, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !842, file: !82, line: 838, baseType: !127, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !842, file: !82, line: 838, baseType: !127, size: 64, offset: 64)
!846 = !DILocalVariable(name: "node", scope: !835, file: !82, line: 848, type: !127)
!847 = !DILocalVariable(name: "map_prog", scope: !835, file: !82, line: 849, type: !848)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!849 = !DILocalVariable(name: "lc_messages", scope: !835, file: !82, line: 861, type: !127)
!850 = !DILocalVariable(name: "url_program", scope: !835, file: !82, line: 874, type: !127)
!851 = !DILocation(line: 0, scope: !835, inlinedAt: !852)
!852 = distinct !DILocation(line: 74, column: 7, scope: !826)
!853 = !{}
!854 = !DILocation(line: 857, column: 3, scope: !835, inlinedAt: !852)
!855 = !DILocation(line: 861, column: 29, scope: !835, inlinedAt: !852)
!856 = !DILocation(line: 862, column: 7, scope: !857, inlinedAt: !852)
!857 = distinct !DILexicalBlock(scope: !835, file: !82, line: 862, column: 7)
!858 = !DILocation(line: 862, column: 19, scope: !857, inlinedAt: !852)
!859 = !DILocation(line: 862, column: 22, scope: !857, inlinedAt: !852)
!860 = !DILocation(line: 862, column: 7, scope: !835, inlinedAt: !852)
!861 = !DILocation(line: 868, column: 7, scope: !862, inlinedAt: !852)
!862 = distinct !DILexicalBlock(scope: !857, file: !82, line: 863, column: 5)
!863 = !DILocation(line: 870, column: 5, scope: !862, inlinedAt: !852)
!864 = !DILocation(line: 875, column: 3, scope: !835, inlinedAt: !852)
!865 = !DILocation(line: 877, column: 3, scope: !835, inlinedAt: !852)
!866 = !DILocation(line: 76, column: 3, scope: !810)
!867 = !DISubprogram(name: "dcgettext", scope: !868, file: !868, line: 51, type: !869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!868 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!869 = !DISubroutineType(types: !870)
!870 = !{!122, !127, !127, !83}
!871 = !DISubprogram(name: "__fprintf_chk", scope: !872, file: !872, line: 93, type: !873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!872 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!873 = !DISubroutineType(types: !874)
!874 = !{!83, !875, !83, !876, null}
!875 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !171)
!876 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !127)
!877 = !DISubprogram(name: "__printf_chk", scope: !872, file: !872, line: 95, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!878 = !DISubroutineType(types: !879)
!879 = !{!83, !83, !876, null}
!880 = !DISubprogram(name: "fputs_unlocked", scope: !437, file: !437, line: 691, type: !881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!881 = !DISubroutineType(types: !882)
!882 = !{!83, !876, !875}
!883 = !DILocation(line: 0, scope: !148)
!884 = !DILocation(line: 581, column: 7, scope: !156)
!885 = !{!886, !886, i64 0}
!886 = !{!"int", !823, i64 0}
!887 = !DILocation(line: 581, column: 19, scope: !156)
!888 = !DILocation(line: 581, column: 7, scope: !148)
!889 = !DILocation(line: 585, column: 26, scope: !155)
!890 = !DILocation(line: 0, scope: !155)
!891 = !DILocation(line: 586, column: 23, scope: !155)
!892 = !DILocation(line: 586, column: 28, scope: !155)
!893 = !DILocation(line: 586, column: 32, scope: !155)
!894 = !{!823, !823, i64 0}
!895 = !DILocation(line: 586, column: 38, scope: !155)
!896 = !DILocalVariable(name: "__s1", arg: 1, scope: !897, file: !898, line: 1359, type: !127)
!897 = distinct !DISubprogram(name: "streq", scope: !898, file: !898, line: 1359, type: !899, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !901)
!898 = !DIFile(filename: "./lib/string.h", directory: "/src")
!899 = !DISubroutineType(types: !900)
!900 = !{!158, !127, !127}
!901 = !{!896, !902}
!902 = !DILocalVariable(name: "__s2", arg: 2, scope: !897, file: !898, line: 1359, type: !127)
!903 = !DILocation(line: 0, scope: !897, inlinedAt: !904)
!904 = distinct !DILocation(line: 586, column: 41, scope: !155)
!905 = !DILocation(line: 1361, column: 11, scope: !897, inlinedAt: !904)
!906 = !DILocation(line: 1361, column: 10, scope: !897, inlinedAt: !904)
!907 = !DILocation(line: 586, column: 19, scope: !155)
!908 = !DILocation(line: 587, column: 5, scope: !155)
!909 = !DILocation(line: 588, column: 7, scope: !910)
!910 = distinct !DILexicalBlock(scope: !148, file: !82, line: 588, column: 7)
!911 = !DILocation(line: 588, column: 7, scope: !148)
!912 = !DILocation(line: 590, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !82, line: 589, column: 5)
!914 = !DILocation(line: 591, column: 7, scope: !913)
!915 = !DILocation(line: 595, column: 37, scope: !148)
!916 = !DILocation(line: 595, column: 35, scope: !148)
!917 = !DILocation(line: 596, column: 29, scope: !148)
!918 = !DILocation(line: 597, column: 8, scope: !164)
!919 = !DILocation(line: 597, column: 7, scope: !148)
!920 = !DILocation(line: 604, column: 24, scope: !163)
!921 = !DILocation(line: 604, column: 12, scope: !164)
!922 = !DILocation(line: 0, scope: !162)
!923 = !DILocation(line: 610, column: 16, scope: !162)
!924 = !DILocation(line: 610, column: 7, scope: !162)
!925 = !DILocation(line: 611, column: 21, scope: !162)
!926 = !{!927, !927, i64 0}
!927 = !{!"short", !823, i64 0}
!928 = !DILocation(line: 611, column: 19, scope: !162)
!929 = !DILocation(line: 611, column: 16, scope: !162)
!930 = !DILocation(line: 610, column: 30, scope: !162)
!931 = distinct !{!931, !924, !925, !932}
!932 = !{!"llvm.loop.mustprogress"}
!933 = !DILocation(line: 612, column: 18, scope: !934)
!934 = distinct !DILexicalBlock(scope: !162, file: !82, line: 612, column: 11)
!935 = !DILocation(line: 612, column: 11, scope: !162)
!936 = !DILocation(line: 620, column: 23, scope: !148)
!937 = !DILocation(line: 625, column: 39, scope: !148)
!938 = !DILocation(line: 626, column: 3, scope: !148)
!939 = !DILocation(line: 626, column: 10, scope: !148)
!940 = !DILocation(line: 626, column: 21, scope: !148)
!941 = !DILocation(line: 628, column: 44, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !82, line: 628, column: 11)
!943 = distinct !DILexicalBlock(scope: !148, file: !82, line: 627, column: 5)
!944 = !DILocation(line: 628, column: 32, scope: !942)
!945 = !DILocation(line: 628, column: 49, scope: !942)
!946 = !DILocation(line: 628, column: 11, scope: !943)
!947 = !DILocation(line: 630, column: 11, scope: !948)
!948 = distinct !DILexicalBlock(scope: !943, file: !82, line: 630, column: 11)
!949 = !DILocation(line: 630, column: 11, scope: !943)
!950 = !DILocation(line: 632, column: 26, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !82, line: 632, column: 15)
!952 = distinct !DILexicalBlock(scope: !948, file: !82, line: 631, column: 9)
!953 = !DILocation(line: 632, column: 34, scope: !951)
!954 = !DILocation(line: 632, column: 37, scope: !951)
!955 = !DILocation(line: 632, column: 15, scope: !952)
!956 = !DILocation(line: 640, column: 16, scope: !943)
!957 = distinct !{!957, !938, !958, !932}
!958 = !DILocation(line: 641, column: 5, scope: !148)
!959 = !DILocation(line: 644, column: 3, scope: !148)
!960 = !DILocation(line: 0, scope: !897, inlinedAt: !961)
!961 = distinct !DILocation(line: 648, column: 31, scope: !148)
!962 = !DILocation(line: 0, scope: !897, inlinedAt: !963)
!963 = distinct !DILocation(line: 649, column: 31, scope: !148)
!964 = !DILocation(line: 0, scope: !897, inlinedAt: !965)
!965 = distinct !DILocation(line: 650, column: 31, scope: !148)
!966 = !DILocation(line: 0, scope: !897, inlinedAt: !967)
!967 = distinct !DILocation(line: 651, column: 31, scope: !148)
!968 = !DILocation(line: 0, scope: !897, inlinedAt: !969)
!969 = distinct !DILocation(line: 652, column: 31, scope: !148)
!970 = !DILocation(line: 0, scope: !897, inlinedAt: !971)
!971 = distinct !DILocation(line: 653, column: 31, scope: !148)
!972 = !DILocation(line: 0, scope: !897, inlinedAt: !973)
!973 = distinct !DILocation(line: 654, column: 31, scope: !148)
!974 = !DILocation(line: 0, scope: !897, inlinedAt: !975)
!975 = distinct !DILocation(line: 655, column: 31, scope: !148)
!976 = !DILocation(line: 0, scope: !897, inlinedAt: !977)
!977 = distinct !DILocation(line: 656, column: 31, scope: !148)
!978 = !DILocation(line: 0, scope: !897, inlinedAt: !979)
!979 = distinct !DILocation(line: 657, column: 31, scope: !148)
!980 = !DILocation(line: 663, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !148, file: !82, line: 663, column: 7)
!982 = !DILocation(line: 664, column: 7, scope: !981)
!983 = !DILocation(line: 664, column: 10, scope: !981)
!984 = !DILocation(line: 663, column: 7, scope: !148)
!985 = !DILocation(line: 669, column: 7, scope: !986)
!986 = distinct !DILexicalBlock(scope: !981, file: !82, line: 665, column: 5)
!987 = !DILocation(line: 671, column: 5, scope: !986)
!988 = !DILocation(line: 676, column: 7, scope: !989)
!989 = distinct !DILexicalBlock(scope: !981, file: !82, line: 673, column: 5)
!990 = !DILocation(line: 679, column: 3, scope: !148)
!991 = !DILocation(line: 683, column: 3, scope: !148)
!992 = !DILocation(line: 686, column: 3, scope: !148)
!993 = !DILocation(line: 688, column: 3, scope: !148)
!994 = !DILocation(line: 691, column: 3, scope: !148)
!995 = !DILocation(line: 695, column: 3, scope: !148)
!996 = !DILocation(line: 696, column: 1, scope: !148)
!997 = !DISubprogram(name: "setlocale", scope: !998, file: !998, line: 122, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!998 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!999 = !DISubroutineType(types: !1000)
!1000 = !{!122, !83, !127}
!1001 = !DISubprogram(name: "strncmp", scope: !1002, file: !1002, line: 159, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1002 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!83, !127, !127, !124}
!1005 = !DISubprogram(name: "exit", scope: !1006, file: !1006, line: 624, type: !811, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1006 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1007 = !DISubprogram(name: "getenv", scope: !1006, file: !1006, line: 641, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!122, !127}
!1010 = !DISubprogram(name: "strcmp", scope: !1002, file: !1002, line: 156, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!83, !127, !127}
!1013 = !DISubprogram(name: "strspn", scope: !1002, file: !1002, line: 297, type: !1014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!126, !127, !127}
!1016 = !DISubprogram(name: "strchr", scope: !1002, file: !1002, line: 246, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!122, !127, !83}
!1019 = !DISubprogram(name: "__ctype_b_loc", scope: !88, file: !88, line: 79, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!1025 = !DISubprogram(name: "strcspn", scope: !1002, file: !1002, line: 293, type: !1014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1026 = !DISubprogram(name: "fwrite_unlocked", scope: !437, file: !437, line: 704, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!124, !1029, !124, !124, !875}
!1029 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1030)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1032 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 320, type: !1033, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1036)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!83, !83, !1035}
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1036 = !{!1037, !1038, !1039, !1040, !1042, !1045, !1046}
!1037 = !DILocalVariable(name: "argc", arg: 1, scope: !1032, file: !2, line: 320, type: !83)
!1038 = !DILocalVariable(name: "argv", arg: 2, scope: !1032, file: !2, line: 320, type: !1035)
!1039 = !DILocalVariable(name: "logical", scope: !1032, file: !2, line: 325, type: !158)
!1040 = !DILocalVariable(name: "c", scope: !1041, file: !2, line: 337, type: !83)
!1041 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 336, column: 5)
!1042 = !DILocalVariable(name: "wd", scope: !1043, file: !2, line: 363, type: !127)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 362, column: 5)
!1044 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 361, column: 7)
!1045 = !DILocalVariable(name: "wd", scope: !1032, file: !2, line: 371, type: !122)
!1046 = !DILocalVariable(name: "file_name", scope: !1047, file: !2, line: 379, type: !1049)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 378, column: 5)
!1048 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 372, column: 7)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_name", file: !2, line: 32, size: 192, elements: !1051)
!1051 = !{!1052, !1053, !1056}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1050, file: !2, line: 34, baseType: !122, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "n_alloc", scope: !1050, file: !2, line: 35, baseType: !1054, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1055, line: 130, baseType: !768)
!1055 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1050, file: !2, line: 36, baseType: !122, size: 64, offset: 128)
!1057 = distinct !DIAssignID()
!1058 = distinct !DIAssignID()
!1059 = distinct !DIAssignID()
!1060 = distinct !DIAssignID()
!1061 = distinct !DIAssignID()
!1062 = distinct !DIAssignID()
!1063 = !DILocation(line: 0, scope: !1032)
!1064 = !DILocation(line: 325, column: 19, scope: !1032)
!1065 = !DILocation(line: 325, column: 46, scope: !1032)
!1066 = !DILocation(line: 328, column: 21, scope: !1032)
!1067 = !DILocation(line: 328, column: 3, scope: !1032)
!1068 = !DILocation(line: 329, column: 3, scope: !1032)
!1069 = !DILocation(line: 330, column: 3, scope: !1032)
!1070 = !DILocation(line: 331, column: 3, scope: !1032)
!1071 = !DILocation(line: 333, column: 3, scope: !1032)
!1072 = !DILocation(line: 335, column: 3, scope: !1032)
!1073 = !DILocation(line: 337, column: 15, scope: !1041)
!1074 = !DILocation(line: 0, scope: !1041)
!1075 = !DILocation(line: 338, column: 11, scope: !1041)
!1076 = !DILocation(line: 349, column: 9, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 341, column: 9)
!1078 = !DILocation(line: 351, column: 9, scope: !1077)
!1079 = !DILocation(line: 354, column: 11, scope: !1077)
!1080 = !DILocation(line: 356, column: 5, scope: !1032)
!1081 = !DILocation(line: 358, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1032, file: !2, line: 358, column: 7)
!1083 = !DILocation(line: 358, column: 14, scope: !1082)
!1084 = !DILocation(line: 358, column: 7, scope: !1032)
!1085 = !DILocation(line: 359, column: 5, scope: !1082)
!1086 = !DILocation(line: 361, column: 7, scope: !1032)
!1087 = !DILocalVariable(name: "st1", scope: !1088, file: !2, line: 311, type: !1095)
!1088 = distinct !DISubprogram(name: "logical_getcwd", scope: !2, file: !2, line: 294, type: !1089, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1091)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!127}
!1091 = !{!1092, !1093, !1087, !1094}
!1092 = !DILocalVariable(name: "wd", scope: !1088, file: !2, line: 296, type: !127)
!1093 = !DILocalVariable(name: "p", scope: !1088, file: !2, line: 301, type: !127)
!1094 = !DILocalVariable(name: "st2", scope: !1088, file: !2, line: 312, type: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1096, line: 44, size: 1024, elements: !1097)
!1096 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1097 = !{!1098, !1100, !1102, !1104, !1106, !1108, !1110, !1111, !1112, !1113, !1115, !1116, !1118, !1126, !1127, !1128}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1095, file: !1096, line: 46, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !198, line: 145, baseType: !126)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1095, file: !1096, line: 47, baseType: !1101, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !198, line: 148, baseType: !126)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1095, file: !1096, line: 48, baseType: !1103, size: 32, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !198, line: 150, baseType: !89)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1095, file: !1096, line: 49, baseType: !1105, size: 32, offset: 160)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !198, line: 151, baseType: !89)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1095, file: !1096, line: 50, baseType: !1107, size: 32, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !198, line: 146, baseType: !89)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1095, file: !1096, line: 51, baseType: !1109, size: 32, offset: 224)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !198, line: 147, baseType: !89)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1095, file: !1096, line: 52, baseType: !1099, size: 64, offset: 256)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1095, file: !1096, line: 53, baseType: !1099, size: 64, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1095, file: !1096, line: 54, baseType: !197, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1095, file: !1096, line: 55, baseType: !1114, size: 32, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !198, line: 175, baseType: !83)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1095, file: !1096, line: 56, baseType: !83, size: 32, offset: 480)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1095, file: !1096, line: 57, baseType: !1117, size: 64, offset: 512)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !198, line: 180, baseType: !199)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1095, file: !1096, line: 65, baseType: !1119, size: 128, offset: 576)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1120, line: 11, size: 128, elements: !1121)
!1120 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1121 = !{!1122, !1124}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1119, file: !1120, line: 16, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !198, line: 160, baseType: !199)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1119, file: !1120, line: 21, baseType: !1125, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !198, line: 197, baseType: !199)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1095, file: !1096, line: 66, baseType: !1119, size: 128, offset: 704)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1095, file: !1096, line: 67, baseType: !1119, size: 128, offset: 832)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1095, file: !1096, line: 79, baseType: !1129, size: 64, offset: 960)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 64, elements: !246)
!1130 = !DILocation(line: 0, scope: !1088, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 363, column: 24, scope: !1043)
!1132 = !DILocation(line: 296, column: 20, scope: !1088, inlinedAt: !1131)
!1133 = !DILocation(line: 299, column: 8, scope: !1134, inlinedAt: !1131)
!1134 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 299, column: 7)
!1135 = !DILocation(line: 299, column: 11, scope: !1134, inlinedAt: !1131)
!1136 = !DILocation(line: 299, column: 14, scope: !1134, inlinedAt: !1131)
!1137 = !DILocation(line: 299, column: 20, scope: !1134, inlinedAt: !1131)
!1138 = !DILocation(line: 299, column: 7, scope: !1088, inlinedAt: !1131)
!1139 = !DILocation(line: 302, column: 15, scope: !1088, inlinedAt: !1131)
!1140 = !DILocation(line: 302, column: 3, scope: !1088, inlinedAt: !1131)
!1141 = !DILocation(line: 304, column: 12, scope: !1142, inlinedAt: !1131)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 304, column: 11)
!1143 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 303, column: 5)
!1144 = !DILocation(line: 304, column: 17, scope: !1142, inlinedAt: !1131)
!1145 = !DILocation(line: 305, column: 32, scope: !1142, inlinedAt: !1131)
!1146 = !DILocation(line: 305, column: 37, scope: !1142, inlinedAt: !1131)
!1147 = !DILocation(line: 307, column: 8, scope: !1143, inlinedAt: !1131)
!1148 = distinct !{!1148, !1140, !1149, !932}
!1149 = !DILocation(line: 308, column: 5, scope: !1088, inlinedAt: !1131)
!1150 = !DILocation(line: 311, column: 3, scope: !1088, inlinedAt: !1131)
!1151 = !DILocation(line: 312, column: 3, scope: !1088, inlinedAt: !1131)
!1152 = !DILocation(line: 313, column: 7, scope: !1153, inlinedAt: !1131)
!1153 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 313, column: 7)
!1154 = !DILocation(line: 313, column: 23, scope: !1153, inlinedAt: !1131)
!1155 = !DILocation(line: 313, column: 28, scope: !1153, inlinedAt: !1131)
!1156 = !DILocation(line: 313, column: 31, scope: !1153, inlinedAt: !1131)
!1157 = !DILocation(line: 313, column: 48, scope: !1153, inlinedAt: !1131)
!1158 = !DILocation(line: 313, column: 53, scope: !1153, inlinedAt: !1131)
!1159 = !DILocalVariable(name: "a", arg: 1, scope: !1160, file: !1161, line: 86, type: !1164)
!1160 = distinct !DISubprogram(name: "psame_inode", scope: !1161, file: !1161, line: 86, type: !1162, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1166)
!1161 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!158, !1164, !1164}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1095)
!1166 = !{!1159, !1167}
!1167 = !DILocalVariable(name: "b", arg: 2, scope: !1160, file: !1161, line: 86, type: !1164)
!1168 = !DILocation(line: 0, scope: !1160, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 313, column: 56, scope: !1153, inlinedAt: !1131)
!1170 = !DILocation(line: 90, column: 14, scope: !1160, inlinedAt: !1169)
!1171 = !{!1172, !1173, i64 0}
!1172 = !{!"stat", !1173, i64 0, !1173, i64 8, !886, i64 16, !886, i64 20, !886, i64 24, !886, i64 28, !1173, i64 32, !1173, i64 40, !1173, i64 48, !886, i64 56, !886, i64 60, !1173, i64 64, !1174, i64 72, !1174, i64 88, !1174, i64 104, !823, i64 120}
!1173 = !{!"long", !823, i64 0}
!1174 = !{!"timespec", !1173, i64 0, !1173, i64 8}
!1175 = !{!1172, !1173, i64 8}
!1176 = !DILocation(line: 313, column: 7, scope: !1088, inlinedAt: !1131)
!1177 = !DILocation(line: 316, column: 1, scope: !1088, inlinedAt: !1131)
!1178 = !DILocation(line: 0, scope: !1043)
!1179 = !DILocation(line: 364, column: 11, scope: !1043)
!1180 = !DILocation(line: 366, column: 11, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 365, column: 9)
!1182 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 364, column: 11)
!1183 = !DILocation(line: 371, column: 14, scope: !1032)
!1184 = !DILocation(line: 372, column: 10, scope: !1048)
!1185 = !DILocation(line: 372, column: 7, scope: !1032)
!1186 = !DILocation(line: 374, column: 7, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 373, column: 5)
!1188 = !DILocation(line: 375, column: 7, scope: !1187)
!1189 = !DILocation(line: 376, column: 5, scope: !1187)
!1190 = !DILocation(line: 89, column: 25, scope: !1191, inlinedAt: !1197)
!1191 = distinct !DISubprogram(name: "file_name_init", scope: !2, file: !2, line: 87, type: !1192, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!1049}
!1194 = !{!1195, !1196}
!1195 = !DILocalVariable(name: "p", scope: !1191, file: !2, line: 89, type: !1049)
!1196 = !DILocalVariable(name: "init_alloc", scope: !1191, file: !2, line: 93, type: !83)
!1197 = distinct !DILocation(line: 379, column: 37, scope: !1047)
!1198 = !DILocation(line: 0, scope: !1191, inlinedAt: !1197)
!1199 = !DILocation(line: 94, column: 6, scope: !1191, inlinedAt: !1197)
!1200 = !DILocation(line: 94, column: 14, scope: !1191, inlinedAt: !1197)
!1201 = !{!1202, !1173, i64 8}
!1202 = !{!"file_name", !822, i64 0, !1173, i64 8, !822, i64 16}
!1203 = !DILocation(line: 96, column: 12, scope: !1191, inlinedAt: !1197)
!1204 = !DILocation(line: 96, column: 10, scope: !1191, inlinedAt: !1197)
!1205 = !{!1202, !822, i64 0}
!1206 = !DILocation(line: 97, column: 34, scope: !1191, inlinedAt: !1197)
!1207 = !DILocation(line: 97, column: 6, scope: !1191, inlinedAt: !1197)
!1208 = !DILocation(line: 97, column: 12, scope: !1191, inlinedAt: !1197)
!1209 = !{!1202, !822, i64 16}
!1210 = !DILocation(line: 98, column: 15, scope: !1191, inlinedAt: !1197)
!1211 = !DILocation(line: 0, scope: !1047)
!1212 = !DILocalVariable(name: "dev_ino_buf", scope: !1213, file: !2, line: 265, type: !1221)
!1213 = distinct !DISubprogram(name: "robust_getcwd", scope: !2, file: !2, line: 262, type: !1214, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !1049}
!1216 = !{!1217, !1218, !1212, !1219, !1229}
!1217 = !DILocalVariable(name: "file_name", arg: 1, scope: !1213, file: !2, line: 262, type: !1049)
!1218 = !DILocalVariable(name: "height", scope: !1213, file: !2, line: 264, type: !124)
!1219 = !DILocalVariable(name: "root_dev_ino", scope: !1213, file: !2, line: 266, type: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !1222, line: 30, size: 128, elements: !1223)
!1222 = !DIFile(filename: "./lib/dev-ino.h", directory: "/src", checksumkind: CSK_MD5, checksum: "7eae2ded9ac0c200760eafd719dd996d")
!1223 = !{!1224, !1227}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1221, file: !1222, line: 32, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !1226, line: 47, baseType: !1101)
!1226 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1221, file: !1222, line: 33, baseType: !1228, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !1226, line: 59, baseType: !1099)
!1229 = !DILocalVariable(name: "dot_sb", scope: !1213, file: !2, line: 272, type: !1095)
!1230 = !DILocation(line: 0, scope: !1213, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 380, column: 7, scope: !1047)
!1232 = !DILocation(line: 265, column: 3, scope: !1213, inlinedAt: !1231)
!1233 = !DILocation(line: 266, column: 34, scope: !1213, inlinedAt: !1231)
!1234 = !DILocation(line: 268, column: 20, scope: !1235, inlinedAt: !1231)
!1235 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 268, column: 7)
!1236 = !DILocation(line: 268, column: 7, scope: !1213, inlinedAt: !1231)
!1237 = !DILocation(line: 269, column: 5, scope: !1235, inlinedAt: !1231)
!1238 = !DILocation(line: 272, column: 3, scope: !1213, inlinedAt: !1231)
!1239 = !DILocation(line: 273, column: 7, scope: !1240, inlinedAt: !1231)
!1240 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 273, column: 7)
!1241 = !DILocation(line: 273, column: 27, scope: !1240, inlinedAt: !1231)
!1242 = !DILocation(line: 273, column: 7, scope: !1213, inlinedAt: !1231)
!1243 = !DILocation(line: 279, column: 11, scope: !1244, inlinedAt: !1231)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 279, column: 11)
!1245 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 277, column: 5)
!1246 = !{!1247, !1173, i64 8}
!1247 = !{!"dev_ino", !1173, i64 0, !1173, i64 8}
!1248 = !{!1247, !1173, i64 0}
!1249 = !DILocation(line: 279, column: 11, scope: !1245, inlinedAt: !1231)
!1250 = !DILocation(line: 274, column: 5, scope: !1240, inlinedAt: !1231)
!1251 = !DILocation(line: 282, column: 49, scope: !1245, inlinedAt: !1231)
!1252 = !DILocalVariable(name: "parent_sb", scope: !1253, file: !2, line: 166, type: !1095)
!1253 = distinct !DISubprogram(name: "find_dir_entry", scope: !2, file: !2, line: 153, type: !1254, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1257)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{null, !1256, !1049, !124}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1257 = !{!1258, !1259, !1260, !1261, !1266, !1252, !1267, !1268, !1269, !1281, !1286, !1287}
!1258 = !DILocalVariable(name: "dot_sb", arg: 1, scope: !1253, file: !2, line: 153, type: !1256)
!1259 = !DILocalVariable(name: "file_name", arg: 2, scope: !1253, file: !2, line: 153, type: !1049)
!1260 = !DILocalVariable(name: "parent_height", arg: 3, scope: !1253, file: !2, line: 154, type: !124)
!1261 = !DILocalVariable(name: "dirp", scope: !1253, file: !2, line: 156, type: !1262)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !1264, line: 127, baseType: !1265)
!1264 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !1264, line: 127, flags: DIFlagFwdDecl)
!1266 = !DILocalVariable(name: "fd", scope: !1253, file: !2, line: 161, type: !83)
!1267 = !DILocalVariable(name: "use_lstat", scope: !1253, file: !2, line: 173, type: !158)
!1268 = !DILocalVariable(name: "found", scope: !1253, file: !2, line: 175, type: !158)
!1269 = !DILocalVariable(name: "dp", scope: !1270, file: !2, line: 178, type: !1271)
!1270 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 177, column: 5)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !1274, line: 22, size: 2240, elements: !1275)
!1274 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!1275 = !{!1276, !1277, !1278, !1279, !1280}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !1273, file: !1274, line: 25, baseType: !1101, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !1273, file: !1274, line: 26, baseType: !197, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !1273, file: !1274, line: 31, baseType: !123, size: 16, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !1273, file: !1274, line: 32, baseType: !129, size: 8, offset: 144)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1273, file: !1274, line: 33, baseType: !569, size: 2048, offset: 152)
!1281 = !DILocalVariable(name: "e", scope: !1282, file: !2, line: 186, type: !83)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 184, column: 13)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 183, column: 15)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 182, column: 9)
!1285 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 181, column: 11)
!1286 = !DILocalVariable(name: "ino", scope: !1270, file: !2, line: 196, type: !1225)
!1287 = !DILocalVariable(name: "ent_sb", scope: !1270, file: !2, line: 198, type: !1095)
!1288 = !DILocation(line: 0, scope: !1253, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 282, column: 7, scope: !1245, inlinedAt: !1231)
!1290 = !DILocation(line: 0, scope: !1270, inlinedAt: !1289)
!1291 = !DILocation(line: 156, column: 15, scope: !1253, inlinedAt: !1289)
!1292 = !DILocation(line: 157, column: 12, scope: !1293, inlinedAt: !1289)
!1293 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 157, column: 7)
!1294 = !DILocation(line: 157, column: 7, scope: !1253, inlinedAt: !1289)
!1295 = !DILocation(line: 158, column: 5, scope: !1293, inlinedAt: !1289)
!1296 = !DILocation(line: 161, column: 12, scope: !1253, inlinedAt: !1289)
!1297 = !DILocation(line: 162, column: 10, scope: !1298, inlinedAt: !1289)
!1298 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 162, column: 7)
!1299 = !DILocation(line: 162, column: 8, scope: !1298, inlinedAt: !1289)
!1300 = !DILocation(line: 162, column: 18, scope: !1298, inlinedAt: !1289)
!1301 = !DILocation(line: 162, column: 46, scope: !1298, inlinedAt: !1289)
!1302 = !DILocation(line: 162, column: 7, scope: !1253, inlinedAt: !1289)
!1303 = !DILocation(line: 162, column: 32, scope: !1298, inlinedAt: !1289)
!1304 = !DILocation(line: 163, column: 5, scope: !1298, inlinedAt: !1289)
!1305 = !DILocation(line: 166, column: 3, scope: !1253, inlinedAt: !1289)
!1306 = !DILocation(line: 167, column: 18, scope: !1307, inlinedAt: !1289)
!1307 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 167, column: 7)
!1308 = !DILocation(line: 167, column: 8, scope: !1307, inlinedAt: !1289)
!1309 = !DILocation(line: 167, column: 43, scope: !1307, inlinedAt: !1289)
!1310 = !DILocation(line: 167, column: 67, scope: !1307, inlinedAt: !1289)
!1311 = !DILocation(line: 167, column: 7, scope: !1253, inlinedAt: !1289)
!1312 = !DILocation(line: 168, column: 5, scope: !1307, inlinedAt: !1289)
!1313 = !DILocation(line: 173, column: 31, scope: !1253, inlinedAt: !1289)
!1314 = !DILocation(line: 173, column: 38, scope: !1253, inlinedAt: !1289)
!1315 = !DILocation(line: 176, column: 3, scope: !1253, inlinedAt: !1289)
!1316 = !DILocation(line: 180, column: 13, scope: !1270, inlinedAt: !1289)
!1317 = !DILocalVariable(name: "dirp", arg: 1, scope: !1318, file: !82, line: 285, type: !1262)
!1318 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !82, file: !82, line: 285, type: !1319, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1321)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!1271, !1262}
!1321 = !{!1317, !1322}
!1322 = !DILocalVariable(name: "dp", scope: !1323, file: !82, line: 289, type: !1271)
!1323 = distinct !DILexicalBlock(scope: !1318, file: !82, line: 288, column: 5)
!1324 = !DILocation(line: 0, scope: !1318, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 181, column: 17, scope: !1285, inlinedAt: !1289)
!1326 = !DILocation(line: 287, column: 3, scope: !1318, inlinedAt: !1325)
!1327 = !DILocation(line: 289, column: 33, scope: !1323, inlinedAt: !1325)
!1328 = !DILocation(line: 0, scope: !1323, inlinedAt: !1325)
!1329 = !DILocation(line: 290, column: 14, scope: !1330, inlinedAt: !1325)
!1330 = distinct !DILexicalBlock(scope: !1323, file: !82, line: 290, column: 11)
!1331 = !DILocation(line: 290, column: 22, scope: !1330, inlinedAt: !1325)
!1332 = !DILocation(line: 290, column: 46, scope: !1330, inlinedAt: !1325)
!1333 = !DILocalVariable(name: "file_name", arg: 1, scope: !1334, file: !82, line: 272, type: !127)
!1334 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !82, file: !82, line: 272, type: !1335, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!158, !127}
!1337 = !{!1333, !1338}
!1338 = !DILocalVariable(name: "sep", scope: !1339, file: !82, line: 276, type: !4)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !82, line: 275, column: 5)
!1340 = distinct !DILexicalBlock(scope: !1334, file: !82, line: 274, column: 7)
!1341 = !DILocation(line: 0, scope: !1334, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 290, column: 27, scope: !1330, inlinedAt: !1325)
!1343 = !DILocation(line: 274, column: 7, scope: !1340, inlinedAt: !1342)
!1344 = !DILocation(line: 274, column: 20, scope: !1340, inlinedAt: !1342)
!1345 = !DILocation(line: 274, column: 7, scope: !1334, inlinedAt: !1342)
!1346 = !DILocation(line: 276, column: 29, scope: !1339, inlinedAt: !1342)
!1347 = !DILocation(line: 276, column: 42, scope: !1339, inlinedAt: !1342)
!1348 = !DILocation(line: 276, column: 50, scope: !1339, inlinedAt: !1342)
!1349 = !DILocation(line: 276, column: 18, scope: !1339, inlinedAt: !1342)
!1350 = !DILocation(line: 0, scope: !1339, inlinedAt: !1342)
!1351 = !DILocation(line: 277, column: 17, scope: !1339, inlinedAt: !1342)
!1352 = !DILocation(line: 277, column: 21, scope: !1339, inlinedAt: !1342)
!1353 = !DILocation(line: 290, column: 11, scope: !1323, inlinedAt: !1325)
!1354 = !DILocation(line: 183, column: 15, scope: !1283, inlinedAt: !1289)
!1355 = !DILocation(line: 183, column: 15, scope: !1284, inlinedAt: !1289)
!1356 = !DILocation(line: 0, scope: !1282, inlinedAt: !1289)
!1357 = !DILocation(line: 188, column: 21, scope: !1282, inlinedAt: !1289)
!1358 = !DILocation(line: 222, column: 20, scope: !1359, inlinedAt: !1289)
!1359 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 222, column: 7)
!1360 = !DILocation(line: 196, column: 19, scope: !1270, inlinedAt: !1289)
!1361 = !{!1362, !1173, i64 0}
!1362 = !{!"dirent", !1173, i64 0, !1173, i64 8, !927, i64 16, !823, i64 18, !823, i64 19}
!1363 = !DILocation(line: 198, column: 7, scope: !1270, inlinedAt: !1289)
!1364 = !DILocation(line: 199, column: 15, scope: !1365, inlinedAt: !1289)
!1365 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 199, column: 11)
!1366 = !DILocation(line: 199, column: 38, scope: !1365, inlinedAt: !1289)
!1367 = !DILocation(line: 201, column: 15, scope: !1368, inlinedAt: !1289)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 201, column: 15)
!1369 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 200, column: 9)
!1370 = !DILocation(line: 201, column: 43, scope: !1368, inlinedAt: !1289)
!1371 = !DILocation(line: 201, column: 15, scope: !1369, inlinedAt: !1289)
!1372 = distinct !{!1372, !1315, !1373}
!1373 = !DILocation(line: 220, column: 5, scope: !1253, inlinedAt: !1289)
!1374 = !DILocation(line: 206, column: 24, scope: !1369, inlinedAt: !1289)
!1375 = !DILocation(line: 207, column: 9, scope: !1369, inlinedAt: !1289)
!1376 = !DILocation(line: 209, column: 15, scope: !1377, inlinedAt: !1289)
!1377 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 209, column: 11)
!1378 = !DILocation(line: 209, column: 11, scope: !1270, inlinedAt: !1289)
!1379 = distinct !{!1379, !1315, !1373}
!1380 = !DILocation(line: 214, column: 24, scope: !1381, inlinedAt: !1289)
!1381 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 214, column: 12)
!1382 = !DILocation(line: 222, column: 39, scope: !1359, inlinedAt: !1289)
!1383 = !DILocation(line: 222, column: 7, scope: !1253, inlinedAt: !1289)
!1384 = !DILocation(line: 216, column: 53, scope: !1385, inlinedAt: !1289)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 215, column: 9)
!1386 = !DILocation(line: 216, column: 11, scope: !1385, inlinedAt: !1289)
!1387 = !DILocation(line: 222, column: 23, scope: !1359, inlinedAt: !1289)
!1388 = !DILocation(line: 226, column: 7, scope: !1389, inlinedAt: !1289)
!1389 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 223, column: 5)
!1390 = !DILocation(line: 231, column: 5, scope: !1391, inlinedAt: !1289)
!1391 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 230, column: 8)
!1392 = !DILocation(line: 235, column: 13, scope: !1253, inlinedAt: !1289)
!1393 = !{i64 0, i64 8, !1394, i64 8, i64 8, !1394, i64 16, i64 4, !885, i64 20, i64 4, !885, i64 24, i64 4, !885, i64 28, i64 4, !885, i64 32, i64 8, !1394, i64 40, i64 8, !1394, i64 48, i64 8, !1394, i64 56, i64 4, !885, i64 60, i64 4, !885, i64 64, i64 8, !1394, i64 72, i64 8, !1394, i64 80, i64 8, !1394, i64 88, i64 8, !1394, i64 96, i64 8, !1394, i64 104, i64 8, !1394, i64 112, i64 8, !1394, i64 120, i64 8, !894}
!1394 = !{!1173, !1173, i64 0}
!1395 = distinct !DIAssignID()
!1396 = !DILocation(line: 236, column: 1, scope: !1253, inlinedAt: !1289)
!1397 = distinct !{!1397, !1398, !1399}
!1398 = !DILocation(line: 276, column: 3, scope: !1213, inlinedAt: !1231)
!1399 = !DILocation(line: 283, column: 5, scope: !1213, inlinedAt: !1231)
!1400 = !DILocation(line: 286, column: 18, scope: !1401, inlinedAt: !1231)
!1401 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 286, column: 7)
!1402 = !DILocation(line: 286, column: 7, scope: !1401, inlinedAt: !1231)
!1403 = !DILocation(line: 286, column: 27, scope: !1401, inlinedAt: !1231)
!1404 = !DILocation(line: 286, column: 7, scope: !1213, inlinedAt: !1231)
!1405 = !DILocation(line: 287, column: 5, scope: !1401, inlinedAt: !1231)
!1406 = !DILocation(line: 381, column: 24, scope: !1047)
!1407 = !DILocation(line: 288, column: 1, scope: !1213, inlinedAt: !1231)
!1408 = !DILocation(line: 381, column: 7, scope: !1047)
!1409 = !DILocalVariable(name: "p", arg: 1, scope: !1410, file: !2, line: 80, type: !1049)
!1410 = distinct !DISubprogram(name: "file_name_free", scope: !2, file: !2, line: 80, type: !1214, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1411)
!1411 = !{!1409}
!1412 = !DILocation(line: 0, scope: !1410, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 382, column: 7, scope: !1047)
!1414 = !DILocation(line: 82, column: 12, scope: !1410, inlinedAt: !1413)
!1415 = !DILocation(line: 82, column: 3, scope: !1410, inlinedAt: !1413)
!1416 = !DILocation(line: 83, column: 3, scope: !1410, inlinedAt: !1413)
!1417 = !DILocation(line: 386, column: 1, scope: !1032)
!1418 = !DISubprogram(name: "bindtextdomain", scope: !868, file: !868, line: 86, type: !1419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!122, !127, !127}
!1421 = !DISubprogram(name: "textdomain", scope: !868, file: !868, line: 82, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1422 = !DISubprogram(name: "atexit", scope: !1006, file: !1006, line: 602, type: !1423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!83, !473}
!1425 = !DISubprogram(name: "getopt_long", scope: !394, file: !394, line: 66, type: !1426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!83, !83, !1428, !127, !1430, !399}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!1431 = !DISubprogram(name: "strstr", scope: !1002, file: !1002, line: 350, type: !1419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1432 = !DISubprogram(name: "stat", scope: !1433, file: !1433, line: 205, type: !1434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1433 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!83, !876, !1436}
!1436 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1256)
!1437 = !DISubprogram(name: "puts", scope: !437, file: !437, line: 661, type: !1438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!83, !127}
!1440 = !DISubprogram(name: "free", scope: !1006, file: !1006, line: 555, type: !1441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !121}
!1443 = !DISubprogram(name: "__errno_location", scope: !1444, file: !1444, line: 37, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1444 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!399}
!1447 = !DISubprogram(name: "opendir", scope: !1264, file: !1264, line: 134, type: !1448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!1262, !127}
!1450 = distinct !DISubprogram(name: "nth_parent", scope: !2, file: !2, line: 127, type: !1451, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1453)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!122, !124}
!1453 = !{!1454, !1455, !1456, !1457}
!1454 = !DILocalVariable(name: "n", arg: 1, scope: !1450, file: !2, line: 127, type: !124)
!1455 = !DILocalVariable(name: "buf", scope: !1450, file: !2, line: 129, type: !122)
!1456 = !DILocalVariable(name: "p", scope: !1450, file: !2, line: 130, type: !122)
!1457 = !DILocalVariable(name: "i", scope: !1458, file: !2, line: 132, type: !124)
!1458 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 132, column: 3)
!1459 = !DILocation(line: 0, scope: !1450)
!1460 = !DILocation(line: 129, column: 15, scope: !1450)
!1461 = !DILocation(line: 0, scope: !1458)
!1462 = !DILocation(line: 132, column: 24, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 132, column: 3)
!1464 = !DILocation(line: 132, column: 3, scope: !1458)
!1465 = !DILocation(line: 135, column: 9, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1463, file: !2, line: 133, column: 5)
!1467 = !DILocation(line: 137, column: 3, scope: !1450)
!1468 = !DILocation(line: 137, column: 9, scope: !1450)
!1469 = !DILocation(line: 138, column: 3, scope: !1450)
!1470 = !DILocalVariable(name: "__dest", arg: 1, scope: !1471, file: !1472, line: 26, type: !1475)
!1471 = distinct !DISubprogram(name: "memcpy", scope: !1472, file: !1472, line: 26, type: !1473, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1476)
!1472 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!121, !1475, !1029, !124}
!1475 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !121)
!1476 = !{!1470, !1477, !1478}
!1477 = !DILocalVariable(name: "__src", arg: 2, scope: !1471, file: !1472, line: 26, type: !1029)
!1478 = !DILocalVariable(name: "__len", arg: 3, scope: !1471, file: !1472, line: 26, type: !124)
!1479 = !DILocation(line: 0, scope: !1471, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 134, column: 7, scope: !1466)
!1481 = !DILocation(line: 29, column: 10, scope: !1471, inlinedAt: !1480)
!1482 = !DILocation(line: 132, column: 30, scope: !1463)
!1483 = distinct !{!1483, !1464, !1484, !932}
!1484 = !DILocation(line: 136, column: 5, scope: !1458)
!1485 = !DISubprogram(name: "dirfd", scope: !1264, file: !1264, line: 224, type: !1486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!83, !1262}
!1488 = !DISubprogram(name: "fchdir", scope: !1489, file: !1489, line: 521, type: !1490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1489 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!83, !83}
!1492 = !DISubprogram(name: "chdir", scope: !1489, file: !1489, line: 517, type: !1438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1493 = !DISubprogram(name: "fstat", scope: !1433, file: !1433, line: 210, type: !1494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!83, !83, !1256}
!1496 = !DISubprogram(name: "readdir", scope: !1264, file: !1264, line: 162, type: !1497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!1499, !1262}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1500 = !DISubprogram(name: "closedir", scope: !1264, file: !1264, line: 149, type: !1486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1501 = !DISubprogram(name: "lstat", scope: !1433, file: !1433, line: 313, type: !1434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1502 = !DISubprogram(name: "strlen", scope: !1002, file: !1002, line: 407, type: !1503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!126, !127}
!1505 = distinct !DISubprogram(name: "file_name_prepend", scope: !2, file: !2, line: 104, type: !1506, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !1049, !127, !124}
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1516}
!1509 = !DILocalVariable(name: "p", arg: 1, scope: !1505, file: !2, line: 104, type: !1049)
!1510 = !DILocalVariable(name: "s", arg: 2, scope: !1505, file: !2, line: 104, type: !127)
!1511 = !DILocalVariable(name: "s_len", arg: 3, scope: !1505, file: !2, line: 104, type: !124)
!1512 = !DILocalVariable(name: "n_free", scope: !1505, file: !2, line: 106, type: !1054)
!1513 = !DILocalVariable(name: "n_used", scope: !1514, file: !2, line: 113, type: !1054)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 108, column: 5)
!1515 = distinct !DILexicalBlock(scope: !1505, file: !2, line: 107, column: 7)
!1516 = !DILocalVariable(name: "buf", scope: !1514, file: !2, line: 114, type: !122)
!1517 = !DILocation(line: 0, scope: !1505)
!1518 = !DILocation(line: 106, column: 21, scope: !1505)
!1519 = !DILocation(line: 106, column: 32, scope: !1505)
!1520 = !DILocation(line: 106, column: 27, scope: !1505)
!1521 = !DILocation(line: 107, column: 18, scope: !1515)
!1522 = !DILocation(line: 107, column: 14, scope: !1515)
!1523 = !DILocation(line: 107, column: 7, scope: !1505)
!1524 = !DILocation(line: 113, column: 25, scope: !1514)
!1525 = !DILocation(line: 113, column: 33, scope: !1514)
!1526 = !DILocation(line: 0, scope: !1514)
!1527 = !DILocation(line: 114, column: 57, scope: !1514)
!1528 = !DILocation(line: 114, column: 19, scope: !1514)
!1529 = !DILocation(line: 115, column: 35, scope: !1514)
!1530 = !DILocation(line: 115, column: 30, scope: !1514)
!1531 = !DILocation(line: 115, column: 43, scope: !1514)
!1532 = !DILocation(line: 115, column: 56, scope: !1514)
!1533 = !DILocation(line: 0, scope: !1471, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 115, column: 18, scope: !1514)
!1535 = !DILocation(line: 29, column: 10, scope: !1471, inlinedAt: !1534)
!1536 = !DILocation(line: 115, column: 16, scope: !1514)
!1537 = !DILocation(line: 116, column: 16, scope: !1514)
!1538 = !DILocation(line: 116, column: 7, scope: !1514)
!1539 = !DILocation(line: 117, column: 14, scope: !1514)
!1540 = !DILocation(line: 120, column: 12, scope: !1505)
!1541 = !DILocation(line: 118, column: 5, scope: !1514)
!1542 = !DILocation(line: 121, column: 15, scope: !1505)
!1543 = !DILocation(line: 122, column: 14, scope: !1505)
!1544 = !DILocation(line: 122, column: 20, scope: !1505)
!1545 = !DILocation(line: 0, scope: !1471, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 122, column: 3, scope: !1505)
!1547 = !DILocation(line: 29, column: 10, scope: !1471, inlinedAt: !1546)
!1548 = !DILocation(line: 123, column: 1, scope: !1505)
!1549 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !411, file: !411, line: 50, type: !836, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1550)
!1550 = !{!1551}
!1551 = !DILocalVariable(name: "file", arg: 1, scope: !1549, file: !411, line: 50, type: !127)
!1552 = !DILocation(line: 0, scope: !1549)
!1553 = !DILocation(line: 52, column: 13, scope: !1549)
!1554 = !DILocation(line: 53, column: 1, scope: !1549)
!1555 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !411, file: !411, line: 87, type: !1556, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1558)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !158}
!1558 = !{!1559}
!1559 = !DILocalVariable(name: "ignore", arg: 1, scope: !1555, file: !411, line: 87, type: !158)
!1560 = !DILocation(line: 0, scope: !1555)
!1561 = !DILocation(line: 89, column: 16, scope: !1555)
!1562 = !{!1563, !1563, i64 0}
!1563 = !{!"_Bool", !823, i64 0}
!1564 = !DILocation(line: 90, column: 1, scope: !1555)
!1565 = distinct !DISubprogram(name: "close_stdout", scope: !411, file: !411, line: 116, type: !474, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1566)
!1566 = !{!1567}
!1567 = !DILocalVariable(name: "write_error", scope: !1568, file: !411, line: 121, type: !127)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !411, line: 120, column: 5)
!1569 = distinct !DILexicalBlock(scope: !1565, file: !411, line: 118, column: 7)
!1570 = !DILocation(line: 118, column: 21, scope: !1569)
!1571 = !DILocation(line: 118, column: 7, scope: !1569)
!1572 = !DILocation(line: 118, column: 29, scope: !1569)
!1573 = !DILocation(line: 119, column: 7, scope: !1569)
!1574 = !DILocation(line: 119, column: 12, scope: !1569)
!1575 = !{i8 0, i8 2}
!1576 = !DILocation(line: 119, column: 25, scope: !1569)
!1577 = !DILocation(line: 119, column: 28, scope: !1569)
!1578 = !DILocation(line: 119, column: 34, scope: !1569)
!1579 = !DILocation(line: 118, column: 7, scope: !1565)
!1580 = !DILocation(line: 121, column: 33, scope: !1568)
!1581 = !DILocation(line: 0, scope: !1568)
!1582 = !DILocation(line: 122, column: 11, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1568, file: !411, line: 122, column: 11)
!1584 = !DILocation(line: 0, scope: !1583)
!1585 = !DILocation(line: 122, column: 11, scope: !1568)
!1586 = !DILocation(line: 123, column: 9, scope: !1583)
!1587 = !DILocation(line: 126, column: 9, scope: !1583)
!1588 = !DILocation(line: 128, column: 14, scope: !1568)
!1589 = !DILocation(line: 128, column: 7, scope: !1568)
!1590 = !DILocation(line: 133, column: 42, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1565, file: !411, line: 133, column: 7)
!1592 = !DILocation(line: 133, column: 28, scope: !1591)
!1593 = !DILocation(line: 133, column: 50, scope: !1591)
!1594 = !DILocation(line: 133, column: 7, scope: !1565)
!1595 = !DILocation(line: 134, column: 12, scope: !1591)
!1596 = !DILocation(line: 134, column: 5, scope: !1591)
!1597 = !DILocation(line: 135, column: 1, scope: !1565)
!1598 = !DISubprogram(name: "_exit", scope: !1489, file: !1489, line: 624, type: !811, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1599 = distinct !DISubprogram(name: "verror", scope: !426, file: !426, line: 251, type: !1600, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1602)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !83, !83, !127, !436}
!1602 = !{!1603, !1604, !1605, !1606}
!1603 = !DILocalVariable(name: "status", arg: 1, scope: !1599, file: !426, line: 251, type: !83)
!1604 = !DILocalVariable(name: "errnum", arg: 2, scope: !1599, file: !426, line: 251, type: !83)
!1605 = !DILocalVariable(name: "message", arg: 3, scope: !1599, file: !426, line: 251, type: !127)
!1606 = !DILocalVariable(name: "args", arg: 4, scope: !1599, file: !426, line: 251, type: !436)
!1607 = !DILocation(line: 0, scope: !1599)
!1608 = !DILocation(line: 261, column: 3, scope: !1599)
!1609 = !DILocation(line: 265, column: 7, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1599, file: !426, line: 265, column: 7)
!1611 = !DILocation(line: 265, column: 7, scope: !1599)
!1612 = !DILocation(line: 266, column: 5, scope: !1610)
!1613 = !DILocation(line: 272, column: 7, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1610, file: !426, line: 268, column: 5)
!1615 = !DILocation(line: 276, column: 3, scope: !1599)
!1616 = !{i64 0, i64 8, !821, i64 8, i64 8, !821, i64 16, i64 8, !821, i64 24, i64 4, !885, i64 28, i64 4, !885}
!1617 = !DILocation(line: 282, column: 1, scope: !1599)
!1618 = distinct !DISubprogram(name: "flush_stdout", scope: !426, file: !426, line: 163, type: !474, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1619)
!1619 = !{!1620}
!1620 = !DILocalVariable(name: "stdout_fd", scope: !1618, file: !426, line: 166, type: !83)
!1621 = !DILocation(line: 0, scope: !1618)
!1622 = !DILocalVariable(name: "fd", arg: 1, scope: !1623, file: !426, line: 145, type: !83)
!1623 = distinct !DISubprogram(name: "is_open", scope: !426, file: !426, line: 145, type: !1490, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1624)
!1624 = !{!1622}
!1625 = !DILocation(line: 0, scope: !1623, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 182, column: 25, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1618, file: !426, line: 182, column: 7)
!1628 = !DILocation(line: 157, column: 15, scope: !1623, inlinedAt: !1626)
!1629 = !DILocation(line: 157, column: 12, scope: !1623, inlinedAt: !1626)
!1630 = !DILocation(line: 182, column: 7, scope: !1618)
!1631 = !DILocation(line: 184, column: 5, scope: !1627)
!1632 = !DILocation(line: 185, column: 1, scope: !1618)
!1633 = distinct !DISubprogram(name: "error_tail", scope: !426, file: !426, line: 219, type: !1600, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1634)
!1634 = !{!1635, !1636, !1637, !1638}
!1635 = !DILocalVariable(name: "status", arg: 1, scope: !1633, file: !426, line: 219, type: !83)
!1636 = !DILocalVariable(name: "errnum", arg: 2, scope: !1633, file: !426, line: 219, type: !83)
!1637 = !DILocalVariable(name: "message", arg: 3, scope: !1633, file: !426, line: 219, type: !127)
!1638 = !DILocalVariable(name: "args", arg: 4, scope: !1633, file: !426, line: 219, type: !436)
!1639 = distinct !DIAssignID()
!1640 = !DILocation(line: 0, scope: !1633)
!1641 = !DILocation(line: 229, column: 13, scope: !1633)
!1642 = !DILocation(line: 135, column: 10, scope: !1643, inlinedAt: !1685)
!1643 = distinct !DISubprogram(name: "vfprintf", scope: !872, file: !872, line: 132, type: !1644, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1681)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!83, !1646, !876, !438}
!1646 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1647)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !1650)
!1650 = !{!1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1649, file: !175, line: 51, baseType: !83, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1649, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1649, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1649, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1649, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1649, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1649, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1649, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1649, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1649, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1649, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1649, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1649, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1649, file: !175, line: 70, baseType: !1665, size: 64, offset: 832)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1649, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1649, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1649, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1649, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1649, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1649, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1649, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1649, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1649, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1649, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1649, file: !175, line: 93, baseType: !1665, size: 64, offset: 1344)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1649, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1649, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1649, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1649, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!1681 = !{!1682, !1683, !1684}
!1682 = !DILocalVariable(name: "__stream", arg: 1, scope: !1643, file: !872, line: 132, type: !1646)
!1683 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1643, file: !872, line: 133, type: !876)
!1684 = !DILocalVariable(name: "__ap", arg: 3, scope: !1643, file: !872, line: 133, type: !438)
!1685 = distinct !DILocation(line: 229, column: 3, scope: !1633)
!1686 = !{!1687, !1689}
!1687 = distinct !{!1687, !1688, !"vfprintf.inline: argument 0"}
!1688 = distinct !{!1688, !"vfprintf.inline"}
!1689 = distinct !{!1689, !1688, !"vfprintf.inline: argument 1"}
!1690 = !DILocation(line: 229, column: 3, scope: !1633)
!1691 = !DILocation(line: 0, scope: !1643, inlinedAt: !1685)
!1692 = !DILocation(line: 232, column: 3, scope: !1633)
!1693 = !DILocation(line: 233, column: 7, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1633, file: !426, line: 233, column: 7)
!1695 = !DILocation(line: 233, column: 7, scope: !1633)
!1696 = !DILocalVariable(name: "errbuf", scope: !1697, file: !426, line: 193, type: !1701)
!1697 = distinct !DISubprogram(name: "print_errno_message", scope: !426, file: !426, line: 188, type: !811, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1698)
!1698 = !{!1699, !1700, !1696}
!1699 = !DILocalVariable(name: "errnum", arg: 1, scope: !1697, file: !426, line: 188, type: !83)
!1700 = !DILocalVariable(name: "s", scope: !1697, file: !426, line: 190, type: !127)
!1701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1702)
!1702 = !{!1703}
!1703 = !DISubrange(count: 1024)
!1704 = !DILocation(line: 0, scope: !1697, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 234, column: 5, scope: !1694)
!1706 = !DILocation(line: 193, column: 3, scope: !1697, inlinedAt: !1705)
!1707 = !DILocation(line: 195, column: 7, scope: !1697, inlinedAt: !1705)
!1708 = !DILocation(line: 207, column: 9, scope: !1709, inlinedAt: !1705)
!1709 = distinct !DILexicalBlock(scope: !1697, file: !426, line: 207, column: 7)
!1710 = !DILocation(line: 207, column: 7, scope: !1697, inlinedAt: !1705)
!1711 = !DILocation(line: 208, column: 9, scope: !1709, inlinedAt: !1705)
!1712 = !DILocation(line: 208, column: 5, scope: !1709, inlinedAt: !1705)
!1713 = !DILocation(line: 214, column: 3, scope: !1697, inlinedAt: !1705)
!1714 = !DILocation(line: 216, column: 1, scope: !1697, inlinedAt: !1705)
!1715 = !DILocation(line: 234, column: 5, scope: !1694)
!1716 = !DILocation(line: 238, column: 3, scope: !1633)
!1717 = !DILocalVariable(name: "__c", arg: 1, scope: !1718, file: !1719, line: 101, type: !83)
!1718 = distinct !DISubprogram(name: "putc_unlocked", scope: !1719, file: !1719, line: 101, type: !1720, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1722)
!1719 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!83, !83, !1647}
!1722 = !{!1717, !1723}
!1723 = !DILocalVariable(name: "__stream", arg: 2, scope: !1718, file: !1719, line: 101, type: !1647)
!1724 = !DILocation(line: 0, scope: !1718, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 238, column: 3, scope: !1633)
!1726 = !DILocation(line: 103, column: 10, scope: !1718, inlinedAt: !1725)
!1727 = !{!1728, !822, i64 40}
!1728 = !{!"_IO_FILE", !886, i64 0, !822, i64 8, !822, i64 16, !822, i64 24, !822, i64 32, !822, i64 40, !822, i64 48, !822, i64 56, !822, i64 64, !822, i64 72, !822, i64 80, !822, i64 88, !822, i64 96, !822, i64 104, !886, i64 112, !886, i64 116, !1173, i64 120, !927, i64 128, !823, i64 130, !823, i64 131, !822, i64 136, !1173, i64 144, !822, i64 152, !822, i64 160, !822, i64 168, !822, i64 176, !1173, i64 184, !886, i64 192, !823, i64 196}
!1729 = !{!1728, !822, i64 48}
!1730 = !{!"branch_weights", i32 2000, i32 1}
!1731 = !DILocation(line: 240, column: 3, scope: !1633)
!1732 = !DILocation(line: 241, column: 7, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1633, file: !426, line: 241, column: 7)
!1734 = !DILocation(line: 241, column: 7, scope: !1633)
!1735 = !DILocation(line: 242, column: 5, scope: !1733)
!1736 = !DILocation(line: 243, column: 1, scope: !1633)
!1737 = !DISubprogram(name: "__vfprintf_chk", scope: !872, file: !872, line: 96, type: !1738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!83, !1646, !83, !876, !438}
!1740 = !DISubprogram(name: "strerror_r", scope: !1002, file: !1002, line: 444, type: !1741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!122, !83, !122, !124}
!1743 = !DISubprogram(name: "__overflow", scope: !437, file: !437, line: 886, type: !1744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!83, !1647, !83}
!1746 = !DISubprogram(name: "fflush_unlocked", scope: !437, file: !437, line: 239, type: !1747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!83, !1647}
!1749 = !DISubprogram(name: "fcntl", scope: !1750, file: !1750, line: 149, type: !1751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1750 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!83, !83, !83, null}
!1753 = distinct !DISubprogram(name: "error", scope: !426, file: !426, line: 285, type: !1754, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1756)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !83, !83, !127, null}
!1756 = !{!1757, !1758, !1759, !1760}
!1757 = !DILocalVariable(name: "status", arg: 1, scope: !1753, file: !426, line: 285, type: !83)
!1758 = !DILocalVariable(name: "errnum", arg: 2, scope: !1753, file: !426, line: 285, type: !83)
!1759 = !DILocalVariable(name: "message", arg: 3, scope: !1753, file: !426, line: 285, type: !127)
!1760 = !DILocalVariable(name: "ap", scope: !1753, file: !426, line: 287, type: !436)
!1761 = distinct !DIAssignID()
!1762 = !DILocation(line: 0, scope: !1753)
!1763 = !DILocation(line: 287, column: 3, scope: !1753)
!1764 = !DILocation(line: 288, column: 3, scope: !1753)
!1765 = !DILocation(line: 289, column: 3, scope: !1753)
!1766 = !DILocation(line: 290, column: 3, scope: !1753)
!1767 = !DILocation(line: 291, column: 1, scope: !1753)
!1768 = !DILocation(line: 0, scope: !433)
!1769 = !DILocation(line: 302, column: 7, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !433, file: !426, line: 302, column: 7)
!1771 = !DILocation(line: 302, column: 7, scope: !433)
!1772 = !DILocation(line: 307, column: 11, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !426, line: 307, column: 11)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !426, line: 303, column: 5)
!1775 = !DILocation(line: 307, column: 27, scope: !1773)
!1776 = !DILocation(line: 308, column: 11, scope: !1773)
!1777 = !DILocation(line: 308, column: 28, scope: !1773)
!1778 = !DILocation(line: 308, column: 25, scope: !1773)
!1779 = !DILocation(line: 309, column: 15, scope: !1773)
!1780 = !DILocation(line: 309, column: 33, scope: !1773)
!1781 = !DILocation(line: 310, column: 19, scope: !1773)
!1782 = !DILocation(line: 311, column: 22, scope: !1773)
!1783 = !DILocation(line: 311, column: 56, scope: !1773)
!1784 = !DILocation(line: 307, column: 11, scope: !1774)
!1785 = !DILocation(line: 316, column: 21, scope: !1774)
!1786 = !DILocation(line: 317, column: 23, scope: !1774)
!1787 = !DILocation(line: 318, column: 5, scope: !1774)
!1788 = !DILocation(line: 327, column: 3, scope: !433)
!1789 = !DILocation(line: 331, column: 7, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !433, file: !426, line: 331, column: 7)
!1791 = !DILocation(line: 331, column: 7, scope: !433)
!1792 = !DILocation(line: 332, column: 5, scope: !1790)
!1793 = !DILocation(line: 338, column: 7, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !426, line: 334, column: 5)
!1795 = !DILocation(line: 346, column: 3, scope: !433)
!1796 = !DILocation(line: 350, column: 3, scope: !433)
!1797 = !DILocation(line: 356, column: 1, scope: !433)
!1798 = distinct !DISubprogram(name: "error_at_line", scope: !426, file: !426, line: 359, type: !1799, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1801)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{null, !83, !83, !127, !89, !127, null}
!1801 = !{!1802, !1803, !1804, !1805, !1806, !1807}
!1802 = !DILocalVariable(name: "status", arg: 1, scope: !1798, file: !426, line: 359, type: !83)
!1803 = !DILocalVariable(name: "errnum", arg: 2, scope: !1798, file: !426, line: 359, type: !83)
!1804 = !DILocalVariable(name: "file_name", arg: 3, scope: !1798, file: !426, line: 359, type: !127)
!1805 = !DILocalVariable(name: "line_number", arg: 4, scope: !1798, file: !426, line: 360, type: !89)
!1806 = !DILocalVariable(name: "message", arg: 5, scope: !1798, file: !426, line: 360, type: !127)
!1807 = !DILocalVariable(name: "ap", scope: !1798, file: !426, line: 362, type: !436)
!1808 = distinct !DIAssignID()
!1809 = !DILocation(line: 0, scope: !1798)
!1810 = !DILocation(line: 362, column: 3, scope: !1798)
!1811 = !DILocation(line: 363, column: 3, scope: !1798)
!1812 = !DILocation(line: 364, column: 3, scope: !1798)
!1813 = !DILocation(line: 366, column: 3, scope: !1798)
!1814 = !DILocation(line: 367, column: 1, scope: !1798)
!1815 = distinct !DISubprogram(name: "getprogname", scope: !736, file: !736, line: 54, type: !1089, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735)
!1816 = !DILocation(line: 58, column: 10, scope: !1815)
!1817 = !DILocation(line: 58, column: 3, scope: !1815)
!1818 = distinct !DISubprogram(name: "set_program_name", scope: !479, file: !479, line: 37, type: !836, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1819)
!1819 = !{!1820, !1821, !1822}
!1820 = !DILocalVariable(name: "argv0", arg: 1, scope: !1818, file: !479, line: 37, type: !127)
!1821 = !DILocalVariable(name: "slash", scope: !1818, file: !479, line: 44, type: !127)
!1822 = !DILocalVariable(name: "base", scope: !1818, file: !479, line: 45, type: !127)
!1823 = !DILocation(line: 0, scope: !1818)
!1824 = !DILocation(line: 44, column: 23, scope: !1818)
!1825 = !DILocation(line: 45, column: 22, scope: !1818)
!1826 = !DILocation(line: 46, column: 17, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1818, file: !479, line: 46, column: 7)
!1828 = !DILocation(line: 46, column: 9, scope: !1827)
!1829 = !DILocation(line: 46, column: 25, scope: !1827)
!1830 = !DILocation(line: 46, column: 40, scope: !1827)
!1831 = !DILocalVariable(name: "__s1", arg: 1, scope: !1832, file: !898, line: 974, type: !1030)
!1832 = distinct !DISubprogram(name: "memeq", scope: !898, file: !898, line: 974, type: !1833, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1835)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!158, !1030, !1030, !124}
!1835 = !{!1831, !1836, !1837}
!1836 = !DILocalVariable(name: "__s2", arg: 2, scope: !1832, file: !898, line: 974, type: !1030)
!1837 = !DILocalVariable(name: "__n", arg: 3, scope: !1832, file: !898, line: 974, type: !124)
!1838 = !DILocation(line: 0, scope: !1832, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 46, column: 28, scope: !1827)
!1840 = !DILocation(line: 976, column: 11, scope: !1832, inlinedAt: !1839)
!1841 = !DILocation(line: 976, column: 10, scope: !1832, inlinedAt: !1839)
!1842 = !DILocation(line: 46, column: 7, scope: !1818)
!1843 = !DILocation(line: 49, column: 11, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !479, line: 49, column: 11)
!1845 = distinct !DILexicalBlock(scope: !1827, file: !479, line: 47, column: 5)
!1846 = !DILocation(line: 49, column: 36, scope: !1844)
!1847 = !DILocation(line: 49, column: 11, scope: !1845)
!1848 = !DILocation(line: 65, column: 16, scope: !1818)
!1849 = !DILocation(line: 71, column: 27, scope: !1818)
!1850 = !DILocation(line: 74, column: 33, scope: !1818)
!1851 = !DILocation(line: 76, column: 1, scope: !1818)
!1852 = !DISubprogram(name: "strrchr", scope: !1002, file: !1002, line: 273, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1853 = distinct !DIAssignID()
!1854 = !DILocation(line: 0, scope: !488)
!1855 = distinct !DIAssignID()
!1856 = !DILocation(line: 40, column: 29, scope: !488)
!1857 = !DILocation(line: 41, column: 19, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !488, file: !489, line: 41, column: 7)
!1859 = !DILocation(line: 41, column: 7, scope: !488)
!1860 = !DILocation(line: 47, column: 3, scope: !488)
!1861 = !DILocation(line: 48, column: 3, scope: !488)
!1862 = !DILocalVariable(name: "ps", arg: 1, scope: !1863, file: !1864, line: 1135, type: !1867)
!1863 = distinct !DISubprogram(name: "mbszero", scope: !1864, file: !1864, line: 1135, type: !1865, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1868)
!1864 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !1867}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!1868 = !{!1862}
!1869 = !DILocation(line: 0, scope: !1863, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 48, column: 18, scope: !488)
!1871 = !DILocalVariable(name: "__dest", arg: 1, scope: !1872, file: !1472, line: 57, type: !121)
!1872 = distinct !DISubprogram(name: "memset", scope: !1472, file: !1472, line: 57, type: !1873, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !492, retainedNodes: !1875)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!121, !121, !83, !124}
!1875 = !{!1871, !1876, !1877}
!1876 = !DILocalVariable(name: "__ch", arg: 2, scope: !1872, file: !1472, line: 57, type: !83)
!1877 = !DILocalVariable(name: "__len", arg: 3, scope: !1872, file: !1472, line: 57, type: !124)
!1878 = !DILocation(line: 0, scope: !1872, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 1137, column: 3, scope: !1863, inlinedAt: !1870)
!1880 = !DILocation(line: 59, column: 10, scope: !1872, inlinedAt: !1879)
!1881 = !DILocation(line: 49, column: 7, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !488, file: !489, line: 49, column: 7)
!1883 = !DILocation(line: 49, column: 39, scope: !1882)
!1884 = !DILocation(line: 49, column: 44, scope: !1882)
!1885 = !DILocation(line: 54, column: 1, scope: !488)
!1886 = !DISubprogram(name: "mbrtoc32", scope: !500, file: !500, line: 57, type: !1887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!124, !1889, !876, !124, !1891}
!1889 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1890)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1867)
!1892 = distinct !DISubprogram(name: "clone_quoting_options", scope: !519, file: !519, line: 113, type: !1893, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1896)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!1895, !1895}
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!1896 = !{!1897, !1898, !1899}
!1897 = !DILocalVariable(name: "o", arg: 1, scope: !1892, file: !519, line: 113, type: !1895)
!1898 = !DILocalVariable(name: "saved_errno", scope: !1892, file: !519, line: 115, type: !83)
!1899 = !DILocalVariable(name: "p", scope: !1892, file: !519, line: 116, type: !1895)
!1900 = !DILocation(line: 0, scope: !1892)
!1901 = !DILocation(line: 115, column: 21, scope: !1892)
!1902 = !DILocation(line: 116, column: 40, scope: !1892)
!1903 = !DILocation(line: 116, column: 31, scope: !1892)
!1904 = !DILocation(line: 118, column: 9, scope: !1892)
!1905 = !DILocation(line: 119, column: 3, scope: !1892)
!1906 = distinct !DISubprogram(name: "get_quoting_style", scope: !519, file: !519, line: 124, type: !1907, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1911)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!542, !1909}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!1911 = !{!1912}
!1912 = !DILocalVariable(name: "o", arg: 1, scope: !1906, file: !519, line: 124, type: !1909)
!1913 = !DILocation(line: 0, scope: !1906)
!1914 = !DILocation(line: 126, column: 11, scope: !1906)
!1915 = !DILocation(line: 126, column: 46, scope: !1906)
!1916 = !{!1917, !886, i64 0}
!1917 = !{!"quoting_options", !886, i64 0, !886, i64 4, !823, i64 8, !822, i64 40, !822, i64 48}
!1918 = !DILocation(line: 126, column: 3, scope: !1906)
!1919 = distinct !DISubprogram(name: "set_quoting_style", scope: !519, file: !519, line: 132, type: !1920, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1922)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !1895, !542}
!1922 = !{!1923, !1924}
!1923 = !DILocalVariable(name: "o", arg: 1, scope: !1919, file: !519, line: 132, type: !1895)
!1924 = !DILocalVariable(name: "s", arg: 2, scope: !1919, file: !519, line: 132, type: !542)
!1925 = !DILocation(line: 0, scope: !1919)
!1926 = !DILocation(line: 134, column: 4, scope: !1919)
!1927 = !DILocation(line: 134, column: 45, scope: !1919)
!1928 = !DILocation(line: 135, column: 1, scope: !1919)
!1929 = distinct !DISubprogram(name: "set_char_quoting", scope: !519, file: !519, line: 143, type: !1930, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1932)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!83, !1895, !4, !83}
!1932 = !{!1933, !1934, !1935, !1936, !1937, !1939, !1940}
!1933 = !DILocalVariable(name: "o", arg: 1, scope: !1929, file: !519, line: 143, type: !1895)
!1934 = !DILocalVariable(name: "c", arg: 2, scope: !1929, file: !519, line: 143, type: !4)
!1935 = !DILocalVariable(name: "i", arg: 3, scope: !1929, file: !519, line: 143, type: !83)
!1936 = !DILocalVariable(name: "uc", scope: !1929, file: !519, line: 145, type: !129)
!1937 = !DILocalVariable(name: "p", scope: !1929, file: !519, line: 146, type: !1938)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!1939 = !DILocalVariable(name: "shift", scope: !1929, file: !519, line: 148, type: !83)
!1940 = !DILocalVariable(name: "r", scope: !1929, file: !519, line: 149, type: !89)
!1941 = !DILocation(line: 0, scope: !1929)
!1942 = !DILocation(line: 147, column: 6, scope: !1929)
!1943 = !DILocation(line: 147, column: 41, scope: !1929)
!1944 = !DILocation(line: 147, column: 62, scope: !1929)
!1945 = !DILocation(line: 147, column: 57, scope: !1929)
!1946 = !DILocation(line: 148, column: 15, scope: !1929)
!1947 = !DILocation(line: 149, column: 21, scope: !1929)
!1948 = !DILocation(line: 149, column: 24, scope: !1929)
!1949 = !DILocation(line: 149, column: 34, scope: !1929)
!1950 = !DILocation(line: 150, column: 19, scope: !1929)
!1951 = !DILocation(line: 150, column: 24, scope: !1929)
!1952 = !DILocation(line: 150, column: 6, scope: !1929)
!1953 = !DILocation(line: 151, column: 3, scope: !1929)
!1954 = distinct !DISubprogram(name: "set_quoting_flags", scope: !519, file: !519, line: 159, type: !1955, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!83, !1895, !83}
!1957 = !{!1958, !1959, !1960}
!1958 = !DILocalVariable(name: "o", arg: 1, scope: !1954, file: !519, line: 159, type: !1895)
!1959 = !DILocalVariable(name: "i", arg: 2, scope: !1954, file: !519, line: 159, type: !83)
!1960 = !DILocalVariable(name: "r", scope: !1954, file: !519, line: 163, type: !83)
!1961 = !DILocation(line: 0, scope: !1954)
!1962 = !DILocation(line: 161, column: 8, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1954, file: !519, line: 161, column: 7)
!1964 = !DILocation(line: 161, column: 7, scope: !1954)
!1965 = !DILocation(line: 163, column: 14, scope: !1954)
!1966 = !{!1917, !886, i64 4}
!1967 = !DILocation(line: 164, column: 12, scope: !1954)
!1968 = !DILocation(line: 165, column: 3, scope: !1954)
!1969 = distinct !DISubprogram(name: "set_custom_quoting", scope: !519, file: !519, line: 169, type: !1970, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !1895, !127, !127}
!1972 = !{!1973, !1974, !1975}
!1973 = !DILocalVariable(name: "o", arg: 1, scope: !1969, file: !519, line: 169, type: !1895)
!1974 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1969, file: !519, line: 170, type: !127)
!1975 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1969, file: !519, line: 170, type: !127)
!1976 = !DILocation(line: 0, scope: !1969)
!1977 = !DILocation(line: 172, column: 8, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1969, file: !519, line: 172, column: 7)
!1979 = !DILocation(line: 172, column: 7, scope: !1969)
!1980 = !DILocation(line: 174, column: 12, scope: !1969)
!1981 = !DILocation(line: 175, column: 8, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1969, file: !519, line: 175, column: 7)
!1983 = !DILocation(line: 175, column: 19, scope: !1982)
!1984 = !DILocation(line: 176, column: 5, scope: !1982)
!1985 = !DILocation(line: 177, column: 6, scope: !1969)
!1986 = !DILocation(line: 177, column: 17, scope: !1969)
!1987 = !{!1917, !822, i64 40}
!1988 = !DILocation(line: 178, column: 6, scope: !1969)
!1989 = !DILocation(line: 178, column: 18, scope: !1969)
!1990 = !{!1917, !822, i64 48}
!1991 = !DILocation(line: 179, column: 1, scope: !1969)
!1992 = !DISubprogram(name: "abort", scope: !1006, file: !1006, line: 598, type: !474, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1993 = distinct !DISubprogram(name: "quotearg_buffer", scope: !519, file: !519, line: 774, type: !1994, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !1996)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!124, !122, !124, !127, !124, !1909}
!1996 = !{!1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004}
!1997 = !DILocalVariable(name: "buffer", arg: 1, scope: !1993, file: !519, line: 774, type: !122)
!1998 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1993, file: !519, line: 774, type: !124)
!1999 = !DILocalVariable(name: "arg", arg: 3, scope: !1993, file: !519, line: 775, type: !127)
!2000 = !DILocalVariable(name: "argsize", arg: 4, scope: !1993, file: !519, line: 775, type: !124)
!2001 = !DILocalVariable(name: "o", arg: 5, scope: !1993, file: !519, line: 776, type: !1909)
!2002 = !DILocalVariable(name: "p", scope: !1993, file: !519, line: 778, type: !1909)
!2003 = !DILocalVariable(name: "saved_errno", scope: !1993, file: !519, line: 779, type: !83)
!2004 = !DILocalVariable(name: "r", scope: !1993, file: !519, line: 780, type: !124)
!2005 = !DILocation(line: 0, scope: !1993)
!2006 = !DILocation(line: 778, column: 37, scope: !1993)
!2007 = !DILocation(line: 779, column: 21, scope: !1993)
!2008 = !DILocation(line: 781, column: 43, scope: !1993)
!2009 = !DILocation(line: 781, column: 53, scope: !1993)
!2010 = !DILocation(line: 781, column: 63, scope: !1993)
!2011 = !DILocation(line: 782, column: 43, scope: !1993)
!2012 = !DILocation(line: 782, column: 58, scope: !1993)
!2013 = !DILocation(line: 780, column: 14, scope: !1993)
!2014 = !DILocation(line: 783, column: 9, scope: !1993)
!2015 = !DILocation(line: 784, column: 3, scope: !1993)
!2016 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !519, file: !519, line: 251, type: !2017, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2021)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!124, !122, !124, !127, !124, !542, !83, !2019, !127, !127}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!2021 = !{!2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2047, !2049, !2052, !2053, !2054, !2055, !2058, !2059, !2061, !2062, !2065, !2069, !2070, !2078, !2081, !2082, !2083}
!2022 = !DILocalVariable(name: "buffer", arg: 1, scope: !2016, file: !519, line: 251, type: !122)
!2023 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2016, file: !519, line: 251, type: !124)
!2024 = !DILocalVariable(name: "arg", arg: 3, scope: !2016, file: !519, line: 252, type: !127)
!2025 = !DILocalVariable(name: "argsize", arg: 4, scope: !2016, file: !519, line: 252, type: !124)
!2026 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2016, file: !519, line: 253, type: !542)
!2027 = !DILocalVariable(name: "flags", arg: 6, scope: !2016, file: !519, line: 253, type: !83)
!2028 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2016, file: !519, line: 254, type: !2019)
!2029 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2016, file: !519, line: 255, type: !127)
!2030 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2016, file: !519, line: 256, type: !127)
!2031 = !DILocalVariable(name: "unibyte_locale", scope: !2016, file: !519, line: 258, type: !158)
!2032 = !DILocalVariable(name: "len", scope: !2016, file: !519, line: 260, type: !124)
!2033 = !DILocalVariable(name: "orig_buffersize", scope: !2016, file: !519, line: 261, type: !124)
!2034 = !DILocalVariable(name: "quote_string", scope: !2016, file: !519, line: 262, type: !127)
!2035 = !DILocalVariable(name: "quote_string_len", scope: !2016, file: !519, line: 263, type: !124)
!2036 = !DILocalVariable(name: "backslash_escapes", scope: !2016, file: !519, line: 264, type: !158)
!2037 = !DILocalVariable(name: "elide_outer_quotes", scope: !2016, file: !519, line: 265, type: !158)
!2038 = !DILocalVariable(name: "encountered_single_quote", scope: !2016, file: !519, line: 266, type: !158)
!2039 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2016, file: !519, line: 267, type: !158)
!2040 = !DILabel(scope: !2016, name: "process_input", file: !519, line: 308)
!2041 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2016, file: !519, line: 309, type: !158)
!2042 = !DILocalVariable(name: "lq", scope: !2043, file: !519, line: 361, type: !127)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !519, line: 361, column: 11)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !519, line: 360, column: 13)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !519, line: 333, column: 7)
!2046 = distinct !DILexicalBlock(scope: !2016, file: !519, line: 312, column: 5)
!2047 = !DILocalVariable(name: "i", scope: !2048, file: !519, line: 395, type: !124)
!2048 = distinct !DILexicalBlock(scope: !2016, file: !519, line: 395, column: 3)
!2049 = !DILocalVariable(name: "is_right_quote", scope: !2050, file: !519, line: 397, type: !158)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !519, line: 396, column: 5)
!2051 = distinct !DILexicalBlock(scope: !2048, file: !519, line: 395, column: 3)
!2052 = !DILocalVariable(name: "escaping", scope: !2050, file: !519, line: 398, type: !158)
!2053 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2050, file: !519, line: 399, type: !158)
!2054 = !DILocalVariable(name: "c", scope: !2050, file: !519, line: 417, type: !129)
!2055 = !DILabel(scope: !2056, name: "c_and_shell_escape", file: !519, line: 502)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !519, line: 478, column: 9)
!2057 = distinct !DILexicalBlock(scope: !2050, file: !519, line: 419, column: 9)
!2058 = !DILabel(scope: !2056, name: "c_escape", file: !519, line: 507)
!2059 = !DILocalVariable(name: "m", scope: !2060, file: !519, line: 598, type: !124)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !519, line: 596, column: 11)
!2061 = !DILocalVariable(name: "printable", scope: !2060, file: !519, line: 600, type: !158)
!2062 = !DILocalVariable(name: "mbs", scope: !2063, file: !519, line: 609, type: !591)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !519, line: 608, column: 15)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !519, line: 602, column: 17)
!2065 = !DILocalVariable(name: "w", scope: !2066, file: !519, line: 618, type: !499)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !519, line: 617, column: 19)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !519, line: 616, column: 17)
!2068 = distinct !DILexicalBlock(scope: !2063, file: !519, line: 616, column: 17)
!2069 = !DILocalVariable(name: "bytes", scope: !2066, file: !519, line: 619, type: !124)
!2070 = !DILocalVariable(name: "j", scope: !2071, file: !519, line: 648, type: !124)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !519, line: 648, column: 29)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !519, line: 647, column: 27)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !519, line: 645, column: 29)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !519, line: 636, column: 23)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !519, line: 628, column: 30)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !519, line: 623, column: 30)
!2077 = distinct !DILexicalBlock(scope: !2066, file: !519, line: 621, column: 25)
!2078 = !DILocalVariable(name: "ilim", scope: !2079, file: !519, line: 674, type: !124)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !519, line: 671, column: 15)
!2080 = distinct !DILexicalBlock(scope: !2060, file: !519, line: 670, column: 17)
!2081 = !DILabel(scope: !2050, name: "store_escape", file: !519, line: 709)
!2082 = !DILabel(scope: !2050, name: "store_c", file: !519, line: 712)
!2083 = !DILabel(scope: !2016, name: "force_outer_quoting_style", file: !519, line: 753)
!2084 = distinct !DIAssignID()
!2085 = distinct !DIAssignID()
!2086 = distinct !DIAssignID()
!2087 = distinct !DIAssignID()
!2088 = distinct !DIAssignID()
!2089 = !DILocation(line: 0, scope: !2063)
!2090 = distinct !DIAssignID()
!2091 = !DILocation(line: 0, scope: !2066)
!2092 = !DILocation(line: 0, scope: !2016)
!2093 = !DILocation(line: 258, column: 25, scope: !2016)
!2094 = !DILocation(line: 258, column: 36, scope: !2016)
!2095 = !DILocation(line: 267, column: 3, scope: !2016)
!2096 = !DILocation(line: 261, column: 10, scope: !2016)
!2097 = !DILocation(line: 262, column: 15, scope: !2016)
!2098 = !DILocation(line: 263, column: 10, scope: !2016)
!2099 = !DILocation(line: 308, column: 2, scope: !2016)
!2100 = !DILocation(line: 311, column: 3, scope: !2016)
!2101 = !DILocation(line: 318, column: 11, scope: !2046)
!2102 = !DILocation(line: 319, column: 9, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !519, line: 319, column: 9)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !519, line: 319, column: 9)
!2105 = distinct !DILexicalBlock(scope: !2046, file: !519, line: 318, column: 11)
!2106 = !DILocation(line: 319, column: 9, scope: !2104)
!2107 = !DILocation(line: 0, scope: !582, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 357, column: 26, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !519, line: 335, column: 11)
!2110 = distinct !DILexicalBlock(scope: !2045, file: !519, line: 334, column: 13)
!2111 = !DILocation(line: 199, column: 29, scope: !582, inlinedAt: !2108)
!2112 = !DILocation(line: 201, column: 19, scope: !2113, inlinedAt: !2108)
!2113 = distinct !DILexicalBlock(scope: !582, file: !519, line: 201, column: 7)
!2114 = !DILocation(line: 201, column: 7, scope: !582, inlinedAt: !2108)
!2115 = !DILocation(line: 229, column: 3, scope: !582, inlinedAt: !2108)
!2116 = !DILocation(line: 230, column: 3, scope: !582, inlinedAt: !2108)
!2117 = !DILocalVariable(name: "ps", arg: 1, scope: !2118, file: !1864, line: 1135, type: !2121)
!2118 = distinct !DISubprogram(name: "mbszero", scope: !1864, file: !1864, line: 1135, type: !2119, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2122)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !2121}
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!2122 = !{!2117}
!2123 = !DILocation(line: 0, scope: !2118, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 230, column: 18, scope: !582, inlinedAt: !2108)
!2125 = !DILocalVariable(name: "__dest", arg: 1, scope: !2126, file: !1472, line: 57, type: !121)
!2126 = distinct !DISubprogram(name: "memset", scope: !1472, file: !1472, line: 57, type: !1873, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2127)
!2127 = !{!2125, !2128, !2129}
!2128 = !DILocalVariable(name: "__ch", arg: 2, scope: !2126, file: !1472, line: 57, type: !83)
!2129 = !DILocalVariable(name: "__len", arg: 3, scope: !2126, file: !1472, line: 57, type: !124)
!2130 = !DILocation(line: 0, scope: !2126, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 1137, column: 3, scope: !2118, inlinedAt: !2124)
!2132 = !DILocation(line: 59, column: 10, scope: !2126, inlinedAt: !2131)
!2133 = !DILocation(line: 231, column: 7, scope: !2134, inlinedAt: !2108)
!2134 = distinct !DILexicalBlock(scope: !582, file: !519, line: 231, column: 7)
!2135 = !DILocation(line: 231, column: 40, scope: !2134, inlinedAt: !2108)
!2136 = !DILocation(line: 231, column: 45, scope: !2134, inlinedAt: !2108)
!2137 = !DILocation(line: 235, column: 1, scope: !582, inlinedAt: !2108)
!2138 = !DILocation(line: 0, scope: !582, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 358, column: 27, scope: !2109)
!2140 = !DILocation(line: 199, column: 29, scope: !582, inlinedAt: !2139)
!2141 = !DILocation(line: 201, column: 19, scope: !2113, inlinedAt: !2139)
!2142 = !DILocation(line: 201, column: 7, scope: !582, inlinedAt: !2139)
!2143 = !DILocation(line: 229, column: 3, scope: !582, inlinedAt: !2139)
!2144 = !DILocation(line: 230, column: 3, scope: !582, inlinedAt: !2139)
!2145 = !DILocation(line: 0, scope: !2118, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 230, column: 18, scope: !582, inlinedAt: !2139)
!2147 = !DILocation(line: 0, scope: !2126, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 1137, column: 3, scope: !2118, inlinedAt: !2146)
!2149 = !DILocation(line: 59, column: 10, scope: !2126, inlinedAt: !2148)
!2150 = !DILocation(line: 231, column: 7, scope: !2134, inlinedAt: !2139)
!2151 = !DILocation(line: 231, column: 40, scope: !2134, inlinedAt: !2139)
!2152 = !DILocation(line: 231, column: 45, scope: !2134, inlinedAt: !2139)
!2153 = !DILocation(line: 235, column: 1, scope: !582, inlinedAt: !2139)
!2154 = !DILocation(line: 360, column: 13, scope: !2045)
!2155 = !DILocation(line: 0, scope: !2043)
!2156 = !DILocation(line: 361, column: 45, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2043, file: !519, line: 361, column: 11)
!2158 = !DILocation(line: 361, column: 11, scope: !2043)
!2159 = !DILocation(line: 362, column: 13, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !519, line: 362, column: 13)
!2161 = distinct !DILexicalBlock(scope: !2157, file: !519, line: 362, column: 13)
!2162 = !DILocation(line: 362, column: 13, scope: !2161)
!2163 = !DILocation(line: 361, column: 52, scope: !2157)
!2164 = distinct !{!2164, !2158, !2165, !932}
!2165 = !DILocation(line: 362, column: 13, scope: !2043)
!2166 = !DILocation(line: 365, column: 28, scope: !2045)
!2167 = !DILocation(line: 260, column: 10, scope: !2016)
!2168 = !DILocation(line: 367, column: 7, scope: !2046)
!2169 = !DILocation(line: 373, column: 7, scope: !2046)
!2170 = !DILocation(line: 381, column: 11, scope: !2046)
!2171 = !DILocation(line: 376, column: 11, scope: !2046)
!2172 = !DILocation(line: 382, column: 9, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !519, line: 382, column: 9)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !519, line: 382, column: 9)
!2175 = distinct !DILexicalBlock(scope: !2046, file: !519, line: 381, column: 11)
!2176 = !DILocation(line: 382, column: 9, scope: !2174)
!2177 = !DILocation(line: 389, column: 7, scope: !2046)
!2178 = !DILocation(line: 392, column: 7, scope: !2046)
!2179 = !DILocation(line: 0, scope: !2048)
!2180 = !DILocation(line: 395, column: 8, scope: !2048)
!2181 = !DILocation(line: 395, scope: !2048)
!2182 = !DILocation(line: 395, column: 34, scope: !2051)
!2183 = !DILocation(line: 395, column: 26, scope: !2051)
!2184 = !DILocation(line: 395, column: 48, scope: !2051)
!2185 = !DILocation(line: 395, column: 55, scope: !2051)
!2186 = !DILocation(line: 395, column: 3, scope: !2048)
!2187 = !DILocation(line: 395, column: 67, scope: !2051)
!2188 = !DILocation(line: 0, scope: !2050)
!2189 = !DILocation(line: 402, column: 11, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2050, file: !519, line: 401, column: 11)
!2191 = !DILocation(line: 404, column: 17, scope: !2190)
!2192 = !DILocation(line: 405, column: 39, scope: !2190)
!2193 = !DILocation(line: 409, column: 32, scope: !2190)
!2194 = !DILocation(line: 405, column: 19, scope: !2190)
!2195 = !DILocation(line: 405, column: 15, scope: !2190)
!2196 = !DILocation(line: 410, column: 11, scope: !2190)
!2197 = !DILocation(line: 410, column: 25, scope: !2190)
!2198 = !DILocalVariable(name: "__s1", arg: 1, scope: !2199, file: !898, line: 974, type: !1030)
!2199 = distinct !DISubprogram(name: "memeq", scope: !898, file: !898, line: 974, type: !1833, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2200)
!2200 = !{!2198, !2201, !2202}
!2201 = !DILocalVariable(name: "__s2", arg: 2, scope: !2199, file: !898, line: 974, type: !1030)
!2202 = !DILocalVariable(name: "__n", arg: 3, scope: !2199, file: !898, line: 974, type: !124)
!2203 = !DILocation(line: 0, scope: !2199, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 410, column: 14, scope: !2190)
!2205 = !DILocation(line: 976, column: 11, scope: !2199, inlinedAt: !2204)
!2206 = !DILocation(line: 976, column: 10, scope: !2199, inlinedAt: !2204)
!2207 = !DILocation(line: 401, column: 11, scope: !2050)
!2208 = !DILocation(line: 417, column: 25, scope: !2050)
!2209 = !DILocation(line: 418, column: 7, scope: !2050)
!2210 = !DILocation(line: 421, column: 15, scope: !2057)
!2211 = !DILocation(line: 423, column: 15, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !519, line: 423, column: 15)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !519, line: 422, column: 13)
!2214 = distinct !DILexicalBlock(scope: !2057, file: !519, line: 421, column: 15)
!2215 = !DILocation(line: 423, column: 15, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2212, file: !519, line: 423, column: 15)
!2217 = !DILocation(line: 423, column: 15, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !519, line: 423, column: 15)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !519, line: 423, column: 15)
!2220 = distinct !DILexicalBlock(scope: !2216, file: !519, line: 423, column: 15)
!2221 = !DILocation(line: 423, column: 15, scope: !2219)
!2222 = !DILocation(line: 423, column: 15, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !519, line: 423, column: 15)
!2224 = distinct !DILexicalBlock(scope: !2220, file: !519, line: 423, column: 15)
!2225 = !DILocation(line: 423, column: 15, scope: !2224)
!2226 = !DILocation(line: 423, column: 15, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !519, line: 423, column: 15)
!2228 = distinct !DILexicalBlock(scope: !2220, file: !519, line: 423, column: 15)
!2229 = !DILocation(line: 423, column: 15, scope: !2228)
!2230 = !DILocation(line: 423, column: 15, scope: !2220)
!2231 = !DILocation(line: 423, column: 15, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !519, line: 423, column: 15)
!2233 = distinct !DILexicalBlock(scope: !2212, file: !519, line: 423, column: 15)
!2234 = !DILocation(line: 423, column: 15, scope: !2233)
!2235 = !DILocation(line: 431, column: 19, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2213, file: !519, line: 430, column: 19)
!2237 = !DILocation(line: 431, column: 24, scope: !2236)
!2238 = !DILocation(line: 431, column: 28, scope: !2236)
!2239 = !DILocation(line: 431, column: 38, scope: !2236)
!2240 = !DILocation(line: 431, column: 48, scope: !2236)
!2241 = !DILocation(line: 431, column: 59, scope: !2236)
!2242 = !DILocation(line: 433, column: 19, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !519, line: 433, column: 19)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !519, line: 433, column: 19)
!2245 = distinct !DILexicalBlock(scope: !2236, file: !519, line: 432, column: 17)
!2246 = !DILocation(line: 433, column: 19, scope: !2244)
!2247 = !DILocation(line: 434, column: 19, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !519, line: 434, column: 19)
!2249 = distinct !DILexicalBlock(scope: !2245, file: !519, line: 434, column: 19)
!2250 = !DILocation(line: 434, column: 19, scope: !2249)
!2251 = !DILocation(line: 435, column: 17, scope: !2245)
!2252 = !DILocation(line: 442, column: 20, scope: !2214)
!2253 = !DILocation(line: 447, column: 11, scope: !2057)
!2254 = !DILocation(line: 450, column: 19, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2057, file: !519, line: 448, column: 13)
!2256 = !DILocation(line: 456, column: 19, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2255, file: !519, line: 455, column: 19)
!2258 = !DILocation(line: 456, column: 24, scope: !2257)
!2259 = !DILocation(line: 456, column: 28, scope: !2257)
!2260 = !DILocation(line: 456, column: 38, scope: !2257)
!2261 = !DILocation(line: 456, column: 41, scope: !2257)
!2262 = !DILocation(line: 456, column: 52, scope: !2257)
!2263 = !DILocation(line: 455, column: 19, scope: !2255)
!2264 = !DILocation(line: 457, column: 25, scope: !2257)
!2265 = !DILocation(line: 457, column: 17, scope: !2257)
!2266 = !DILocation(line: 464, column: 25, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2257, file: !519, line: 458, column: 19)
!2268 = !DILocation(line: 468, column: 21, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !519, line: 468, column: 21)
!2270 = distinct !DILexicalBlock(scope: !2267, file: !519, line: 468, column: 21)
!2271 = !DILocation(line: 468, column: 21, scope: !2270)
!2272 = !DILocation(line: 469, column: 21, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !519, line: 469, column: 21)
!2274 = distinct !DILexicalBlock(scope: !2267, file: !519, line: 469, column: 21)
!2275 = !DILocation(line: 469, column: 21, scope: !2274)
!2276 = !DILocation(line: 470, column: 21, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !519, line: 470, column: 21)
!2278 = distinct !DILexicalBlock(scope: !2267, file: !519, line: 470, column: 21)
!2279 = !DILocation(line: 470, column: 21, scope: !2278)
!2280 = !DILocation(line: 471, column: 21, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !519, line: 471, column: 21)
!2282 = distinct !DILexicalBlock(scope: !2267, file: !519, line: 471, column: 21)
!2283 = !DILocation(line: 471, column: 21, scope: !2282)
!2284 = !DILocation(line: 472, column: 21, scope: !2267)
!2285 = !DILocation(line: 482, column: 33, scope: !2056)
!2286 = !DILocation(line: 483, column: 33, scope: !2056)
!2287 = !DILocation(line: 485, column: 33, scope: !2056)
!2288 = !DILocation(line: 486, column: 33, scope: !2056)
!2289 = !DILocation(line: 487, column: 33, scope: !2056)
!2290 = !DILocation(line: 490, column: 17, scope: !2056)
!2291 = !DILocation(line: 492, column: 21, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !519, line: 491, column: 15)
!2293 = distinct !DILexicalBlock(scope: !2056, file: !519, line: 490, column: 17)
!2294 = !DILocation(line: 499, column: 35, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2056, file: !519, line: 499, column: 17)
!2296 = !DILocation(line: 0, scope: !2056)
!2297 = !DILocation(line: 502, column: 11, scope: !2056)
!2298 = !DILocation(line: 504, column: 17, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2056, file: !519, line: 503, column: 17)
!2300 = !DILocation(line: 507, column: 11, scope: !2056)
!2301 = !DILocation(line: 508, column: 17, scope: !2056)
!2302 = !DILocation(line: 517, column: 15, scope: !2057)
!2303 = !DILocation(line: 517, column: 40, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2057, file: !519, line: 517, column: 15)
!2305 = !DILocation(line: 517, column: 47, scope: !2304)
!2306 = !DILocation(line: 517, column: 18, scope: !2304)
!2307 = !DILocation(line: 521, column: 17, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2057, file: !519, line: 521, column: 15)
!2309 = !DILocation(line: 521, column: 15, scope: !2057)
!2310 = !DILocation(line: 525, column: 11, scope: !2057)
!2311 = !DILocation(line: 537, column: 15, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2057, file: !519, line: 536, column: 15)
!2313 = !DILocation(line: 536, column: 15, scope: !2057)
!2314 = !DILocation(line: 544, column: 15, scope: !2057)
!2315 = !DILocation(line: 546, column: 19, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !519, line: 545, column: 13)
!2317 = distinct !DILexicalBlock(scope: !2057, file: !519, line: 544, column: 15)
!2318 = !DILocation(line: 549, column: 19, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2316, file: !519, line: 549, column: 19)
!2320 = !DILocation(line: 549, column: 30, scope: !2319)
!2321 = !DILocation(line: 558, column: 15, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !519, line: 558, column: 15)
!2323 = distinct !DILexicalBlock(scope: !2316, file: !519, line: 558, column: 15)
!2324 = !DILocation(line: 558, column: 15, scope: !2323)
!2325 = !DILocation(line: 559, column: 15, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !519, line: 559, column: 15)
!2327 = distinct !DILexicalBlock(scope: !2316, file: !519, line: 559, column: 15)
!2328 = !DILocation(line: 559, column: 15, scope: !2327)
!2329 = !DILocation(line: 560, column: 15, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !519, line: 560, column: 15)
!2331 = distinct !DILexicalBlock(scope: !2316, file: !519, line: 560, column: 15)
!2332 = !DILocation(line: 560, column: 15, scope: !2331)
!2333 = !DILocation(line: 562, column: 13, scope: !2316)
!2334 = !DILocation(line: 602, column: 17, scope: !2060)
!2335 = !DILocation(line: 0, scope: !2060)
!2336 = !DILocation(line: 605, column: 29, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2064, file: !519, line: 603, column: 15)
!2338 = !DILocation(line: 605, column: 41, scope: !2337)
!2339 = !DILocation(line: 606, column: 15, scope: !2337)
!2340 = !DILocation(line: 609, column: 17, scope: !2063)
!2341 = !DILocation(line: 0, scope: !2118, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 609, column: 32, scope: !2063)
!2343 = !DILocation(line: 0, scope: !2126, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 1137, column: 3, scope: !2118, inlinedAt: !2342)
!2345 = !DILocation(line: 59, column: 10, scope: !2126, inlinedAt: !2344)
!2346 = !DILocation(line: 613, column: 29, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2063, file: !519, line: 613, column: 21)
!2348 = !DILocation(line: 613, column: 21, scope: !2063)
!2349 = !DILocation(line: 614, column: 29, scope: !2347)
!2350 = !DILocation(line: 614, column: 19, scope: !2347)
!2351 = !DILocation(line: 618, column: 21, scope: !2066)
!2352 = !DILocation(line: 620, column: 54, scope: !2066)
!2353 = !DILocation(line: 619, column: 36, scope: !2066)
!2354 = !DILocation(line: 621, column: 25, scope: !2066)
!2355 = !DILocation(line: 631, column: 38, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2075, file: !519, line: 629, column: 23)
!2357 = !DILocation(line: 631, column: 48, scope: !2356)
!2358 = !DILocation(line: 631, column: 25, scope: !2356)
!2359 = !DILocation(line: 626, column: 25, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2076, file: !519, line: 624, column: 23)
!2361 = !DILocation(line: 631, column: 51, scope: !2356)
!2362 = !DILocation(line: 632, column: 28, scope: !2356)
!2363 = !DILocation(line: 631, column: 34, scope: !2356)
!2364 = distinct !{!2364, !2358, !2362, !932}
!2365 = !DILocation(line: 0, scope: !2071)
!2366 = !DILocation(line: 646, column: 29, scope: !2073)
!2367 = !DILocation(line: 648, column: 29, scope: !2071)
!2368 = !DILocation(line: 649, column: 39, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2071, file: !519, line: 648, column: 29)
!2370 = !DILocation(line: 649, column: 31, scope: !2369)
!2371 = !DILocation(line: 648, column: 60, scope: !2369)
!2372 = !DILocation(line: 648, column: 50, scope: !2369)
!2373 = distinct !{!2373, !2367, !2374, !932}
!2374 = !DILocation(line: 654, column: 33, scope: !2071)
!2375 = !DILocation(line: 657, column: 43, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2074, file: !519, line: 657, column: 29)
!2377 = !DILocalVariable(name: "wc", arg: 1, scope: !2378, file: !2379, line: 865, type: !2382)
!2378 = distinct !DISubprogram(name: "c32isprint", scope: !2379, file: !2379, line: 865, type: !2380, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2384)
!2379 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!83, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2383, line: 20, baseType: !89)
!2383 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2384 = !{!2377}
!2385 = !DILocation(line: 0, scope: !2378, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 657, column: 31, scope: !2376)
!2387 = !DILocation(line: 871, column: 10, scope: !2378, inlinedAt: !2386)
!2388 = !DILocation(line: 657, column: 31, scope: !2376)
!2389 = !DILocation(line: 664, column: 23, scope: !2066)
!2390 = !DILocation(line: 665, column: 19, scope: !2067)
!2391 = !DILocation(line: 666, column: 15, scope: !2064)
!2392 = !DILocation(line: 753, column: 2, scope: !2016)
!2393 = !DILocation(line: 756, column: 51, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2016, file: !519, line: 756, column: 7)
!2395 = !DILocation(line: 0, scope: !2064)
!2396 = !DILocation(line: 670, column: 19, scope: !2080)
!2397 = !DILocation(line: 670, column: 23, scope: !2080)
!2398 = !DILocation(line: 674, column: 33, scope: !2079)
!2399 = !DILocation(line: 0, scope: !2079)
!2400 = !DILocation(line: 676, column: 17, scope: !2079)
!2401 = !DILocation(line: 678, column: 43, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !519, line: 678, column: 25)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !519, line: 677, column: 19)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !519, line: 676, column: 17)
!2405 = distinct !DILexicalBlock(scope: !2079, file: !519, line: 676, column: 17)
!2406 = !DILocation(line: 680, column: 25, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !519, line: 680, column: 25)
!2408 = distinct !DILexicalBlock(scope: !2402, file: !519, line: 679, column: 23)
!2409 = !DILocation(line: 680, column: 25, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !519, line: 680, column: 25)
!2411 = !DILocation(line: 680, column: 25, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !519, line: 680, column: 25)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !519, line: 680, column: 25)
!2414 = distinct !DILexicalBlock(scope: !2410, file: !519, line: 680, column: 25)
!2415 = !DILocation(line: 680, column: 25, scope: !2413)
!2416 = !DILocation(line: 680, column: 25, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !519, line: 680, column: 25)
!2418 = distinct !DILexicalBlock(scope: !2414, file: !519, line: 680, column: 25)
!2419 = !DILocation(line: 680, column: 25, scope: !2418)
!2420 = !DILocation(line: 680, column: 25, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !519, line: 680, column: 25)
!2422 = distinct !DILexicalBlock(scope: !2414, file: !519, line: 680, column: 25)
!2423 = !DILocation(line: 680, column: 25, scope: !2422)
!2424 = !DILocation(line: 680, column: 25, scope: !2414)
!2425 = !DILocation(line: 680, column: 25, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !519, line: 680, column: 25)
!2427 = distinct !DILexicalBlock(scope: !2407, file: !519, line: 680, column: 25)
!2428 = !DILocation(line: 680, column: 25, scope: !2427)
!2429 = !DILocation(line: 681, column: 25, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !519, line: 681, column: 25)
!2431 = distinct !DILexicalBlock(scope: !2408, file: !519, line: 681, column: 25)
!2432 = !DILocation(line: 681, column: 25, scope: !2431)
!2433 = !DILocation(line: 682, column: 25, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !519, line: 682, column: 25)
!2435 = distinct !DILexicalBlock(scope: !2408, file: !519, line: 682, column: 25)
!2436 = !DILocation(line: 682, column: 25, scope: !2435)
!2437 = !DILocation(line: 683, column: 38, scope: !2408)
!2438 = !DILocation(line: 683, column: 33, scope: !2408)
!2439 = !DILocation(line: 684, column: 23, scope: !2408)
!2440 = !DILocation(line: 685, column: 30, scope: !2402)
!2441 = !DILocation(line: 687, column: 25, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !519, line: 687, column: 25)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !519, line: 687, column: 25)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !519, line: 686, column: 23)
!2445 = distinct !DILexicalBlock(scope: !2402, file: !519, line: 685, column: 30)
!2446 = !DILocation(line: 687, column: 25, scope: !2443)
!2447 = !DILocation(line: 689, column: 23, scope: !2444)
!2448 = !DILocation(line: 690, column: 35, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2403, file: !519, line: 690, column: 25)
!2450 = !DILocation(line: 690, column: 30, scope: !2449)
!2451 = !DILocation(line: 690, column: 25, scope: !2403)
!2452 = !DILocation(line: 692, column: 21, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !519, line: 692, column: 21)
!2454 = distinct !DILexicalBlock(scope: !2403, file: !519, line: 692, column: 21)
!2455 = !DILocation(line: 692, column: 21, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !519, line: 692, column: 21)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !519, line: 692, column: 21)
!2458 = distinct !DILexicalBlock(scope: !2453, file: !519, line: 692, column: 21)
!2459 = !DILocation(line: 692, column: 21, scope: !2457)
!2460 = !DILocation(line: 692, column: 21, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !519, line: 692, column: 21)
!2462 = distinct !DILexicalBlock(scope: !2458, file: !519, line: 692, column: 21)
!2463 = !DILocation(line: 692, column: 21, scope: !2462)
!2464 = !DILocation(line: 692, column: 21, scope: !2458)
!2465 = !DILocation(line: 0, scope: !2403)
!2466 = !DILocation(line: 693, column: 21, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !519, line: 693, column: 21)
!2468 = distinct !DILexicalBlock(scope: !2403, file: !519, line: 693, column: 21)
!2469 = !DILocation(line: 693, column: 21, scope: !2468)
!2470 = !DILocation(line: 694, column: 25, scope: !2403)
!2471 = !DILocation(line: 676, column: 17, scope: !2404)
!2472 = distinct !{!2472, !2473, !2474}
!2473 = !DILocation(line: 676, column: 17, scope: !2405)
!2474 = !DILocation(line: 695, column: 19, scope: !2405)
!2475 = !DILocation(line: 409, column: 30, scope: !2190)
!2476 = !DILocation(line: 702, column: 34, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2050, file: !519, line: 702, column: 11)
!2478 = !DILocation(line: 704, column: 14, scope: !2477)
!2479 = !DILocation(line: 705, column: 14, scope: !2477)
!2480 = !DILocation(line: 705, column: 35, scope: !2477)
!2481 = !DILocation(line: 705, column: 17, scope: !2477)
!2482 = !DILocation(line: 705, column: 47, scope: !2477)
!2483 = !DILocation(line: 705, column: 65, scope: !2477)
!2484 = !DILocation(line: 706, column: 11, scope: !2477)
!2485 = !DILocation(line: 702, column: 11, scope: !2050)
!2486 = !DILocation(line: 395, column: 15, scope: !2048)
!2487 = !DILocation(line: 709, column: 5, scope: !2050)
!2488 = !DILocation(line: 710, column: 7, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2050, file: !519, line: 710, column: 7)
!2490 = !DILocation(line: 710, column: 7, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2489, file: !519, line: 710, column: 7)
!2492 = !DILocation(line: 710, column: 7, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !519, line: 710, column: 7)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !519, line: 710, column: 7)
!2495 = distinct !DILexicalBlock(scope: !2491, file: !519, line: 710, column: 7)
!2496 = !DILocation(line: 710, column: 7, scope: !2494)
!2497 = !DILocation(line: 710, column: 7, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !519, line: 710, column: 7)
!2499 = distinct !DILexicalBlock(scope: !2495, file: !519, line: 710, column: 7)
!2500 = !DILocation(line: 710, column: 7, scope: !2499)
!2501 = !DILocation(line: 710, column: 7, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !519, line: 710, column: 7)
!2503 = distinct !DILexicalBlock(scope: !2495, file: !519, line: 710, column: 7)
!2504 = !DILocation(line: 710, column: 7, scope: !2503)
!2505 = !DILocation(line: 710, column: 7, scope: !2495)
!2506 = !DILocation(line: 710, column: 7, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !519, line: 710, column: 7)
!2508 = distinct !DILexicalBlock(scope: !2489, file: !519, line: 710, column: 7)
!2509 = !DILocation(line: 710, column: 7, scope: !2508)
!2510 = !DILocation(line: 712, column: 5, scope: !2050)
!2511 = !DILocation(line: 713, column: 7, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !519, line: 713, column: 7)
!2513 = distinct !DILexicalBlock(scope: !2050, file: !519, line: 713, column: 7)
!2514 = !DILocation(line: 417, column: 21, scope: !2050)
!2515 = !DILocation(line: 713, column: 7, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !519, line: 713, column: 7)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !519, line: 713, column: 7)
!2518 = distinct !DILexicalBlock(scope: !2512, file: !519, line: 713, column: 7)
!2519 = !DILocation(line: 713, column: 7, scope: !2517)
!2520 = !DILocation(line: 713, column: 7, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !519, line: 713, column: 7)
!2522 = distinct !DILexicalBlock(scope: !2518, file: !519, line: 713, column: 7)
!2523 = !DILocation(line: 713, column: 7, scope: !2522)
!2524 = !DILocation(line: 713, column: 7, scope: !2518)
!2525 = !DILocation(line: 714, column: 7, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !519, line: 714, column: 7)
!2527 = distinct !DILexicalBlock(scope: !2050, file: !519, line: 714, column: 7)
!2528 = !DILocation(line: 714, column: 7, scope: !2527)
!2529 = !DILocation(line: 716, column: 11, scope: !2050)
!2530 = !DILocation(line: 718, column: 5, scope: !2051)
!2531 = !DILocation(line: 395, column: 82, scope: !2051)
!2532 = !DILocation(line: 395, column: 3, scope: !2051)
!2533 = distinct !{!2533, !2186, !2534, !932}
!2534 = !DILocation(line: 718, column: 5, scope: !2048)
!2535 = !DILocation(line: 720, column: 11, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2016, file: !519, line: 720, column: 7)
!2537 = !DILocation(line: 720, column: 16, scope: !2536)
!2538 = !DILocation(line: 728, column: 51, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2016, file: !519, line: 728, column: 7)
!2540 = !DILocation(line: 731, column: 11, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2539, file: !519, line: 730, column: 5)
!2542 = !DILocation(line: 732, column: 16, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2541, file: !519, line: 731, column: 11)
!2544 = !DILocation(line: 732, column: 9, scope: !2543)
!2545 = !DILocation(line: 736, column: 18, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !519, line: 736, column: 16)
!2547 = !DILocation(line: 736, column: 29, scope: !2546)
!2548 = !DILocation(line: 745, column: 7, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2016, file: !519, line: 745, column: 7)
!2550 = !DILocation(line: 745, column: 20, scope: !2549)
!2551 = !DILocation(line: 746, column: 12, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !519, line: 746, column: 5)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !519, line: 746, column: 5)
!2554 = !DILocation(line: 746, column: 5, scope: !2553)
!2555 = !DILocation(line: 747, column: 7, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !519, line: 747, column: 7)
!2557 = distinct !DILexicalBlock(scope: !2552, file: !519, line: 747, column: 7)
!2558 = !DILocation(line: 747, column: 7, scope: !2557)
!2559 = !DILocation(line: 746, column: 39, scope: !2552)
!2560 = distinct !{!2560, !2554, !2561, !932}
!2561 = !DILocation(line: 747, column: 7, scope: !2553)
!2562 = !DILocation(line: 749, column: 11, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2016, file: !519, line: 749, column: 7)
!2564 = !DILocation(line: 749, column: 7, scope: !2016)
!2565 = !DILocation(line: 750, column: 5, scope: !2563)
!2566 = !DILocation(line: 750, column: 17, scope: !2563)
!2567 = !DILocation(line: 756, column: 21, scope: !2394)
!2568 = !DILocation(line: 760, column: 42, scope: !2016)
!2569 = !DILocation(line: 758, column: 10, scope: !2016)
!2570 = !DILocation(line: 758, column: 3, scope: !2016)
!2571 = !DILocation(line: 762, column: 1, scope: !2016)
!2572 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1006, file: !1006, line: 98, type: !2573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!124}
!2575 = !DISubprogram(name: "iswprint", scope: !2576, file: !2576, line: 120, type: !2380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2576 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2577 = distinct !DISubprogram(name: "quotearg_alloc", scope: !519, file: !519, line: 788, type: !2578, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!122, !127, !124, !1909}
!2580 = !{!2581, !2582, !2583}
!2581 = !DILocalVariable(name: "arg", arg: 1, scope: !2577, file: !519, line: 788, type: !127)
!2582 = !DILocalVariable(name: "argsize", arg: 2, scope: !2577, file: !519, line: 788, type: !124)
!2583 = !DILocalVariable(name: "o", arg: 3, scope: !2577, file: !519, line: 789, type: !1909)
!2584 = !DILocation(line: 0, scope: !2577)
!2585 = !DILocalVariable(name: "arg", arg: 1, scope: !2586, file: !519, line: 801, type: !127)
!2586 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !519, file: !519, line: 801, type: !2587, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!122, !127, !124, !753, !1909}
!2589 = !{!2585, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597}
!2590 = !DILocalVariable(name: "argsize", arg: 2, scope: !2586, file: !519, line: 801, type: !124)
!2591 = !DILocalVariable(name: "size", arg: 3, scope: !2586, file: !519, line: 801, type: !753)
!2592 = !DILocalVariable(name: "o", arg: 4, scope: !2586, file: !519, line: 802, type: !1909)
!2593 = !DILocalVariable(name: "p", scope: !2586, file: !519, line: 804, type: !1909)
!2594 = !DILocalVariable(name: "saved_errno", scope: !2586, file: !519, line: 805, type: !83)
!2595 = !DILocalVariable(name: "flags", scope: !2586, file: !519, line: 807, type: !83)
!2596 = !DILocalVariable(name: "bufsize", scope: !2586, file: !519, line: 808, type: !124)
!2597 = !DILocalVariable(name: "buf", scope: !2586, file: !519, line: 812, type: !122)
!2598 = !DILocation(line: 0, scope: !2586, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 791, column: 10, scope: !2577)
!2600 = !DILocation(line: 804, column: 37, scope: !2586, inlinedAt: !2599)
!2601 = !DILocation(line: 805, column: 21, scope: !2586, inlinedAt: !2599)
!2602 = !DILocation(line: 807, column: 18, scope: !2586, inlinedAt: !2599)
!2603 = !DILocation(line: 807, column: 24, scope: !2586, inlinedAt: !2599)
!2604 = !DILocation(line: 808, column: 72, scope: !2586, inlinedAt: !2599)
!2605 = !DILocation(line: 809, column: 56, scope: !2586, inlinedAt: !2599)
!2606 = !DILocation(line: 810, column: 49, scope: !2586, inlinedAt: !2599)
!2607 = !DILocation(line: 811, column: 49, scope: !2586, inlinedAt: !2599)
!2608 = !DILocation(line: 808, column: 20, scope: !2586, inlinedAt: !2599)
!2609 = !DILocation(line: 811, column: 62, scope: !2586, inlinedAt: !2599)
!2610 = !DILocation(line: 812, column: 15, scope: !2586, inlinedAt: !2599)
!2611 = !DILocation(line: 813, column: 60, scope: !2586, inlinedAt: !2599)
!2612 = !DILocation(line: 815, column: 32, scope: !2586, inlinedAt: !2599)
!2613 = !DILocation(line: 815, column: 47, scope: !2586, inlinedAt: !2599)
!2614 = !DILocation(line: 813, column: 3, scope: !2586, inlinedAt: !2599)
!2615 = !DILocation(line: 816, column: 9, scope: !2586, inlinedAt: !2599)
!2616 = !DILocation(line: 791, column: 3, scope: !2577)
!2617 = !DILocation(line: 0, scope: !2586)
!2618 = !DILocation(line: 804, column: 37, scope: !2586)
!2619 = !DILocation(line: 805, column: 21, scope: !2586)
!2620 = !DILocation(line: 807, column: 18, scope: !2586)
!2621 = !DILocation(line: 807, column: 27, scope: !2586)
!2622 = !DILocation(line: 807, column: 24, scope: !2586)
!2623 = !DILocation(line: 808, column: 72, scope: !2586)
!2624 = !DILocation(line: 809, column: 56, scope: !2586)
!2625 = !DILocation(line: 810, column: 49, scope: !2586)
!2626 = !DILocation(line: 811, column: 49, scope: !2586)
!2627 = !DILocation(line: 808, column: 20, scope: !2586)
!2628 = !DILocation(line: 811, column: 62, scope: !2586)
!2629 = !DILocation(line: 812, column: 15, scope: !2586)
!2630 = !DILocation(line: 813, column: 60, scope: !2586)
!2631 = !DILocation(line: 815, column: 32, scope: !2586)
!2632 = !DILocation(line: 815, column: 47, scope: !2586)
!2633 = !DILocation(line: 813, column: 3, scope: !2586)
!2634 = !DILocation(line: 816, column: 9, scope: !2586)
!2635 = !DILocation(line: 817, column: 7, scope: !2586)
!2636 = !DILocation(line: 818, column: 11, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2586, file: !519, line: 817, column: 7)
!2638 = !DILocation(line: 818, column: 5, scope: !2637)
!2639 = !DILocation(line: 819, column: 3, scope: !2586)
!2640 = distinct !DISubprogram(name: "quotearg_free", scope: !519, file: !519, line: 837, type: !474, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2641)
!2641 = !{!2642, !2643}
!2642 = !DILocalVariable(name: "sv", scope: !2640, file: !519, line: 839, type: !605)
!2643 = !DILocalVariable(name: "i", scope: !2644, file: !519, line: 840, type: !83)
!2644 = distinct !DILexicalBlock(scope: !2640, file: !519, line: 840, column: 3)
!2645 = !DILocation(line: 839, column: 24, scope: !2640)
!2646 = !DILocation(line: 0, scope: !2640)
!2647 = !DILocation(line: 0, scope: !2644)
!2648 = !DILocation(line: 840, column: 21, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2644, file: !519, line: 840, column: 3)
!2650 = !DILocation(line: 840, column: 3, scope: !2644)
!2651 = !DILocation(line: 842, column: 13, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2640, file: !519, line: 842, column: 7)
!2653 = !{!2654, !822, i64 8}
!2654 = !{!"slotvec", !1173, i64 0, !822, i64 8}
!2655 = !DILocation(line: 842, column: 17, scope: !2652)
!2656 = !DILocation(line: 842, column: 7, scope: !2640)
!2657 = !DILocation(line: 841, column: 17, scope: !2649)
!2658 = !DILocation(line: 841, column: 5, scope: !2649)
!2659 = !DILocation(line: 840, column: 32, scope: !2649)
!2660 = distinct !{!2660, !2650, !2661, !932}
!2661 = !DILocation(line: 841, column: 20, scope: !2644)
!2662 = !DILocation(line: 844, column: 7, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2652, file: !519, line: 843, column: 5)
!2664 = !DILocation(line: 845, column: 21, scope: !2663)
!2665 = !{!2654, !1173, i64 0}
!2666 = !DILocation(line: 846, column: 20, scope: !2663)
!2667 = !DILocation(line: 847, column: 5, scope: !2663)
!2668 = !DILocation(line: 848, column: 10, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2640, file: !519, line: 848, column: 7)
!2670 = !DILocation(line: 848, column: 7, scope: !2640)
!2671 = !DILocation(line: 850, column: 7, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !519, line: 849, column: 5)
!2673 = !DILocation(line: 851, column: 15, scope: !2672)
!2674 = !DILocation(line: 852, column: 5, scope: !2672)
!2675 = !DILocation(line: 853, column: 10, scope: !2640)
!2676 = !DILocation(line: 854, column: 1, scope: !2640)
!2677 = distinct !DISubprogram(name: "quotearg_n", scope: !519, file: !519, line: 919, type: !999, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2678)
!2678 = !{!2679, !2680}
!2679 = !DILocalVariable(name: "n", arg: 1, scope: !2677, file: !519, line: 919, type: !83)
!2680 = !DILocalVariable(name: "arg", arg: 2, scope: !2677, file: !519, line: 919, type: !127)
!2681 = !DILocation(line: 0, scope: !2677)
!2682 = !DILocation(line: 921, column: 10, scope: !2677)
!2683 = !DILocation(line: 921, column: 3, scope: !2677)
!2684 = distinct !DISubprogram(name: "quotearg_n_options", scope: !519, file: !519, line: 866, type: !2685, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!122, !83, !127, !124, !1909}
!2687 = !{!2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2698, !2699, !2701, !2702, !2703}
!2688 = !DILocalVariable(name: "n", arg: 1, scope: !2684, file: !519, line: 866, type: !83)
!2689 = !DILocalVariable(name: "arg", arg: 2, scope: !2684, file: !519, line: 866, type: !127)
!2690 = !DILocalVariable(name: "argsize", arg: 3, scope: !2684, file: !519, line: 866, type: !124)
!2691 = !DILocalVariable(name: "options", arg: 4, scope: !2684, file: !519, line: 867, type: !1909)
!2692 = !DILocalVariable(name: "saved_errno", scope: !2684, file: !519, line: 869, type: !83)
!2693 = !DILocalVariable(name: "sv", scope: !2684, file: !519, line: 871, type: !605)
!2694 = !DILocalVariable(name: "nslots_max", scope: !2684, file: !519, line: 873, type: !83)
!2695 = !DILocalVariable(name: "preallocated", scope: !2696, file: !519, line: 879, type: !158)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !519, line: 878, column: 5)
!2697 = distinct !DILexicalBlock(scope: !2684, file: !519, line: 877, column: 7)
!2698 = !DILocalVariable(name: "new_nslots", scope: !2696, file: !519, line: 880, type: !766)
!2699 = !DILocalVariable(name: "size", scope: !2700, file: !519, line: 891, type: !124)
!2700 = distinct !DILexicalBlock(scope: !2684, file: !519, line: 890, column: 3)
!2701 = !DILocalVariable(name: "val", scope: !2700, file: !519, line: 892, type: !122)
!2702 = !DILocalVariable(name: "flags", scope: !2700, file: !519, line: 894, type: !83)
!2703 = !DILocalVariable(name: "qsize", scope: !2700, file: !519, line: 895, type: !124)
!2704 = distinct !DIAssignID()
!2705 = !DILocation(line: 0, scope: !2696)
!2706 = !DILocation(line: 0, scope: !2684)
!2707 = !DILocation(line: 869, column: 21, scope: !2684)
!2708 = !DILocation(line: 871, column: 24, scope: !2684)
!2709 = !DILocation(line: 874, column: 17, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2684, file: !519, line: 874, column: 7)
!2711 = !DILocation(line: 875, column: 5, scope: !2710)
!2712 = !DILocation(line: 877, column: 7, scope: !2697)
!2713 = !DILocation(line: 877, column: 14, scope: !2697)
!2714 = !DILocation(line: 877, column: 7, scope: !2684)
!2715 = !DILocation(line: 879, column: 31, scope: !2696)
!2716 = !DILocation(line: 880, column: 7, scope: !2696)
!2717 = !DILocation(line: 880, column: 26, scope: !2696)
!2718 = !DILocation(line: 880, column: 13, scope: !2696)
!2719 = distinct !DIAssignID()
!2720 = !DILocation(line: 882, column: 31, scope: !2696)
!2721 = !DILocation(line: 883, column: 33, scope: !2696)
!2722 = !DILocation(line: 883, column: 42, scope: !2696)
!2723 = !DILocation(line: 883, column: 31, scope: !2696)
!2724 = !DILocation(line: 882, column: 22, scope: !2696)
!2725 = !DILocation(line: 882, column: 15, scope: !2696)
!2726 = !DILocation(line: 884, column: 11, scope: !2696)
!2727 = !DILocation(line: 885, column: 15, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2696, file: !519, line: 884, column: 11)
!2729 = !{i64 0, i64 8, !1394, i64 8, i64 8, !821}
!2730 = !DILocation(line: 885, column: 9, scope: !2728)
!2731 = !DILocation(line: 886, column: 20, scope: !2696)
!2732 = !DILocation(line: 886, column: 18, scope: !2696)
!2733 = !DILocation(line: 886, column: 32, scope: !2696)
!2734 = !DILocation(line: 886, column: 43, scope: !2696)
!2735 = !DILocation(line: 886, column: 53, scope: !2696)
!2736 = !DILocation(line: 0, scope: !2126, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 886, column: 7, scope: !2696)
!2738 = !DILocation(line: 59, column: 10, scope: !2126, inlinedAt: !2737)
!2739 = !DILocation(line: 887, column: 16, scope: !2696)
!2740 = !DILocation(line: 887, column: 14, scope: !2696)
!2741 = !DILocation(line: 888, column: 5, scope: !2697)
!2742 = !DILocation(line: 888, column: 5, scope: !2696)
!2743 = !DILocation(line: 891, column: 19, scope: !2700)
!2744 = !DILocation(line: 891, column: 25, scope: !2700)
!2745 = !DILocation(line: 0, scope: !2700)
!2746 = !DILocation(line: 892, column: 23, scope: !2700)
!2747 = !DILocation(line: 894, column: 26, scope: !2700)
!2748 = !DILocation(line: 894, column: 32, scope: !2700)
!2749 = !DILocation(line: 896, column: 55, scope: !2700)
!2750 = !DILocation(line: 897, column: 55, scope: !2700)
!2751 = !DILocation(line: 898, column: 55, scope: !2700)
!2752 = !DILocation(line: 899, column: 55, scope: !2700)
!2753 = !DILocation(line: 895, column: 20, scope: !2700)
!2754 = !DILocation(line: 901, column: 14, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2700, file: !519, line: 901, column: 9)
!2756 = !DILocation(line: 901, column: 9, scope: !2700)
!2757 = !DILocation(line: 903, column: 35, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2755, file: !519, line: 902, column: 7)
!2759 = !DILocation(line: 903, column: 20, scope: !2758)
!2760 = !DILocation(line: 904, column: 17, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2758, file: !519, line: 904, column: 13)
!2762 = !DILocation(line: 904, column: 13, scope: !2758)
!2763 = !DILocation(line: 905, column: 11, scope: !2761)
!2764 = !DILocation(line: 906, column: 27, scope: !2758)
!2765 = !DILocation(line: 906, column: 19, scope: !2758)
!2766 = !DILocation(line: 907, column: 69, scope: !2758)
!2767 = !DILocation(line: 909, column: 44, scope: !2758)
!2768 = !DILocation(line: 910, column: 44, scope: !2758)
!2769 = !DILocation(line: 907, column: 9, scope: !2758)
!2770 = !DILocation(line: 911, column: 7, scope: !2758)
!2771 = !DILocation(line: 913, column: 11, scope: !2700)
!2772 = !DILocation(line: 914, column: 5, scope: !2700)
!2773 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !519, file: !519, line: 925, type: !2774, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2776)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!122, !83, !127, !124}
!2776 = !{!2777, !2778, !2779}
!2777 = !DILocalVariable(name: "n", arg: 1, scope: !2773, file: !519, line: 925, type: !83)
!2778 = !DILocalVariable(name: "arg", arg: 2, scope: !2773, file: !519, line: 925, type: !127)
!2779 = !DILocalVariable(name: "argsize", arg: 3, scope: !2773, file: !519, line: 925, type: !124)
!2780 = !DILocation(line: 0, scope: !2773)
!2781 = !DILocation(line: 927, column: 10, scope: !2773)
!2782 = !DILocation(line: 927, column: 3, scope: !2773)
!2783 = distinct !DISubprogram(name: "quotearg", scope: !519, file: !519, line: 931, type: !1008, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2784)
!2784 = !{!2785}
!2785 = !DILocalVariable(name: "arg", arg: 1, scope: !2783, file: !519, line: 931, type: !127)
!2786 = !DILocation(line: 0, scope: !2783)
!2787 = !DILocation(line: 0, scope: !2677, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 933, column: 10, scope: !2783)
!2789 = !DILocation(line: 921, column: 10, scope: !2677, inlinedAt: !2788)
!2790 = !DILocation(line: 933, column: 3, scope: !2783)
!2791 = distinct !DISubprogram(name: "quotearg_mem", scope: !519, file: !519, line: 937, type: !2792, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!122, !127, !124}
!2794 = !{!2795, !2796}
!2795 = !DILocalVariable(name: "arg", arg: 1, scope: !2791, file: !519, line: 937, type: !127)
!2796 = !DILocalVariable(name: "argsize", arg: 2, scope: !2791, file: !519, line: 937, type: !124)
!2797 = !DILocation(line: 0, scope: !2791)
!2798 = !DILocation(line: 0, scope: !2773, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 939, column: 10, scope: !2791)
!2800 = !DILocation(line: 927, column: 10, scope: !2773, inlinedAt: !2799)
!2801 = !DILocation(line: 939, column: 3, scope: !2791)
!2802 = distinct !DISubprogram(name: "quotearg_n_style", scope: !519, file: !519, line: 943, type: !2803, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!122, !83, !542, !127}
!2805 = !{!2806, !2807, !2808, !2809}
!2806 = !DILocalVariable(name: "n", arg: 1, scope: !2802, file: !519, line: 943, type: !83)
!2807 = !DILocalVariable(name: "s", arg: 2, scope: !2802, file: !519, line: 943, type: !542)
!2808 = !DILocalVariable(name: "arg", arg: 3, scope: !2802, file: !519, line: 943, type: !127)
!2809 = !DILocalVariable(name: "o", scope: !2802, file: !519, line: 945, type: !1910)
!2810 = distinct !DIAssignID()
!2811 = !DILocation(line: 0, scope: !2802)
!2812 = !DILocation(line: 945, column: 3, scope: !2802)
!2813 = !{!2814}
!2814 = distinct !{!2814, !2815, !"quoting_options_from_style: argument 0"}
!2815 = distinct !{!2815, !"quoting_options_from_style"}
!2816 = !DILocation(line: 945, column: 36, scope: !2802)
!2817 = !DILocalVariable(name: "style", arg: 1, scope: !2818, file: !519, line: 183, type: !542)
!2818 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !519, file: !519, line: 183, type: !2819, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!557, !542}
!2821 = !{!2817, !2822}
!2822 = !DILocalVariable(name: "o", scope: !2818, file: !519, line: 185, type: !557)
!2823 = !DILocation(line: 0, scope: !2818, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 945, column: 36, scope: !2802)
!2825 = !DILocation(line: 185, column: 26, scope: !2818, inlinedAt: !2824)
!2826 = distinct !DIAssignID()
!2827 = !DILocation(line: 186, column: 13, scope: !2828, inlinedAt: !2824)
!2828 = distinct !DILexicalBlock(scope: !2818, file: !519, line: 186, column: 7)
!2829 = !DILocation(line: 186, column: 7, scope: !2818, inlinedAt: !2824)
!2830 = !DILocation(line: 187, column: 5, scope: !2828, inlinedAt: !2824)
!2831 = !DILocation(line: 188, column: 11, scope: !2818, inlinedAt: !2824)
!2832 = distinct !DIAssignID()
!2833 = !DILocation(line: 946, column: 10, scope: !2802)
!2834 = !DILocation(line: 947, column: 1, scope: !2802)
!2835 = !DILocation(line: 946, column: 3, scope: !2802)
!2836 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !519, file: !519, line: 950, type: !2837, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!122, !83, !542, !127, !124}
!2839 = !{!2840, !2841, !2842, !2843, !2844}
!2840 = !DILocalVariable(name: "n", arg: 1, scope: !2836, file: !519, line: 950, type: !83)
!2841 = !DILocalVariable(name: "s", arg: 2, scope: !2836, file: !519, line: 950, type: !542)
!2842 = !DILocalVariable(name: "arg", arg: 3, scope: !2836, file: !519, line: 951, type: !127)
!2843 = !DILocalVariable(name: "argsize", arg: 4, scope: !2836, file: !519, line: 951, type: !124)
!2844 = !DILocalVariable(name: "o", scope: !2836, file: !519, line: 953, type: !1910)
!2845 = distinct !DIAssignID()
!2846 = !DILocation(line: 0, scope: !2836)
!2847 = !DILocation(line: 953, column: 3, scope: !2836)
!2848 = !{!2849}
!2849 = distinct !{!2849, !2850, !"quoting_options_from_style: argument 0"}
!2850 = distinct !{!2850, !"quoting_options_from_style"}
!2851 = !DILocation(line: 953, column: 36, scope: !2836)
!2852 = !DILocation(line: 0, scope: !2818, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 953, column: 36, scope: !2836)
!2854 = !DILocation(line: 185, column: 26, scope: !2818, inlinedAt: !2853)
!2855 = distinct !DIAssignID()
!2856 = !DILocation(line: 186, column: 13, scope: !2828, inlinedAt: !2853)
!2857 = !DILocation(line: 186, column: 7, scope: !2818, inlinedAt: !2853)
!2858 = !DILocation(line: 187, column: 5, scope: !2828, inlinedAt: !2853)
!2859 = !DILocation(line: 188, column: 11, scope: !2818, inlinedAt: !2853)
!2860 = distinct !DIAssignID()
!2861 = !DILocation(line: 954, column: 10, scope: !2836)
!2862 = !DILocation(line: 955, column: 1, scope: !2836)
!2863 = !DILocation(line: 954, column: 3, scope: !2836)
!2864 = distinct !DISubprogram(name: "quotearg_style", scope: !519, file: !519, line: 958, type: !2865, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!122, !542, !127}
!2867 = !{!2868, !2869}
!2868 = !DILocalVariable(name: "s", arg: 1, scope: !2864, file: !519, line: 958, type: !542)
!2869 = !DILocalVariable(name: "arg", arg: 2, scope: !2864, file: !519, line: 958, type: !127)
!2870 = distinct !DIAssignID()
!2871 = !DILocation(line: 0, scope: !2864)
!2872 = !DILocation(line: 0, scope: !2802, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 960, column: 10, scope: !2864)
!2874 = !DILocation(line: 945, column: 3, scope: !2802, inlinedAt: !2873)
!2875 = !{!2876}
!2876 = distinct !{!2876, !2877, !"quoting_options_from_style: argument 0"}
!2877 = distinct !{!2877, !"quoting_options_from_style"}
!2878 = !DILocation(line: 945, column: 36, scope: !2802, inlinedAt: !2873)
!2879 = !DILocation(line: 0, scope: !2818, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 945, column: 36, scope: !2802, inlinedAt: !2873)
!2881 = !DILocation(line: 185, column: 26, scope: !2818, inlinedAt: !2880)
!2882 = distinct !DIAssignID()
!2883 = !DILocation(line: 186, column: 13, scope: !2828, inlinedAt: !2880)
!2884 = !DILocation(line: 186, column: 7, scope: !2818, inlinedAt: !2880)
!2885 = !DILocation(line: 187, column: 5, scope: !2828, inlinedAt: !2880)
!2886 = !DILocation(line: 188, column: 11, scope: !2818, inlinedAt: !2880)
!2887 = distinct !DIAssignID()
!2888 = !DILocation(line: 946, column: 10, scope: !2802, inlinedAt: !2873)
!2889 = !DILocation(line: 947, column: 1, scope: !2802, inlinedAt: !2873)
!2890 = !DILocation(line: 960, column: 3, scope: !2864)
!2891 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !519, file: !519, line: 964, type: !2892, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2894)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!122, !542, !127, !124}
!2894 = !{!2895, !2896, !2897}
!2895 = !DILocalVariable(name: "s", arg: 1, scope: !2891, file: !519, line: 964, type: !542)
!2896 = !DILocalVariable(name: "arg", arg: 2, scope: !2891, file: !519, line: 964, type: !127)
!2897 = !DILocalVariable(name: "argsize", arg: 3, scope: !2891, file: !519, line: 964, type: !124)
!2898 = distinct !DIAssignID()
!2899 = !DILocation(line: 0, scope: !2891)
!2900 = !DILocation(line: 0, scope: !2836, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 966, column: 10, scope: !2891)
!2902 = !DILocation(line: 953, column: 3, scope: !2836, inlinedAt: !2901)
!2903 = !{!2904}
!2904 = distinct !{!2904, !2905, !"quoting_options_from_style: argument 0"}
!2905 = distinct !{!2905, !"quoting_options_from_style"}
!2906 = !DILocation(line: 953, column: 36, scope: !2836, inlinedAt: !2901)
!2907 = !DILocation(line: 0, scope: !2818, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 953, column: 36, scope: !2836, inlinedAt: !2901)
!2909 = !DILocation(line: 185, column: 26, scope: !2818, inlinedAt: !2908)
!2910 = distinct !DIAssignID()
!2911 = !DILocation(line: 186, column: 13, scope: !2828, inlinedAt: !2908)
!2912 = !DILocation(line: 186, column: 7, scope: !2818, inlinedAt: !2908)
!2913 = !DILocation(line: 187, column: 5, scope: !2828, inlinedAt: !2908)
!2914 = !DILocation(line: 188, column: 11, scope: !2818, inlinedAt: !2908)
!2915 = distinct !DIAssignID()
!2916 = !DILocation(line: 954, column: 10, scope: !2836, inlinedAt: !2901)
!2917 = !DILocation(line: 955, column: 1, scope: !2836, inlinedAt: !2901)
!2918 = !DILocation(line: 966, column: 3, scope: !2891)
!2919 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !519, file: !519, line: 970, type: !2920, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!122, !127, !124, !4}
!2922 = !{!2923, !2924, !2925, !2926}
!2923 = !DILocalVariable(name: "arg", arg: 1, scope: !2919, file: !519, line: 970, type: !127)
!2924 = !DILocalVariable(name: "argsize", arg: 2, scope: !2919, file: !519, line: 970, type: !124)
!2925 = !DILocalVariable(name: "ch", arg: 3, scope: !2919, file: !519, line: 970, type: !4)
!2926 = !DILocalVariable(name: "options", scope: !2919, file: !519, line: 972, type: !557)
!2927 = distinct !DIAssignID()
!2928 = !DILocation(line: 0, scope: !2919)
!2929 = !DILocation(line: 972, column: 3, scope: !2919)
!2930 = !DILocation(line: 973, column: 13, scope: !2919)
!2931 = !{i64 0, i64 4, !885, i64 4, i64 4, !885, i64 8, i64 32, !894, i64 40, i64 8, !821, i64 48, i64 8, !821}
!2932 = distinct !DIAssignID()
!2933 = !DILocation(line: 0, scope: !1929, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 974, column: 3, scope: !2919)
!2935 = !DILocation(line: 147, column: 41, scope: !1929, inlinedAt: !2934)
!2936 = !DILocation(line: 147, column: 62, scope: !1929, inlinedAt: !2934)
!2937 = !DILocation(line: 147, column: 57, scope: !1929, inlinedAt: !2934)
!2938 = !DILocation(line: 148, column: 15, scope: !1929, inlinedAt: !2934)
!2939 = !DILocation(line: 149, column: 21, scope: !1929, inlinedAt: !2934)
!2940 = !DILocation(line: 149, column: 24, scope: !1929, inlinedAt: !2934)
!2941 = !DILocation(line: 150, column: 19, scope: !1929, inlinedAt: !2934)
!2942 = !DILocation(line: 150, column: 24, scope: !1929, inlinedAt: !2934)
!2943 = !DILocation(line: 150, column: 6, scope: !1929, inlinedAt: !2934)
!2944 = !DILocation(line: 975, column: 10, scope: !2919)
!2945 = !DILocation(line: 976, column: 1, scope: !2919)
!2946 = !DILocation(line: 975, column: 3, scope: !2919)
!2947 = distinct !DISubprogram(name: "quotearg_char", scope: !519, file: !519, line: 979, type: !2948, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!122, !127, !4}
!2950 = !{!2951, !2952}
!2951 = !DILocalVariable(name: "arg", arg: 1, scope: !2947, file: !519, line: 979, type: !127)
!2952 = !DILocalVariable(name: "ch", arg: 2, scope: !2947, file: !519, line: 979, type: !4)
!2953 = distinct !DIAssignID()
!2954 = !DILocation(line: 0, scope: !2947)
!2955 = !DILocation(line: 0, scope: !2919, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 981, column: 10, scope: !2947)
!2957 = !DILocation(line: 972, column: 3, scope: !2919, inlinedAt: !2956)
!2958 = !DILocation(line: 973, column: 13, scope: !2919, inlinedAt: !2956)
!2959 = distinct !DIAssignID()
!2960 = !DILocation(line: 0, scope: !1929, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 974, column: 3, scope: !2919, inlinedAt: !2956)
!2962 = !DILocation(line: 147, column: 41, scope: !1929, inlinedAt: !2961)
!2963 = !DILocation(line: 147, column: 62, scope: !1929, inlinedAt: !2961)
!2964 = !DILocation(line: 147, column: 57, scope: !1929, inlinedAt: !2961)
!2965 = !DILocation(line: 148, column: 15, scope: !1929, inlinedAt: !2961)
!2966 = !DILocation(line: 149, column: 21, scope: !1929, inlinedAt: !2961)
!2967 = !DILocation(line: 149, column: 24, scope: !1929, inlinedAt: !2961)
!2968 = !DILocation(line: 150, column: 19, scope: !1929, inlinedAt: !2961)
!2969 = !DILocation(line: 150, column: 24, scope: !1929, inlinedAt: !2961)
!2970 = !DILocation(line: 150, column: 6, scope: !1929, inlinedAt: !2961)
!2971 = !DILocation(line: 975, column: 10, scope: !2919, inlinedAt: !2956)
!2972 = !DILocation(line: 976, column: 1, scope: !2919, inlinedAt: !2956)
!2973 = !DILocation(line: 981, column: 3, scope: !2947)
!2974 = distinct !DISubprogram(name: "quotearg_colon", scope: !519, file: !519, line: 985, type: !1008, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2975)
!2975 = !{!2976}
!2976 = !DILocalVariable(name: "arg", arg: 1, scope: !2974, file: !519, line: 985, type: !127)
!2977 = distinct !DIAssignID()
!2978 = !DILocation(line: 0, scope: !2974)
!2979 = !DILocation(line: 0, scope: !2947, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 987, column: 10, scope: !2974)
!2981 = !DILocation(line: 0, scope: !2919, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 981, column: 10, scope: !2947, inlinedAt: !2980)
!2983 = !DILocation(line: 972, column: 3, scope: !2919, inlinedAt: !2982)
!2984 = !DILocation(line: 973, column: 13, scope: !2919, inlinedAt: !2982)
!2985 = distinct !DIAssignID()
!2986 = !DILocation(line: 0, scope: !1929, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 974, column: 3, scope: !2919, inlinedAt: !2982)
!2988 = !DILocation(line: 147, column: 57, scope: !1929, inlinedAt: !2987)
!2989 = !DILocation(line: 149, column: 21, scope: !1929, inlinedAt: !2987)
!2990 = !DILocation(line: 150, column: 6, scope: !1929, inlinedAt: !2987)
!2991 = !DILocation(line: 975, column: 10, scope: !2919, inlinedAt: !2982)
!2992 = !DILocation(line: 976, column: 1, scope: !2919, inlinedAt: !2982)
!2993 = !DILocation(line: 987, column: 3, scope: !2974)
!2994 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !519, file: !519, line: 991, type: !2792, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !2995)
!2995 = !{!2996, !2997}
!2996 = !DILocalVariable(name: "arg", arg: 1, scope: !2994, file: !519, line: 991, type: !127)
!2997 = !DILocalVariable(name: "argsize", arg: 2, scope: !2994, file: !519, line: 991, type: !124)
!2998 = distinct !DIAssignID()
!2999 = !DILocation(line: 0, scope: !2994)
!3000 = !DILocation(line: 0, scope: !2919, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 993, column: 10, scope: !2994)
!3002 = !DILocation(line: 972, column: 3, scope: !2919, inlinedAt: !3001)
!3003 = !DILocation(line: 973, column: 13, scope: !2919, inlinedAt: !3001)
!3004 = distinct !DIAssignID()
!3005 = !DILocation(line: 0, scope: !1929, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 974, column: 3, scope: !2919, inlinedAt: !3001)
!3007 = !DILocation(line: 147, column: 57, scope: !1929, inlinedAt: !3006)
!3008 = !DILocation(line: 149, column: 21, scope: !1929, inlinedAt: !3006)
!3009 = !DILocation(line: 150, column: 6, scope: !1929, inlinedAt: !3006)
!3010 = !DILocation(line: 975, column: 10, scope: !2919, inlinedAt: !3001)
!3011 = !DILocation(line: 976, column: 1, scope: !2919, inlinedAt: !3001)
!3012 = !DILocation(line: 993, column: 3, scope: !2994)
!3013 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !519, file: !519, line: 997, type: !2803, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !3014)
!3014 = !{!3015, !3016, !3017, !3018}
!3015 = !DILocalVariable(name: "n", arg: 1, scope: !3013, file: !519, line: 997, type: !83)
!3016 = !DILocalVariable(name: "s", arg: 2, scope: !3013, file: !519, line: 997, type: !542)
!3017 = !DILocalVariable(name: "arg", arg: 3, scope: !3013, file: !519, line: 997, type: !127)
!3018 = !DILocalVariable(name: "options", scope: !3013, file: !519, line: 999, type: !557)
!3019 = distinct !DIAssignID()
!3020 = !DILocation(line: 0, scope: !3013)
!3021 = !DILocation(line: 185, column: 26, scope: !2818, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 1000, column: 13, scope: !3013)
!3023 = !DILocation(line: 999, column: 3, scope: !3013)
!3024 = !DILocation(line: 0, scope: !2818, inlinedAt: !3022)
!3025 = !DILocation(line: 186, column: 13, scope: !2828, inlinedAt: !3022)
!3026 = !DILocation(line: 186, column: 7, scope: !2818, inlinedAt: !3022)
!3027 = !DILocation(line: 187, column: 5, scope: !2828, inlinedAt: !3022)
!3028 = !{!3029}
!3029 = distinct !{!3029, !3030, !"quoting_options_from_style: argument 0"}
!3030 = distinct !{!3030, !"quoting_options_from_style"}
!3031 = !DILocation(line: 1000, column: 13, scope: !3013)
!3032 = distinct !DIAssignID()
!3033 = distinct !DIAssignID()
!3034 = !DILocation(line: 0, scope: !1929, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 1001, column: 3, scope: !3013)
!3036 = !DILocation(line: 147, column: 57, scope: !1929, inlinedAt: !3035)
!3037 = !DILocation(line: 149, column: 21, scope: !1929, inlinedAt: !3035)
!3038 = !DILocation(line: 150, column: 6, scope: !1929, inlinedAt: !3035)
!3039 = distinct !DIAssignID()
!3040 = !DILocation(line: 1002, column: 10, scope: !3013)
!3041 = !DILocation(line: 1003, column: 1, scope: !3013)
!3042 = !DILocation(line: 1002, column: 3, scope: !3013)
!3043 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !519, file: !519, line: 1006, type: !3044, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !3046)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!122, !83, !127, !127, !127}
!3046 = !{!3047, !3048, !3049, !3050}
!3047 = !DILocalVariable(name: "n", arg: 1, scope: !3043, file: !519, line: 1006, type: !83)
!3048 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3043, file: !519, line: 1006, type: !127)
!3049 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3043, file: !519, line: 1007, type: !127)
!3050 = !DILocalVariable(name: "arg", arg: 4, scope: !3043, file: !519, line: 1007, type: !127)
!3051 = distinct !DIAssignID()
!3052 = !DILocation(line: 0, scope: !3043)
!3053 = !DILocalVariable(name: "o", scope: !3054, file: !519, line: 1018, type: !557)
!3054 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !519, file: !519, line: 1014, type: !3055, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !3057)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!122, !83, !127, !127, !127, !124}
!3057 = !{!3058, !3059, !3060, !3061, !3062, !3053}
!3058 = !DILocalVariable(name: "n", arg: 1, scope: !3054, file: !519, line: 1014, type: !83)
!3059 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3054, file: !519, line: 1014, type: !127)
!3060 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3054, file: !519, line: 1015, type: !127)
!3061 = !DILocalVariable(name: "arg", arg: 4, scope: !3054, file: !519, line: 1016, type: !127)
!3062 = !DILocalVariable(name: "argsize", arg: 5, scope: !3054, file: !519, line: 1016, type: !124)
!3063 = !DILocation(line: 0, scope: !3054, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 1009, column: 10, scope: !3043)
!3065 = !DILocation(line: 1018, column: 3, scope: !3054, inlinedAt: !3064)
!3066 = !DILocation(line: 1018, column: 30, scope: !3054, inlinedAt: !3064)
!3067 = distinct !DIAssignID()
!3068 = distinct !DIAssignID()
!3069 = !DILocation(line: 0, scope: !1969, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 1019, column: 3, scope: !3054, inlinedAt: !3064)
!3071 = !DILocation(line: 174, column: 12, scope: !1969, inlinedAt: !3070)
!3072 = distinct !DIAssignID()
!3073 = !DILocation(line: 175, column: 8, scope: !1982, inlinedAt: !3070)
!3074 = !DILocation(line: 175, column: 19, scope: !1982, inlinedAt: !3070)
!3075 = !DILocation(line: 176, column: 5, scope: !1982, inlinedAt: !3070)
!3076 = !DILocation(line: 177, column: 6, scope: !1969, inlinedAt: !3070)
!3077 = !DILocation(line: 177, column: 17, scope: !1969, inlinedAt: !3070)
!3078 = distinct !DIAssignID()
!3079 = !DILocation(line: 178, column: 6, scope: !1969, inlinedAt: !3070)
!3080 = !DILocation(line: 178, column: 18, scope: !1969, inlinedAt: !3070)
!3081 = distinct !DIAssignID()
!3082 = !DILocation(line: 1020, column: 10, scope: !3054, inlinedAt: !3064)
!3083 = !DILocation(line: 1021, column: 1, scope: !3054, inlinedAt: !3064)
!3084 = !DILocation(line: 1009, column: 3, scope: !3043)
!3085 = distinct !DIAssignID()
!3086 = !DILocation(line: 0, scope: !3054)
!3087 = !DILocation(line: 1018, column: 3, scope: !3054)
!3088 = !DILocation(line: 1018, column: 30, scope: !3054)
!3089 = distinct !DIAssignID()
!3090 = distinct !DIAssignID()
!3091 = !DILocation(line: 0, scope: !1969, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 1019, column: 3, scope: !3054)
!3093 = !DILocation(line: 174, column: 12, scope: !1969, inlinedAt: !3092)
!3094 = distinct !DIAssignID()
!3095 = !DILocation(line: 175, column: 8, scope: !1982, inlinedAt: !3092)
!3096 = !DILocation(line: 175, column: 19, scope: !1982, inlinedAt: !3092)
!3097 = !DILocation(line: 176, column: 5, scope: !1982, inlinedAt: !3092)
!3098 = !DILocation(line: 177, column: 6, scope: !1969, inlinedAt: !3092)
!3099 = !DILocation(line: 177, column: 17, scope: !1969, inlinedAt: !3092)
!3100 = distinct !DIAssignID()
!3101 = !DILocation(line: 178, column: 6, scope: !1969, inlinedAt: !3092)
!3102 = !DILocation(line: 178, column: 18, scope: !1969, inlinedAt: !3092)
!3103 = distinct !DIAssignID()
!3104 = !DILocation(line: 1020, column: 10, scope: !3054)
!3105 = !DILocation(line: 1021, column: 1, scope: !3054)
!3106 = !DILocation(line: 1020, column: 3, scope: !3054)
!3107 = distinct !DISubprogram(name: "quotearg_custom", scope: !519, file: !519, line: 1024, type: !3108, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!122, !127, !127, !127}
!3110 = !{!3111, !3112, !3113}
!3111 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3107, file: !519, line: 1024, type: !127)
!3112 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3107, file: !519, line: 1024, type: !127)
!3113 = !DILocalVariable(name: "arg", arg: 3, scope: !3107, file: !519, line: 1025, type: !127)
!3114 = distinct !DIAssignID()
!3115 = !DILocation(line: 0, scope: !3107)
!3116 = !DILocation(line: 0, scope: !3043, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 1027, column: 10, scope: !3107)
!3118 = !DILocation(line: 0, scope: !3054, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 1009, column: 10, scope: !3043, inlinedAt: !3117)
!3120 = !DILocation(line: 1018, column: 3, scope: !3054, inlinedAt: !3119)
!3121 = !DILocation(line: 1018, column: 30, scope: !3054, inlinedAt: !3119)
!3122 = distinct !DIAssignID()
!3123 = distinct !DIAssignID()
!3124 = !DILocation(line: 0, scope: !1969, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 1019, column: 3, scope: !3054, inlinedAt: !3119)
!3126 = !DILocation(line: 174, column: 12, scope: !1969, inlinedAt: !3125)
!3127 = distinct !DIAssignID()
!3128 = !DILocation(line: 175, column: 8, scope: !1982, inlinedAt: !3125)
!3129 = !DILocation(line: 175, column: 19, scope: !1982, inlinedAt: !3125)
!3130 = !DILocation(line: 176, column: 5, scope: !1982, inlinedAt: !3125)
!3131 = !DILocation(line: 177, column: 6, scope: !1969, inlinedAt: !3125)
!3132 = !DILocation(line: 177, column: 17, scope: !1969, inlinedAt: !3125)
!3133 = distinct !DIAssignID()
!3134 = !DILocation(line: 178, column: 6, scope: !1969, inlinedAt: !3125)
!3135 = !DILocation(line: 178, column: 18, scope: !1969, inlinedAt: !3125)
!3136 = distinct !DIAssignID()
!3137 = !DILocation(line: 1020, column: 10, scope: !3054, inlinedAt: !3119)
!3138 = !DILocation(line: 1021, column: 1, scope: !3054, inlinedAt: !3119)
!3139 = !DILocation(line: 1027, column: 3, scope: !3107)
!3140 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !519, file: !519, line: 1031, type: !3141, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!122, !127, !127, !127, !124}
!3143 = !{!3144, !3145, !3146, !3147}
!3144 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3140, file: !519, line: 1031, type: !127)
!3145 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3140, file: !519, line: 1031, type: !127)
!3146 = !DILocalVariable(name: "arg", arg: 3, scope: !3140, file: !519, line: 1032, type: !127)
!3147 = !DILocalVariable(name: "argsize", arg: 4, scope: !3140, file: !519, line: 1032, type: !124)
!3148 = distinct !DIAssignID()
!3149 = !DILocation(line: 0, scope: !3140)
!3150 = !DILocation(line: 0, scope: !3054, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 1034, column: 10, scope: !3140)
!3152 = !DILocation(line: 1018, column: 3, scope: !3054, inlinedAt: !3151)
!3153 = !DILocation(line: 1018, column: 30, scope: !3054, inlinedAt: !3151)
!3154 = distinct !DIAssignID()
!3155 = distinct !DIAssignID()
!3156 = !DILocation(line: 0, scope: !1969, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 1019, column: 3, scope: !3054, inlinedAt: !3151)
!3158 = !DILocation(line: 174, column: 12, scope: !1969, inlinedAt: !3157)
!3159 = distinct !DIAssignID()
!3160 = !DILocation(line: 175, column: 8, scope: !1982, inlinedAt: !3157)
!3161 = !DILocation(line: 175, column: 19, scope: !1982, inlinedAt: !3157)
!3162 = !DILocation(line: 176, column: 5, scope: !1982, inlinedAt: !3157)
!3163 = !DILocation(line: 177, column: 6, scope: !1969, inlinedAt: !3157)
!3164 = !DILocation(line: 177, column: 17, scope: !1969, inlinedAt: !3157)
!3165 = distinct !DIAssignID()
!3166 = !DILocation(line: 178, column: 6, scope: !1969, inlinedAt: !3157)
!3167 = !DILocation(line: 178, column: 18, scope: !1969, inlinedAt: !3157)
!3168 = distinct !DIAssignID()
!3169 = !DILocation(line: 1020, column: 10, scope: !3054, inlinedAt: !3151)
!3170 = !DILocation(line: 1021, column: 1, scope: !3054, inlinedAt: !3151)
!3171 = !DILocation(line: 1034, column: 3, scope: !3140)
!3172 = distinct !DISubprogram(name: "quote_n_mem", scope: !519, file: !519, line: 1049, type: !3173, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !3175)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!127, !83, !127, !124}
!3175 = !{!3176, !3177, !3178}
!3176 = !DILocalVariable(name: "n", arg: 1, scope: !3172, file: !519, line: 1049, type: !83)
!3177 = !DILocalVariable(name: "arg", arg: 2, scope: !3172, file: !519, line: 1049, type: !127)
!3178 = !DILocalVariable(name: "argsize", arg: 3, scope: !3172, file: !519, line: 1049, type: !124)
!3179 = !DILocation(line: 0, scope: !3172)
!3180 = !DILocation(line: 1051, column: 10, scope: !3172)
!3181 = !DILocation(line: 1051, column: 3, scope: !3172)
!3182 = distinct !DISubprogram(name: "quote_mem", scope: !519, file: !519, line: 1055, type: !3183, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !3185)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!127, !127, !124}
!3185 = !{!3186, !3187}
!3186 = !DILocalVariable(name: "arg", arg: 1, scope: !3182, file: !519, line: 1055, type: !127)
!3187 = !DILocalVariable(name: "argsize", arg: 2, scope: !3182, file: !519, line: 1055, type: !124)
!3188 = !DILocation(line: 0, scope: !3182)
!3189 = !DILocation(line: 0, scope: !3172, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 1057, column: 10, scope: !3182)
!3191 = !DILocation(line: 1051, column: 10, scope: !3172, inlinedAt: !3190)
!3192 = !DILocation(line: 1057, column: 3, scope: !3182)
!3193 = distinct !DISubprogram(name: "quote_n", scope: !519, file: !519, line: 1061, type: !3194, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !3196)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!127, !83, !127}
!3196 = !{!3197, !3198}
!3197 = !DILocalVariable(name: "n", arg: 1, scope: !3193, file: !519, line: 1061, type: !83)
!3198 = !DILocalVariable(name: "arg", arg: 2, scope: !3193, file: !519, line: 1061, type: !127)
!3199 = !DILocation(line: 0, scope: !3193)
!3200 = !DILocation(line: 0, scope: !3172, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 1063, column: 10, scope: !3193)
!3202 = !DILocation(line: 1051, column: 10, scope: !3172, inlinedAt: !3201)
!3203 = !DILocation(line: 1063, column: 3, scope: !3193)
!3204 = distinct !DISubprogram(name: "quote", scope: !519, file: !519, line: 1067, type: !3205, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !540, retainedNodes: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!127, !127}
!3207 = !{!3208}
!3208 = !DILocalVariable(name: "arg", arg: 1, scope: !3204, file: !519, line: 1067, type: !127)
!3209 = !DILocation(line: 0, scope: !3204)
!3210 = !DILocation(line: 0, scope: !3193, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 1069, column: 10, scope: !3204)
!3212 = !DILocation(line: 0, scope: !3172, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 1063, column: 10, scope: !3193, inlinedAt: !3211)
!3214 = !DILocation(line: 1051, column: 10, scope: !3172, inlinedAt: !3213)
!3215 = !DILocation(line: 1069, column: 3, scope: !3204)
!3216 = distinct !DISubprogram(name: "get_root_dev_ino", scope: !620, file: !620, line: 29, type: !3217, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3225)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!3219, !3219}
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !3221, line: 30, size: 128, elements: !3222)
!3221 = !DIFile(filename: "lib/dev-ino.h", directory: "/src", checksumkind: CSK_MD5, checksum: "7eae2ded9ac0c200760eafd719dd996d")
!3222 = !{!3223, !3224}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3220, file: !3221, line: 32, baseType: !1225, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3220, file: !3221, line: 33, baseType: !1228, size: 64, offset: 64)
!3225 = !{!3226, !3227}
!3226 = !DILocalVariable(name: "root_d_i", arg: 1, scope: !3216, file: !620, line: 29, type: !3219)
!3227 = !DILocalVariable(name: "statbuf", scope: !3216, file: !620, line: 31, type: !3228)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1096, line: 44, size: 1024, elements: !3229)
!3229 = !{!3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3247, !3248, !3249}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3228, file: !1096, line: 46, baseType: !1099, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3228, file: !1096, line: 47, baseType: !1101, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3228, file: !1096, line: 48, baseType: !1103, size: 32, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3228, file: !1096, line: 49, baseType: !1105, size: 32, offset: 160)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3228, file: !1096, line: 50, baseType: !1107, size: 32, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3228, file: !1096, line: 51, baseType: !1109, size: 32, offset: 224)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3228, file: !1096, line: 52, baseType: !1099, size: 64, offset: 256)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3228, file: !1096, line: 53, baseType: !1099, size: 64, offset: 320)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3228, file: !1096, line: 54, baseType: !197, size: 64, offset: 384)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3228, file: !1096, line: 55, baseType: !1114, size: 32, offset: 448)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3228, file: !1096, line: 56, baseType: !83, size: 32, offset: 480)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3228, file: !1096, line: 57, baseType: !1117, size: 64, offset: 512)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3228, file: !1096, line: 65, baseType: !3243, size: 128, offset: 576)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1120, line: 11, size: 128, elements: !3244)
!3244 = !{!3245, !3246}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3243, file: !1120, line: 16, baseType: !1123, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3243, file: !1120, line: 21, baseType: !1125, size: 64, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3228, file: !1096, line: 66, baseType: !3243, size: 128, offset: 704)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3228, file: !1096, line: 67, baseType: !3243, size: 128, offset: 832)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3228, file: !1096, line: 79, baseType: !1129, size: 64, offset: 960)
!3250 = distinct !DIAssignID()
!3251 = !DILocation(line: 0, scope: !3216)
!3252 = !DILocation(line: 31, column: 3, scope: !3216)
!3253 = !DILocation(line: 32, column: 7, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3216, file: !620, line: 32, column: 7)
!3255 = !DILocation(line: 32, column: 7, scope: !3216)
!3256 = !DILocation(line: 35, column: 30, scope: !3216)
!3257 = !DILocation(line: 34, column: 20, scope: !3216)
!3258 = !DILocation(line: 36, column: 3, scope: !3216)
!3259 = !DILocation(line: 37, column: 1, scope: !3216)
!3260 = distinct !DISubprogram(name: "version_etc_arn", scope: !623, file: !623, line: 61, type: !3261, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3298)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{null, !3263, !127, !127, !127, !3297, !124}
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !3265)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !3266)
!3266 = !{!3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3265, file: !175, line: 51, baseType: !83, size: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3265, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3265, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3265, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3265, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3265, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3265, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3265, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3265, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3265, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3265, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3265, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3265, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3265, file: !175, line: 70, baseType: !3281, size: 64, offset: 832)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3265, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3265, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3265, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3265, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3265, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3265, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3265, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3265, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3265, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3265, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3265, file: !175, line: 93, baseType: !3281, size: 64, offset: 1344)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3265, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3265, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3265, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3265, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304}
!3299 = !DILocalVariable(name: "stream", arg: 1, scope: !3260, file: !623, line: 61, type: !3263)
!3300 = !DILocalVariable(name: "command_name", arg: 2, scope: !3260, file: !623, line: 62, type: !127)
!3301 = !DILocalVariable(name: "package", arg: 3, scope: !3260, file: !623, line: 62, type: !127)
!3302 = !DILocalVariable(name: "version", arg: 4, scope: !3260, file: !623, line: 63, type: !127)
!3303 = !DILocalVariable(name: "authors", arg: 5, scope: !3260, file: !623, line: 64, type: !3297)
!3304 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3260, file: !623, line: 64, type: !124)
!3305 = !DILocation(line: 0, scope: !3260)
!3306 = !DILocation(line: 66, column: 7, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3260, file: !623, line: 66, column: 7)
!3308 = !DILocation(line: 66, column: 7, scope: !3260)
!3309 = !DILocation(line: 67, column: 5, scope: !3307)
!3310 = !DILocation(line: 69, column: 5, scope: !3307)
!3311 = !DILocation(line: 83, column: 3, scope: !3260)
!3312 = !DILocation(line: 85, column: 3, scope: !3260)
!3313 = !DILocation(line: 88, column: 3, scope: !3260)
!3314 = !DILocation(line: 95, column: 3, scope: !3260)
!3315 = !DILocation(line: 97, column: 3, scope: !3260)
!3316 = !DILocation(line: 105, column: 7, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3260, file: !623, line: 98, column: 5)
!3318 = !DILocation(line: 106, column: 7, scope: !3317)
!3319 = !DILocation(line: 109, column: 7, scope: !3317)
!3320 = !DILocation(line: 110, column: 7, scope: !3317)
!3321 = !DILocation(line: 113, column: 7, scope: !3317)
!3322 = !DILocation(line: 115, column: 7, scope: !3317)
!3323 = !DILocation(line: 120, column: 7, scope: !3317)
!3324 = !DILocation(line: 122, column: 7, scope: !3317)
!3325 = !DILocation(line: 127, column: 7, scope: !3317)
!3326 = !DILocation(line: 129, column: 7, scope: !3317)
!3327 = !DILocation(line: 134, column: 7, scope: !3317)
!3328 = !DILocation(line: 137, column: 7, scope: !3317)
!3329 = !DILocation(line: 142, column: 7, scope: !3317)
!3330 = !DILocation(line: 145, column: 7, scope: !3317)
!3331 = !DILocation(line: 150, column: 7, scope: !3317)
!3332 = !DILocation(line: 154, column: 7, scope: !3317)
!3333 = !DILocation(line: 159, column: 7, scope: !3317)
!3334 = !DILocation(line: 163, column: 7, scope: !3317)
!3335 = !DILocation(line: 170, column: 7, scope: !3317)
!3336 = !DILocation(line: 174, column: 7, scope: !3317)
!3337 = !DILocation(line: 176, column: 1, scope: !3260)
!3338 = distinct !DISubprogram(name: "version_etc_ar", scope: !623, file: !623, line: 183, type: !3339, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3341)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{null, !3263, !127, !127, !127, !3297}
!3341 = !{!3342, !3343, !3344, !3345, !3346, !3347}
!3342 = !DILocalVariable(name: "stream", arg: 1, scope: !3338, file: !623, line: 183, type: !3263)
!3343 = !DILocalVariable(name: "command_name", arg: 2, scope: !3338, file: !623, line: 184, type: !127)
!3344 = !DILocalVariable(name: "package", arg: 3, scope: !3338, file: !623, line: 184, type: !127)
!3345 = !DILocalVariable(name: "version", arg: 4, scope: !3338, file: !623, line: 185, type: !127)
!3346 = !DILocalVariable(name: "authors", arg: 5, scope: !3338, file: !623, line: 185, type: !3297)
!3347 = !DILocalVariable(name: "n_authors", scope: !3338, file: !623, line: 187, type: !124)
!3348 = !DILocation(line: 0, scope: !3338)
!3349 = !DILocation(line: 189, column: 8, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3338, file: !623, line: 189, column: 3)
!3351 = !DILocation(line: 189, scope: !3350)
!3352 = !DILocation(line: 189, column: 23, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3350, file: !623, line: 189, column: 3)
!3354 = !DILocation(line: 189, column: 3, scope: !3350)
!3355 = !DILocation(line: 189, column: 52, scope: !3353)
!3356 = distinct !{!3356, !3354, !3357, !932}
!3357 = !DILocation(line: 190, column: 5, scope: !3350)
!3358 = !DILocation(line: 191, column: 3, scope: !3338)
!3359 = !DILocation(line: 192, column: 1, scope: !3338)
!3360 = distinct !DISubprogram(name: "version_etc_va", scope: !623, file: !623, line: 199, type: !3361, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3373)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !3263, !127, !127, !127, !3363}
!3363 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !437, line: 52, baseType: !3364)
!3364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !439, line: 12, baseType: !3365)
!3365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !623, baseType: !3366)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3367)
!3367 = !{!3368, !3369, !3370, !3371, !3372}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3366, file: !623, line: 192, baseType: !121, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3366, file: !623, line: 192, baseType: !121, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3366, file: !623, line: 192, baseType: !121, size: 64, offset: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3366, file: !623, line: 192, baseType: !83, size: 32, offset: 192)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3366, file: !623, line: 192, baseType: !83, size: 32, offset: 224)
!3373 = !{!3374, !3375, !3376, !3377, !3378, !3379, !3380}
!3374 = !DILocalVariable(name: "stream", arg: 1, scope: !3360, file: !623, line: 199, type: !3263)
!3375 = !DILocalVariable(name: "command_name", arg: 2, scope: !3360, file: !623, line: 200, type: !127)
!3376 = !DILocalVariable(name: "package", arg: 3, scope: !3360, file: !623, line: 200, type: !127)
!3377 = !DILocalVariable(name: "version", arg: 4, scope: !3360, file: !623, line: 201, type: !127)
!3378 = !DILocalVariable(name: "authors", arg: 5, scope: !3360, file: !623, line: 201, type: !3363)
!3379 = !DILocalVariable(name: "n_authors", scope: !3360, file: !623, line: 203, type: !124)
!3380 = !DILocalVariable(name: "authtab", scope: !3360, file: !623, line: 204, type: !3381)
!3381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 640, elements: !65)
!3382 = distinct !DIAssignID()
!3383 = !DILocation(line: 0, scope: !3360)
!3384 = !DILocation(line: 204, column: 3, scope: !3360)
!3385 = !DILocation(line: 208, column: 35, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !623, line: 206, column: 3)
!3387 = distinct !DILexicalBlock(scope: !3360, file: !623, line: 206, column: 3)
!3388 = !DILocation(line: 208, column: 33, scope: !3386)
!3389 = !DILocation(line: 208, column: 67, scope: !3386)
!3390 = !DILocation(line: 206, column: 3, scope: !3387)
!3391 = !DILocation(line: 208, column: 14, scope: !3386)
!3392 = !DILocation(line: 0, scope: !3387)
!3393 = !DILocation(line: 211, column: 3, scope: !3360)
!3394 = !DILocation(line: 213, column: 1, scope: !3360)
!3395 = distinct !DISubprogram(name: "version_etc", scope: !623, file: !623, line: 230, type: !3396, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !3263, !127, !127, !127, null}
!3398 = !{!3399, !3400, !3401, !3402, !3403}
!3399 = !DILocalVariable(name: "stream", arg: 1, scope: !3395, file: !623, line: 230, type: !3263)
!3400 = !DILocalVariable(name: "command_name", arg: 2, scope: !3395, file: !623, line: 231, type: !127)
!3401 = !DILocalVariable(name: "package", arg: 3, scope: !3395, file: !623, line: 231, type: !127)
!3402 = !DILocalVariable(name: "version", arg: 4, scope: !3395, file: !623, line: 232, type: !127)
!3403 = !DILocalVariable(name: "authors", scope: !3395, file: !623, line: 234, type: !3363)
!3404 = distinct !DIAssignID()
!3405 = !DILocation(line: 0, scope: !3395)
!3406 = !DILocation(line: 234, column: 3, scope: !3395)
!3407 = !DILocation(line: 235, column: 3, scope: !3395)
!3408 = !DILocation(line: 236, column: 3, scope: !3395)
!3409 = !DILocation(line: 237, column: 3, scope: !3395)
!3410 = !DILocation(line: 238, column: 1, scope: !3395)
!3411 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !623, file: !623, line: 241, type: !474, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739)
!3412 = !DILocation(line: 243, column: 3, scope: !3411)
!3413 = !DILocation(line: 248, column: 3, scope: !3411)
!3414 = !DILocation(line: 254, column: 3, scope: !3411)
!3415 = !DILocation(line: 259, column: 3, scope: !3411)
!3416 = !DILocation(line: 261, column: 1, scope: !3411)
!3417 = distinct !DISubprogram(name: "xnrealloc", scope: !3418, file: !3418, line: 147, type: !3419, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3421)
!3418 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!121, !121, !124, !124}
!3421 = !{!3422, !3423, !3424}
!3422 = !DILocalVariable(name: "p", arg: 1, scope: !3417, file: !3418, line: 147, type: !121)
!3423 = !DILocalVariable(name: "n", arg: 2, scope: !3417, file: !3418, line: 147, type: !124)
!3424 = !DILocalVariable(name: "s", arg: 3, scope: !3417, file: !3418, line: 147, type: !124)
!3425 = !DILocation(line: 0, scope: !3417)
!3426 = !DILocalVariable(name: "p", arg: 1, scope: !3427, file: !747, line: 83, type: !121)
!3427 = distinct !DISubprogram(name: "xreallocarray", scope: !747, file: !747, line: 83, type: !3419, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3428)
!3428 = !{!3426, !3429, !3430}
!3429 = !DILocalVariable(name: "n", arg: 2, scope: !3427, file: !747, line: 83, type: !124)
!3430 = !DILocalVariable(name: "s", arg: 3, scope: !3427, file: !747, line: 83, type: !124)
!3431 = !DILocation(line: 0, scope: !3427, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 149, column: 10, scope: !3417)
!3433 = !DILocation(line: 85, column: 25, scope: !3427, inlinedAt: !3432)
!3434 = !DILocalVariable(name: "p", arg: 1, scope: !3435, file: !747, line: 37, type: !121)
!3435 = distinct !DISubprogram(name: "check_nonnull", scope: !747, file: !747, line: 37, type: !3436, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!121, !121}
!3438 = !{!3434}
!3439 = !DILocation(line: 0, scope: !3435, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 85, column: 10, scope: !3427, inlinedAt: !3432)
!3441 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3440)
!3442 = distinct !DILexicalBlock(scope: !3435, file: !747, line: 39, column: 7)
!3443 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3440)
!3444 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3440)
!3445 = !DILocation(line: 149, column: 3, scope: !3417)
!3446 = !DILocation(line: 0, scope: !3427)
!3447 = !DILocation(line: 85, column: 25, scope: !3427)
!3448 = !DILocation(line: 0, scope: !3435, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 85, column: 10, scope: !3427)
!3450 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3449)
!3451 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3449)
!3452 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3449)
!3453 = !DILocation(line: 85, column: 3, scope: !3427)
!3454 = distinct !DISubprogram(name: "xmalloc", scope: !747, file: !747, line: 47, type: !3455, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3457)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!121, !124}
!3457 = !{!3458}
!3458 = !DILocalVariable(name: "s", arg: 1, scope: !3454, file: !747, line: 47, type: !124)
!3459 = !DILocation(line: 0, scope: !3454)
!3460 = !DILocation(line: 49, column: 25, scope: !3454)
!3461 = !DILocation(line: 0, scope: !3435, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 49, column: 10, scope: !3454)
!3463 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3462)
!3464 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3462)
!3465 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3462)
!3466 = !DILocation(line: 49, column: 3, scope: !3454)
!3467 = !DISubprogram(name: "malloc", scope: !1006, file: !1006, line: 540, type: !3455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3468 = distinct !DISubprogram(name: "ximalloc", scope: !747, file: !747, line: 53, type: !3469, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!121, !766}
!3471 = !{!3472}
!3472 = !DILocalVariable(name: "s", arg: 1, scope: !3468, file: !747, line: 53, type: !766)
!3473 = !DILocation(line: 0, scope: !3468)
!3474 = !DILocalVariable(name: "s", arg: 1, scope: !3475, file: !3476, line: 55, type: !766)
!3475 = distinct !DISubprogram(name: "imalloc", scope: !3476, file: !3476, line: 55, type: !3469, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3477)
!3476 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3477 = !{!3474}
!3478 = !DILocation(line: 0, scope: !3475, inlinedAt: !3479)
!3479 = distinct !DILocation(line: 55, column: 25, scope: !3468)
!3480 = !DILocation(line: 57, column: 26, scope: !3475, inlinedAt: !3479)
!3481 = !DILocation(line: 0, scope: !3435, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 55, column: 10, scope: !3468)
!3483 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3482)
!3484 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3482)
!3485 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3482)
!3486 = !DILocation(line: 55, column: 3, scope: !3468)
!3487 = distinct !DISubprogram(name: "xcharalloc", scope: !747, file: !747, line: 59, type: !1451, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3488)
!3488 = !{!3489}
!3489 = !DILocalVariable(name: "n", arg: 1, scope: !3487, file: !747, line: 59, type: !124)
!3490 = !DILocation(line: 0, scope: !3487)
!3491 = !DILocation(line: 0, scope: !3454, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 61, column: 10, scope: !3487)
!3493 = !DILocation(line: 49, column: 25, scope: !3454, inlinedAt: !3492)
!3494 = !DILocation(line: 0, scope: !3435, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 49, column: 10, scope: !3454, inlinedAt: !3492)
!3496 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3495)
!3497 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3495)
!3498 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3495)
!3499 = !DILocation(line: 61, column: 3, scope: !3487)
!3500 = distinct !DISubprogram(name: "xrealloc", scope: !747, file: !747, line: 68, type: !3501, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3503)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!121, !121, !124}
!3503 = !{!3504, !3505}
!3504 = !DILocalVariable(name: "p", arg: 1, scope: !3500, file: !747, line: 68, type: !121)
!3505 = !DILocalVariable(name: "s", arg: 2, scope: !3500, file: !747, line: 68, type: !124)
!3506 = !DILocation(line: 0, scope: !3500)
!3507 = !DILocalVariable(name: "ptr", arg: 1, scope: !3508, file: !3509, line: 2057, type: !121)
!3508 = distinct !DISubprogram(name: "rpl_realloc", scope: !3509, file: !3509, line: 2057, type: !3501, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3510)
!3509 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3510 = !{!3507, !3511}
!3511 = !DILocalVariable(name: "size", arg: 2, scope: !3508, file: !3509, line: 2057, type: !124)
!3512 = !DILocation(line: 0, scope: !3508, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 70, column: 25, scope: !3500)
!3514 = !DILocation(line: 2059, column: 24, scope: !3508, inlinedAt: !3513)
!3515 = !DILocation(line: 2059, column: 10, scope: !3508, inlinedAt: !3513)
!3516 = !DILocation(line: 0, scope: !3435, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 70, column: 10, scope: !3500)
!3518 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3517)
!3519 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3517)
!3520 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3517)
!3521 = !DILocation(line: 70, column: 3, scope: !3500)
!3522 = !DISubprogram(name: "realloc", scope: !1006, file: !1006, line: 551, type: !3501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3523 = distinct !DISubprogram(name: "xirealloc", scope: !747, file: !747, line: 74, type: !3524, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!121, !121, !766}
!3526 = !{!3527, !3528}
!3527 = !DILocalVariable(name: "p", arg: 1, scope: !3523, file: !747, line: 74, type: !121)
!3528 = !DILocalVariable(name: "s", arg: 2, scope: !3523, file: !747, line: 74, type: !766)
!3529 = !DILocation(line: 0, scope: !3523)
!3530 = !DILocalVariable(name: "p", arg: 1, scope: !3531, file: !3476, line: 66, type: !121)
!3531 = distinct !DISubprogram(name: "irealloc", scope: !3476, file: !3476, line: 66, type: !3524, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3532)
!3532 = !{!3530, !3533}
!3533 = !DILocalVariable(name: "s", arg: 2, scope: !3531, file: !3476, line: 66, type: !766)
!3534 = !DILocation(line: 0, scope: !3531, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 76, column: 25, scope: !3523)
!3536 = !DILocation(line: 0, scope: !3508, inlinedAt: !3537)
!3537 = distinct !DILocation(line: 68, column: 26, scope: !3531, inlinedAt: !3535)
!3538 = !DILocation(line: 2059, column: 24, scope: !3508, inlinedAt: !3537)
!3539 = !DILocation(line: 2059, column: 10, scope: !3508, inlinedAt: !3537)
!3540 = !DILocation(line: 0, scope: !3435, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 76, column: 10, scope: !3523)
!3542 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3541)
!3543 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3541)
!3544 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3541)
!3545 = !DILocation(line: 76, column: 3, scope: !3523)
!3546 = distinct !DISubprogram(name: "xireallocarray", scope: !747, file: !747, line: 89, type: !3547, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3549)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!121, !121, !766, !766}
!3549 = !{!3550, !3551, !3552}
!3550 = !DILocalVariable(name: "p", arg: 1, scope: !3546, file: !747, line: 89, type: !121)
!3551 = !DILocalVariable(name: "n", arg: 2, scope: !3546, file: !747, line: 89, type: !766)
!3552 = !DILocalVariable(name: "s", arg: 3, scope: !3546, file: !747, line: 89, type: !766)
!3553 = !DILocation(line: 0, scope: !3546)
!3554 = !DILocalVariable(name: "p", arg: 1, scope: !3555, file: !3476, line: 98, type: !121)
!3555 = distinct !DISubprogram(name: "ireallocarray", scope: !3476, file: !3476, line: 98, type: !3547, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3556)
!3556 = !{!3554, !3557, !3558}
!3557 = !DILocalVariable(name: "n", arg: 2, scope: !3555, file: !3476, line: 98, type: !766)
!3558 = !DILocalVariable(name: "s", arg: 3, scope: !3555, file: !3476, line: 98, type: !766)
!3559 = !DILocation(line: 0, scope: !3555, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 91, column: 25, scope: !3546)
!3561 = !DILocation(line: 101, column: 13, scope: !3555, inlinedAt: !3560)
!3562 = !DILocation(line: 0, scope: !3435, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 91, column: 10, scope: !3546)
!3564 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3563)
!3565 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3563)
!3566 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3563)
!3567 = !DILocation(line: 91, column: 3, scope: !3546)
!3568 = distinct !DISubprogram(name: "xnmalloc", scope: !747, file: !747, line: 98, type: !3569, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3571)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!121, !124, !124}
!3571 = !{!3572, !3573}
!3572 = !DILocalVariable(name: "n", arg: 1, scope: !3568, file: !747, line: 98, type: !124)
!3573 = !DILocalVariable(name: "s", arg: 2, scope: !3568, file: !747, line: 98, type: !124)
!3574 = !DILocation(line: 0, scope: !3568)
!3575 = !DILocation(line: 0, scope: !3427, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 100, column: 10, scope: !3568)
!3577 = !DILocation(line: 85, column: 25, scope: !3427, inlinedAt: !3576)
!3578 = !DILocation(line: 0, scope: !3435, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 85, column: 10, scope: !3427, inlinedAt: !3576)
!3580 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3579)
!3581 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3579)
!3582 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3579)
!3583 = !DILocation(line: 100, column: 3, scope: !3568)
!3584 = distinct !DISubprogram(name: "xinmalloc", scope: !747, file: !747, line: 104, type: !3585, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3587)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!121, !766, !766}
!3587 = !{!3588, !3589}
!3588 = !DILocalVariable(name: "n", arg: 1, scope: !3584, file: !747, line: 104, type: !766)
!3589 = !DILocalVariable(name: "s", arg: 2, scope: !3584, file: !747, line: 104, type: !766)
!3590 = !DILocation(line: 0, scope: !3584)
!3591 = !DILocation(line: 0, scope: !3546, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 106, column: 10, scope: !3584)
!3593 = !DILocation(line: 0, scope: !3555, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 91, column: 25, scope: !3546, inlinedAt: !3592)
!3595 = !DILocation(line: 101, column: 13, scope: !3555, inlinedAt: !3594)
!3596 = !DILocation(line: 0, scope: !3435, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 91, column: 10, scope: !3546, inlinedAt: !3592)
!3598 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3597)
!3599 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3597)
!3600 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3597)
!3601 = !DILocation(line: 106, column: 3, scope: !3584)
!3602 = distinct !DISubprogram(name: "x2realloc", scope: !747, file: !747, line: 116, type: !3603, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3605)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!121, !121, !753}
!3605 = !{!3606, !3607}
!3606 = !DILocalVariable(name: "p", arg: 1, scope: !3602, file: !747, line: 116, type: !121)
!3607 = !DILocalVariable(name: "ps", arg: 2, scope: !3602, file: !747, line: 116, type: !753)
!3608 = !DILocation(line: 0, scope: !3602)
!3609 = !DILocation(line: 0, scope: !750, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 118, column: 10, scope: !3602)
!3611 = !DILocation(line: 178, column: 14, scope: !750, inlinedAt: !3610)
!3612 = !DILocation(line: 180, column: 9, scope: !3613, inlinedAt: !3610)
!3613 = distinct !DILexicalBlock(scope: !750, file: !747, line: 180, column: 7)
!3614 = !DILocation(line: 180, column: 7, scope: !750, inlinedAt: !3610)
!3615 = !DILocation(line: 182, column: 13, scope: !3616, inlinedAt: !3610)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !747, line: 182, column: 11)
!3617 = distinct !DILexicalBlock(scope: !3613, file: !747, line: 181, column: 5)
!3618 = !DILocation(line: 182, column: 11, scope: !3617, inlinedAt: !3610)
!3619 = !DILocation(line: 197, column: 11, scope: !3620, inlinedAt: !3610)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !747, line: 197, column: 11)
!3621 = distinct !DILexicalBlock(scope: !3613, file: !747, line: 195, column: 5)
!3622 = !DILocation(line: 197, column: 11, scope: !3621, inlinedAt: !3610)
!3623 = !DILocation(line: 198, column: 9, scope: !3620, inlinedAt: !3610)
!3624 = !DILocation(line: 0, scope: !3427, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 201, column: 7, scope: !750, inlinedAt: !3610)
!3626 = !DILocation(line: 85, column: 25, scope: !3427, inlinedAt: !3625)
!3627 = !DILocation(line: 0, scope: !3435, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 85, column: 10, scope: !3427, inlinedAt: !3625)
!3629 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3628)
!3630 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3628)
!3631 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3628)
!3632 = !DILocation(line: 202, column: 7, scope: !750, inlinedAt: !3610)
!3633 = !DILocation(line: 118, column: 3, scope: !3602)
!3634 = !DILocation(line: 0, scope: !750)
!3635 = !DILocation(line: 178, column: 14, scope: !750)
!3636 = !DILocation(line: 180, column: 9, scope: !3613)
!3637 = !DILocation(line: 180, column: 7, scope: !750)
!3638 = !DILocation(line: 182, column: 13, scope: !3616)
!3639 = !DILocation(line: 182, column: 11, scope: !3617)
!3640 = !DILocation(line: 190, column: 30, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3616, file: !747, line: 183, column: 9)
!3642 = !DILocation(line: 191, column: 16, scope: !3641)
!3643 = !DILocation(line: 191, column: 13, scope: !3641)
!3644 = !DILocation(line: 192, column: 9, scope: !3641)
!3645 = !DILocation(line: 197, column: 11, scope: !3620)
!3646 = !DILocation(line: 197, column: 11, scope: !3621)
!3647 = !DILocation(line: 198, column: 9, scope: !3620)
!3648 = !DILocation(line: 0, scope: !3427, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 201, column: 7, scope: !750)
!3650 = !DILocation(line: 85, column: 25, scope: !3427, inlinedAt: !3649)
!3651 = !DILocation(line: 0, scope: !3435, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 85, column: 10, scope: !3427, inlinedAt: !3649)
!3653 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3652)
!3654 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3652)
!3655 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3652)
!3656 = !DILocation(line: 202, column: 7, scope: !750)
!3657 = !DILocation(line: 203, column: 3, scope: !750)
!3658 = !DILocation(line: 0, scope: !762)
!3659 = !DILocation(line: 230, column: 14, scope: !762)
!3660 = !DILocation(line: 238, column: 7, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !762, file: !747, line: 238, column: 7)
!3662 = !DILocation(line: 238, column: 7, scope: !762)
!3663 = !DILocation(line: 240, column: 9, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !762, file: !747, line: 240, column: 7)
!3665 = !DILocation(line: 240, column: 18, scope: !3664)
!3666 = !DILocation(line: 253, column: 8, scope: !762)
!3667 = !DILocation(line: 256, column: 7, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !762, file: !747, line: 256, column: 7)
!3669 = !DILocation(line: 256, column: 7, scope: !762)
!3670 = !DILocation(line: 258, column: 27, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3668, file: !747, line: 257, column: 5)
!3672 = !DILocation(line: 259, column: 32, scope: !3671)
!3673 = !DILocation(line: 260, column: 5, scope: !3671)
!3674 = !DILocation(line: 262, column: 9, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !762, file: !747, line: 262, column: 7)
!3676 = !DILocation(line: 262, column: 7, scope: !762)
!3677 = !DILocation(line: 263, column: 9, scope: !3675)
!3678 = !DILocation(line: 263, column: 5, scope: !3675)
!3679 = !DILocation(line: 264, column: 9, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !762, file: !747, line: 264, column: 7)
!3681 = !DILocation(line: 264, column: 14, scope: !3680)
!3682 = !DILocation(line: 265, column: 7, scope: !3680)
!3683 = !DILocation(line: 265, column: 11, scope: !3680)
!3684 = !DILocation(line: 266, column: 11, scope: !3680)
!3685 = !DILocation(line: 267, column: 14, scope: !3680)
!3686 = !DILocation(line: 264, column: 7, scope: !762)
!3687 = !DILocation(line: 268, column: 5, scope: !3680)
!3688 = !DILocation(line: 0, scope: !3500, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 269, column: 8, scope: !762)
!3690 = !DILocation(line: 0, scope: !3508, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 70, column: 25, scope: !3500, inlinedAt: !3689)
!3692 = !DILocation(line: 2059, column: 24, scope: !3508, inlinedAt: !3691)
!3693 = !DILocation(line: 2059, column: 10, scope: !3508, inlinedAt: !3691)
!3694 = !DILocation(line: 0, scope: !3435, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 70, column: 10, scope: !3500, inlinedAt: !3689)
!3696 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3695)
!3697 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3695)
!3698 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3695)
!3699 = !DILocation(line: 270, column: 7, scope: !762)
!3700 = !DILocation(line: 271, column: 3, scope: !762)
!3701 = distinct !DISubprogram(name: "xzalloc", scope: !747, file: !747, line: 279, type: !3455, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3702)
!3702 = !{!3703}
!3703 = !DILocalVariable(name: "s", arg: 1, scope: !3701, file: !747, line: 279, type: !124)
!3704 = !DILocation(line: 0, scope: !3701)
!3705 = !DILocalVariable(name: "n", arg: 1, scope: !3706, file: !747, line: 294, type: !124)
!3706 = distinct !DISubprogram(name: "xcalloc", scope: !747, file: !747, line: 294, type: !3569, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3707)
!3707 = !{!3705, !3708}
!3708 = !DILocalVariable(name: "s", arg: 2, scope: !3706, file: !747, line: 294, type: !124)
!3709 = !DILocation(line: 0, scope: !3706, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 281, column: 10, scope: !3701)
!3711 = !DILocation(line: 296, column: 25, scope: !3706, inlinedAt: !3710)
!3712 = !DILocation(line: 0, scope: !3435, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 296, column: 10, scope: !3706, inlinedAt: !3710)
!3714 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3713)
!3715 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3713)
!3716 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3713)
!3717 = !DILocation(line: 281, column: 3, scope: !3701)
!3718 = !DISubprogram(name: "calloc", scope: !1006, file: !1006, line: 543, type: !3569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3719 = !DILocation(line: 0, scope: !3706)
!3720 = !DILocation(line: 296, column: 25, scope: !3706)
!3721 = !DILocation(line: 0, scope: !3435, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 296, column: 10, scope: !3706)
!3723 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3722)
!3724 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3722)
!3725 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3722)
!3726 = !DILocation(line: 296, column: 3, scope: !3706)
!3727 = distinct !DISubprogram(name: "xizalloc", scope: !747, file: !747, line: 285, type: !3469, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3728)
!3728 = !{!3729}
!3729 = !DILocalVariable(name: "s", arg: 1, scope: !3727, file: !747, line: 285, type: !766)
!3730 = !DILocation(line: 0, scope: !3727)
!3731 = !DILocalVariable(name: "n", arg: 1, scope: !3732, file: !747, line: 300, type: !766)
!3732 = distinct !DISubprogram(name: "xicalloc", scope: !747, file: !747, line: 300, type: !3585, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3733)
!3733 = !{!3731, !3734}
!3734 = !DILocalVariable(name: "s", arg: 2, scope: !3732, file: !747, line: 300, type: !766)
!3735 = !DILocation(line: 0, scope: !3732, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 287, column: 10, scope: !3727)
!3737 = !DILocalVariable(name: "n", arg: 1, scope: !3738, file: !3476, line: 77, type: !766)
!3738 = distinct !DISubprogram(name: "icalloc", scope: !3476, file: !3476, line: 77, type: !3585, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3739)
!3739 = !{!3737, !3740}
!3740 = !DILocalVariable(name: "s", arg: 2, scope: !3738, file: !3476, line: 77, type: !766)
!3741 = !DILocation(line: 0, scope: !3738, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 302, column: 25, scope: !3732, inlinedAt: !3736)
!3743 = !DILocation(line: 91, column: 10, scope: !3738, inlinedAt: !3742)
!3744 = !DILocation(line: 0, scope: !3435, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 302, column: 10, scope: !3732, inlinedAt: !3736)
!3746 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3745)
!3747 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3745)
!3748 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3745)
!3749 = !DILocation(line: 287, column: 3, scope: !3727)
!3750 = !DILocation(line: 0, scope: !3732)
!3751 = !DILocation(line: 0, scope: !3738, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 302, column: 25, scope: !3732)
!3753 = !DILocation(line: 91, column: 10, scope: !3738, inlinedAt: !3752)
!3754 = !DILocation(line: 0, scope: !3435, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 302, column: 10, scope: !3732)
!3756 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3755)
!3757 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3755)
!3758 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3755)
!3759 = !DILocation(line: 302, column: 3, scope: !3732)
!3760 = distinct !DISubprogram(name: "xmemdup", scope: !747, file: !747, line: 310, type: !3761, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3763)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!121, !1030, !124}
!3763 = !{!3764, !3765}
!3764 = !DILocalVariable(name: "p", arg: 1, scope: !3760, file: !747, line: 310, type: !1030)
!3765 = !DILocalVariable(name: "s", arg: 2, scope: !3760, file: !747, line: 310, type: !124)
!3766 = !DILocation(line: 0, scope: !3760)
!3767 = !DILocation(line: 0, scope: !3454, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 312, column: 18, scope: !3760)
!3769 = !DILocation(line: 49, column: 25, scope: !3454, inlinedAt: !3768)
!3770 = !DILocation(line: 0, scope: !3435, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 49, column: 10, scope: !3454, inlinedAt: !3768)
!3772 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3771)
!3773 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3771)
!3774 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3771)
!3775 = !DILocalVariable(name: "__dest", arg: 1, scope: !3776, file: !1472, line: 26, type: !1475)
!3776 = distinct !DISubprogram(name: "memcpy", scope: !1472, file: !1472, line: 26, type: !1473, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3777)
!3777 = !{!3775, !3778, !3779}
!3778 = !DILocalVariable(name: "__src", arg: 2, scope: !3776, file: !1472, line: 26, type: !1029)
!3779 = !DILocalVariable(name: "__len", arg: 3, scope: !3776, file: !1472, line: 26, type: !124)
!3780 = !DILocation(line: 0, scope: !3776, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 312, column: 10, scope: !3760)
!3782 = !DILocation(line: 29, column: 10, scope: !3776, inlinedAt: !3781)
!3783 = !DILocation(line: 312, column: 3, scope: !3760)
!3784 = distinct !DISubprogram(name: "ximemdup", scope: !747, file: !747, line: 316, type: !3785, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3787)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!121, !1030, !766}
!3787 = !{!3788, !3789}
!3788 = !DILocalVariable(name: "p", arg: 1, scope: !3784, file: !747, line: 316, type: !1030)
!3789 = !DILocalVariable(name: "s", arg: 2, scope: !3784, file: !747, line: 316, type: !766)
!3790 = !DILocation(line: 0, scope: !3784)
!3791 = !DILocation(line: 0, scope: !3468, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 318, column: 18, scope: !3784)
!3793 = !DILocation(line: 0, scope: !3475, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 55, column: 25, scope: !3468, inlinedAt: !3792)
!3795 = !DILocation(line: 57, column: 26, scope: !3475, inlinedAt: !3794)
!3796 = !DILocation(line: 0, scope: !3435, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 55, column: 10, scope: !3468, inlinedAt: !3792)
!3798 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3797)
!3799 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3797)
!3800 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3797)
!3801 = !DILocation(line: 0, scope: !3776, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 318, column: 10, scope: !3784)
!3803 = !DILocation(line: 29, column: 10, scope: !3776, inlinedAt: !3802)
!3804 = !DILocation(line: 318, column: 3, scope: !3784)
!3805 = distinct !DISubprogram(name: "ximemdup0", scope: !747, file: !747, line: 325, type: !3806, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3808)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!122, !1030, !766}
!3808 = !{!3809, !3810, !3811}
!3809 = !DILocalVariable(name: "p", arg: 1, scope: !3805, file: !747, line: 325, type: !1030)
!3810 = !DILocalVariable(name: "s", arg: 2, scope: !3805, file: !747, line: 325, type: !766)
!3811 = !DILocalVariable(name: "result", scope: !3805, file: !747, line: 327, type: !122)
!3812 = !DILocation(line: 0, scope: !3805)
!3813 = !DILocation(line: 327, column: 30, scope: !3805)
!3814 = !DILocation(line: 0, scope: !3468, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 327, column: 18, scope: !3805)
!3816 = !DILocation(line: 0, scope: !3475, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 55, column: 25, scope: !3468, inlinedAt: !3815)
!3818 = !DILocation(line: 57, column: 26, scope: !3475, inlinedAt: !3817)
!3819 = !DILocation(line: 0, scope: !3435, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 55, column: 10, scope: !3468, inlinedAt: !3815)
!3821 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3820)
!3822 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3820)
!3823 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3820)
!3824 = !DILocation(line: 328, column: 3, scope: !3805)
!3825 = !DILocation(line: 328, column: 13, scope: !3805)
!3826 = !DILocation(line: 0, scope: !3776, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 329, column: 10, scope: !3805)
!3828 = !DILocation(line: 29, column: 10, scope: !3776, inlinedAt: !3827)
!3829 = !DILocation(line: 329, column: 3, scope: !3805)
!3830 = distinct !DISubprogram(name: "xstrdup", scope: !747, file: !747, line: 335, type: !1008, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !3831)
!3831 = !{!3832}
!3832 = !DILocalVariable(name: "string", arg: 1, scope: !3830, file: !747, line: 335, type: !127)
!3833 = !DILocation(line: 0, scope: !3830)
!3834 = !DILocation(line: 337, column: 27, scope: !3830)
!3835 = !DILocation(line: 337, column: 43, scope: !3830)
!3836 = !DILocation(line: 0, scope: !3760, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 337, column: 10, scope: !3830)
!3838 = !DILocation(line: 0, scope: !3454, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 312, column: 18, scope: !3760, inlinedAt: !3837)
!3840 = !DILocation(line: 49, column: 25, scope: !3454, inlinedAt: !3839)
!3841 = !DILocation(line: 0, scope: !3435, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 49, column: 10, scope: !3454, inlinedAt: !3839)
!3843 = !DILocation(line: 39, column: 8, scope: !3442, inlinedAt: !3842)
!3844 = !DILocation(line: 39, column: 7, scope: !3435, inlinedAt: !3842)
!3845 = !DILocation(line: 40, column: 5, scope: !3442, inlinedAt: !3842)
!3846 = !DILocation(line: 0, scope: !3776, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 312, column: 10, scope: !3760, inlinedAt: !3837)
!3848 = !DILocation(line: 29, column: 10, scope: !3776, inlinedAt: !3847)
!3849 = !DILocation(line: 337, column: 3, scope: !3830)
!3850 = distinct !DISubprogram(name: "xalloc_die", scope: !707, file: !707, line: 32, type: !474, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3851)
!3851 = !{!3852}
!3852 = !DILocalVariable(name: "__errstatus", scope: !3853, file: !707, line: 34, type: !3854)
!3853 = distinct !DILexicalBlock(scope: !3850, file: !707, line: 34, column: 3)
!3854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!3855 = !DILocation(line: 34, column: 3, scope: !3853)
!3856 = !DILocation(line: 0, scope: !3853)
!3857 = !DILocation(line: 40, column: 3, scope: !3850)
!3858 = distinct !DISubprogram(name: "xgetcwd", scope: !784, file: !784, line: 35, type: !3859, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !3861)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!122}
!3861 = !{!3862}
!3862 = !DILocalVariable(name: "cwd", scope: !3858, file: !784, line: 37, type: !122)
!3863 = !DILocation(line: 37, column: 15, scope: !3858)
!3864 = !DILocation(line: 0, scope: !3858)
!3865 = !DILocation(line: 38, column: 9, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3858, file: !784, line: 38, column: 7)
!3867 = !DILocation(line: 38, column: 13, scope: !3866)
!3868 = !DILocation(line: 38, column: 16, scope: !3866)
!3869 = !DILocation(line: 38, column: 22, scope: !3866)
!3870 = !DILocation(line: 38, column: 7, scope: !3858)
!3871 = !DILocation(line: 39, column: 5, scope: !3866)
!3872 = !DILocation(line: 40, column: 3, scope: !3858)
!3873 = distinct !DISubprogram(name: "close_stream", scope: !786, file: !786, line: 55, type: !3874, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !3910)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!83, !3876}
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !3878)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3878, file: !175, line: 51, baseType: !83, size: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3878, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3878, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3878, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3878, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3878, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3878, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3878, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3878, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3878, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3878, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3878, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3878, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3878, file: !175, line: 70, baseType: !3894, size: 64, offset: 832)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3878, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3878, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3878, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3878, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3878, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3878, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3878, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3878, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3878, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3878, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3878, file: !175, line: 93, baseType: !3894, size: 64, offset: 1344)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3878, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3878, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3878, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3878, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!3910 = !{!3911, !3912, !3914, !3915}
!3911 = !DILocalVariable(name: "stream", arg: 1, scope: !3873, file: !786, line: 55, type: !3876)
!3912 = !DILocalVariable(name: "some_pending", scope: !3873, file: !786, line: 57, type: !3913)
!3913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!3914 = !DILocalVariable(name: "prev_fail", scope: !3873, file: !786, line: 58, type: !3913)
!3915 = !DILocalVariable(name: "fclose_fail", scope: !3873, file: !786, line: 59, type: !3913)
!3916 = !DILocation(line: 0, scope: !3873)
!3917 = !DILocation(line: 57, column: 30, scope: !3873)
!3918 = !DILocalVariable(name: "__stream", arg: 1, scope: !3919, file: !1719, line: 135, type: !3876)
!3919 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1719, file: !1719, line: 135, type: !3874, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !3920)
!3920 = !{!3918}
!3921 = !DILocation(line: 0, scope: !3919, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 58, column: 27, scope: !3873)
!3923 = !DILocation(line: 137, column: 10, scope: !3919, inlinedAt: !3922)
!3924 = !{!1728, !886, i64 0}
!3925 = !DILocation(line: 58, column: 43, scope: !3873)
!3926 = !DILocation(line: 59, column: 29, scope: !3873)
!3927 = !DILocation(line: 59, column: 45, scope: !3873)
!3928 = !DILocation(line: 69, column: 17, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3873, file: !786, line: 69, column: 7)
!3930 = !DILocation(line: 57, column: 50, scope: !3873)
!3931 = !DILocation(line: 69, column: 33, scope: !3929)
!3932 = !DILocation(line: 69, column: 53, scope: !3929)
!3933 = !DILocation(line: 69, column: 59, scope: !3929)
!3934 = !DILocation(line: 69, column: 7, scope: !3873)
!3935 = !DILocation(line: 71, column: 11, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3929, file: !786, line: 70, column: 5)
!3937 = !DILocation(line: 72, column: 9, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3936, file: !786, line: 71, column: 11)
!3939 = !DILocation(line: 72, column: 15, scope: !3938)
!3940 = !DILocation(line: 77, column: 1, scope: !3873)
!3941 = !DISubprogram(name: "__fpending", scope: !3942, file: !3942, line: 75, type: !3943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3942 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!124, !3876}
!3945 = distinct !DISubprogram(name: "rpl_fclose", scope: !788, file: !788, line: 58, type: !3946, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !3982)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!83, !3948}
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !3950)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !3951)
!3951 = !{!3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3950, file: !175, line: 51, baseType: !83, size: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3950, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3950, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3950, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3950, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3950, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3950, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3950, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3950, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3950, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3950, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3950, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3950, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3950, file: !175, line: 70, baseType: !3966, size: 64, offset: 832)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3950, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3950, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3950, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3950, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3950, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3950, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3950, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3950, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3950, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3950, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3950, file: !175, line: 93, baseType: !3966, size: 64, offset: 1344)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3950, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3950, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3950, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3950, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!3982 = !{!3983, !3984, !3985, !3986}
!3983 = !DILocalVariable(name: "fp", arg: 1, scope: !3945, file: !788, line: 58, type: !3948)
!3984 = !DILocalVariable(name: "saved_errno", scope: !3945, file: !788, line: 60, type: !83)
!3985 = !DILocalVariable(name: "fd", scope: !3945, file: !788, line: 63, type: !83)
!3986 = !DILocalVariable(name: "result", scope: !3945, file: !788, line: 74, type: !83)
!3987 = !DILocation(line: 0, scope: !3945)
!3988 = !DILocation(line: 63, column: 12, scope: !3945)
!3989 = !DILocation(line: 64, column: 10, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3945, file: !788, line: 64, column: 7)
!3991 = !DILocation(line: 64, column: 7, scope: !3945)
!3992 = !DILocation(line: 65, column: 12, scope: !3990)
!3993 = !DILocation(line: 65, column: 5, scope: !3990)
!3994 = !DILocation(line: 70, column: 9, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3945, file: !788, line: 70, column: 7)
!3996 = !DILocation(line: 70, column: 23, scope: !3995)
!3997 = !DILocation(line: 70, column: 33, scope: !3995)
!3998 = !DILocation(line: 70, column: 26, scope: !3995)
!3999 = !DILocation(line: 70, column: 59, scope: !3995)
!4000 = !DILocation(line: 71, column: 7, scope: !3995)
!4001 = !DILocation(line: 71, column: 10, scope: !3995)
!4002 = !DILocation(line: 70, column: 7, scope: !3945)
!4003 = !DILocation(line: 100, column: 12, scope: !3945)
!4004 = !DILocation(line: 105, column: 7, scope: !3945)
!4005 = !DILocation(line: 72, column: 19, scope: !3995)
!4006 = !DILocation(line: 105, column: 19, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3945, file: !788, line: 105, column: 7)
!4008 = !DILocation(line: 107, column: 13, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4007, file: !788, line: 106, column: 5)
!4010 = !DILocation(line: 109, column: 5, scope: !4009)
!4011 = !DILocation(line: 112, column: 1, scope: !3945)
!4012 = !DISubprogram(name: "fileno", scope: !437, file: !437, line: 809, type: !3946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4013 = !DISubprogram(name: "fclose", scope: !437, file: !437, line: 178, type: !3946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4014 = !DISubprogram(name: "__freading", scope: !3942, file: !3942, line: 51, type: !3946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4015 = !DISubprogram(name: "lseek", scope: !1489, file: !1489, line: 339, type: !4016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!197, !83, !197, !83}
!4018 = distinct !DISubprogram(name: "rpl_fflush", scope: !790, file: !790, line: 130, type: !4019, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4055)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!83, !4021}
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !4023)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !4024)
!4024 = !{!4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4023, file: !175, line: 51, baseType: !83, size: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4023, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4023, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4023, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4023, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4023, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4023, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4023, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4023, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4023, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4023, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4023, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4023, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4023, file: !175, line: 70, baseType: !4039, size: 64, offset: 832)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4023, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4023, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4023, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4023, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4023, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4023, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4023, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4023, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4023, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4023, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4023, file: !175, line: 93, baseType: !4039, size: 64, offset: 1344)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4023, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4023, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4023, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4023, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!4055 = !{!4056}
!4056 = !DILocalVariable(name: "stream", arg: 1, scope: !4018, file: !790, line: 130, type: !4021)
!4057 = !DILocation(line: 0, scope: !4018)
!4058 = !DILocation(line: 151, column: 14, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4018, file: !790, line: 151, column: 7)
!4060 = !DILocation(line: 151, column: 22, scope: !4059)
!4061 = !DILocation(line: 151, column: 27, scope: !4059)
!4062 = !DILocation(line: 151, column: 7, scope: !4018)
!4063 = !DILocation(line: 152, column: 12, scope: !4059)
!4064 = !DILocation(line: 152, column: 5, scope: !4059)
!4065 = !DILocalVariable(name: "fp", arg: 1, scope: !4066, file: !790, line: 42, type: !4021)
!4066 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !790, file: !790, line: 42, type: !4067, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4069)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{null, !4021}
!4069 = !{!4065}
!4070 = !DILocation(line: 0, scope: !4066, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 157, column: 3, scope: !4018)
!4072 = !DILocation(line: 44, column: 12, scope: !4073, inlinedAt: !4071)
!4073 = distinct !DILexicalBlock(scope: !4066, file: !790, line: 44, column: 7)
!4074 = !DILocation(line: 44, column: 19, scope: !4073, inlinedAt: !4071)
!4075 = !DILocation(line: 44, column: 7, scope: !4066, inlinedAt: !4071)
!4076 = !DILocation(line: 46, column: 5, scope: !4073, inlinedAt: !4071)
!4077 = !DILocation(line: 159, column: 10, scope: !4018)
!4078 = !DILocation(line: 159, column: 3, scope: !4018)
!4079 = !DILocation(line: 236, column: 1, scope: !4018)
!4080 = !DISubprogram(name: "fflush", scope: !437, file: !437, line: 230, type: !4019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4081 = distinct !DISubprogram(name: "rpl_fseeko", scope: !792, file: !792, line: 28, type: !4082, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4119)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!83, !4084, !4118, !83}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !4086)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !4087)
!4087 = !{!4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4086, file: !175, line: 51, baseType: !83, size: 32)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4086, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4086, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4086, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4086, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4086, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4086, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4086, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4086, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4086, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4086, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4086, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4086, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4086, file: !175, line: 70, baseType: !4102, size: 64, offset: 832)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4086, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4086, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4086, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4086, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4086, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4086, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4086, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4086, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4086, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4086, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4086, file: !175, line: 93, baseType: !4102, size: 64, offset: 1344)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4086, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4086, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4086, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4086, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!4118 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !437, line: 63, baseType: !197)
!4119 = !{!4120, !4121, !4122, !4123}
!4120 = !DILocalVariable(name: "fp", arg: 1, scope: !4081, file: !792, line: 28, type: !4084)
!4121 = !DILocalVariable(name: "offset", arg: 2, scope: !4081, file: !792, line: 28, type: !4118)
!4122 = !DILocalVariable(name: "whence", arg: 3, scope: !4081, file: !792, line: 28, type: !83)
!4123 = !DILocalVariable(name: "pos", scope: !4124, file: !792, line: 123, type: !4118)
!4124 = distinct !DILexicalBlock(scope: !4125, file: !792, line: 119, column: 5)
!4125 = distinct !DILexicalBlock(scope: !4081, file: !792, line: 55, column: 7)
!4126 = !DILocation(line: 0, scope: !4081)
!4127 = !DILocation(line: 55, column: 12, scope: !4125)
!4128 = !{!1728, !822, i64 16}
!4129 = !DILocation(line: 55, column: 33, scope: !4125)
!4130 = !{!1728, !822, i64 8}
!4131 = !DILocation(line: 55, column: 25, scope: !4125)
!4132 = !DILocation(line: 56, column: 7, scope: !4125)
!4133 = !DILocation(line: 56, column: 15, scope: !4125)
!4134 = !DILocation(line: 56, column: 37, scope: !4125)
!4135 = !{!1728, !822, i64 32}
!4136 = !DILocation(line: 56, column: 29, scope: !4125)
!4137 = !DILocation(line: 57, column: 7, scope: !4125)
!4138 = !DILocation(line: 57, column: 15, scope: !4125)
!4139 = !{!1728, !822, i64 72}
!4140 = !DILocation(line: 57, column: 29, scope: !4125)
!4141 = !DILocation(line: 55, column: 7, scope: !4081)
!4142 = !DILocation(line: 123, column: 26, scope: !4124)
!4143 = !DILocation(line: 123, column: 19, scope: !4124)
!4144 = !DILocation(line: 0, scope: !4124)
!4145 = !DILocation(line: 124, column: 15, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4124, file: !792, line: 124, column: 11)
!4147 = !DILocation(line: 124, column: 11, scope: !4124)
!4148 = !DILocation(line: 135, column: 19, scope: !4124)
!4149 = !DILocation(line: 136, column: 12, scope: !4124)
!4150 = !DILocation(line: 136, column: 20, scope: !4124)
!4151 = !{!1728, !1173, i64 144}
!4152 = !DILocation(line: 167, column: 7, scope: !4124)
!4153 = !DILocation(line: 169, column: 10, scope: !4081)
!4154 = !DILocation(line: 169, column: 3, scope: !4081)
!4155 = !DILocation(line: 170, column: 1, scope: !4081)
!4156 = !DISubprogram(name: "fseeko", scope: !437, file: !437, line: 736, type: !4157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!83, !4084, !197, !83}
!4159 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !714, file: !714, line: 100, type: !4160, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !4163)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!124, !1890, !127, !124, !4162}
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!4163 = !{!4164, !4165, !4166, !4167, !4168}
!4164 = !DILocalVariable(name: "pwc", arg: 1, scope: !4159, file: !714, line: 100, type: !1890)
!4165 = !DILocalVariable(name: "s", arg: 2, scope: !4159, file: !714, line: 100, type: !127)
!4166 = !DILocalVariable(name: "n", arg: 3, scope: !4159, file: !714, line: 100, type: !124)
!4167 = !DILocalVariable(name: "ps", arg: 4, scope: !4159, file: !714, line: 100, type: !4162)
!4168 = !DILocalVariable(name: "ret", scope: !4159, file: !714, line: 130, type: !124)
!4169 = !DILocation(line: 0, scope: !4159)
!4170 = !DILocation(line: 105, column: 9, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4159, file: !714, line: 105, column: 7)
!4172 = !DILocation(line: 105, column: 7, scope: !4159)
!4173 = !DILocation(line: 117, column: 10, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4159, file: !714, line: 117, column: 7)
!4175 = !DILocation(line: 117, column: 7, scope: !4159)
!4176 = !DILocation(line: 130, column: 16, scope: !4159)
!4177 = !DILocation(line: 135, column: 11, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4159, file: !714, line: 135, column: 7)
!4179 = !DILocation(line: 135, column: 25, scope: !4178)
!4180 = !DILocation(line: 135, column: 30, scope: !4178)
!4181 = !DILocation(line: 135, column: 7, scope: !4159)
!4182 = !DILocalVariable(name: "ps", arg: 1, scope: !4183, file: !1864, line: 1135, type: !4162)
!4183 = distinct !DISubprogram(name: "mbszero", scope: !1864, file: !1864, line: 1135, type: !4184, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !4186)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{null, !4162}
!4186 = !{!4182}
!4187 = !DILocation(line: 0, scope: !4183, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 137, column: 5, scope: !4178)
!4189 = !DILocalVariable(name: "__dest", arg: 1, scope: !4190, file: !1472, line: 57, type: !121)
!4190 = distinct !DISubprogram(name: "memset", scope: !1472, file: !1472, line: 57, type: !1873, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !4191)
!4191 = !{!4189, !4192, !4193}
!4192 = !DILocalVariable(name: "__ch", arg: 2, scope: !4190, file: !1472, line: 57, type: !83)
!4193 = !DILocalVariable(name: "__len", arg: 3, scope: !4190, file: !1472, line: 57, type: !124)
!4194 = !DILocation(line: 0, scope: !4190, inlinedAt: !4195)
!4195 = distinct !DILocation(line: 1137, column: 3, scope: !4183, inlinedAt: !4188)
!4196 = !DILocation(line: 59, column: 10, scope: !4190, inlinedAt: !4195)
!4197 = !DILocation(line: 137, column: 5, scope: !4178)
!4198 = !DILocation(line: 138, column: 11, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4159, file: !714, line: 138, column: 7)
!4200 = !DILocation(line: 138, column: 7, scope: !4159)
!4201 = !DILocation(line: 139, column: 5, scope: !4199)
!4202 = !DILocation(line: 143, column: 26, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4159, file: !714, line: 143, column: 7)
!4204 = !DILocation(line: 143, column: 41, scope: !4203)
!4205 = !DILocation(line: 143, column: 7, scope: !4159)
!4206 = !DILocation(line: 145, column: 15, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4208, file: !714, line: 145, column: 11)
!4208 = distinct !DILexicalBlock(scope: !4203, file: !714, line: 144, column: 5)
!4209 = !DILocation(line: 145, column: 11, scope: !4208)
!4210 = !DILocation(line: 146, column: 32, scope: !4207)
!4211 = !DILocation(line: 146, column: 16, scope: !4207)
!4212 = !DILocation(line: 146, column: 14, scope: !4207)
!4213 = !DILocation(line: 146, column: 9, scope: !4207)
!4214 = !DILocation(line: 286, column: 1, scope: !4159)
!4215 = !DISubprogram(name: "mbsinit", scope: !4216, file: !4216, line: 293, type: !4217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4216 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!83, !4219}
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!4221 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !794, file: !794, line: 27, type: !3419, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4222)
!4222 = !{!4223, !4224, !4225, !4226}
!4223 = !DILocalVariable(name: "ptr", arg: 1, scope: !4221, file: !794, line: 27, type: !121)
!4224 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4221, file: !794, line: 27, type: !124)
!4225 = !DILocalVariable(name: "size", arg: 3, scope: !4221, file: !794, line: 27, type: !124)
!4226 = !DILocalVariable(name: "nbytes", scope: !4221, file: !794, line: 29, type: !124)
!4227 = !DILocation(line: 0, scope: !4221)
!4228 = !DILocation(line: 30, column: 7, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4221, file: !794, line: 30, column: 7)
!4230 = !DILocation(line: 30, column: 7, scope: !4221)
!4231 = !DILocation(line: 32, column: 7, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4229, file: !794, line: 31, column: 5)
!4233 = !DILocation(line: 32, column: 13, scope: !4232)
!4234 = !DILocation(line: 33, column: 7, scope: !4232)
!4235 = !DILocalVariable(name: "ptr", arg: 1, scope: !4236, file: !3509, line: 2057, type: !121)
!4236 = distinct !DISubprogram(name: "rpl_realloc", scope: !3509, file: !3509, line: 2057, type: !3501, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4237)
!4237 = !{!4235, !4238}
!4238 = !DILocalVariable(name: "size", arg: 2, scope: !4236, file: !3509, line: 2057, type: !124)
!4239 = !DILocation(line: 0, scope: !4236, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 37, column: 10, scope: !4221)
!4241 = !DILocation(line: 2059, column: 24, scope: !4236, inlinedAt: !4240)
!4242 = !DILocation(line: 2059, column: 10, scope: !4236, inlinedAt: !4240)
!4243 = !DILocation(line: 37, column: 3, scope: !4221)
!4244 = !DILocation(line: 38, column: 1, scope: !4221)
!4245 = distinct !DISubprogram(name: "hard_locale", scope: !732, file: !732, line: 28, type: !4246, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !4248)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!158, !83}
!4248 = !{!4249, !4250}
!4249 = !DILocalVariable(name: "category", arg: 1, scope: !4245, file: !732, line: 28, type: !83)
!4250 = !DILocalVariable(name: "locale", scope: !4245, file: !732, line: 30, type: !4251)
!4251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4252)
!4252 = !{!4253}
!4253 = !DISubrange(count: 257)
!4254 = distinct !DIAssignID()
!4255 = !DILocation(line: 0, scope: !4245)
!4256 = !DILocation(line: 30, column: 3, scope: !4245)
!4257 = !DILocation(line: 32, column: 7, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4245, file: !732, line: 32, column: 7)
!4259 = !DILocation(line: 32, column: 7, scope: !4245)
!4260 = !DILocalVariable(name: "__s1", arg: 1, scope: !4261, file: !898, line: 1359, type: !127)
!4261 = distinct !DISubprogram(name: "streq", scope: !898, file: !898, line: 1359, type: !899, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !4262)
!4262 = !{!4260, !4263}
!4263 = !DILocalVariable(name: "__s2", arg: 2, scope: !4261, file: !898, line: 1359, type: !127)
!4264 = !DILocation(line: 0, scope: !4261, inlinedAt: !4265)
!4265 = distinct !DILocation(line: 35, column: 9, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4245, file: !732, line: 35, column: 7)
!4267 = !DILocation(line: 1361, column: 11, scope: !4261, inlinedAt: !4265)
!4268 = !DILocation(line: 1361, column: 10, scope: !4261, inlinedAt: !4265)
!4269 = !DILocation(line: 35, column: 29, scope: !4266)
!4270 = !DILocation(line: 0, scope: !4261, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 35, column: 32, scope: !4266)
!4272 = !DILocation(line: 1361, column: 11, scope: !4261, inlinedAt: !4271)
!4273 = !DILocation(line: 1361, column: 10, scope: !4261, inlinedAt: !4271)
!4274 = !DILocation(line: 35, column: 7, scope: !4245)
!4275 = !DILocation(line: 46, column: 3, scope: !4245)
!4276 = !DILocation(line: 47, column: 1, scope: !4245)
!4277 = distinct !DISubprogram(name: "setlocale_null_r", scope: !798, file: !798, line: 154, type: !4278, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !4280)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!83, !83, !122, !124}
!4280 = !{!4281, !4282, !4283}
!4281 = !DILocalVariable(name: "category", arg: 1, scope: !4277, file: !798, line: 154, type: !83)
!4282 = !DILocalVariable(name: "buf", arg: 2, scope: !4277, file: !798, line: 154, type: !122)
!4283 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4277, file: !798, line: 154, type: !124)
!4284 = !DILocation(line: 0, scope: !4277)
!4285 = !DILocation(line: 159, column: 10, scope: !4277)
!4286 = !DILocation(line: 159, column: 3, scope: !4277)
!4287 = distinct !DISubprogram(name: "setlocale_null", scope: !798, file: !798, line: 186, type: !4288, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !4290)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!127, !83}
!4290 = !{!4291}
!4291 = !DILocalVariable(name: "category", arg: 1, scope: !4287, file: !798, line: 186, type: !83)
!4292 = !DILocation(line: 0, scope: !4287)
!4293 = !DILocation(line: 189, column: 10, scope: !4287)
!4294 = !DILocation(line: 189, column: 3, scope: !4287)
!4295 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !800, file: !800, line: 35, type: !4288, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !4296)
!4296 = !{!4297, !4298}
!4297 = !DILocalVariable(name: "category", arg: 1, scope: !4295, file: !800, line: 35, type: !83)
!4298 = !DILocalVariable(name: "result", scope: !4295, file: !800, line: 37, type: !127)
!4299 = !DILocation(line: 0, scope: !4295)
!4300 = !DILocation(line: 37, column: 24, scope: !4295)
!4301 = !DILocation(line: 62, column: 3, scope: !4295)
!4302 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !800, file: !800, line: 66, type: !4278, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !4303)
!4303 = !{!4304, !4305, !4306, !4307, !4308}
!4304 = !DILocalVariable(name: "category", arg: 1, scope: !4302, file: !800, line: 66, type: !83)
!4305 = !DILocalVariable(name: "buf", arg: 2, scope: !4302, file: !800, line: 66, type: !122)
!4306 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4302, file: !800, line: 66, type: !124)
!4307 = !DILocalVariable(name: "result", scope: !4302, file: !800, line: 111, type: !127)
!4308 = !DILocalVariable(name: "length", scope: !4309, file: !800, line: 125, type: !124)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !800, line: 124, column: 5)
!4310 = distinct !DILexicalBlock(scope: !4302, file: !800, line: 113, column: 7)
!4311 = !DILocation(line: 0, scope: !4302)
!4312 = !DILocation(line: 0, scope: !4295, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 111, column: 24, scope: !4302)
!4314 = !DILocation(line: 37, column: 24, scope: !4295, inlinedAt: !4313)
!4315 = !DILocation(line: 113, column: 14, scope: !4310)
!4316 = !DILocation(line: 113, column: 7, scope: !4302)
!4317 = !DILocation(line: 116, column: 19, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4319, file: !800, line: 116, column: 11)
!4319 = distinct !DILexicalBlock(scope: !4310, file: !800, line: 114, column: 5)
!4320 = !DILocation(line: 116, column: 11, scope: !4319)
!4321 = !DILocation(line: 120, column: 16, scope: !4318)
!4322 = !DILocation(line: 120, column: 9, scope: !4318)
!4323 = !DILocation(line: 125, column: 23, scope: !4309)
!4324 = !DILocation(line: 0, scope: !4309)
!4325 = !DILocation(line: 126, column: 18, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4309, file: !800, line: 126, column: 11)
!4327 = !DILocation(line: 126, column: 11, scope: !4309)
!4328 = !DILocation(line: 128, column: 39, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4326, file: !800, line: 127, column: 9)
!4330 = !DILocalVariable(name: "__dest", arg: 1, scope: !4331, file: !1472, line: 26, type: !1475)
!4331 = distinct !DISubprogram(name: "memcpy", scope: !1472, file: !1472, line: 26, type: !1473, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !799, retainedNodes: !4332)
!4332 = !{!4330, !4333, !4334}
!4333 = !DILocalVariable(name: "__src", arg: 2, scope: !4331, file: !1472, line: 26, type: !1029)
!4334 = !DILocalVariable(name: "__len", arg: 3, scope: !4331, file: !1472, line: 26, type: !124)
!4335 = !DILocation(line: 0, scope: !4331, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 128, column: 11, scope: !4329)
!4337 = !DILocation(line: 29, column: 10, scope: !4331, inlinedAt: !4336)
!4338 = !DILocation(line: 129, column: 11, scope: !4329)
!4339 = !DILocation(line: 133, column: 23, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4341, file: !800, line: 133, column: 15)
!4341 = distinct !DILexicalBlock(scope: !4326, file: !800, line: 132, column: 9)
!4342 = !DILocation(line: 133, column: 15, scope: !4341)
!4343 = !DILocation(line: 138, column: 44, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4340, file: !800, line: 134, column: 13)
!4345 = !DILocation(line: 0, scope: !4331, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 138, column: 15, scope: !4344)
!4347 = !DILocation(line: 29, column: 10, scope: !4331, inlinedAt: !4346)
!4348 = !DILocation(line: 139, column: 15, scope: !4344)
!4349 = !DILocation(line: 139, column: 32, scope: !4344)
!4350 = !DILocation(line: 140, column: 13, scope: !4344)
!4351 = !DILocation(line: 0, scope: !4310)
!4352 = !DILocation(line: 145, column: 1, scope: !4302)
