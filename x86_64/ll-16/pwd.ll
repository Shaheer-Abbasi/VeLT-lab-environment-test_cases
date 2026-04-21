; ModuleID = 'src/pwd.bc'
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !461
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !431
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !451
@.str.1.35 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !453
@.str.2.37 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !455
@.str.3.36 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !457
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !459
@.str.4.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !463
@.str.5.31 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !465
@.str.6.32 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !467
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !472
@.str.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !478
@.str.1.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !480
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !482
@.str.69 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !513
@.str.1.70 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !516
@.str.2.71 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !518
@.str.3.72 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !520
@.str.4.73 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !522
@.str.5.74 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !524
@.str.6.75 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !526
@.str.7.76 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !528
@.str.8.77 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !530
@.str.9.78 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !532
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.69, ptr @.str.1.70, ptr @.str.2.71, ptr @.str.3.72, ptr @.str.4.73, ptr @.str.5.74, ptr @.str.6.75, ptr @.str.7.76, ptr @.str.8.77, ptr @.str.9.78, ptr null], align 16, !dbg !534
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !545
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !559
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !597
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !604
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !561
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !606
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !549
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !566
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !568
@.str.12.82 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !570
@.str.13.80 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !572
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !574
@.str.91 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !612
@.str.92 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !615
@.str.1.93 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !618
@.str.2.94 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !620
@.str.3.95 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !622
@.str.4.96 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !624
@.str.5.97 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !626
@.str.6.98 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !631
@.str.7.99 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !636
@.str.8.100 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !638
@.str.9.101 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !640
@.str.10.102 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !645
@.str.11.103 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !650
@.str.12.104 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !655
@.str.13.105 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !657
@.str.14.106 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !659
@.str.15.107 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !661
@.str.16.108 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !666
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.113 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !668
@.str.18.114 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !670
@.str.19.115 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !672
@.str.20.116 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !674
@.str.21.117 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !676
@.str.22.118 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !678
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !680
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !685
@exit_failure = dso_local global i32 1, align 4, !dbg !693
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !699
@.str.1.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !702
@.str.2.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !704
@.str.148 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !706
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !709
@.str.1.153 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !724

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !802 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !806, metadata !DIExpression()), !dbg !807
  %2 = icmp eq i32 %0, 0, !dbg !808
  br i1 %2, label %8, label %3, !dbg !810

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !811, !tbaa !813
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !811
  %6 = load ptr, ptr @program_name, align 8, !dbg !811, !tbaa !813
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !811
  br label %38, !dbg !811

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !817
  %10 = load ptr, ptr @program_name, align 8, !dbg !817, !tbaa !813
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !817
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !819
  %13 = load ptr, ptr @stdout, align 8, !dbg !819, !tbaa !813
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !819
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !820
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !820
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !821
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !821
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !822
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !822
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !823
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !823
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !824
  %20 = load ptr, ptr @stdout, align 8, !dbg !824, !tbaa !813
  %21 = tail call i32 @fputs_unlocked(ptr noundef %19, ptr noundef %20), !dbg !824
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #37, !dbg !825
  %23 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %22, ptr noundef nonnull @.str.3) #37, !dbg !825
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !838, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata ptr poison, metadata !838, metadata !DIExpression()), !dbg !843
  tail call void @emit_bug_reporting_address() #37, !dbg !845
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !846
  call void @llvm.dbg.value(metadata ptr %24, metadata !841, metadata !DIExpression()), !dbg !843
  %25 = icmp eq ptr %24, null, !dbg !847
  br i1 %25, label %33, label %26, !dbg !849

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.48, i64 noundef 3) #38, !dbg !850
  %28 = icmp eq i32 %27, 0, !dbg !850
  br i1 %28, label %33, label %29, !dbg !851

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #37, !dbg !852
  %31 = load ptr, ptr @stdout, align 8, !dbg !852, !tbaa !813
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !852
  br label %33, !dbg !854

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !838, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !842, metadata !DIExpression()), !dbg !843
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #37, !dbg !855
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #37, !dbg !855
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #37, !dbg !856
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52) #37, !dbg !856
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !857
  unreachable, !dbg !857
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !858 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !863 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !869 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !872 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !148 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !152, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr %0, metadata !153, metadata !DIExpression()), !dbg !876
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !877, !tbaa !878
  %3 = icmp eq i32 %2, -1, !dbg !880
  br i1 %3, label %4, label %16, !dbg !881

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.18) #37, !dbg !882
  call void @llvm.dbg.value(metadata ptr %5, metadata !154, metadata !DIExpression()), !dbg !883
  %6 = icmp eq ptr %5, null, !dbg !884
  br i1 %6, label %14, label %7, !dbg !885

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !886, !tbaa !887
  %9 = icmp eq i8 %8, 0, !dbg !886
  br i1 %9, label %14, label %10, !dbg !888

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !889, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !895, metadata !DIExpression()), !dbg !896
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.19) #38, !dbg !898
  %12 = icmp eq i32 %11, 0, !dbg !899
  %13 = zext i1 %12 to i32, !dbg !888
  br label %14, !dbg !888

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !900, !tbaa !878
  br label %16, !dbg !901

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !902
  %18 = icmp eq i32 %17, 0, !dbg !902
  br i1 %18, label %22, label %19, !dbg !904

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !905, !tbaa !813
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !905
  br label %128, !dbg !907

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !157, metadata !DIExpression()), !dbg !876
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.20) #38, !dbg !908
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !909
  call void @llvm.dbg.value(metadata ptr %24, metadata !159, metadata !DIExpression()), !dbg !876
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !910
  call void @llvm.dbg.value(metadata ptr %25, metadata !160, metadata !DIExpression()), !dbg !876
  %26 = icmp eq ptr %25, null, !dbg !911
  br i1 %26, label %58, label %27, !dbg !912

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !913
  br i1 %28, label %58, label %29, !dbg !914

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !161, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !915
  %30 = icmp ult ptr %24, %25, !dbg !916
  br i1 %30, label %31, label %52, !dbg !917

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !876
  %33 = load ptr, ptr %32, align 8, !tbaa !813
  br label %34, !dbg !917

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !161, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i64 %36, metadata !165, metadata !DIExpression()), !dbg !915
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !918
  call void @llvm.dbg.value(metadata ptr %37, metadata !161, metadata !DIExpression()), !dbg !915
  %38 = load i8, ptr %35, align 1, !dbg !918, !tbaa !887
  %39 = sext i8 %38 to i64, !dbg !918
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !918
  %41 = load i16, ptr %40, align 2, !dbg !918, !tbaa !919
  %42 = freeze i16 %41, !dbg !921
  %43 = lshr i16 %42, 13, !dbg !921
  %44 = and i16 %43, 1, !dbg !921
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !922
  call void @llvm.dbg.value(metadata i64 %46, metadata !165, metadata !DIExpression()), !dbg !915
  %47 = icmp ult ptr %37, %25, !dbg !916
  %48 = icmp ult i64 %46, 2, !dbg !923
  %49 = select i1 %47, i1 %48, i1 false, !dbg !923
  br i1 %49, label %34, label %50, !dbg !917, !llvm.loop !924

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !926
  br i1 %51, label %52, label %54, !dbg !928

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !928

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !928
  call void @llvm.dbg.value(metadata i8 %57, metadata !157, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr %56, metadata !160, metadata !DIExpression()), !dbg !876
  br label %58, !dbg !929

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !876
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !876
  call void @llvm.dbg.value(metadata i8 %60, metadata !157, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr %59, metadata !160, metadata !DIExpression()), !dbg !876
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.21) #38, !dbg !930
  call void @llvm.dbg.value(metadata i64 %61, metadata !166, metadata !DIExpression()), !dbg !876
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !931
  call void @llvm.dbg.value(metadata ptr %62, metadata !167, metadata !DIExpression()), !dbg !876
  br label %63, !dbg !932

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !876
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !876
  call void @llvm.dbg.value(metadata i8 %65, metadata !157, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata ptr %64, metadata !167, metadata !DIExpression()), !dbg !876
  %66 = load i8, ptr %64, align 1, !dbg !933, !tbaa !887
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !934

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !935
  %69 = load i8, ptr %68, align 1, !dbg !938, !tbaa !887
  %70 = icmp eq i8 %69, 45, !dbg !939
  %71 = select i1 %70, i8 0, i8 %65, !dbg !940
  br label %72, !dbg !940

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !876
  call void @llvm.dbg.value(metadata i8 %73, metadata !157, metadata !DIExpression()), !dbg !876
  %74 = tail call ptr @__ctype_b_loc() #40, !dbg !941
  %75 = load ptr, ptr %74, align 8, !dbg !941, !tbaa !813
  %76 = sext i8 %66 to i64, !dbg !941
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !941
  %78 = load i16, ptr %77, align 2, !dbg !941, !tbaa !919
  %79 = and i16 %78, 8192, !dbg !941
  %80 = icmp eq i16 %79, 0, !dbg !941
  br i1 %80, label %96, label %81, !dbg !943

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !944
  br i1 %82, label %98, label %83, !dbg !947

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !948
  %85 = load i8, ptr %84, align 1, !dbg !948, !tbaa !887
  %86 = sext i8 %85 to i64, !dbg !948
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !948
  %88 = load i16, ptr %87, align 2, !dbg !948, !tbaa !919
  %89 = and i16 %88, 8192, !dbg !948
  %90 = icmp eq i16 %89, 0, !dbg !948
  br i1 %90, label %91, label %98, !dbg !949

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !950
  %93 = icmp ne i8 %92, 0, !dbg !950
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !952
  br i1 %95, label %96, label %98, !dbg !952

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !953
  call void @llvm.dbg.value(metadata ptr %97, metadata !167, metadata !DIExpression()), !dbg !876
  br label %63, !dbg !932, !llvm.loop !954

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !956
  %100 = load ptr, ptr @stdout, align 8, !dbg !956, !tbaa !813
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !956
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !889, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !889, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !889, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !889, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !889, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !889, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !889, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !889, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !889, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !889, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !224, metadata !DIExpression()), !dbg !876
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.35, i64 noundef 6) #38, !dbg !977
  %103 = icmp eq i32 %102, 0, !dbg !977
  br i1 %103, label %107, label %104, !dbg !979

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.36, i64 noundef 9) #38, !dbg !980
  %106 = icmp eq i32 %105, 0, !dbg !980
  br i1 %106, label %107, label %110, !dbg !981

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !982
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #37, !dbg !982
  br label %113, !dbg !984

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !985
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #37, !dbg !985
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !987, !tbaa !813
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %114), !dbg !987
  %116 = load ptr, ptr @stdout, align 8, !dbg !988, !tbaa !813
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %116), !dbg !988
  %118 = ptrtoint ptr %64 to i64, !dbg !989
  %119 = sub i64 %118, %99, !dbg !989
  %120 = load ptr, ptr @stdout, align 8, !dbg !989, !tbaa !813
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !989
  %122 = load ptr, ptr @stdout, align 8, !dbg !990, !tbaa !813
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %122), !dbg !990
  %124 = load ptr, ptr @stdout, align 8, !dbg !991, !tbaa !813
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %124), !dbg !991
  %126 = load ptr, ptr @stdout, align 8, !dbg !992, !tbaa !813
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !992
  br label %128, !dbg !993

128:                                              ; preds = %113, %19
  ret void, !dbg !993
}

; Function Attrs: nounwind
declare !dbg !994 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !998 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1002 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1004 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1007 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1010 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1013 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1016 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1022 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1023 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1029 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1034, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata ptr %1, metadata !1035, metadata !DIExpression()), !dbg !1052
  %9 = tail call ptr @getenv(ptr noundef nonnull @.str.10) #37, !dbg !1053
  %10 = icmp ne ptr %9, null, !dbg !1054
  %11 = zext i1 %10 to i8, !dbg !1055
  call void @llvm.dbg.value(metadata i8 %11, metadata !1036, metadata !DIExpression()), !dbg !1052
  %12 = load ptr, ptr %1, align 8, !dbg !1056, !tbaa !813
  tail call void @set_program_name(ptr noundef %12) #37, !dbg !1057
  %13 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #37, !dbg !1058
  %14 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #37, !dbg !1059
  %15 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #37, !dbg !1060
  %16 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1061
  br label %17, !dbg !1062

17:                                               ; preds = %21, %2
  %18 = phi i8 [ %11, %2 ], [ %22, %21 ], !dbg !1055
  call void @llvm.dbg.value(metadata i8 %18, metadata !1036, metadata !DIExpression()), !dbg !1052
  %19 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1063
  call void @llvm.dbg.value(metadata i32 %19, metadata !1037, metadata !DIExpression()), !dbg !1064
  switch i32 %19, label %28 [
    i32 -1, label %29
    i32 76, label %21
    i32 80, label %20
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !1065

20:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 0, metadata !1036, metadata !DIExpression()), !dbg !1052
  br label %21, !dbg !1066

21:                                               ; preds = %20, %17
  %22 = phi i8 [ 0, %20 ], [ 1, %17 ]
  br label %17, !dbg !1052

23:                                               ; preds = %17
  tail call void @usage(i32 noundef 0) #41, !dbg !1068
  unreachable, !dbg !1068

24:                                               ; preds = %17
  %25 = load ptr, ptr @stdout, align 8, !dbg !1069, !tbaa !813
  %26 = load ptr, ptr @Version, align 8, !dbg !1069, !tbaa !813
  %27 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #37, !dbg !1069
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %26, ptr noundef %27, ptr noundef null) #37, !dbg !1069
  tail call void @exit(i32 noundef 0) #39, !dbg !1069
  unreachable, !dbg !1069

28:                                               ; preds = %17
  tail call void @usage(i32 noundef 1) #41, !dbg !1070
  unreachable, !dbg !1070

29:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 %18, metadata !1036, metadata !DIExpression()), !dbg !1052
  %30 = load i32, ptr @optind, align 4, !dbg !1071, !tbaa !878
  %31 = icmp slt i32 %30, %0, !dbg !1073
  br i1 %31, label %32, label %34, !dbg !1074

32:                                               ; preds = %29
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #37, !dbg !1075
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %33) #37, !dbg !1075
  br label %34, !dbg !1075

34:                                               ; preds = %32, %29
  %35 = icmp eq i8 %18, 0, !dbg !1076
  br i1 %35, label %75, label %36, !dbg !1077

36:                                               ; preds = %34
  %37 = tail call ptr @getenv(ptr noundef nonnull @.str.57) #37, !dbg !1078
  call void @llvm.dbg.value(metadata ptr %37, metadata !1083, metadata !DIExpression()), !dbg !1122
  %38 = icmp eq ptr %37, null, !dbg !1123
  br i1 %38, label %75, label %39, !dbg !1125

39:                                               ; preds = %36
  %40 = load i8, ptr %37, align 1, !dbg !1126, !tbaa !887
  %41 = icmp eq i8 %40, 47, !dbg !1127
  br i1 %41, label %42, label %75, !dbg !1128

42:                                               ; preds = %39
  call void @llvm.dbg.value(metadata ptr %37, metadata !1084, metadata !DIExpression()), !dbg !1122
  %43 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) @.str.58) #38, !dbg !1129
  call void @llvm.dbg.value(metadata ptr %43, metadata !1084, metadata !DIExpression()), !dbg !1122
  %44 = icmp eq ptr %43, null, !dbg !1130
  br i1 %44, label %56, label %45, !dbg !1130

45:                                               ; preds = %42, %52
  %46 = phi ptr [ %54, %52 ], [ %43, %42 ]
  %47 = getelementptr inbounds i8, ptr %46, i64 2, !dbg !1131
  %48 = load i8, ptr %47, align 1, !dbg !1131, !tbaa !887
  switch i8 %48, label %52 [
    i8 0, label %75
    i8 47, label %75
    i8 46, label %49
  ], !dbg !1134

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %46, i64 3, !dbg !1135
  %51 = load i8, ptr %50, align 1, !dbg !1135, !tbaa !887
  switch i8 %51, label %52 [
    i8 0, label %75
    i8 47, label %75
  ], !dbg !1136

52:                                               ; preds = %49, %45
  %53 = getelementptr inbounds i8, ptr %46, i64 1, !dbg !1137
  call void @llvm.dbg.value(metadata ptr %53, metadata !1084, metadata !DIExpression()), !dbg !1122
  %54 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(1) @.str.58) #38, !dbg !1129
  call void @llvm.dbg.value(metadata ptr %54, metadata !1084, metadata !DIExpression()), !dbg !1122
  %55 = icmp eq ptr %54, null, !dbg !1130
  br i1 %55, label %56, label %45, !dbg !1130, !llvm.loop !1138

56:                                               ; preds = %52, %42
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #37, !dbg !1140
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1085, metadata !DIExpression()), !dbg !1141
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %8) #37, !dbg !1142
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1120, metadata !DIExpression()), !dbg !1143
  %57 = call i32 @stat(ptr noundef nonnull %37, ptr noundef nonnull %7) #37, !dbg !1144
  %58 = icmp eq i32 %57, 0, !dbg !1146
  br i1 %58, label %59, label %72, !dbg !1147

59:                                               ; preds = %56
  %60 = call i32 @stat(ptr noundef nonnull @.str.59, ptr noundef nonnull %8) #37, !dbg !1148
  %61 = icmp eq i32 %60, 0, !dbg !1149
  br i1 %61, label %62, label %72, !dbg !1150

62:                                               ; preds = %59
  call void @llvm.dbg.value(metadata ptr %7, metadata !1151, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata ptr %8, metadata !1159, metadata !DIExpression()), !dbg !1160
  %63 = load i64, ptr %7, align 8, !dbg !1162, !tbaa !1163
  %64 = load i64, ptr %8, align 8, !dbg !1162, !tbaa !1163
  %65 = icmp eq i64 %63, %64, !dbg !1162
  %66 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 1, !dbg !1162
  %67 = load i64, ptr %66, align 8, !dbg !1162, !tbaa !1167
  %68 = getelementptr inbounds %struct.stat, ptr %8, i64 0, i32 1, !dbg !1162
  %69 = load i64, ptr %68, align 8, !dbg !1162, !tbaa !1167
  %70 = icmp eq i64 %67, %69, !dbg !1162
  %71 = and i1 %65, %70, !dbg !1162
  br i1 %71, label %73, label %72, !dbg !1168

72:                                               ; preds = %56, %59, %62
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %8) #37, !dbg !1169
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #37, !dbg !1169
  call void @llvm.dbg.value(metadata ptr null, metadata !1039, metadata !DIExpression()), !dbg !1170
  br label %75, !dbg !1171

73:                                               ; preds = %62
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %8) #37, !dbg !1169
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #37, !dbg !1169
  call void @llvm.dbg.value(metadata ptr %37, metadata !1039, metadata !DIExpression()), !dbg !1170
  %74 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %37), !dbg !1172
  br label %234

75:                                               ; preds = %49, %49, %45, %45, %36, %39, %72, %34
  %76 = tail call noalias ptr @xgetcwd() #37, !dbg !1175
  call void @llvm.dbg.value(metadata ptr %76, metadata !1042, metadata !DIExpression()), !dbg !1052
  %77 = icmp eq ptr %76, null, !dbg !1176
  br i1 %77, label %80, label %78, !dbg !1177

78:                                               ; preds = %75
  %79 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %76), !dbg !1178
  tail call void @free(ptr noundef nonnull %76) #37, !dbg !1180
  br label %234, !dbg !1181

80:                                               ; preds = %75
  %81 = tail call noalias nonnull dereferenceable(24) ptr @xmalloc(i64 noundef 24) #42, !dbg !1182
  call void @llvm.dbg.value(metadata ptr %81, metadata !1187, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i32 8192, metadata !1188, metadata !DIExpression()), !dbg !1190
  %82 = getelementptr inbounds %struct.file_name, ptr %81, i64 0, i32 1, !dbg !1191
  store i64 8192, ptr %82, align 8, !dbg !1192, !tbaa !1193
  %83 = tail call noalias nonnull dereferenceable(8192) ptr @xmalloc(i64 noundef 8192) #42, !dbg !1195
  store ptr %83, ptr %81, align 8, !dbg !1196, !tbaa !1197
  %84 = getelementptr inbounds i8, ptr %83, i64 8191, !dbg !1198
  %85 = getelementptr inbounds %struct.file_name, ptr %81, i64 0, i32 2, !dbg !1199
  store ptr %84, ptr %85, align 8, !dbg !1200, !tbaa !1201
  store i8 0, ptr %84, align 1, !dbg !1202, !tbaa !887
  call void @llvm.dbg.value(metadata ptr %81, metadata !1043, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata ptr %81, metadata !1204, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 1, metadata !1209, metadata !DIExpression()), !dbg !1222
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #37, !dbg !1224
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1210, metadata !DIExpression()), !dbg !1225
  %86 = call ptr @get_root_dev_ino(ptr noundef nonnull %5) #37, !dbg !1226
  call void @llvm.dbg.value(metadata ptr %86, metadata !1219, metadata !DIExpression()), !dbg !1222
  %87 = icmp eq ptr %86, null, !dbg !1227
  br i1 %87, label %88, label %93, !dbg !1229

88:                                               ; preds = %80
  %89 = tail call ptr @__errno_location() #40, !dbg !1230
  %90 = load i32, ptr %89, align 4, !dbg !1230, !tbaa !878
  %91 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #37, !dbg !1230
  %92 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull @.str.61) #37, !dbg !1230
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %90, ptr noundef %91, ptr noundef %92) #37, !dbg !1230
  unreachable, !dbg !1230

93:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #37, !dbg !1231
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1221, metadata !DIExpression()), !dbg !1232
  %94 = call i32 @stat(ptr noundef nonnull @.str.59, ptr noundef nonnull %6) #37, !dbg !1233
  %95 = icmp slt i32 %94, 0, !dbg !1235
  br i1 %95, label %108, label %96, !dbg !1236

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.timespec, ptr %86, i64 0, i32 1
  %98 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 1
  call void @llvm.dbg.value(metadata i64 1, metadata !1209, metadata !DIExpression()), !dbg !1222
  %99 = load i64, ptr %6, align 8, !dbg !1237, !tbaa !1163
  %100 = load i64, ptr %97, align 8, !dbg !1237, !tbaa !1240
  %101 = load i64, ptr %98, align 8, !dbg !1237, !tbaa !1167
  %102 = load i64, ptr %86, align 8, !dbg !1237, !tbaa !1242
  %103 = icmp eq i64 %99, %100, !dbg !1237
  %104 = icmp eq i64 %101, %102, !dbg !1237
  %105 = and i1 %103, %104, !dbg !1237
  br i1 %105, label %224, label %106, !dbg !1243

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 1
  br label %113, !dbg !1243

108:                                              ; preds = %93
  %109 = tail call ptr @__errno_location() #40, !dbg !1244
  %110 = load i32, ptr %109, align 4, !dbg !1244, !tbaa !878
  %111 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #37, !dbg !1244
  %112 = call ptr @quotearg_style(i32 noundef 4, ptr noundef nonnull @.str.59) #37, !dbg !1244
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %110, ptr noundef %111, ptr noundef %112) #37, !dbg !1244
  unreachable, !dbg !1244

113:                                              ; preds = %216, %106
  %114 = phi i64 [ %101, %106 ], [ %219, %216 ]
  %115 = phi i64 [ %99, %106 ], [ %217, %216 ]
  %116 = phi i64 [ 1, %106 ], [ %117, %216 ]
  call void @llvm.dbg.value(metadata i64 %116, metadata !1209, metadata !DIExpression()), !dbg !1222
  %117 = add i64 %116, 1, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %117, metadata !1209, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata ptr %6, metadata !1246, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata ptr %81, metadata !1252, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %116, metadata !1253, metadata !DIExpression()), !dbg !1282
  %118 = call ptr @opendir(ptr noundef nonnull @.str.63), !dbg !1284
  call void @llvm.dbg.value(metadata ptr %118, metadata !1254, metadata !DIExpression()), !dbg !1282
  %119 = icmp eq ptr %118, null, !dbg !1285
  br i1 %119, label %120, label %126, !dbg !1287

120:                                              ; preds = %113
  %121 = tail call ptr @__errno_location() #40, !dbg !1288
  %122 = load i32, ptr %121, align 4, !dbg !1288, !tbaa !878
  %123 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #37, !dbg !1288
  %124 = call fastcc ptr @nth_parent(i64 noundef %116), !dbg !1288
  %125 = call ptr @quote(ptr noundef nonnull %124) #37, !dbg !1288
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %122, ptr noundef %123, ptr noundef %125) #37, !dbg !1288
  unreachable, !dbg !1288

126:                                              ; preds = %113
  %127 = call i32 @dirfd(ptr noundef nonnull %118) #37, !dbg !1289
  call void @llvm.dbg.value(metadata i32 %127, metadata !1259, metadata !DIExpression()), !dbg !1282
  %128 = icmp sgt i32 %127, -1, !dbg !1290
  br i1 %128, label %129, label %132, !dbg !1292

129:                                              ; preds = %126
  %130 = call i32 @fchdir(i32 noundef %127) #37, !dbg !1293
  %131 = icmp slt i32 %130, 0, !dbg !1294
  br i1 %131, label %135, label %141, !dbg !1295

132:                                              ; preds = %126
  %133 = call i32 @chdir(ptr noundef nonnull @.str.63) #37, !dbg !1296
  %134 = icmp slt i32 %133, 0, !dbg !1294
  br i1 %134, label %135, label %143, !dbg !1295

135:                                              ; preds = %132, %129
  %136 = tail call ptr @__errno_location() #40, !dbg !1297
  %137 = load i32, ptr %136, align 4, !dbg !1297, !tbaa !878
  %138 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.65, i32 noundef 5) #37, !dbg !1297
  %139 = call fastcc ptr @nth_parent(i64 noundef %116), !dbg !1297
  %140 = call ptr @quote(ptr noundef nonnull %139) #37, !dbg !1297
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %137, ptr noundef %138, ptr noundef %140) #37, !dbg !1297
  unreachable, !dbg !1297

141:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #37, !dbg !1298
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1260, metadata !DIExpression()), !dbg !1299
  %142 = call i32 @fstat(i32 noundef %127, ptr noundef nonnull %3) #37, !dbg !1300
  br label %145, !dbg !1302

143:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #37, !dbg !1298
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1260, metadata !DIExpression()), !dbg !1299
  %144 = call i32 @stat(ptr noundef nonnull @.str.59, ptr noundef nonnull %3) #37, !dbg !1303
  br label %145, !dbg !1302

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ], !dbg !1302
  %147 = icmp slt i32 %146, 0, !dbg !1304
  br i1 %147, label %148, label %154, !dbg !1305

148:                                              ; preds = %145
  %149 = tail call ptr @__errno_location() #40, !dbg !1306
  %150 = load i32, ptr %149, align 4, !dbg !1306, !tbaa !878
  %151 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #37, !dbg !1306
  %152 = call fastcc ptr @nth_parent(i64 noundef %116), !dbg !1306
  %153 = call ptr @quote(ptr noundef nonnull %152) #37, !dbg !1306
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %150, ptr noundef %151, ptr noundef %153) #37, !dbg !1306
  unreachable, !dbg !1306

154:                                              ; preds = %145
  %155 = load i64, ptr %3, align 8, !dbg !1307, !tbaa !1163
  %156 = icmp ne i64 %155, %115, !dbg !1308
  call void @llvm.dbg.value(metadata i1 %156, metadata !1261, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1282
  call void @llvm.dbg.value(metadata i8 0, metadata !1262, metadata !DIExpression()), !dbg !1282
  %157 = tail call ptr @__errno_location() #40, !dbg !1282
  br label %158, !dbg !1309

158:                                              ; preds = %198, %154
  call void @llvm.dbg.value(metadata ptr %118, metadata !1254, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i8 0, metadata !1262, metadata !DIExpression()), !dbg !1282
  store i32 0, ptr %157, align 4, !dbg !1310, !tbaa !878
  call void @llvm.dbg.value(metadata ptr %118, metadata !1311, metadata !DIExpression()), !dbg !1318
  br label %159, !dbg !1320

159:                                              ; preds = %166, %158
  %160 = call ptr @readdir(ptr noundef nonnull %118) #37, !dbg !1321
  call void @llvm.dbg.value(metadata ptr %160, metadata !1316, metadata !DIExpression()), !dbg !1322
  %161 = icmp eq ptr %160, null, !dbg !1323
  br i1 %161, label %177, label %162, !dbg !1325

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.dirent, ptr %160, i64 0, i32 4, !dbg !1326
  call void @llvm.dbg.value(metadata ptr %163, metadata !1327, metadata !DIExpression()), !dbg !1335
  %164 = load i8, ptr %163, align 1, !dbg !1337, !tbaa !887
  %165 = icmp eq i8 %164, 46, !dbg !1338
  br i1 %165, label %166, label %182, !dbg !1339

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.dirent, ptr %160, i64 0, i32 4, i64 1, !dbg !1340
  %168 = load i8, ptr %167, align 1, !dbg !1340, !tbaa !887
  %169 = icmp eq i8 %168, 46, !dbg !1341
  %170 = select i1 %169, i64 2, i64 1, !dbg !1342
  %171 = getelementptr inbounds i8, ptr %163, i64 %170, !dbg !1343
  %172 = load i8, ptr %171, align 1, !dbg !1343, !tbaa !887
  call void @llvm.dbg.value(metadata i8 %172, metadata !1332, metadata !DIExpression()), !dbg !1344
  %173 = icmp eq i8 %172, 0, !dbg !1345
  %174 = icmp eq i8 %172, 47, !dbg !1346
  %175 = or i1 %173, %174, !dbg !1346
  %176 = freeze i1 %175
  br i1 %176, label %159, label %182, !dbg !1347

177:                                              ; preds = %159
  call void @llvm.dbg.value(metadata ptr undef, metadata !1263, metadata !DIExpression()), !dbg !1348
  %178 = load i32, ptr %157, align 4, !dbg !1349, !tbaa !878
  %179 = icmp eq i32 %178, 0, !dbg !1349
  %180 = call i32 @closedir(ptr noundef nonnull %118), !dbg !1282
  br i1 %179, label %199, label %181, !dbg !1350

181:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i32 %178, metadata !1275, metadata !DIExpression()), !dbg !1351
  store i32 %178, ptr %157, align 4, !dbg !1352, !tbaa !878
  call void @llvm.dbg.value(metadata ptr null, metadata !1254, metadata !DIExpression()), !dbg !1282
  br label %207, !dbg !1353

182:                                              ; preds = %166, %162
  call void @llvm.dbg.value(metadata ptr %160, metadata !1263, metadata !DIExpression()), !dbg !1348
  %183 = load i64, ptr %160, align 8, !dbg !1355, !tbaa !1356
  call void @llvm.dbg.value(metadata i64 %183, metadata !1280, metadata !DIExpression()), !dbg !1348
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #37, !dbg !1358
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1281, metadata !DIExpression()), !dbg !1359
  %184 = icmp eq i64 %183, 0, !dbg !1360
  %185 = select i1 %184, i1 true, i1 %156, !dbg !1362
  br i1 %185, label %186, label %191, !dbg !1362

186:                                              ; preds = %182
  %187 = call i32 @lstat(ptr noundef nonnull %163, ptr noundef nonnull %4) #37, !dbg !1363
  %188 = icmp slt i32 %187, 0, !dbg !1366
  br i1 %188, label %198, label %189, !dbg !1367, !llvm.loop !1368

189:                                              ; preds = %186
  %190 = load i64, ptr %107, align 8, !dbg !1370, !tbaa !1167
  call void @llvm.dbg.value(metadata i64 %190, metadata !1280, metadata !DIExpression()), !dbg !1348
  br label %191, !dbg !1371

191:                                              ; preds = %189, %182
  %192 = phi i64 [ %190, %189 ], [ %183, %182 ], !dbg !1348
  call void @llvm.dbg.value(metadata i64 %192, metadata !1280, metadata !DIExpression()), !dbg !1348
  %193 = icmp eq i64 %192, %114, !dbg !1372
  br i1 %193, label %194, label %198, !dbg !1374, !llvm.loop !1375

194:                                              ; preds = %191
  %195 = load i64, ptr %4, align 8
  %196 = icmp ne i64 %195, %115
  %197 = select i1 %156, i1 %196, i1 false, !dbg !1376
  br i1 %197, label %198, label %201, !dbg !1376

198:                                              ; preds = %194, %191, %186
  call void @llvm.dbg.value(metadata i8 0, metadata !1262, metadata !DIExpression()), !dbg !1282
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #37, !dbg !1369
  call void @llvm.dbg.value(metadata ptr %118, metadata !1254, metadata !DIExpression()), !dbg !1282
  br label %158

199:                                              ; preds = %177
  %200 = icmp eq i32 %180, 0, !dbg !1378
  br i1 %200, label %212, label %205, !dbg !1379

201:                                              ; preds = %194
  %202 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %163) #38, !dbg !1380
  call fastcc void @file_name_prepend(ptr noundef nonnull %81, ptr noundef nonnull %163, i64 noundef %202), !dbg !1382
  call void @llvm.dbg.value(metadata i8 1, metadata !1262, metadata !DIExpression()), !dbg !1282
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #37, !dbg !1369
  call void @llvm.dbg.value(metadata ptr %118, metadata !1254, metadata !DIExpression()), !dbg !1282
  %203 = call i32 @closedir(ptr noundef nonnull %118), !dbg !1383
  %204 = icmp eq i32 %203, 0, !dbg !1378
  br i1 %204, label %216, label %205, !dbg !1379

205:                                              ; preds = %201, %199
  %206 = load i32, ptr %157, align 4, !dbg !1384, !tbaa !878
  br label %207, !dbg !1379

207:                                              ; preds = %205, %181
  %208 = phi i32 [ %206, %205 ], [ %178, %181 ], !dbg !1384
  %209 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.66, i32 noundef 5) #37, !dbg !1384
  %210 = call fastcc ptr @nth_parent(i64 noundef %116), !dbg !1384
  %211 = call ptr @quote(ptr noundef nonnull %210) #37, !dbg !1384
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %208, ptr noundef %209, ptr noundef %211) #37, !dbg !1384
  unreachable, !dbg !1384

212:                                              ; preds = %199
  %213 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #37, !dbg !1386
  %214 = call fastcc ptr @nth_parent(i64 noundef %116), !dbg !1386
  %215 = call ptr @quote(ptr noundef nonnull %214) #37, !dbg !1386
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %213, ptr noundef %215) #37, !dbg !1386
  unreachable, !dbg !1386

216:                                              ; preds = %201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(144) %3, i64 144, i1 false), !dbg !1388, !tbaa.struct !1389
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #37, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %117, metadata !1209, metadata !DIExpression()), !dbg !1222
  %217 = load i64, ptr %6, align 8, !dbg !1237, !tbaa !1163
  %218 = load i64, ptr %97, align 8, !dbg !1237, !tbaa !1240
  %219 = load i64, ptr %98, align 8, !dbg !1237, !tbaa !1167
  %220 = load i64, ptr %86, align 8, !dbg !1237, !tbaa !1242
  %221 = icmp eq i64 %217, %218, !dbg !1237
  %222 = icmp eq i64 %219, %220, !dbg !1237
  %223 = and i1 %221, %222, !dbg !1237
  br i1 %223, label %224, label %113, !dbg !1243, !llvm.loop !1392

224:                                              ; preds = %216, %96
  %225 = load ptr, ptr %85, align 8, !dbg !1395, !tbaa !1201
  %226 = load i8, ptr %225, align 1, !dbg !1397, !tbaa !887
  %227 = icmp eq i8 %226, 0, !dbg !1398
  br i1 %227, label %228, label %230, !dbg !1399

228:                                              ; preds = %224
  call fastcc void @file_name_prepend(ptr noundef nonnull %81, ptr noundef nonnull @.str.11, i64 noundef 0), !dbg !1400
  %229 = load ptr, ptr %85, align 8, !dbg !1401, !tbaa !1201
  br label %230, !dbg !1400

230:                                              ; preds = %224, %228
  %231 = phi ptr [ %225, %224 ], [ %229, %228 ], !dbg !1401
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #37, !dbg !1402
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #37, !dbg !1402
  %232 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %231), !dbg !1403
  call void @llvm.dbg.value(metadata ptr %81, metadata !1404, metadata !DIExpression()), !dbg !1407
  %233 = load ptr, ptr %81, align 8, !dbg !1409, !tbaa !1197
  call void @free(ptr noundef %233) #37, !dbg !1410
  call void @free(ptr noundef nonnull %81) #37, !dbg !1411
  br label %234

234:                                              ; preds = %73, %78, %230
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
  br i1 %3, label %19, label %4, !dbg !1459

4:                                                ; preds = %1
  %5 = and i64 %0, 3, !dbg !1459
  %6 = icmp ult i64 %0, 4, !dbg !1459
  br i1 %6, label %9, label %7, !dbg !1459

7:                                                ; preds = %4
  %8 = and i64 %0, -4, !dbg !1459
  br label %22, !dbg !1459

9:                                                ; preds = %22, %4
  %10 = phi ptr [ undef, %4 ], [ %28, %22 ]
  %11 = phi ptr [ %2, %4 ], [ %28, %22 ]
  %12 = icmp eq i64 %5, 0, !dbg !1459
  br i1 %12, label %19, label %13, !dbg !1459

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %9 ]
  %15 = phi i64 [ %17, %13 ], [ 0, %9 ]
  call void @llvm.dbg.value(metadata i64 poison, metadata !1452, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata ptr %14, metadata !1451, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata ptr %14, metadata !1460, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata ptr @.str.68, metadata !1467, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i64 3, metadata !1468, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %14, ptr noundef nonnull align 1 dereferenceable(3) @.str.68, i64 noundef 3, i1 noundef false) #37, !dbg !1472
  %16 = getelementptr inbounds i8, ptr %14, i64 3, !dbg !1473
  call void @llvm.dbg.value(metadata ptr %16, metadata !1451, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 poison, metadata !1452, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1456
  %17 = add i64 %15, 1, !dbg !1459
  %18 = icmp eq i64 %17, %5, !dbg !1459
  br i1 %18, label %19, label %13, !dbg !1459, !llvm.loop !1474

19:                                               ; preds = %9, %13, %1
  %20 = phi ptr [ %2, %1 ], [ %10, %9 ], [ %16, %13 ], !dbg !1454
  %21 = getelementptr inbounds i8, ptr %20, i64 -1, !dbg !1476
  store i8 0, ptr %21, align 1, !dbg !1477, !tbaa !887
  ret ptr %2, !dbg !1478

22:                                               ; preds = %22, %7
  %23 = phi ptr [ %2, %7 ], [ %28, %22 ]
  %24 = phi i64 [ 0, %7 ], [ %29, %22 ]
  call void @llvm.dbg.value(metadata i64 poison, metadata !1452, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata ptr %23, metadata !1451, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata ptr %23, metadata !1460, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata ptr @.str.68, metadata !1467, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i64 3, metadata !1468, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %23, ptr noundef nonnull align 1 dereferenceable(3) @.str.68, i64 noundef 3, i1 noundef false) #37, !dbg !1472
  %25 = getelementptr inbounds i8, ptr %23, i64 3, !dbg !1473
  call void @llvm.dbg.value(metadata ptr %25, metadata !1451, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 poison, metadata !1452, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1456
  call void @llvm.dbg.value(metadata i64 poison, metadata !1452, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1456
  call void @llvm.dbg.value(metadata ptr %25, metadata !1451, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata ptr %25, metadata !1460, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata ptr @.str.68, metadata !1467, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i64 3, metadata !1468, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %25, ptr noundef nonnull align 1 dereferenceable(3) @.str.68, i64 noundef 3, i1 noundef false) #37, !dbg !1472
  %26 = getelementptr inbounds i8, ptr %23, i64 6, !dbg !1473
  call void @llvm.dbg.value(metadata ptr %26, metadata !1451, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 poison, metadata !1452, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1456
  call void @llvm.dbg.value(metadata i64 poison, metadata !1452, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1456
  call void @llvm.dbg.value(metadata ptr %26, metadata !1451, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata ptr %26, metadata !1460, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata ptr @.str.68, metadata !1467, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i64 3, metadata !1468, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %26, ptr noundef nonnull align 1 dereferenceable(3) @.str.68, i64 noundef 3, i1 noundef false) #37, !dbg !1472
  %27 = getelementptr inbounds i8, ptr %23, i64 9, !dbg !1473
  call void @llvm.dbg.value(metadata ptr %27, metadata !1451, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 poison, metadata !1452, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1456
  call void @llvm.dbg.value(metadata i64 poison, metadata !1452, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1456
  call void @llvm.dbg.value(metadata ptr %27, metadata !1451, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata ptr %27, metadata !1460, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata ptr @.str.68, metadata !1467, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i64 3, metadata !1468, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %27, ptr noundef nonnull align 1 dereferenceable(3) @.str.68, i64 noundef 3, i1 noundef false) #37, !dbg !1472
  %28 = getelementptr inbounds i8, ptr %23, i64 12, !dbg !1473
  call void @llvm.dbg.value(metadata ptr %28, metadata !1451, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 poison, metadata !1452, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1456
  %29 = add i64 %24, 4, !dbg !1459
  %30 = icmp eq i64 %29, %8, !dbg !1459
  br i1 %30, label %9, label %22, !dbg !1459, !llvm.loop !1479
}

; Function Attrs: nounwind
declare !dbg !1481 i32 @dirfd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1484 i32 @fchdir(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1488 i32 @chdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1489 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !1492 ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1496 noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1497 noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1498 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @file_name_prepend(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #10 !dbg !1501 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1505, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata ptr %1, metadata !1506, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i64 %2, metadata !1507, metadata !DIExpression()), !dbg !1513
  %4 = getelementptr inbounds %struct.file_name, ptr %0, i64 0, i32 2, !dbg !1514
  %5 = load ptr, ptr %4, align 8, !dbg !1514, !tbaa !1201
  %6 = load ptr, ptr %0, align 8, !dbg !1515, !tbaa !1197
  %7 = ptrtoint ptr %5 to i64, !dbg !1516
  %8 = ptrtoint ptr %6 to i64, !dbg !1516
  %9 = sub i64 %7, %8, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %9, metadata !1508, metadata !DIExpression()), !dbg !1513
  %10 = add i64 %2, 1, !dbg !1517
  %11 = icmp ugt i64 %10, %9, !dbg !1518
  br i1 %11, label %12, label %25, !dbg !1519

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.file_name, ptr %0, i64 0, i32 1, !dbg !1520
  %14 = load i64, ptr %13, align 8, !dbg !1520, !tbaa !1193
  %15 = sub nsw i64 %14, %9, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %15, metadata !1509, metadata !DIExpression()), !dbg !1522
  %16 = sub i64 %10, %9, !dbg !1523
  %17 = tail call nonnull ptr @xpalloc(ptr noundef null, ptr noundef nonnull %13, i64 noundef %16, i64 noundef -1, i64 noundef 1) #37, !dbg !1524
  call void @llvm.dbg.value(metadata ptr %17, metadata !1512, metadata !DIExpression()), !dbg !1522
  %18 = load i64, ptr %13, align 8, !dbg !1525, !tbaa !1193
  %19 = getelementptr inbounds i8, ptr %17, i64 %18, !dbg !1526
  %20 = sub i64 0, %15, !dbg !1527
  %21 = getelementptr inbounds i8, ptr %19, i64 %20, !dbg !1527
  %22 = load ptr, ptr %4, align 8, !dbg !1528, !tbaa !1201
  call void @llvm.dbg.value(metadata ptr %21, metadata !1460, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata ptr %22, metadata !1467, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i64 %15, metadata !1468, metadata !DIExpression()), !dbg !1529
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %21, ptr noundef nonnull align 1 %22, i64 noundef %15, i1 noundef false) #37, !dbg !1531
  store ptr %21, ptr %4, align 8, !dbg !1532, !tbaa !1201
  %23 = load ptr, ptr %0, align 8, !dbg !1533, !tbaa !1197
  tail call void @free(ptr noundef %23) #37, !dbg !1534
  store ptr %17, ptr %0, align 8, !dbg !1535, !tbaa !1197
  %24 = load ptr, ptr %4, align 8, !dbg !1536, !tbaa !1201
  br label %25, !dbg !1537

25:                                               ; preds = %12, %3
  %26 = phi ptr [ %24, %12 ], [ %5, %3 ], !dbg !1536
  %27 = xor i64 %2, -1, !dbg !1536
  %28 = getelementptr inbounds i8, ptr %26, i64 %27, !dbg !1536
  store ptr %28, ptr %4, align 8, !dbg !1536, !tbaa !1201
  store i8 47, ptr %28, align 1, !dbg !1538, !tbaa !887
  %29 = load ptr, ptr %4, align 8, !dbg !1539, !tbaa !1201
  %30 = getelementptr inbounds i8, ptr %29, i64 1, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %30, metadata !1460, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata ptr %1, metadata !1467, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i64 %2, metadata !1468, metadata !DIExpression()), !dbg !1541
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %30, ptr noundef nonnull align 1 %1, i64 noundef %2, i1 noundef false) #37, !dbg !1543
  ret void, !dbg !1544
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1545 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1547, metadata !DIExpression()), !dbg !1548
  store ptr %0, ptr @file_name, align 8, !dbg !1549, !tbaa !813
  ret void, !dbg !1550
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #14 !dbg !1551 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1555, metadata !DIExpression()), !dbg !1556
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1557, !tbaa !1558
  ret void, !dbg !1560
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1561 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1566, !tbaa !813
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1567
  %3 = icmp eq i32 %2, 0, !dbg !1568
  br i1 %3, label %22, label %4, !dbg !1569

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1570, !tbaa !1558, !range !1571, !noundef !862
  %6 = icmp eq i8 %5, 0, !dbg !1570
  br i1 %6, label %11, label %7, !dbg !1572

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1573
  %9 = load i32, ptr %8, align 4, !dbg !1573, !tbaa !878
  %10 = icmp eq i32 %9, 32, !dbg !1574
  br i1 %10, label %22, label %11, !dbg !1575

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1.26, i32 noundef 5) #37, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %12, metadata !1563, metadata !DIExpression()), !dbg !1577
  %13 = load ptr, ptr @file_name, align 8, !dbg !1578, !tbaa !813
  %14 = icmp eq ptr %13, null, !dbg !1578
  %15 = tail call ptr @__errno_location() #40, !dbg !1580
  %16 = load i32, ptr %15, align 4, !dbg !1580, !tbaa !878
  br i1 %14, label %19, label %17, !dbg !1581

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1582
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.27, ptr noundef %18, ptr noundef %12) #37, !dbg !1582
  br label %20, !dbg !1582

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.28, ptr noundef %12) #37, !dbg !1583
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1584, !tbaa !878
  tail call void @_exit(i32 noundef %21) #39, !dbg !1585
  unreachable, !dbg !1585

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1586, !tbaa !813
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1588
  %25 = icmp eq i32 %24, 0, !dbg !1589
  br i1 %25, label %28, label %26, !dbg !1590

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1591, !tbaa !878
  tail call void @_exit(i32 noundef %27) #39, !dbg !1592
  unreachable, !dbg !1592

28:                                               ; preds = %22
  ret void, !dbg !1593
}

; Function Attrs: noreturn
declare !dbg !1594 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #16 !dbg !1595 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1599, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 %1, metadata !1600, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata ptr %2, metadata !1601, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata ptr %3, metadata !1602, metadata !DIExpression()), !dbg !1603
  tail call fastcc void @flush_stdout(), !dbg !1604
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1605, !tbaa !813
  %6 = icmp eq ptr %5, null, !dbg !1605
  br i1 %6, label %8, label %7, !dbg !1607

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1608
  br label %12, !dbg !1608

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1609, !tbaa !813
  %10 = tail call ptr @getprogname() #38, !dbg !1609
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %10) #37, !dbg !1609
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1611
  ret void, !dbg !1612
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1613 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1615, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i32 1, metadata !1617, metadata !DIExpression()), !dbg !1620
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1623
  %2 = icmp slt i32 %1, 0, !dbg !1624
  br i1 %2, label %6, label %3, !dbg !1625

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1626, !tbaa !813
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1626
  br label %6, !dbg !1626

6:                                                ; preds = %3, %0
  ret void, !dbg !1627
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1628 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1630, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %1, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %2, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %3, metadata !1633, metadata !DIExpression()), !dbg !1634
  %6 = load ptr, ptr @stderr, align 8, !dbg !1635, !tbaa !813
  call void @llvm.dbg.value(metadata ptr %6, metadata !1636, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata ptr %2, metadata !1676, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata ptr %3, metadata !1677, metadata !DIExpression()), !dbg !1678
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1680
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1681, !tbaa !878
  %9 = add i32 %8, 1, !dbg !1681
  store i32 %9, ptr @error_message_count, align 4, !dbg !1681, !tbaa !878
  %10 = icmp eq i32 %1, 0, !dbg !1682
  br i1 %10, label %20, label %11, !dbg !1684

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1685, metadata !DIExpression()), !dbg !1693
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1695
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1689, metadata !DIExpression()), !dbg !1696
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1697
  call void @llvm.dbg.value(metadata ptr %12, metadata !1688, metadata !DIExpression()), !dbg !1693
  %13 = icmp eq ptr %12, null, !dbg !1698
  br i1 %13, label %14, label %16, !dbg !1700

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.30, ptr noundef nonnull @.str.5.31, i32 noundef 5) #37, !dbg !1701
  call void @llvm.dbg.value(metadata ptr %15, metadata !1688, metadata !DIExpression()), !dbg !1693
  br label %16, !dbg !1702

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1693
  call void @llvm.dbg.value(metadata ptr %17, metadata !1688, metadata !DIExpression()), !dbg !1693
  %18 = load ptr, ptr @stderr, align 8, !dbg !1703, !tbaa !813
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.32, ptr noundef %17) #37, !dbg !1703
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1704
  br label %20, !dbg !1705

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1706, !tbaa !813
  call void @llvm.dbg.value(metadata i32 10, metadata !1707, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %21, metadata !1713, metadata !DIExpression()), !dbg !1714
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1716
  %23 = load ptr, ptr %22, align 8, !dbg !1716, !tbaa !1717
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1716
  %25 = load ptr, ptr %24, align 8, !dbg !1716, !tbaa !1719
  %26 = icmp ult ptr %23, %25, !dbg !1716
  br i1 %26, label %29, label %27, !dbg !1716, !prof !1720

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1716
  br label %31, !dbg !1716

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1716
  store ptr %30, ptr %22, align 8, !dbg !1716, !tbaa !1717
  store i8 10, ptr %23, align 1, !dbg !1716, !tbaa !887
  br label %31, !dbg !1716

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1721, !tbaa !813
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1721
  %34 = icmp eq i32 %0, 0, !dbg !1722
  br i1 %34, label %36, label %35, !dbg !1724

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !1725
  unreachable, !dbg !1725

36:                                               ; preds = %31
  ret void, !dbg !1726
}

declare !dbg !1727 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1730 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1733 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1736 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1739 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1743 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1747, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i32 %1, metadata !1748, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata ptr %2, metadata !1749, metadata !DIExpression()), !dbg !1756
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1757
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1750, metadata !DIExpression()), !dbg !1758
  call void @llvm.va_start(ptr nonnull %4), !dbg !1759
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #44, !dbg !1760
  call void @llvm.va_end(ptr nonnull %4), !dbg !1761
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1762
  ret void, !dbg !1762
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #16 !dbg !433 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !445, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i32 %1, metadata !446, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata ptr %2, metadata !447, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i32 %3, metadata !448, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata ptr %4, metadata !449, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata ptr %5, metadata !450, metadata !DIExpression()), !dbg !1763
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1764, !tbaa !878
  %8 = icmp eq i32 %7, 0, !dbg !1764
  br i1 %8, label %23, label %9, !dbg !1766

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1767, !tbaa !878
  %11 = icmp eq i32 %10, %3, !dbg !1770
  br i1 %11, label %12, label %22, !dbg !1771

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1772, !tbaa !813
  %14 = icmp eq ptr %13, %2, !dbg !1773
  br i1 %14, label %36, label %15, !dbg !1774

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1775
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1776
  br i1 %18, label %19, label %22, !dbg !1776

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1777
  %21 = icmp eq i32 %20, 0, !dbg !1778
  br i1 %21, label %36, label %22, !dbg !1779

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1780, !tbaa !813
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1781, !tbaa !878
  br label %23, !dbg !1782

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1783
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1784, !tbaa !813
  %25 = icmp eq ptr %24, null, !dbg !1784
  br i1 %25, label %27, label %26, !dbg !1786

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1787
  br label %31, !dbg !1787

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1788, !tbaa !813
  %29 = tail call ptr @getprogname() #38, !dbg !1788
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.35, ptr noundef %29) #37, !dbg !1788
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1790, !tbaa !813
  %33 = icmp eq ptr %2, null, !dbg !1790
  %34 = select i1 %33, ptr @.str.3.36, ptr @.str.2.37, !dbg !1790
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1790
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1791
  br label %36, !dbg !1792

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1792
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1793 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1797, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i32 %1, metadata !1798, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %2, metadata !1799, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i32 %3, metadata !1800, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata ptr %4, metadata !1801, metadata !DIExpression()), !dbg !1803
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1804
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1802, metadata !DIExpression()), !dbg !1805
  call void @llvm.va_start(ptr nonnull %6), !dbg !1806
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #44, !dbg !1807
  call void @llvm.va_end(ptr nonnull %6), !dbg !1808
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1809
  ret void, !dbg !1809
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1810 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1811, !tbaa !813
  ret ptr %1, !dbg !1812
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1813 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1815, metadata !DIExpression()), !dbg !1818
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1819
  call void @llvm.dbg.value(metadata ptr %2, metadata !1816, metadata !DIExpression()), !dbg !1818
  %3 = icmp eq ptr %2, null, !dbg !1820
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1820
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1820
  call void @llvm.dbg.value(metadata ptr %5, metadata !1817, metadata !DIExpression()), !dbg !1818
  %6 = ptrtoint ptr %5 to i64, !dbg !1821
  %7 = ptrtoint ptr %0 to i64, !dbg !1821
  %8 = sub i64 %6, %7, !dbg !1821
  %9 = icmp sgt i64 %8, 6, !dbg !1823
  br i1 %9, label %10, label %19, !dbg !1824

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1825
  call void @llvm.dbg.value(metadata ptr %11, metadata !1826, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata ptr @.str.46, metadata !1831, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i64 7, metadata !1832, metadata !DIExpression()), !dbg !1833
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.46, i64 7), !dbg !1835
  %13 = icmp eq i32 %12, 0, !dbg !1836
  br i1 %13, label %14, label %19, !dbg !1837

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1815, metadata !DIExpression()), !dbg !1818
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.47, i64 noundef 3) #38, !dbg !1838
  %16 = icmp eq i32 %15, 0, !dbg !1841
  %17 = select i1 %16, i64 3, i64 0, !dbg !1842
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1842
  br label %19, !dbg !1842

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1818
  call void @llvm.dbg.value(metadata ptr %21, metadata !1817, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata ptr %20, metadata !1815, metadata !DIExpression()), !dbg !1818
  store ptr %20, ptr @program_name, align 8, !dbg !1843, !tbaa !813
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1844, !tbaa !813
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1845, !tbaa !813
  ret void, !dbg !1846
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1847 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !484 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !491, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata ptr %1, metadata !492, metadata !DIExpression()), !dbg !1848
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1849
  call void @llvm.dbg.value(metadata ptr %5, metadata !493, metadata !DIExpression()), !dbg !1848
  %6 = icmp eq ptr %5, %0, !dbg !1850
  br i1 %6, label %7, label %14, !dbg !1852

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1853
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1854
  call void @llvm.dbg.declare(metadata ptr %4, metadata !499, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata ptr %4, metadata !1856, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata ptr %4, metadata !1865, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 0, metadata !1870, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 8, metadata !1871, metadata !DIExpression()), !dbg !1872
  store i64 0, ptr %4, align 8, !dbg !1874
  call void @llvm.dbg.value(metadata ptr %3, metadata !494, metadata !DIExpression(DW_OP_deref)), !dbg !1848
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1875
  %9 = icmp eq i64 %8, 2, !dbg !1877
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !494, metadata !DIExpression()), !dbg !1848
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1878
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1848
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1879
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1879
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1848
  ret ptr %15, !dbg !1879
}

; Function Attrs: nounwind
declare !dbg !1880 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1886 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1891, metadata !DIExpression()), !dbg !1894
  %2 = tail call ptr @__errno_location() #40, !dbg !1895
  %3 = load i32, ptr %2, align 4, !dbg !1895, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %3, metadata !1892, metadata !DIExpression()), !dbg !1894
  %4 = icmp eq ptr %0, null, !dbg !1896
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1896
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #45, !dbg !1897
  call void @llvm.dbg.value(metadata ptr %6, metadata !1893, metadata !DIExpression()), !dbg !1894
  store i32 %3, ptr %2, align 4, !dbg !1898, !tbaa !878
  ret ptr %6, !dbg !1899
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1900 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1906, metadata !DIExpression()), !dbg !1907
  %2 = icmp eq ptr %0, null, !dbg !1908
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1908
  %4 = load i32, ptr %3, align 8, !dbg !1909, !tbaa !1910
  ret i32 %4, !dbg !1912
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1913 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1917, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i32 %1, metadata !1918, metadata !DIExpression()), !dbg !1919
  %3 = icmp eq ptr %0, null, !dbg !1920
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1920
  store i32 %1, ptr %4, align 8, !dbg !1921, !tbaa !1910
  ret void, !dbg !1922
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1923 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1927, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 %1, metadata !1928, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i32 %2, metadata !1929, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8 %1, metadata !1930, metadata !DIExpression()), !dbg !1935
  %4 = icmp eq ptr %0, null, !dbg !1936
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1936
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1937
  %7 = lshr i8 %1, 5, !dbg !1938
  %8 = zext i8 %7 to i64, !dbg !1938
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1939
  call void @llvm.dbg.value(metadata ptr %9, metadata !1931, metadata !DIExpression()), !dbg !1935
  %10 = and i8 %1, 31, !dbg !1940
  %11 = zext i8 %10 to i32, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %11, metadata !1933, metadata !DIExpression()), !dbg !1935
  %12 = load i32, ptr %9, align 4, !dbg !1941, !tbaa !878
  %13 = lshr i32 %12, %11, !dbg !1942
  %14 = and i32 %13, 1, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %14, metadata !1934, metadata !DIExpression()), !dbg !1935
  %15 = xor i32 %13, %2, !dbg !1944
  %16 = and i32 %15, 1, !dbg !1944
  %17 = shl nuw i32 %16, %11, !dbg !1945
  %18 = xor i32 %17, %12, !dbg !1946
  store i32 %18, ptr %9, align 4, !dbg !1946, !tbaa !878
  ret i32 %14, !dbg !1947
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1948 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1952, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i32 %1, metadata !1953, metadata !DIExpression()), !dbg !1955
  %3 = icmp eq ptr %0, null, !dbg !1956
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1958
  call void @llvm.dbg.value(metadata ptr %4, metadata !1952, metadata !DIExpression()), !dbg !1955
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1959
  %6 = load i32, ptr %5, align 4, !dbg !1959, !tbaa !1960
  call void @llvm.dbg.value(metadata i32 %6, metadata !1954, metadata !DIExpression()), !dbg !1955
  store i32 %1, ptr %5, align 4, !dbg !1961, !tbaa !1960
  ret i32 %6, !dbg !1962
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1963 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1967, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata ptr %1, metadata !1968, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata ptr %2, metadata !1969, metadata !DIExpression()), !dbg !1970
  %4 = icmp eq ptr %0, null, !dbg !1971
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1973
  call void @llvm.dbg.value(metadata ptr %5, metadata !1967, metadata !DIExpression()), !dbg !1970
  store i32 10, ptr %5, align 8, !dbg !1974, !tbaa !1910
  %6 = icmp ne ptr %1, null, !dbg !1975
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1977
  br i1 %8, label %10, label %9, !dbg !1977

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1978
  unreachable, !dbg !1978

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1979
  store ptr %1, ptr %11, align 8, !dbg !1980, !tbaa !1981
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1982
  store ptr %2, ptr %12, align 8, !dbg !1983, !tbaa !1984
  ret void, !dbg !1985
}

; Function Attrs: noreturn nounwind
declare !dbg !1986 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1987 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1991, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %1, metadata !1992, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata ptr %2, metadata !1993, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %3, metadata !1994, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata ptr %4, metadata !1995, metadata !DIExpression()), !dbg !1999
  %6 = icmp eq ptr %4, null, !dbg !2000
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2000
  call void @llvm.dbg.value(metadata ptr %7, metadata !1996, metadata !DIExpression()), !dbg !1999
  %8 = tail call ptr @__errno_location() #40, !dbg !2001
  %9 = load i32, ptr %8, align 4, !dbg !2001, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %9, metadata !1997, metadata !DIExpression()), !dbg !1999
  %10 = load i32, ptr %7, align 8, !dbg !2002, !tbaa !1910
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2003
  %12 = load i32, ptr %11, align 4, !dbg !2003, !tbaa !1960
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2004
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2005
  %15 = load ptr, ptr %14, align 8, !dbg !2005, !tbaa !1981
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2006
  %17 = load ptr, ptr %16, align 8, !dbg !2006, !tbaa !1984
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %18, metadata !1998, metadata !DIExpression()), !dbg !1999
  store i32 %9, ptr %8, align 4, !dbg !2008, !tbaa !878
  ret i64 %18, !dbg !2009
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2010 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2016, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %1, metadata !2017, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr %2, metadata !2018, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %3, metadata !2019, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %4, metadata !2020, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %5, metadata !2021, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr %6, metadata !2022, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr %7, metadata !2023, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr %8, metadata !2024, metadata !DIExpression()), !dbg !2078
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !2079
  %17 = icmp eq i64 %16, 1, !dbg !2080
  call void @llvm.dbg.value(metadata i1 %17, metadata !2025, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2078
  call void @llvm.dbg.value(metadata i64 0, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 0, metadata !2027, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr null, metadata !2028, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 0, metadata !2029, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2030, metadata !DIExpression()), !dbg !2078
  %18 = trunc i32 %5 to i8, !dbg !2081
  %19 = lshr i8 %18, 1, !dbg !2081
  %20 = and i8 %19, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i8 %20, metadata !2031, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2032, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 1, metadata !2033, metadata !DIExpression()), !dbg !2078
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2082

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !2083
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !2084
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !2085
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !2086
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !2078
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !2087
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !2088
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2017, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %39, metadata !2033, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %38, metadata !2032, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %37, metadata !2031, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %36, metadata !2030, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %35, metadata !2029, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr %34, metadata !2028, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %33, metadata !2027, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 0, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %32, metadata !2019, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr %31, metadata !2024, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr %30, metadata !2023, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %29, metadata !2020, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.label(metadata !2071), !dbg !2089
  call void @llvm.dbg.value(metadata i8 0, metadata !2034, metadata !DIExpression()), !dbg !2078
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
  ], !dbg !2090

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2031, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 5, metadata !2020, metadata !DIExpression()), !dbg !2078
  br label %115, !dbg !2091

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !2031, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 5, metadata !2020, metadata !DIExpression()), !dbg !2078
  %43 = and i8 %37, 1, !dbg !2092
  %44 = icmp eq i8 %43, 0, !dbg !2092
  br i1 %44, label %45, label %115, !dbg !2091

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2094
  br i1 %46, label %115, label %47, !dbg !2097

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2094, !tbaa !887
  br label %115, !dbg !2094

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.79, metadata !580, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %29, metadata !581, metadata !DIExpression()), !dbg !2098
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.80, ptr noundef nonnull @.str.11.79, i32 noundef 5) #37, !dbg !2102
  call void @llvm.dbg.value(metadata ptr %49, metadata !582, metadata !DIExpression()), !dbg !2098
  %50 = icmp eq ptr %49, @.str.11.79, !dbg !2103
  br i1 %50, label %51, label %60, !dbg !2105

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !2106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !2107
  call void @llvm.dbg.declare(metadata ptr %13, metadata !584, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata ptr %13, metadata !2109, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata ptr %13, metadata !2117, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i32 0, metadata !2120, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i64 8, metadata !2121, metadata !DIExpression()), !dbg !2122
  store i64 0, ptr %13, align 8, !dbg !2124
  call void @llvm.dbg.value(metadata ptr %12, metadata !583, metadata !DIExpression(DW_OP_deref)), !dbg !2098
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !2125
  %53 = icmp eq i64 %52, 3, !dbg !2127
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !583, metadata !DIExpression()), !dbg !2098
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2128
  %57 = icmp eq i32 %29, 9, !dbg !2128
  %58 = select i1 %57, ptr @.str.10.81, ptr @.str.12.82, !dbg !2128
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2128
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !2129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !2129
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2098
  call void @llvm.dbg.value(metadata ptr %61, metadata !2023, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr @.str.12.82, metadata !580, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i32 %29, metadata !581, metadata !DIExpression()), !dbg !2130
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.80, ptr noundef nonnull @.str.12.82, i32 noundef 5) #37, !dbg !2132
  call void @llvm.dbg.value(metadata ptr %62, metadata !582, metadata !DIExpression()), !dbg !2130
  %63 = icmp eq ptr %62, @.str.12.82, !dbg !2133
  br i1 %63, label %64, label %73, !dbg !2134

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !2135
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !2136
  call void @llvm.dbg.declare(metadata ptr %11, metadata !584, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata ptr %11, metadata !2109, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata ptr %11, metadata !2117, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i32 0, metadata !2120, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i64 8, metadata !2121, metadata !DIExpression()), !dbg !2140
  store i64 0, ptr %11, align 8, !dbg !2142
  call void @llvm.dbg.value(metadata ptr %10, metadata !583, metadata !DIExpression(DW_OP_deref)), !dbg !2130
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !2143
  %66 = icmp eq i64 %65, 3, !dbg !2144
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !583, metadata !DIExpression()), !dbg !2130
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2145
  %70 = icmp eq i32 %29, 9, !dbg !2145
  %71 = select i1 %70, ptr @.str.10.81, ptr @.str.12.82, !dbg !2145
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2145
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !2146
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !2146
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !2024, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr %74, metadata !2023, metadata !DIExpression()), !dbg !2078
  %76 = and i8 %37, 1, !dbg !2147
  %77 = icmp eq i8 %76, 0, !dbg !2147
  br i1 %77, label %78, label %93, !dbg !2148

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !2035, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i64 0, metadata !2026, metadata !DIExpression()), !dbg !2078
  %79 = load i8, ptr %74, align 1, !dbg !2150, !tbaa !887
  %80 = icmp eq i8 %79, 0, !dbg !2152
  br i1 %80, label %93, label %81, !dbg !2152

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !2035, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i64 %84, metadata !2026, metadata !DIExpression()), !dbg !2078
  %85 = icmp ult i64 %84, %40, !dbg !2153
  br i1 %85, label %86, label %88, !dbg !2156

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2153
  store i8 %82, ptr %87, align 1, !dbg !2153, !tbaa !887
  br label %88, !dbg !2153

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %89, metadata !2026, metadata !DIExpression()), !dbg !2078
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2157
  call void @llvm.dbg.value(metadata ptr %90, metadata !2035, metadata !DIExpression()), !dbg !2149
  %91 = load i8, ptr %90, align 1, !dbg !2150, !tbaa !887
  %92 = icmp eq i8 %91, 0, !dbg !2152
  br i1 %92, label %93, label %81, !dbg !2152, !llvm.loop !2158

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2160
  call void @llvm.dbg.value(metadata i64 %94, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 1, metadata !2030, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr %75, metadata !2028, metadata !DIExpression()), !dbg !2078
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %95, metadata !2029, metadata !DIExpression()), !dbg !2078
  br label %115, !dbg !2162

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !2030, metadata !DIExpression()), !dbg !2078
  br label %97, !dbg !2163

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !2078
  call void @llvm.dbg.value(metadata i8 %98, metadata !2030, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 1, metadata !2031, metadata !DIExpression()), !dbg !2078
  br label %99, !dbg !2164

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !2086
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !2078
  call void @llvm.dbg.value(metadata i8 %101, metadata !2031, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %100, metadata !2030, metadata !DIExpression()), !dbg !2078
  %102 = and i8 %101, 1, !dbg !2165
  %103 = icmp eq i8 %102, 0, !dbg !2165
  %104 = select i1 %103, i8 1, i8 %100, !dbg !2167
  br label %105, !dbg !2167

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !2078
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !2081
  call void @llvm.dbg.value(metadata i8 %107, metadata !2031, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %106, metadata !2030, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 2, metadata !2020, metadata !DIExpression()), !dbg !2078
  %108 = and i8 %107, 1, !dbg !2168
  %109 = icmp eq i8 %108, 0, !dbg !2168
  br i1 %109, label %110, label %115, !dbg !2170

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !2171
  br i1 %111, label %115, label %112, !dbg !2174

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !2171, !tbaa !887
  br label %115, !dbg !2171

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !2031, metadata !DIExpression()), !dbg !2078
  br label %115, !dbg !2175

114:                                              ; preds = %28
  call void @abort() #39, !dbg !2176
  unreachable, !dbg !2176

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !2160
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.81, %45 ], [ @.str.10.81, %47 ], [ @.str.10.81, %42 ], [ %34, %28 ], [ @.str.12.82, %110 ], [ @.str.12.82, %112 ], [ @.str.12.82, %105 ], [ @.str.10.81, %41 ], !dbg !2078
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !2078
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !2078
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !2078
  call void @llvm.dbg.value(metadata i8 %123, metadata !2031, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %122, metadata !2030, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %121, metadata !2029, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr %120, metadata !2028, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %119, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr %118, metadata !2024, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata ptr %117, metadata !2023, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 %116, metadata !2020, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 0, metadata !2040, metadata !DIExpression()), !dbg !2177
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
  br label %138, !dbg !2178

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !2160
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !2083
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !2087
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !2088
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !2179
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !2180
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !2017, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %145, metadata !2040, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %144, metadata !2034, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %143, metadata !2033, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %142, metadata !2032, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %141, metadata !2027, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %140, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %139, metadata !2019, metadata !DIExpression()), !dbg !2078
  %147 = icmp eq i64 %139, -1, !dbg !2181
  br i1 %147, label %148, label %152, !dbg !2182

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2183
  %150 = load i8, ptr %149, align 1, !dbg !2183, !tbaa !887
  %151 = icmp eq i8 %150, 0, !dbg !2184
  br i1 %151, label %627, label %154, !dbg !2185

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2186
  br i1 %153, label %627, label %154, !dbg !2185

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 0, metadata !2045, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 0, metadata !2046, metadata !DIExpression()), !dbg !2187
  br i1 %129, label %155, label %170, !dbg !2188

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !2190
  %157 = select i1 %147, i1 %130, i1 false, !dbg !2191
  br i1 %157, label %158, label %160, !dbg !2191

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %159, metadata !2019, metadata !DIExpression()), !dbg !2078
  br label %160, !dbg !2193

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2193
  call void @llvm.dbg.value(metadata i64 %161, metadata !2019, metadata !DIExpression()), !dbg !2078
  %162 = icmp ugt i64 %156, %161, !dbg !2194
  br i1 %162, label %170, label %163, !dbg !2195

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2196
  call void @llvm.dbg.value(metadata ptr %164, metadata !2197, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata ptr %120, metadata !2200, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %121, metadata !2201, metadata !DIExpression()), !dbg !2202
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !2204
  %166 = icmp ne i32 %165, 0, !dbg !2205
  %167 = select i1 %166, i1 true, i1 %132, !dbg !2206
  %168 = xor i1 %166, true, !dbg !2206
  %169 = zext i1 %168 to i8, !dbg !2206
  br i1 %167, label %170, label %688, !dbg !2206

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2187
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2187
  call void @llvm.dbg.value(metadata i8 %173, metadata !2042, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 %171, metadata !2019, metadata !DIExpression()), !dbg !2078
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2207
  %175 = load i8, ptr %174, align 1, !dbg !2207, !tbaa !887
  call void @llvm.dbg.value(metadata i8 %175, metadata !2047, metadata !DIExpression()), !dbg !2187
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
  ], !dbg !2208

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !2209

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !2210

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !2045, metadata !DIExpression()), !dbg !2187
  %179 = and i8 %144, 1, !dbg !2214
  %180 = icmp eq i8 %179, 0, !dbg !2214
  %181 = select i1 %133, i1 %180, i1 false, !dbg !2214
  br i1 %181, label %182, label %198, !dbg !2214

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2216
  br i1 %183, label %184, label %186, !dbg !2220

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2216
  store i8 39, ptr %185, align 1, !dbg !2216, !tbaa !887
  br label %186, !dbg !2216

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %187, metadata !2026, metadata !DIExpression()), !dbg !2078
  %188 = icmp ult i64 %187, %146, !dbg !2221
  br i1 %188, label %189, label %191, !dbg !2224

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2221
  store i8 36, ptr %190, align 1, !dbg !2221, !tbaa !887
  br label %191, !dbg !2221

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %192, metadata !2026, metadata !DIExpression()), !dbg !2078
  %193 = icmp ult i64 %192, %146, !dbg !2225
  br i1 %193, label %194, label %196, !dbg !2228

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2225
  store i8 39, ptr %195, align 1, !dbg !2225, !tbaa !887
  br label %196, !dbg !2225

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %197, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 1, metadata !2034, metadata !DIExpression()), !dbg !2078
  br label %198, !dbg !2229

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2078
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2078
  call void @llvm.dbg.value(metadata i8 %200, metadata !2034, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %199, metadata !2026, metadata !DIExpression()), !dbg !2078
  %201 = icmp ult i64 %199, %146, !dbg !2230
  br i1 %201, label %202, label %204, !dbg !2233

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2230
  store i8 92, ptr %203, align 1, !dbg !2230, !tbaa !887
  br label %204, !dbg !2230

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %205, metadata !2026, metadata !DIExpression()), !dbg !2078
  br i1 %126, label %206, label %491, !dbg !2234

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2236
  %208 = icmp ult i64 %207, %171, !dbg !2237
  br i1 %208, label %209, label %480, !dbg !2238

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2239
  %211 = load i8, ptr %210, align 1, !dbg !2239, !tbaa !887
  %212 = add i8 %211, -48, !dbg !2240
  %213 = icmp ult i8 %212, 10, !dbg !2240
  br i1 %213, label %214, label %480, !dbg !2240

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2241
  br i1 %215, label %216, label %218, !dbg !2245

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2241
  store i8 48, ptr %217, align 1, !dbg !2241, !tbaa !887
  br label %218, !dbg !2241

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2245
  call void @llvm.dbg.value(metadata i64 %219, metadata !2026, metadata !DIExpression()), !dbg !2078
  %220 = icmp ult i64 %219, %146, !dbg !2246
  br i1 %220, label %221, label %223, !dbg !2249

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2246
  store i8 48, ptr %222, align 1, !dbg !2246, !tbaa !887
  br label %223, !dbg !2246

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %224, metadata !2026, metadata !DIExpression()), !dbg !2078
  br label %480, !dbg !2250

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !2251

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2252

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !2253

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !2255

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2257
  %231 = icmp ult i64 %230, %171, !dbg !2258
  br i1 %231, label %232, label %480, !dbg !2259

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !2260
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !2261
  %235 = load i8, ptr %234, align 1, !dbg !2261, !tbaa !887
  %236 = icmp eq i8 %235, 63, !dbg !2262
  br i1 %236, label %237, label %480, !dbg !2263

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2264
  %239 = load i8, ptr %238, align 1, !dbg !2264, !tbaa !887
  %240 = sext i8 %239 to i32, !dbg !2264
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
  ], !dbg !2265

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !2266

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !2047, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 %230, metadata !2040, metadata !DIExpression()), !dbg !2177
  %243 = icmp ult i64 %140, %146, !dbg !2268
  br i1 %243, label %244, label %246, !dbg !2271

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2268
  store i8 63, ptr %245, align 1, !dbg !2268, !tbaa !887
  br label %246, !dbg !2268

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %247, metadata !2026, metadata !DIExpression()), !dbg !2078
  %248 = icmp ult i64 %247, %146, !dbg !2272
  br i1 %248, label %249, label %251, !dbg !2275

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !2272
  store i8 34, ptr %250, align 1, !dbg !2272, !tbaa !887
  br label %251, !dbg !2272

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %252, metadata !2026, metadata !DIExpression()), !dbg !2078
  %253 = icmp ult i64 %252, %146, !dbg !2276
  br i1 %253, label %254, label %256, !dbg !2279

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !2276
  store i8 34, ptr %255, align 1, !dbg !2276, !tbaa !887
  br label %256, !dbg !2276

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %257, metadata !2026, metadata !DIExpression()), !dbg !2078
  %258 = icmp ult i64 %257, %146, !dbg !2280
  br i1 %258, label %259, label %261, !dbg !2283

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !2280
  store i8 63, ptr %260, align 1, !dbg !2280, !tbaa !887
  br label %261, !dbg !2280

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %262, metadata !2026, metadata !DIExpression()), !dbg !2078
  br label %480, !dbg !2284

263:                                              ; preds = %170
  br label %274, !dbg !2285

264:                                              ; preds = %170
  br label %274, !dbg !2286

265:                                              ; preds = %170
  br label %272, !dbg !2287

266:                                              ; preds = %170
  br label %272, !dbg !2288

267:                                              ; preds = %170
  br label %274, !dbg !2289

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !2290

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !2291

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !2294

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !2296

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !2297
  call void @llvm.dbg.label(metadata !2072), !dbg !2298
  br i1 %134, label %274, label %670, !dbg !2299

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !2297
  call void @llvm.dbg.label(metadata !2074), !dbg !2301
  br i1 %125, label %535, label %491, !dbg !2302

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !2303

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !2304, !tbaa !887
  %279 = icmp eq i8 %278, 0, !dbg !2306
  br i1 %279, label %280, label %480, !dbg !2307

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !2308
  br i1 %281, label %282, label %480, !dbg !2310

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2046, metadata !DIExpression()), !dbg !2187
  br label %283, !dbg !2311

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !2187
  call void @llvm.dbg.value(metadata i8 %284, metadata !2046, metadata !DIExpression()), !dbg !2187
  br i1 %134, label %480, label %670, !dbg !2312

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !2032, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 1, metadata !2046, metadata !DIExpression()), !dbg !2187
  br i1 %133, label %286, label %480, !dbg !2314

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !2315

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !2318
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !2320
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !2320
  %292 = select i1 %290, i64 %146, i64 0, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %292, metadata !2017, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %291, metadata !2027, metadata !DIExpression()), !dbg !2078
  %293 = icmp ult i64 %140, %292, !dbg !2321
  br i1 %293, label %294, label %296, !dbg !2324

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2321
  store i8 39, ptr %295, align 1, !dbg !2321, !tbaa !887
  br label %296, !dbg !2321

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %297, metadata !2026, metadata !DIExpression()), !dbg !2078
  %298 = icmp ult i64 %297, %292, !dbg !2325
  br i1 %298, label %299, label %301, !dbg !2328

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !2325
  store i8 92, ptr %300, align 1, !dbg !2325, !tbaa !887
  br label %301, !dbg !2325

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !2328
  call void @llvm.dbg.value(metadata i64 %302, metadata !2026, metadata !DIExpression()), !dbg !2078
  %303 = icmp ult i64 %302, %292, !dbg !2329
  br i1 %303, label %304, label %306, !dbg !2332

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !2329
  store i8 39, ptr %305, align 1, !dbg !2329, !tbaa !887
  br label %306, !dbg !2329

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %307, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2034, metadata !DIExpression()), !dbg !2078
  br label %480, !dbg !2333

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !2334

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !2048, metadata !DIExpression()), !dbg !2335
  %310 = tail call ptr @__ctype_b_loc() #40, !dbg !2336
  %311 = load ptr, ptr %310, align 8, !dbg !2336, !tbaa !813
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !2336
  %314 = load i16, ptr %313, align 2, !dbg !2336, !tbaa !919
  %315 = lshr i16 %314, 14, !dbg !2338
  %316 = trunc i16 %315 to i8, !dbg !2338
  %317 = and i8 %316, 1, !dbg !2338
  call void @llvm.dbg.value(metadata i8 %317, metadata !2051, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i64 %171, metadata !2019, metadata !DIExpression()), !dbg !2078
  %318 = icmp eq i8 %317, 0, !dbg !2339
  call void @llvm.dbg.value(metadata i1 %318, metadata !2046, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2187
  br label %368, !dbg !2340

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2341
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2052, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata ptr %14, metadata !2109, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata ptr %14, metadata !2117, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 0, metadata !2120, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 8, metadata !2121, metadata !DIExpression()), !dbg !2345
  store i64 0, ptr %14, align 8, !dbg !2347
  call void @llvm.dbg.value(metadata i64 0, metadata !2048, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8 1, metadata !2051, metadata !DIExpression()), !dbg !2335
  %320 = icmp eq i64 %171, -1, !dbg !2348
  br i1 %320, label %321, label %323, !dbg !2350

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2351
  call void @llvm.dbg.value(metadata i64 %322, metadata !2019, metadata !DIExpression()), !dbg !2078
  br label %323, !dbg !2352

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !2187
  call void @llvm.dbg.value(metadata i64 %324, metadata !2019, metadata !DIExpression()), !dbg !2078
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2353
  %325 = sub i64 %324, %145, !dbg !2354
  call void @llvm.dbg.value(metadata ptr %15, metadata !2055, metadata !DIExpression(DW_OP_deref)), !dbg !2355
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #37, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %326, metadata !2059, metadata !DIExpression()), !dbg !2355
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !2357

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !2048, metadata !DIExpression()), !dbg !2335
  %328 = icmp ugt i64 %324, %145, !dbg !2358
  br i1 %328, label %331, label %329, !dbg !2360

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !2051, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i64 0, metadata !2048, metadata !DIExpression()), !dbg !2335
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2361
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %324, metadata !2019, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i1 true, metadata !2046, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2187
  br label %368, !dbg !2340

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !2051, metadata !DIExpression()), !dbg !2335
  br label %360, !dbg !2363

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2048, metadata !DIExpression()), !dbg !2335
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !2365
  %335 = load i8, ptr %334, align 1, !dbg !2365, !tbaa !887
  %336 = icmp eq i8 %335, 0, !dbg !2360
  br i1 %336, label %363, label %337, !dbg !2366

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %338, metadata !2048, metadata !DIExpression()), !dbg !2335
  %339 = add i64 %338, %145, !dbg !2368
  %340 = icmp eq i64 %338, %325, !dbg !2358
  br i1 %340, label %363, label %331, !dbg !2360, !llvm.loop !2369

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !2370
  %344 = and i1 %343, %133, !dbg !2370
  call void @llvm.dbg.value(metadata i64 1, metadata !2060, metadata !DIExpression()), !dbg !2371
  br i1 %344, label %345, label %354, !dbg !2370

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !2060, metadata !DIExpression()), !dbg !2371
  %347 = add i64 %346, %145, !dbg !2372
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !2374
  %349 = load i8, ptr %348, align 1, !dbg !2374, !tbaa !887
  %350 = sext i8 %349 to i32, !dbg !2374
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !2375

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %352, metadata !2060, metadata !DIExpression()), !dbg !2371
  %353 = icmp eq i64 %352, %326, !dbg !2377
  br i1 %353, label %354, label %345, !dbg !2378, !llvm.loop !2379

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !2381, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %355, metadata !2055, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 %355, metadata !2383, metadata !DIExpression()), !dbg !2391
  %356 = call i32 @iswprint(i32 noundef %355) #37, !dbg !2393
  %357 = icmp ne i32 %356, 0, !dbg !2394
  %358 = zext i1 %357 to i8, !dbg !2395
  call void @llvm.dbg.value(metadata i8 %358, metadata !2051, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i64 %326, metadata !2048, metadata !DIExpression()), !dbg !2335
  br label %363, !dbg !2396

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !2051, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i64 0, metadata !2048, metadata !DIExpression()), !dbg !2335
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2361
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2362
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !2051, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i64 0, metadata !2048, metadata !DIExpression()), !dbg !2335
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2361
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %324, metadata !2019, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i1 %361, metadata !2046, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2187
  br label %368, !dbg !2340

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !2051, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i64 %364, metadata !2048, metadata !DIExpression()), !dbg !2335
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2361
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %324, metadata !2019, metadata !DIExpression()), !dbg !2078
  %366 = icmp eq i8 %365, 0, !dbg !2339
  call void @llvm.dbg.value(metadata i1 %366, metadata !2046, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2187
  %367 = icmp ugt i64 %364, 1, !dbg !2397
  br i1 %367, label %374, label %368, !dbg !2340

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !2398
  br i1 %373, label %374, label %480, !dbg !2398

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %379, metadata !2068, metadata !DIExpression()), !dbg !2400
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !2401

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !2078
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !2179
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !2177
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !2187
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2402
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !2187
  call void @llvm.dbg.value(metadata i8 %387, metadata !2047, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %386, metadata !2045, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %385, metadata !2042, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 %384, metadata !2040, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %383, metadata !2034, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %382, metadata !2026, metadata !DIExpression()), !dbg !2078
  br i1 %380, label %388, label %434, !dbg !2403

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2408

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !2045, metadata !DIExpression()), !dbg !2187
  %390 = and i8 %383, 1, !dbg !2411
  %391 = icmp eq i8 %390, 0, !dbg !2411
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2411
  br i1 %392, label %393, label %409, !dbg !2411

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2413
  br i1 %394, label %395, label %397, !dbg !2417

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2413
  store i8 39, ptr %396, align 1, !dbg !2413, !tbaa !887
  br label %397, !dbg !2413

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2417
  call void @llvm.dbg.value(metadata i64 %398, metadata !2026, metadata !DIExpression()), !dbg !2078
  %399 = icmp ult i64 %398, %146, !dbg !2418
  br i1 %399, label %400, label %402, !dbg !2421

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2418
  store i8 36, ptr %401, align 1, !dbg !2418, !tbaa !887
  br label %402, !dbg !2418

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2421
  call void @llvm.dbg.value(metadata i64 %403, metadata !2026, metadata !DIExpression()), !dbg !2078
  %404 = icmp ult i64 %403, %146, !dbg !2422
  br i1 %404, label %405, label %407, !dbg !2425

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2422
  store i8 39, ptr %406, align 1, !dbg !2422, !tbaa !887
  br label %407, !dbg !2422

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2425
  call void @llvm.dbg.value(metadata i64 %408, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 1, metadata !2034, metadata !DIExpression()), !dbg !2078
  br label %409, !dbg !2426

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !2078
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !2078
  call void @llvm.dbg.value(metadata i8 %411, metadata !2034, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %410, metadata !2026, metadata !DIExpression()), !dbg !2078
  %412 = icmp ult i64 %410, %146, !dbg !2427
  br i1 %412, label %413, label %415, !dbg !2430

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2427
  store i8 92, ptr %414, align 1, !dbg !2427, !tbaa !887
  br label %415, !dbg !2427

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %416, metadata !2026, metadata !DIExpression()), !dbg !2078
  %417 = icmp ult i64 %416, %146, !dbg !2431
  br i1 %417, label %418, label %422, !dbg !2434

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2431
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2431
  store i8 %420, ptr %421, align 1, !dbg !2431, !tbaa !887
  br label %422, !dbg !2431

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2434
  call void @llvm.dbg.value(metadata i64 %423, metadata !2026, metadata !DIExpression()), !dbg !2078
  %424 = icmp ult i64 %423, %146, !dbg !2435
  br i1 %424, label %425, label %430, !dbg !2438

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2435
  %428 = or i8 %427, 48, !dbg !2435
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2435
  store i8 %428, ptr %429, align 1, !dbg !2435, !tbaa !887
  br label %430, !dbg !2435

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %431, metadata !2026, metadata !DIExpression()), !dbg !2078
  %432 = and i8 %387, 7, !dbg !2439
  %433 = or i8 %432, 48, !dbg !2440
  call void @llvm.dbg.value(metadata i8 %433, metadata !2047, metadata !DIExpression()), !dbg !2187
  br label %443, !dbg !2441

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2442
  %436 = icmp eq i8 %435, 0, !dbg !2442
  br i1 %436, label %443, label %437, !dbg !2444

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2445
  br i1 %438, label %439, label %441, !dbg !2449

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2445
  store i8 92, ptr %440, align 1, !dbg !2445, !tbaa !887
  br label %441, !dbg !2445

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2449
  call void @llvm.dbg.value(metadata i64 %442, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2042, metadata !DIExpression()), !dbg !2187
  br label %443, !dbg !2450

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !2078
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !2179
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !2187
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !2187
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !2187
  call void @llvm.dbg.value(metadata i8 %448, metadata !2047, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %447, metadata !2045, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %446, metadata !2042, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %445, metadata !2034, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %444, metadata !2026, metadata !DIExpression()), !dbg !2078
  %449 = add i64 %384, 1, !dbg !2451
  %450 = icmp ugt i64 %379, %449, !dbg !2453
  br i1 %450, label %451, label %478, !dbg !2454

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2455
  %453 = icmp ne i8 %452, 0, !dbg !2455
  %454 = and i8 %447, 1, !dbg !2455
  %455 = icmp eq i8 %454, 0, !dbg !2455
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2455
  br i1 %456, label %457, label %468, !dbg !2455

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2458
  br i1 %458, label %459, label %461, !dbg !2462

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2458
  store i8 39, ptr %460, align 1, !dbg !2458, !tbaa !887
  br label %461, !dbg !2458

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2462
  call void @llvm.dbg.value(metadata i64 %462, metadata !2026, metadata !DIExpression()), !dbg !2078
  %463 = icmp ult i64 %462, %146, !dbg !2463
  br i1 %463, label %464, label %466, !dbg !2466

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2463
  store i8 39, ptr %465, align 1, !dbg !2463, !tbaa !887
  br label %466, !dbg !2463

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %467, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2034, metadata !DIExpression()), !dbg !2078
  br label %468, !dbg !2467

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2468
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !2078
  call void @llvm.dbg.value(metadata i8 %470, metadata !2034, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %469, metadata !2026, metadata !DIExpression()), !dbg !2078
  %471 = icmp ult i64 %469, %146, !dbg !2469
  br i1 %471, label %472, label %474, !dbg !2472

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2469
  store i8 %448, ptr %473, align 1, !dbg !2469, !tbaa !887
  br label %474, !dbg !2469

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2472
  call void @llvm.dbg.value(metadata i64 %475, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %449, metadata !2040, metadata !DIExpression()), !dbg !2177
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2473
  %477 = load i8, ptr %476, align 1, !dbg !2473, !tbaa !887
  call void @llvm.dbg.value(metadata i8 %477, metadata !2047, metadata !DIExpression()), !dbg !2187
  br label %381, !dbg !2474, !llvm.loop !2475

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i8 %448, metadata !2047, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %479, metadata !2046, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %447, metadata !2045, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %446, metadata !2042, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 %384, metadata !2040, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %445, metadata !2034, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %444, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %378, metadata !2019, metadata !DIExpression()), !dbg !2078
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2478
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !2078
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !2083
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !2078
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !2078
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !2177
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !2187
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !2187
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !2187
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !2017, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %489, metadata !2047, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %488, metadata !2046, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %487, metadata !2045, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %173, metadata !2042, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 %486, metadata !2040, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %485, metadata !2034, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %484, metadata !2032, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %483, metadata !2027, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %482, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %481, metadata !2019, metadata !DIExpression()), !dbg !2078
  br i1 %127, label %502, label %491, !dbg !2479

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
  br i1 %137, label %503, label %524, !dbg !2481

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2482

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
  %514 = lshr i8 %505, 5, !dbg !2483
  %515 = zext i8 %514 to i64, !dbg !2483
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2484
  %517 = load i32, ptr %516, align 4, !dbg !2484, !tbaa !878
  %518 = and i8 %505, 31, !dbg !2485
  %519 = zext i8 %518 to i32, !dbg !2485
  %520 = shl nuw i32 1, %519, !dbg !2486
  %521 = and i32 %517, %520, !dbg !2486
  %522 = icmp eq i32 %521, 0, !dbg !2486
  %523 = and i1 %172, %522, !dbg !2487
  br i1 %523, label %573, label %535, !dbg !2487

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
  br i1 %172, label %573, label %535, !dbg !2488

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2478
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !2078
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !2083
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !2087
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !2179
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2489
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !2187
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !2187
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !2017, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %543, metadata !2047, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %542, metadata !2046, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 %541, metadata !2040, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %540, metadata !2034, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %539, metadata !2032, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %538, metadata !2027, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %537, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %536, metadata !2019, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.label(metadata !2075), !dbg !2490
  br i1 %132, label %545, label %674, !dbg !2491

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !2045, metadata !DIExpression()), !dbg !2187
  %546 = and i8 %540, 1, !dbg !2493
  %547 = icmp eq i8 %546, 0, !dbg !2493
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2493
  br i1 %548, label %549, label %565, !dbg !2493

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2495
  br i1 %550, label %551, label %553, !dbg !2499

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2495
  store i8 39, ptr %552, align 1, !dbg !2495, !tbaa !887
  br label %553, !dbg !2495

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2499
  call void @llvm.dbg.value(metadata i64 %554, metadata !2026, metadata !DIExpression()), !dbg !2078
  %555 = icmp ult i64 %554, %544, !dbg !2500
  br i1 %555, label %556, label %558, !dbg !2503

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2500
  store i8 36, ptr %557, align 1, !dbg !2500, !tbaa !887
  br label %558, !dbg !2500

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %559, metadata !2026, metadata !DIExpression()), !dbg !2078
  %560 = icmp ult i64 %559, %544, !dbg !2504
  br i1 %560, label %561, label %563, !dbg !2507

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2504
  store i8 39, ptr %562, align 1, !dbg !2504, !tbaa !887
  br label %563, !dbg !2504

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2507
  call void @llvm.dbg.value(metadata i64 %564, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 1, metadata !2034, metadata !DIExpression()), !dbg !2078
  br label %565, !dbg !2508

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !2187
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !2078
  call void @llvm.dbg.value(metadata i8 %567, metadata !2034, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %566, metadata !2026, metadata !DIExpression()), !dbg !2078
  %568 = icmp ult i64 %566, %544, !dbg !2509
  br i1 %568, label %569, label %571, !dbg !2512

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2509
  store i8 92, ptr %570, align 1, !dbg !2509, !tbaa !887
  br label %571, !dbg !2509

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2512
  call void @llvm.dbg.value(metadata i64 %544, metadata !2017, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %543, metadata !2047, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %542, metadata !2046, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 1, metadata !2045, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 %541, metadata !2040, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %567, metadata !2034, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %539, metadata !2032, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %538, metadata !2027, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %572, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %536, metadata !2019, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.label(metadata !2076), !dbg !2513
  br label %600, !dbg !2514

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2478
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !2078
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !2083
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !2087
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !2179
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2489
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !2187
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !2187
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2517
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !2017, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %582, metadata !2047, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %581, metadata !2046, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %580, metadata !2045, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 %579, metadata !2040, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %578, metadata !2034, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %577, metadata !2032, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %576, metadata !2027, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %575, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %574, metadata !2019, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.label(metadata !2076), !dbg !2513
  %584 = and i8 %578, 1, !dbg !2514
  %585 = icmp ne i8 %584, 0, !dbg !2514
  %586 = and i8 %580, 1, !dbg !2514
  %587 = icmp eq i8 %586, 0, !dbg !2514
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2514
  br i1 %588, label %589, label %600, !dbg !2514

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2518
  br i1 %590, label %591, label %593, !dbg !2522

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2518
  store i8 39, ptr %592, align 1, !dbg !2518, !tbaa !887
  br label %593, !dbg !2518

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2522
  call void @llvm.dbg.value(metadata i64 %594, metadata !2026, metadata !DIExpression()), !dbg !2078
  %595 = icmp ult i64 %594, %583, !dbg !2523
  br i1 %595, label %596, label %598, !dbg !2526

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2523
  store i8 39, ptr %597, align 1, !dbg !2523, !tbaa !887
  br label %598, !dbg !2523

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %599, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2034, metadata !DIExpression()), !dbg !2078
  br label %600, !dbg !2527

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !2187
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !2078
  call void @llvm.dbg.value(metadata i8 %609, metadata !2034, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %608, metadata !2026, metadata !DIExpression()), !dbg !2078
  %610 = icmp ult i64 %608, %601, !dbg !2528
  br i1 %610, label %611, label %613, !dbg !2531

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2528
  store i8 %602, ptr %612, align 1, !dbg !2528, !tbaa !887
  br label %613, !dbg !2528

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %614, metadata !2026, metadata !DIExpression()), !dbg !2078
  %615 = icmp eq i8 %603, 0, !dbg !2532
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2534
  call void @llvm.dbg.value(metadata i8 %616, metadata !2033, metadata !DIExpression()), !dbg !2078
  br label %617, !dbg !2535

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2478
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !2078
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !2083
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !2087
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !2088
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !2179
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2489
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !2017, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %624, metadata !2040, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %623, metadata !2034, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %622, metadata !2033, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %621, metadata !2032, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %620, metadata !2027, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %619, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %618, metadata !2019, metadata !DIExpression()), !dbg !2078
  %626 = add i64 %624, 1, !dbg !2536
  call void @llvm.dbg.value(metadata i64 %626, metadata !2040, metadata !DIExpression()), !dbg !2177
  br label %138, !dbg !2537, !llvm.loop !2538

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !2017, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %143, metadata !2033, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 %142, metadata !2032, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %141, metadata !2027, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %140, metadata !2026, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %139, metadata !2019, metadata !DIExpression()), !dbg !2078
  %628 = icmp eq i64 %140, 0, !dbg !2540
  %629 = and i1 %133, %628, !dbg !2542
  %630 = xor i1 %629, true, !dbg !2542
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2542
  br i1 %631, label %632, label %670, !dbg !2542

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2543
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2543
  br i1 %636, label %637, label %646, !dbg !2543

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2545
  %639 = icmp eq i8 %638, 0, !dbg !2545
  br i1 %639, label %642, label %640, !dbg !2548

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2549
  br label %694, !dbg !2550

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2551
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2553
  br i1 %645, label %28, label %646, !dbg !2553

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2554
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2556
  br i1 %649, label %650, label %665, !dbg !2556

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !2028, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %140, metadata !2026, metadata !DIExpression()), !dbg !2078
  %651 = load i8, ptr %120, align 1, !dbg !2557, !tbaa !887
  %652 = icmp eq i8 %651, 0, !dbg !2560
  br i1 %652, label %665, label %653, !dbg !2560

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !2028, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i64 %656, metadata !2026, metadata !DIExpression()), !dbg !2078
  %657 = icmp ult i64 %656, %146, !dbg !2561
  br i1 %657, label %658, label %660, !dbg !2564

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2561
  store i8 %654, ptr %659, align 1, !dbg !2561, !tbaa !887
  br label %660, !dbg !2561

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2564
  call void @llvm.dbg.value(metadata i64 %661, metadata !2026, metadata !DIExpression()), !dbg !2078
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2565
  call void @llvm.dbg.value(metadata ptr %662, metadata !2028, metadata !DIExpression()), !dbg !2078
  %663 = load i8, ptr %662, align 1, !dbg !2557, !tbaa !887
  %664 = icmp eq i8 %663, 0, !dbg !2560
  br i1 %664, label %665, label %653, !dbg !2560, !llvm.loop !2566

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !2160
  call void @llvm.dbg.value(metadata i64 %666, metadata !2026, metadata !DIExpression()), !dbg !2078
  %667 = icmp ult i64 %666, %146, !dbg !2568
  br i1 %667, label %668, label %694, !dbg !2570

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2571
  store i8 0, ptr %669, align 1, !dbg !2572, !tbaa !887
  br label %694, !dbg !2571

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !2077), !dbg !2573
  %672 = icmp eq i8 %124, 0, !dbg !2574
  %673 = select i1 %672, i32 2, i32 4, !dbg !2574
  br label %684, !dbg !2574

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2574
  %678 = select i1 %677, i32 2, i32 4, !dbg !2574
  br label %679, !dbg !2576

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !2077), !dbg !2573
  %683 = icmp eq i32 %116, 2, !dbg !2576
  br i1 %683, label %684, label %688, !dbg !2574

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2574

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !2020, metadata !DIExpression()), !dbg !2078
  %692 = and i32 %5, -3, !dbg !2577
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2578
  br label %694, !dbg !2579

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2580
}

; Function Attrs: nounwind
declare !dbg !2581 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2584 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2586 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2590, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %1, metadata !2591, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata ptr %2, metadata !2592, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata ptr %0, metadata !2594, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %1, metadata !2599, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr null, metadata !2600, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata ptr %2, metadata !2601, metadata !DIExpression()), !dbg !2607
  %4 = icmp eq ptr %2, null, !dbg !2609
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2609
  call void @llvm.dbg.value(metadata ptr %5, metadata !2602, metadata !DIExpression()), !dbg !2607
  %6 = tail call ptr @__errno_location() #40, !dbg !2610
  %7 = load i32, ptr %6, align 4, !dbg !2610, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %7, metadata !2603, metadata !DIExpression()), !dbg !2607
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2611
  %9 = load i32, ptr %8, align 4, !dbg !2611, !tbaa !1960
  %10 = or i32 %9, 1, !dbg !2612
  call void @llvm.dbg.value(metadata i32 %10, metadata !2604, metadata !DIExpression()), !dbg !2607
  %11 = load i32, ptr %5, align 8, !dbg !2613, !tbaa !1910
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2614
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2615
  %14 = load ptr, ptr %13, align 8, !dbg !2615, !tbaa !1981
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2616
  %16 = load ptr, ptr %15, align 8, !dbg !2616, !tbaa !1984
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2617
  %18 = add i64 %17, 1, !dbg !2618
  call void @llvm.dbg.value(metadata i64 %18, metadata !2605, metadata !DIExpression()), !dbg !2607
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #42, !dbg !2619
  call void @llvm.dbg.value(metadata ptr %19, metadata !2606, metadata !DIExpression()), !dbg !2607
  %20 = load i32, ptr %5, align 8, !dbg !2620, !tbaa !1910
  %21 = load ptr, ptr %13, align 8, !dbg !2621, !tbaa !1981
  %22 = load ptr, ptr %15, align 8, !dbg !2622, !tbaa !1984
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2623
  store i32 %7, ptr %6, align 4, !dbg !2624, !tbaa !878
  ret ptr %19, !dbg !2625
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2595 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2594, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i64 %1, metadata !2599, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata ptr %2, metadata !2600, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata ptr %3, metadata !2601, metadata !DIExpression()), !dbg !2626
  %5 = icmp eq ptr %3, null, !dbg !2627
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2627
  call void @llvm.dbg.value(metadata ptr %6, metadata !2602, metadata !DIExpression()), !dbg !2626
  %7 = tail call ptr @__errno_location() #40, !dbg !2628
  %8 = load i32, ptr %7, align 4, !dbg !2628, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %8, metadata !2603, metadata !DIExpression()), !dbg !2626
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2629
  %10 = load i32, ptr %9, align 4, !dbg !2629, !tbaa !1960
  %11 = icmp eq ptr %2, null, !dbg !2630
  %12 = zext i1 %11 to i32, !dbg !2630
  %13 = or i32 %10, %12, !dbg !2631
  call void @llvm.dbg.value(metadata i32 %13, metadata !2604, metadata !DIExpression()), !dbg !2626
  %14 = load i32, ptr %6, align 8, !dbg !2632, !tbaa !1910
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2633
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2634
  %17 = load ptr, ptr %16, align 8, !dbg !2634, !tbaa !1981
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2635
  %19 = load ptr, ptr %18, align 8, !dbg !2635, !tbaa !1984
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2636
  %21 = add i64 %20, 1, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %21, metadata !2605, metadata !DIExpression()), !dbg !2626
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #42, !dbg !2638
  call void @llvm.dbg.value(metadata ptr %22, metadata !2606, metadata !DIExpression()), !dbg !2626
  %23 = load i32, ptr %6, align 8, !dbg !2639, !tbaa !1910
  %24 = load ptr, ptr %16, align 8, !dbg !2640, !tbaa !1981
  %25 = load ptr, ptr %18, align 8, !dbg !2641, !tbaa !1984
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2642
  store i32 %8, ptr %7, align 4, !dbg !2643, !tbaa !878
  br i1 %11, label %28, label %27, !dbg !2644

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2645, !tbaa !1390
  br label %28, !dbg !2647

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2648
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2649 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2654, !tbaa !813
  call void @llvm.dbg.value(metadata ptr %1, metadata !2651, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i32 1, metadata !2652, metadata !DIExpression()), !dbg !2656
  %2 = load i32, ptr @nslots, align 4, !tbaa !878
  call void @llvm.dbg.value(metadata i32 1, metadata !2652, metadata !DIExpression()), !dbg !2656
  %3 = icmp sgt i32 %2, 1, !dbg !2657
  br i1 %3, label %4, label %6, !dbg !2659

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2657
  br label %10, !dbg !2659

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2660
  %8 = load ptr, ptr %7, align 8, !dbg !2660, !tbaa !2662
  %9 = icmp eq ptr %8, @slot0, !dbg !2664
  br i1 %9, label %17, label %16, !dbg !2665

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2652, metadata !DIExpression()), !dbg !2656
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2666
  %13 = load ptr, ptr %12, align 8, !dbg !2666, !tbaa !2662
  tail call void @free(ptr noundef %13) #37, !dbg !2667
  %14 = add nuw nsw i64 %11, 1, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %14, metadata !2652, metadata !DIExpression()), !dbg !2656
  %15 = icmp eq i64 %14, %5, !dbg !2657
  br i1 %15, label %6, label %10, !dbg !2659, !llvm.loop !2669

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2671
  store i64 256, ptr @slotvec0, align 8, !dbg !2673, !tbaa !2674
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2675, !tbaa !2662
  br label %17, !dbg !2676

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2677
  br i1 %18, label %20, label %19, !dbg !2679

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2680
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2682, !tbaa !813
  br label %20, !dbg !2683

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2684, !tbaa !878
  ret void, !dbg !2685
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2686 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2688, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata ptr %1, metadata !2689, metadata !DIExpression()), !dbg !2690
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2691
  ret ptr %3, !dbg !2692
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2693 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2697, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %1, metadata !2698, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i64 %2, metadata !2699, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %3, metadata !2700, metadata !DIExpression()), !dbg !2713
  %6 = tail call ptr @__errno_location() #40, !dbg !2714
  %7 = load i32, ptr %6, align 4, !dbg !2714, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %7, metadata !2701, metadata !DIExpression()), !dbg !2713
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2715, !tbaa !813
  call void @llvm.dbg.value(metadata ptr %8, metadata !2702, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2703, metadata !DIExpression()), !dbg !2713
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2716
  br i1 %9, label %10, label %11, !dbg !2716

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2718
  unreachable, !dbg !2718

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2719, !tbaa !878
  %13 = icmp sgt i32 %12, %0, !dbg !2720
  br i1 %13, label %32, label %14, !dbg !2721

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2722
  call void @llvm.dbg.value(metadata i1 %15, metadata !2704, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2723
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2724
  %16 = sext i32 %12 to i64, !dbg !2725
  call void @llvm.dbg.value(metadata i64 %16, metadata !2707, metadata !DIExpression()), !dbg !2723
  store i64 %16, ptr %5, align 8, !dbg !2726, !tbaa !1390
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2727
  %18 = add nuw nsw i32 %0, 1, !dbg !2728
  %19 = sub i32 %18, %12, !dbg !2729
  %20 = sext i32 %19 to i64, !dbg !2730
  call void @llvm.dbg.value(metadata ptr %5, metadata !2707, metadata !DIExpression(DW_OP_deref)), !dbg !2723
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2731
  call void @llvm.dbg.value(metadata ptr %21, metadata !2702, metadata !DIExpression()), !dbg !2713
  store ptr %21, ptr @slotvec, align 8, !dbg !2732, !tbaa !813
  br i1 %15, label %22, label %23, !dbg !2733

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2734, !tbaa.struct !2736
  br label %23, !dbg !2737

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2738, !tbaa !878
  %25 = sext i32 %24 to i64, !dbg !2739
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2739
  %27 = load i64, ptr %5, align 8, !dbg !2740, !tbaa !1390
  call void @llvm.dbg.value(metadata i64 %27, metadata !2707, metadata !DIExpression()), !dbg !2723
  %28 = sub nsw i64 %27, %25, !dbg !2741
  %29 = shl i64 %28, 4, !dbg !2742
  call void @llvm.dbg.value(metadata ptr %26, metadata !2117, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 0, metadata !2120, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 %29, metadata !2121, metadata !DIExpression()), !dbg !2743
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2745
  %30 = load i64, ptr %5, align 8, !dbg !2746, !tbaa !1390
  call void @llvm.dbg.value(metadata i64 %30, metadata !2707, metadata !DIExpression()), !dbg !2723
  %31 = trunc i64 %30 to i32, !dbg !2746
  store i32 %31, ptr @nslots, align 4, !dbg !2747, !tbaa !878
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2748
  br label %32, !dbg !2749

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2713
  call void @llvm.dbg.value(metadata ptr %33, metadata !2702, metadata !DIExpression()), !dbg !2713
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2750
  %36 = load i64, ptr %35, align 8, !dbg !2751, !tbaa !2674
  call void @llvm.dbg.value(metadata i64 %36, metadata !2708, metadata !DIExpression()), !dbg !2752
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2753
  %38 = load ptr, ptr %37, align 8, !dbg !2753, !tbaa !2662
  call void @llvm.dbg.value(metadata ptr %38, metadata !2710, metadata !DIExpression()), !dbg !2752
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2754
  %40 = load i32, ptr %39, align 4, !dbg !2754, !tbaa !1960
  %41 = or i32 %40, 1, !dbg !2755
  call void @llvm.dbg.value(metadata i32 %41, metadata !2711, metadata !DIExpression()), !dbg !2752
  %42 = load i32, ptr %3, align 8, !dbg !2756, !tbaa !1910
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2757
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2758
  %45 = load ptr, ptr %44, align 8, !dbg !2758, !tbaa !1981
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2759
  %47 = load ptr, ptr %46, align 8, !dbg !2759, !tbaa !1984
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2760
  call void @llvm.dbg.value(metadata i64 %48, metadata !2712, metadata !DIExpression()), !dbg !2752
  %49 = icmp ugt i64 %36, %48, !dbg !2761
  br i1 %49, label %60, label %50, !dbg !2763

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2764
  call void @llvm.dbg.value(metadata i64 %51, metadata !2708, metadata !DIExpression()), !dbg !2752
  store i64 %51, ptr %35, align 8, !dbg !2766, !tbaa !2674
  %52 = icmp eq ptr %38, @slot0, !dbg !2767
  br i1 %52, label %54, label %53, !dbg !2769

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2770
  br label %54, !dbg !2770

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #42, !dbg !2771
  call void @llvm.dbg.value(metadata ptr %55, metadata !2710, metadata !DIExpression()), !dbg !2752
  store ptr %55, ptr %37, align 8, !dbg !2772, !tbaa !2662
  %56 = load i32, ptr %3, align 8, !dbg !2773, !tbaa !1910
  %57 = load ptr, ptr %44, align 8, !dbg !2774, !tbaa !1981
  %58 = load ptr, ptr %46, align 8, !dbg !2775, !tbaa !1984
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2776
  br label %60, !dbg !2777

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2752
  call void @llvm.dbg.value(metadata ptr %61, metadata !2710, metadata !DIExpression()), !dbg !2752
  store i32 %7, ptr %6, align 4, !dbg !2778, !tbaa !878
  ret ptr %61, !dbg !2779
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2780 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2784, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata ptr %1, metadata !2785, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %2, metadata !2786, metadata !DIExpression()), !dbg !2787
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2788
  ret ptr %4, !dbg !2789
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2790 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2792, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i32 0, metadata !2688, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %0, metadata !2689, metadata !DIExpression()), !dbg !2794
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2796
  ret ptr %2, !dbg !2797
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2798 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2802, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %1, metadata !2803, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i32 0, metadata !2784, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata ptr %0, metadata !2785, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 %1, metadata !2786, metadata !DIExpression()), !dbg !2805
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2807
  ret ptr %3, !dbg !2808
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2809 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2813, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i32 %1, metadata !2814, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata ptr %2, metadata !2815, metadata !DIExpression()), !dbg !2817
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2818
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2816, metadata !DIExpression()), !dbg !2819
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2820), !dbg !2823
  call void @llvm.dbg.value(metadata i32 %1, metadata !2824, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2829, metadata !DIExpression()), !dbg !2832
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2832, !alias.scope !2820
  %5 = icmp eq i32 %1, 10, !dbg !2833
  br i1 %5, label %6, label %7, !dbg !2835

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2836, !noalias !2820
  unreachable, !dbg !2836

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2837, !tbaa !1910, !alias.scope !2820
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2838
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2839
  ret ptr %8, !dbg !2840
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2841 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2845, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i32 %1, metadata !2846, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata ptr %2, metadata !2847, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i64 %3, metadata !2848, metadata !DIExpression()), !dbg !2850
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2851
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2849, metadata !DIExpression()), !dbg !2852
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2853), !dbg !2856
  call void @llvm.dbg.value(metadata i32 %1, metadata !2824, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2829, metadata !DIExpression()), !dbg !2859
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2859, !alias.scope !2853
  %6 = icmp eq i32 %1, 10, !dbg !2860
  br i1 %6, label %7, label %8, !dbg !2861

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2862, !noalias !2853
  unreachable, !dbg !2862

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2863, !tbaa !1910, !alias.scope !2853
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2864
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2865
  ret ptr %9, !dbg !2866
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2867 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2871, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata ptr %1, metadata !2872, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i32 0, metadata !2813, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 %0, metadata !2814, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata ptr %1, metadata !2815, metadata !DIExpression()), !dbg !2874
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2876
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2816, metadata !DIExpression()), !dbg !2877
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2878), !dbg !2881
  call void @llvm.dbg.value(metadata i32 %0, metadata !2824, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2829, metadata !DIExpression()), !dbg !2884
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2884, !alias.scope !2878
  %4 = icmp eq i32 %0, 10, !dbg !2885
  br i1 %4, label %5, label %6, !dbg !2886

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2887, !noalias !2878
  unreachable, !dbg !2887

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2888, !tbaa !1910, !alias.scope !2878
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2889
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2890
  ret ptr %7, !dbg !2891
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2892 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata ptr %1, metadata !2897, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %2, metadata !2898, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i32 0, metadata !2845, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i32 %0, metadata !2846, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata ptr %1, metadata !2847, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %2, metadata !2848, metadata !DIExpression()), !dbg !2900
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2902
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2849, metadata !DIExpression()), !dbg !2903
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2904), !dbg !2907
  call void @llvm.dbg.value(metadata i32 %0, metadata !2824, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2829, metadata !DIExpression()), !dbg !2910
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2910, !alias.scope !2904
  %5 = icmp eq i32 %0, 10, !dbg !2911
  br i1 %5, label %6, label %7, !dbg !2912

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2913, !noalias !2904
  unreachable, !dbg !2913

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2914, !tbaa !1910, !alias.scope !2904
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2915
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2916
  ret ptr %8, !dbg !2917
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2918 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %1, metadata !2923, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8 %2, metadata !2924, metadata !DIExpression()), !dbg !2926
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2927
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2925, metadata !DIExpression()), !dbg !2928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2929, !tbaa.struct !2930
  call void @llvm.dbg.value(metadata ptr %4, metadata !1927, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 %2, metadata !1928, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i32 1, metadata !1929, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 %2, metadata !1930, metadata !DIExpression()), !dbg !2931
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2933
  %6 = lshr i8 %2, 5, !dbg !2934
  %7 = zext i8 %6 to i64, !dbg !2934
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2935
  call void @llvm.dbg.value(metadata ptr %8, metadata !1931, metadata !DIExpression()), !dbg !2931
  %9 = and i8 %2, 31, !dbg !2936
  %10 = zext i8 %9 to i32, !dbg !2936
  call void @llvm.dbg.value(metadata i32 %10, metadata !1933, metadata !DIExpression()), !dbg !2931
  %11 = load i32, ptr %8, align 4, !dbg !2937, !tbaa !878
  %12 = lshr i32 %11, %10, !dbg !2938
  call void @llvm.dbg.value(metadata i32 %12, metadata !1934, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2931
  %13 = and i32 %12, 1, !dbg !2939
  %14 = xor i32 %13, 1, !dbg !2939
  %15 = shl nuw i32 %14, %10, !dbg !2940
  %16 = xor i32 %15, %11, !dbg !2941
  store i32 %16, ptr %8, align 4, !dbg !2941, !tbaa !878
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2942
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2943
  ret ptr %17, !dbg !2944
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2945 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2949, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i8 %1, metadata !2950, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i64 -1, metadata !2923, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8 %1, metadata !2924, metadata !DIExpression()), !dbg !2952
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2954
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2925, metadata !DIExpression()), !dbg !2955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2956, !tbaa.struct !2930
  call void @llvm.dbg.value(metadata ptr %3, metadata !1927, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i8 %1, metadata !1928, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i32 1, metadata !1929, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i8 %1, metadata !1930, metadata !DIExpression()), !dbg !2957
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2959
  %5 = lshr i8 %1, 5, !dbg !2960
  %6 = zext i8 %5 to i64, !dbg !2960
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2961
  call void @llvm.dbg.value(metadata ptr %7, metadata !1931, metadata !DIExpression()), !dbg !2957
  %8 = and i8 %1, 31, !dbg !2962
  %9 = zext i8 %8 to i32, !dbg !2962
  call void @llvm.dbg.value(metadata i32 %9, metadata !1933, metadata !DIExpression()), !dbg !2957
  %10 = load i32, ptr %7, align 4, !dbg !2963, !tbaa !878
  %11 = lshr i32 %10, %9, !dbg !2964
  call void @llvm.dbg.value(metadata i32 %11, metadata !1934, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2957
  %12 = and i32 %11, 1, !dbg !2965
  %13 = xor i32 %12, 1, !dbg !2965
  %14 = shl nuw i32 %13, %9, !dbg !2966
  %15 = xor i32 %14, %10, !dbg !2967
  store i32 %15, ptr %7, align 4, !dbg !2967, !tbaa !878
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2968
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2969
  ret ptr %16, !dbg !2970
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2971 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2973, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata ptr %0, metadata !2949, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i8 58, metadata !2950, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 -1, metadata !2923, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i8 58, metadata !2924, metadata !DIExpression()), !dbg !2977
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2979
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2925, metadata !DIExpression()), !dbg !2980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2981, !tbaa.struct !2930
  call void @llvm.dbg.value(metadata ptr %2, metadata !1927, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 58, metadata !1928, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i32 1, metadata !1929, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i8 58, metadata !1930, metadata !DIExpression()), !dbg !2982
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2984
  call void @llvm.dbg.value(metadata ptr %3, metadata !1931, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i32 26, metadata !1933, metadata !DIExpression()), !dbg !2982
  %4 = load i32, ptr %3, align 4, !dbg !2985, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %4, metadata !1934, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2982
  %5 = or i32 %4, 67108864, !dbg !2986
  store i32 %5, ptr %3, align 4, !dbg !2986, !tbaa !878
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2987
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2988
  ret ptr %6, !dbg !2989
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2990 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2992, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i64 %1, metadata !2993, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %1, metadata !2923, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8 58, metadata !2924, metadata !DIExpression()), !dbg !2995
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2997
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2925, metadata !DIExpression()), !dbg !2998
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2999, !tbaa.struct !2930
  call void @llvm.dbg.value(metadata ptr %3, metadata !1927, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i8 58, metadata !1928, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i32 1, metadata !1929, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i8 58, metadata !1930, metadata !DIExpression()), !dbg !3000
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3002
  call void @llvm.dbg.value(metadata ptr %4, metadata !1931, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i32 26, metadata !1933, metadata !DIExpression()), !dbg !3000
  %5 = load i32, ptr %4, align 4, !dbg !3003, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %5, metadata !1934, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3000
  %6 = or i32 %5, 67108864, !dbg !3004
  store i32 %6, ptr %4, align 4, !dbg !3004, !tbaa !878
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3005
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3006
  ret ptr %7, !dbg !3007
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3008 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3014
  call void @llvm.dbg.value(metadata i32 %0, metadata !3010, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i32 %1, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata ptr %2, metadata !3012, metadata !DIExpression()), !dbg !3016
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3017
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3013, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 %1, metadata !2824, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 0, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3019
  %5 = icmp eq i32 %1, 10, !dbg !3020
  br i1 %5, label %6, label %7, !dbg !3021

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3022, !noalias !3023
  unreachable, !dbg !3022

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2829, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3019
  store i32 %1, ptr %4, align 8, !dbg !3026, !tbaa.struct !2930
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3026
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3026
  call void @llvm.dbg.value(metadata ptr %4, metadata !1927, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i8 58, metadata !1928, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 1, metadata !1929, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i8 58, metadata !1930, metadata !DIExpression()), !dbg !3027
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3029
  call void @llvm.dbg.value(metadata ptr %9, metadata !1931, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 26, metadata !1933, metadata !DIExpression()), !dbg !3027
  %10 = load i32, ptr %9, align 4, !dbg !3030, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %10, metadata !1934, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3027
  %11 = or i32 %10, 67108864, !dbg !3031
  store i32 %11, ptr %9, align 4, !dbg !3031, !tbaa !878
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3032
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3033
  ret ptr %12, !dbg !3034
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3035 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3039, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %1, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %2, metadata !3041, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %3, metadata !3042, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i32 %0, metadata !3044, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata ptr %1, metadata !3049, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata ptr %2, metadata !3050, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata ptr %3, metadata !3051, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i64 -1, metadata !3052, metadata !DIExpression()), !dbg !3054
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3056
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3053, metadata !DIExpression()), !dbg !3057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3058, !tbaa.struct !2930
  call void @llvm.dbg.value(metadata ptr %5, metadata !1967, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata ptr %1, metadata !1968, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata ptr %2, metadata !1969, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata ptr %5, metadata !1967, metadata !DIExpression()), !dbg !3059
  store i32 10, ptr %5, align 8, !dbg !3061, !tbaa !1910
  %6 = icmp ne ptr %1, null, !dbg !3062
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3063
  br i1 %8, label %10, label %9, !dbg !3063

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3064
  unreachable, !dbg !3064

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3065
  store ptr %1, ptr %11, align 8, !dbg !3066, !tbaa !1981
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3067
  store ptr %2, ptr %12, align 8, !dbg !3068, !tbaa !1984
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3069
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3070
  ret ptr %13, !dbg !3071
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3045 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3044, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata ptr %1, metadata !3049, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata ptr %2, metadata !3050, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata ptr %3, metadata !3051, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i64 %4, metadata !3052, metadata !DIExpression()), !dbg !3072
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !3073
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3053, metadata !DIExpression()), !dbg !3074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3075, !tbaa.struct !2930
  call void @llvm.dbg.value(metadata ptr %6, metadata !1967, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata ptr %1, metadata !1968, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata ptr %2, metadata !1969, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata ptr %6, metadata !1967, metadata !DIExpression()), !dbg !3076
  store i32 10, ptr %6, align 8, !dbg !3078, !tbaa !1910
  %7 = icmp ne ptr %1, null, !dbg !3079
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3080
  br i1 %9, label %11, label %10, !dbg !3080

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !3081
  unreachable, !dbg !3081

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3082
  store ptr %1, ptr %12, align 8, !dbg !3083, !tbaa !1981
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3084
  store ptr %2, ptr %13, align 8, !dbg !3085, !tbaa !1984
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3086
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !3087
  ret ptr %14, !dbg !3088
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3089 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3093, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata ptr %1, metadata !3094, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata ptr %2, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 0, metadata !3039, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata ptr %0, metadata !3040, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata ptr %1, metadata !3041, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata ptr %2, metadata !3042, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 0, metadata !3044, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %0, metadata !3049, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %1, metadata !3050, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %2, metadata !3051, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 -1, metadata !3052, metadata !DIExpression()), !dbg !3099
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3101
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3053, metadata !DIExpression()), !dbg !3102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3103, !tbaa.struct !2930
  call void @llvm.dbg.value(metadata ptr %4, metadata !1967, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata ptr %0, metadata !1968, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata ptr %1, metadata !1969, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata ptr %4, metadata !1967, metadata !DIExpression()), !dbg !3104
  store i32 10, ptr %4, align 8, !dbg !3106, !tbaa !1910
  %5 = icmp ne ptr %0, null, !dbg !3107
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3108
  br i1 %7, label %9, label %8, !dbg !3108

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3109
  unreachable, !dbg !3109

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3110
  store ptr %0, ptr %10, align 8, !dbg !3111, !tbaa !1981
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3112
  store ptr %1, ptr %11, align 8, !dbg !3113, !tbaa !1984
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3114
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3115
  ret ptr %12, !dbg !3116
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3117 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3121, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %1, metadata !3122, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %2, metadata !3123, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i64 %3, metadata !3124, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i32 0, metadata !3044, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata ptr %0, metadata !3049, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata ptr %1, metadata !3050, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata ptr %2, metadata !3051, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %3, metadata !3052, metadata !DIExpression()), !dbg !3126
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3128
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3053, metadata !DIExpression()), !dbg !3129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3130, !tbaa.struct !2930
  call void @llvm.dbg.value(metadata ptr %5, metadata !1967, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata ptr %0, metadata !1968, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata ptr %1, metadata !1969, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata ptr %5, metadata !1967, metadata !DIExpression()), !dbg !3131
  store i32 10, ptr %5, align 8, !dbg !3133, !tbaa !1910
  %6 = icmp ne ptr %0, null, !dbg !3134
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3135
  br i1 %8, label %10, label %9, !dbg !3135

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3136
  unreachable, !dbg !3136

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3137
  store ptr %0, ptr %11, align 8, !dbg !3138, !tbaa !1981
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3139
  store ptr %1, ptr %12, align 8, !dbg !3140, !tbaa !1984
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3141
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3142
  ret ptr %13, !dbg !3143
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3144 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3148, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata ptr %1, metadata !3149, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %2, metadata !3150, metadata !DIExpression()), !dbg !3151
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3152
  ret ptr %4, !dbg !3153
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3154 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3158, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 %1, metadata !3159, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i32 0, metadata !3148, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata ptr %0, metadata !3149, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %1, metadata !3150, metadata !DIExpression()), !dbg !3161
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3163
  ret ptr %3, !dbg !3164
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3165 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3169, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata ptr %1, metadata !3170, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i32 %0, metadata !3148, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata ptr %1, metadata !3149, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i64 -1, metadata !3150, metadata !DIExpression()), !dbg !3172
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3174
  ret ptr %3, !dbg !3175
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3176 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3180, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i32 0, metadata !3169, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %0, metadata !3170, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 0, metadata !3148, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata ptr %0, metadata !3149, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 -1, metadata !3150, metadata !DIExpression()), !dbg !3184
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3186
  ret ptr %2, !dbg !3187
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @get_root_dev_ino(ptr noundef nonnull writeonly %0) local_unnamed_addr #26 !dbg !3188 {
  %2 = alloca %struct.stat, align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3197, metadata !DIExpression()), !dbg !3220
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #37, !dbg !3221
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3198, metadata !DIExpression()), !dbg !3222
  %3 = call i32 @lstat(ptr noundef nonnull @.str.91, ptr noundef nonnull %2) #37, !dbg !3223
  %4 = icmp eq i32 %3, 0, !dbg !3223
  br i1 %4, label %5, label %8, !dbg !3225

5:                                                ; preds = %1
  %6 = load <2 x i64>, ptr %2, align 16, !dbg !3226, !tbaa !1390
  %7 = shufflevector <2 x i64> %6, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !3227
  store <2 x i64> %7, ptr %0, align 8, !dbg !3227, !tbaa !1390
  br label %8, !dbg !3228

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %0, %5 ], [ null, %1 ], !dbg !3220
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #37, !dbg !3229
  ret ptr %9, !dbg !3229
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3230 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3269, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %1, metadata !3270, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %2, metadata !3271, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %3, metadata !3272, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata ptr %4, metadata !3273, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 %5, metadata !3274, metadata !DIExpression()), !dbg !3275
  %7 = icmp eq ptr %1, null, !dbg !3276
  br i1 %7, label %10, label %8, !dbg !3278

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.92, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !3279
  br label %12, !dbg !3279

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.93, ptr noundef %2, ptr noundef %3) #37, !dbg !3280
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.3.95, i32 noundef 5) #37, !dbg !3281
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !3281
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.96, ptr noundef %0), !dbg !3282
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.5.97, i32 noundef 5) #37, !dbg !3283
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.98) #37, !dbg !3283
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.96, ptr noundef %0), !dbg !3284
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
  ], !dbg !3285

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.7.99, i32 noundef 5) #37, !dbg !3286
  %21 = load ptr, ptr %4, align 8, !dbg !3286, !tbaa !813
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !3286
  br label %147, !dbg !3288

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.8.100, i32 noundef 5) #37, !dbg !3289
  %25 = load ptr, ptr %4, align 8, !dbg !3289, !tbaa !813
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3289
  %27 = load ptr, ptr %26, align 8, !dbg !3289, !tbaa !813
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !3289
  br label %147, !dbg !3290

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.9.101, i32 noundef 5) #37, !dbg !3291
  %31 = load ptr, ptr %4, align 8, !dbg !3291, !tbaa !813
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3291
  %33 = load ptr, ptr %32, align 8, !dbg !3291, !tbaa !813
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3291
  %35 = load ptr, ptr %34, align 8, !dbg !3291, !tbaa !813
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !3291
  br label %147, !dbg !3292

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.10.102, i32 noundef 5) #37, !dbg !3293
  %39 = load ptr, ptr %4, align 8, !dbg !3293, !tbaa !813
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3293
  %41 = load ptr, ptr %40, align 8, !dbg !3293, !tbaa !813
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3293
  %43 = load ptr, ptr %42, align 8, !dbg !3293, !tbaa !813
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3293
  %45 = load ptr, ptr %44, align 8, !dbg !3293, !tbaa !813
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !3293
  br label %147, !dbg !3294

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.11.103, i32 noundef 5) #37, !dbg !3295
  %49 = load ptr, ptr %4, align 8, !dbg !3295, !tbaa !813
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3295
  %51 = load ptr, ptr %50, align 8, !dbg !3295, !tbaa !813
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3295
  %53 = load ptr, ptr %52, align 8, !dbg !3295, !tbaa !813
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3295
  %55 = load ptr, ptr %54, align 8, !dbg !3295, !tbaa !813
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3295
  %57 = load ptr, ptr %56, align 8, !dbg !3295, !tbaa !813
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !3295
  br label %147, !dbg !3296

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.12.104, i32 noundef 5) #37, !dbg !3297
  %61 = load ptr, ptr %4, align 8, !dbg !3297, !tbaa !813
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3297
  %63 = load ptr, ptr %62, align 8, !dbg !3297, !tbaa !813
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3297
  %65 = load ptr, ptr %64, align 8, !dbg !3297, !tbaa !813
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3297
  %67 = load ptr, ptr %66, align 8, !dbg !3297, !tbaa !813
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3297
  %69 = load ptr, ptr %68, align 8, !dbg !3297, !tbaa !813
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3297
  %71 = load ptr, ptr %70, align 8, !dbg !3297, !tbaa !813
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !3297
  br label %147, !dbg !3298

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.13.105, i32 noundef 5) #37, !dbg !3299
  %75 = load ptr, ptr %4, align 8, !dbg !3299, !tbaa !813
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3299
  %77 = load ptr, ptr %76, align 8, !dbg !3299, !tbaa !813
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3299
  %79 = load ptr, ptr %78, align 8, !dbg !3299, !tbaa !813
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3299
  %81 = load ptr, ptr %80, align 8, !dbg !3299, !tbaa !813
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3299
  %83 = load ptr, ptr %82, align 8, !dbg !3299, !tbaa !813
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3299
  %85 = load ptr, ptr %84, align 8, !dbg !3299, !tbaa !813
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3299
  %87 = load ptr, ptr %86, align 8, !dbg !3299, !tbaa !813
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !3299
  br label %147, !dbg !3300

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.14.106, i32 noundef 5) #37, !dbg !3301
  %91 = load ptr, ptr %4, align 8, !dbg !3301, !tbaa !813
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3301
  %93 = load ptr, ptr %92, align 8, !dbg !3301, !tbaa !813
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3301
  %95 = load ptr, ptr %94, align 8, !dbg !3301, !tbaa !813
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3301
  %97 = load ptr, ptr %96, align 8, !dbg !3301, !tbaa !813
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3301
  %99 = load ptr, ptr %98, align 8, !dbg !3301, !tbaa !813
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3301
  %101 = load ptr, ptr %100, align 8, !dbg !3301, !tbaa !813
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3301
  %103 = load ptr, ptr %102, align 8, !dbg !3301, !tbaa !813
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3301
  %105 = load ptr, ptr %104, align 8, !dbg !3301, !tbaa !813
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !3301
  br label %147, !dbg !3302

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.15.107, i32 noundef 5) #37, !dbg !3303
  %109 = load ptr, ptr %4, align 8, !dbg !3303, !tbaa !813
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3303
  %111 = load ptr, ptr %110, align 8, !dbg !3303, !tbaa !813
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3303
  %113 = load ptr, ptr %112, align 8, !dbg !3303, !tbaa !813
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3303
  %115 = load ptr, ptr %114, align 8, !dbg !3303, !tbaa !813
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3303
  %117 = load ptr, ptr %116, align 8, !dbg !3303, !tbaa !813
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3303
  %119 = load ptr, ptr %118, align 8, !dbg !3303, !tbaa !813
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3303
  %121 = load ptr, ptr %120, align 8, !dbg !3303, !tbaa !813
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3303
  %123 = load ptr, ptr %122, align 8, !dbg !3303, !tbaa !813
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3303
  %125 = load ptr, ptr %124, align 8, !dbg !3303, !tbaa !813
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !3303
  br label %147, !dbg !3304

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.16.108, i32 noundef 5) #37, !dbg !3305
  %129 = load ptr, ptr %4, align 8, !dbg !3305, !tbaa !813
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3305
  %131 = load ptr, ptr %130, align 8, !dbg !3305, !tbaa !813
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3305
  %133 = load ptr, ptr %132, align 8, !dbg !3305, !tbaa !813
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3305
  %135 = load ptr, ptr %134, align 8, !dbg !3305, !tbaa !813
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3305
  %137 = load ptr, ptr %136, align 8, !dbg !3305, !tbaa !813
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3305
  %139 = load ptr, ptr %138, align 8, !dbg !3305, !tbaa !813
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3305
  %141 = load ptr, ptr %140, align 8, !dbg !3305, !tbaa !813
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3305
  %143 = load ptr, ptr %142, align 8, !dbg !3305, !tbaa !813
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3305
  %145 = load ptr, ptr %144, align 8, !dbg !3305, !tbaa !813
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !3305
  br label %147, !dbg !3306

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3307
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3308 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3312, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata ptr %1, metadata !3313, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata ptr %2, metadata !3314, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata ptr %3, metadata !3315, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata ptr %4, metadata !3316, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 0, metadata !3317, metadata !DIExpression()), !dbg !3318
  br label %6, !dbg !3319

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3321
  call void @llvm.dbg.value(metadata i64 %7, metadata !3317, metadata !DIExpression()), !dbg !3318
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3322
  %9 = load ptr, ptr %8, align 8, !dbg !3322, !tbaa !813
  %10 = icmp eq ptr %9, null, !dbg !3324
  %11 = add i64 %7, 1, !dbg !3325
  call void @llvm.dbg.value(metadata i64 %11, metadata !3317, metadata !DIExpression()), !dbg !3318
  br i1 %10, label %12, label %6, !dbg !3324, !llvm.loop !3326

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3328
  ret void, !dbg !3329
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3330 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3342, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata ptr %1, metadata !3343, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata ptr %2, metadata !3344, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata ptr %3, metadata !3345, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata ptr %4, metadata !3346, metadata !DIExpression()), !dbg !3350
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3351
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3348, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 0, metadata !3347, metadata !DIExpression()), !dbg !3350
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3347, metadata !DIExpression()), !dbg !3350
  %10 = icmp ult i32 %9, 41, !dbg !3353
  br i1 %10, label %11, label %16, !dbg !3353

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3353
  %13 = zext i32 %9 to i64, !dbg !3353
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3353
  %15 = add nuw nsw i32 %9, 8, !dbg !3353
  store i32 %15, ptr %4, align 8, !dbg !3353
  br label %19, !dbg !3353

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3353
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3353
  store ptr %18, ptr %7, align 8, !dbg !3353
  br label %19, !dbg !3353

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3353
  %22 = load ptr, ptr %21, align 8, !dbg !3353
  store ptr %22, ptr %6, align 16, !dbg !3356, !tbaa !813
  %23 = icmp eq ptr %22, null, !dbg !3357
  br i1 %23, label %128, label %24, !dbg !3358

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !3347, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 1, metadata !3347, metadata !DIExpression()), !dbg !3350
  %25 = icmp ult i32 %20, 41, !dbg !3353
  br i1 %25, label %29, label %26, !dbg !3353

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3353
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3353
  store ptr %28, ptr %7, align 8, !dbg !3353
  br label %34, !dbg !3353

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3353
  %31 = zext i32 %20 to i64, !dbg !3353
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3353
  %33 = add nuw nsw i32 %20, 8, !dbg !3353
  store i32 %33, ptr %4, align 8, !dbg !3353
  br label %34, !dbg !3353

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3353
  %37 = load ptr, ptr %36, align 8, !dbg !3353
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3359
  store ptr %37, ptr %38, align 8, !dbg !3356, !tbaa !813
  %39 = icmp eq ptr %37, null, !dbg !3357
  br i1 %39, label %128, label %40, !dbg !3358

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !3347, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 2, metadata !3347, metadata !DIExpression()), !dbg !3350
  %41 = icmp ult i32 %35, 41, !dbg !3353
  br i1 %41, label %45, label %42, !dbg !3353

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3353
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3353
  store ptr %44, ptr %7, align 8, !dbg !3353
  br label %50, !dbg !3353

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3353
  %47 = zext i32 %35 to i64, !dbg !3353
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3353
  %49 = add nuw nsw i32 %35, 8, !dbg !3353
  store i32 %49, ptr %4, align 8, !dbg !3353
  br label %50, !dbg !3353

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3353
  %53 = load ptr, ptr %52, align 8, !dbg !3353
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3359
  store ptr %53, ptr %54, align 16, !dbg !3356, !tbaa !813
  %55 = icmp eq ptr %53, null, !dbg !3357
  br i1 %55, label %128, label %56, !dbg !3358

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !3347, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 3, metadata !3347, metadata !DIExpression()), !dbg !3350
  %57 = icmp ult i32 %51, 41, !dbg !3353
  br i1 %57, label %61, label %58, !dbg !3353

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3353
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3353
  store ptr %60, ptr %7, align 8, !dbg !3353
  br label %66, !dbg !3353

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3353
  %63 = zext i32 %51 to i64, !dbg !3353
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3353
  %65 = add nuw nsw i32 %51, 8, !dbg !3353
  store i32 %65, ptr %4, align 8, !dbg !3353
  br label %66, !dbg !3353

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3353
  %69 = load ptr, ptr %68, align 8, !dbg !3353
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3359
  store ptr %69, ptr %70, align 8, !dbg !3356, !tbaa !813
  %71 = icmp eq ptr %69, null, !dbg !3357
  br i1 %71, label %128, label %72, !dbg !3358

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !3347, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 4, metadata !3347, metadata !DIExpression()), !dbg !3350
  %73 = icmp ult i32 %67, 41, !dbg !3353
  br i1 %73, label %77, label %74, !dbg !3353

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3353
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3353
  store ptr %76, ptr %7, align 8, !dbg !3353
  br label %82, !dbg !3353

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3353
  %79 = zext i32 %67 to i64, !dbg !3353
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3353
  %81 = add nuw nsw i32 %67, 8, !dbg !3353
  store i32 %81, ptr %4, align 8, !dbg !3353
  br label %82, !dbg !3353

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3353
  %85 = load ptr, ptr %84, align 8, !dbg !3353
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3359
  store ptr %85, ptr %86, align 16, !dbg !3356, !tbaa !813
  %87 = icmp eq ptr %85, null, !dbg !3357
  br i1 %87, label %128, label %88, !dbg !3358

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !3347, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 5, metadata !3347, metadata !DIExpression()), !dbg !3350
  %89 = icmp ult i32 %83, 41, !dbg !3353
  br i1 %89, label %93, label %90, !dbg !3353

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3353
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3353
  store ptr %92, ptr %7, align 8, !dbg !3353
  br label %98, !dbg !3353

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3353
  %95 = zext i32 %83 to i64, !dbg !3353
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3353
  %97 = add nuw nsw i32 %83, 8, !dbg !3353
  store i32 %97, ptr %4, align 8, !dbg !3353
  br label %98, !dbg !3353

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3353
  %100 = load ptr, ptr %99, align 8, !dbg !3353
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3359
  store ptr %100, ptr %101, align 8, !dbg !3356, !tbaa !813
  %102 = icmp eq ptr %100, null, !dbg !3357
  br i1 %102, label %128, label %103, !dbg !3358

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !3347, metadata !DIExpression()), !dbg !3350
  %104 = load ptr, ptr %7, align 8, !dbg !3353
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3353
  store ptr %105, ptr %7, align 8, !dbg !3353
  %106 = load ptr, ptr %104, align 8, !dbg !3353
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3359
  store ptr %106, ptr %107, align 16, !dbg !3356, !tbaa !813
  %108 = icmp eq ptr %106, null, !dbg !3357
  br i1 %108, label %128, label %109, !dbg !3358

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !3347, metadata !DIExpression()), !dbg !3350
  %110 = load ptr, ptr %7, align 8, !dbg !3353
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3353
  store ptr %111, ptr %7, align 8, !dbg !3353
  %112 = load ptr, ptr %110, align 8, !dbg !3353
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3359
  store ptr %112, ptr %113, align 8, !dbg !3356, !tbaa !813
  %114 = icmp eq ptr %112, null, !dbg !3357
  br i1 %114, label %128, label %115, !dbg !3358

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !3347, metadata !DIExpression()), !dbg !3350
  %116 = load ptr, ptr %7, align 8, !dbg !3353
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3353
  store ptr %117, ptr %7, align 8, !dbg !3353
  %118 = load ptr, ptr %116, align 8, !dbg !3353
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3359
  store ptr %118, ptr %119, align 16, !dbg !3356, !tbaa !813
  %120 = icmp eq ptr %118, null, !dbg !3357
  br i1 %120, label %128, label %121, !dbg !3358

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !3347, metadata !DIExpression()), !dbg !3350
  %122 = load ptr, ptr %7, align 8, !dbg !3353
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3353
  store ptr %123, ptr %7, align 8, !dbg !3353
  %124 = load ptr, ptr %122, align 8, !dbg !3353
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3359
  store ptr %124, ptr %125, align 8, !dbg !3356, !tbaa !813
  %126 = icmp eq ptr %124, null, !dbg !3357
  %127 = select i1 %126, i64 9, i64 10, !dbg !3358
  br label %128, !dbg !3358

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3360
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3361
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3362
  ret void, !dbg !3362
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3363 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !3367, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %1, metadata !3368, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %2, metadata !3369, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %3, metadata !3370, metadata !DIExpression()), !dbg !3376
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !3377
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3371, metadata !DIExpression()), !dbg !3378
  call void @llvm.va_start(ptr nonnull %5), !dbg !3379
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3380
  call void @llvm.va_end(ptr nonnull %5), !dbg !3381
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !3382
  ret void, !dbg !3382
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3383 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3384, !tbaa !813
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.96, ptr noundef %1), !dbg !3384
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.17.113, i32 noundef 5) #37, !dbg !3385
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.114) #37, !dbg !3385
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.19.115, i32 noundef 5) #37, !dbg !3386
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.116, ptr noundef nonnull @.str.21.117) #37, !dbg !3386
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.94, ptr noundef nonnull @.str.22.118, i32 noundef 5) #37, !dbg !3387
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !3387
  ret void, !dbg !3388
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3389 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3394, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i64 %1, metadata !3395, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i64 %2, metadata !3396, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata ptr %0, metadata !3398, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %1, metadata !3401, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i64 %2, metadata !3402, metadata !DIExpression()), !dbg !3403
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3405
  call void @llvm.dbg.value(metadata ptr %4, metadata !3406, metadata !DIExpression()), !dbg !3411
  %5 = icmp eq ptr %4, null, !dbg !3413
  br i1 %5, label %6, label %7, !dbg !3415

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3416
  unreachable, !dbg !3416

7:                                                ; preds = %3
  ret ptr %4, !dbg !3417
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3399 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3398, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i64 %1, metadata !3401, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i64 %2, metadata !3402, metadata !DIExpression()), !dbg !3418
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3419
  call void @llvm.dbg.value(metadata ptr %4, metadata !3406, metadata !DIExpression()), !dbg !3420
  %5 = icmp eq ptr %4, null, !dbg !3422
  br i1 %5, label %6, label %7, !dbg !3423

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3424
  unreachable, !dbg !3424

7:                                                ; preds = %3
  ret ptr %4, !dbg !3425
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3426 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3430, metadata !DIExpression()), !dbg !3431
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3432
  call void @llvm.dbg.value(metadata ptr %2, metadata !3406, metadata !DIExpression()), !dbg !3433
  %3 = icmp eq ptr %2, null, !dbg !3435
  br i1 %3, label %4, label %5, !dbg !3436

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3437
  unreachable, !dbg !3437

5:                                                ; preds = %1
  ret ptr %2, !dbg !3438
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3439 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3440 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3444, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %0, metadata !3446, metadata !DIExpression()), !dbg !3450
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3452
  call void @llvm.dbg.value(metadata ptr %2, metadata !3406, metadata !DIExpression()), !dbg !3453
  %3 = icmp eq ptr %2, null, !dbg !3455
  br i1 %3, label %4, label %5, !dbg !3456

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3457
  unreachable, !dbg !3457

5:                                                ; preds = %1
  ret ptr %2, !dbg !3458
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3459 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3461, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 %0, metadata !3430, metadata !DIExpression()), !dbg !3463
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !3465
  call void @llvm.dbg.value(metadata ptr %2, metadata !3406, metadata !DIExpression()), !dbg !3466
  %3 = icmp eq ptr %2, null, !dbg !3468
  br i1 %3, label %4, label %5, !dbg !3469

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3470
  unreachable, !dbg !3470

5:                                                ; preds = %1
  ret ptr %2, !dbg !3471
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3472 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3476, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i64 %1, metadata !3477, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata ptr %0, metadata !3479, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %1, metadata !3483, metadata !DIExpression()), !dbg !3484
  %3 = icmp eq i64 %1, 0, !dbg !3486
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3486
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !3487
  call void @llvm.dbg.value(metadata ptr %5, metadata !3406, metadata !DIExpression()), !dbg !3488
  %6 = icmp eq ptr %5, null, !dbg !3490
  br i1 %6, label %7, label %8, !dbg !3491

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3492
  unreachable, !dbg !3492

8:                                                ; preds = %2
  ret ptr %5, !dbg !3493
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3494 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3495 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3499, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %1, metadata !3500, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata ptr %0, metadata !3502, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i64 %1, metadata !3505, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata ptr %0, metadata !3479, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i64 %1, metadata !3483, metadata !DIExpression()), !dbg !3508
  %3 = icmp eq i64 %1, 0, !dbg !3510
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3510
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #45, !dbg !3511
  call void @llvm.dbg.value(metadata ptr %5, metadata !3406, metadata !DIExpression()), !dbg !3512
  %6 = icmp eq ptr %5, null, !dbg !3514
  br i1 %6, label %7, label %8, !dbg !3515

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3516
  unreachable, !dbg !3516

8:                                                ; preds = %2
  ret ptr %5, !dbg !3517
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3518 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3522, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i64 %1, metadata !3523, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i64 %2, metadata !3524, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata ptr %0, metadata !3526, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %1, metadata !3529, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %2, metadata !3530, metadata !DIExpression()), !dbg !3531
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3533
  call void @llvm.dbg.value(metadata ptr %4, metadata !3406, metadata !DIExpression()), !dbg !3534
  %5 = icmp eq ptr %4, null, !dbg !3536
  br i1 %5, label %6, label %7, !dbg !3537

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3538
  unreachable, !dbg !3538

7:                                                ; preds = %3
  ret ptr %4, !dbg !3539
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3540 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3544, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %1, metadata !3545, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata ptr null, metadata !3398, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i64 %0, metadata !3401, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata i64 %1, metadata !3402, metadata !DIExpression()), !dbg !3547
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3549
  call void @llvm.dbg.value(metadata ptr %3, metadata !3406, metadata !DIExpression()), !dbg !3550
  %4 = icmp eq ptr %3, null, !dbg !3552
  br i1 %4, label %5, label %6, !dbg !3553

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3554
  unreachable, !dbg !3554

6:                                                ; preds = %2
  ret ptr %3, !dbg !3555
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3556 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3560, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i64 %1, metadata !3561, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata ptr null, metadata !3522, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i64 %0, metadata !3523, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i64 %1, metadata !3524, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata ptr null, metadata !3526, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %0, metadata !3529, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %1, metadata !3530, metadata !DIExpression()), !dbg !3565
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3567
  call void @llvm.dbg.value(metadata ptr %3, metadata !3406, metadata !DIExpression()), !dbg !3568
  %4 = icmp eq ptr %3, null, !dbg !3570
  br i1 %4, label %5, label %6, !dbg !3571

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3572
  unreachable, !dbg !3572

6:                                                ; preds = %2
  ret ptr %3, !dbg !3573
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3574 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3578, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata ptr %1, metadata !3579, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata ptr %0, metadata !747, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr %1, metadata !748, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i64 1, metadata !749, metadata !DIExpression()), !dbg !3581
  %3 = load i64, ptr %1, align 8, !dbg !3583, !tbaa !1390
  call void @llvm.dbg.value(metadata i64 %3, metadata !750, metadata !DIExpression()), !dbg !3581
  %4 = icmp eq ptr %0, null, !dbg !3584
  br i1 %4, label %5, label %8, !dbg !3586

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3587
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3590
  br label %15, !dbg !3590

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3591
  %10 = add nuw i64 %9, 1, !dbg !3591
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3591
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3591
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %13, metadata !750, metadata !DIExpression()), !dbg !3581
  br i1 %12, label %14, label %15, !dbg !3594

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3595
  unreachable, !dbg !3595

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3581
  call void @llvm.dbg.value(metadata i64 %16, metadata !750, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata ptr %0, metadata !3398, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 %16, metadata !3401, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i64 1, metadata !3402, metadata !DIExpression()), !dbg !3596
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3598
  call void @llvm.dbg.value(metadata ptr %17, metadata !3406, metadata !DIExpression()), !dbg !3599
  %18 = icmp eq ptr %17, null, !dbg !3601
  br i1 %18, label %19, label %20, !dbg !3602

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3603
  unreachable, !dbg !3603

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !747, metadata !DIExpression()), !dbg !3581
  store i64 %16, ptr %1, align 8, !dbg !3604, !tbaa !1390
  ret ptr %17, !dbg !3605
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !742 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !747, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr %1, metadata !748, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %2, metadata !749, metadata !DIExpression()), !dbg !3606
  %4 = load i64, ptr %1, align 8, !dbg !3607, !tbaa !1390
  call void @llvm.dbg.value(metadata i64 %4, metadata !750, metadata !DIExpression()), !dbg !3606
  %5 = icmp eq ptr %0, null, !dbg !3608
  br i1 %5, label %6, label %13, !dbg !3609

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3610
  br i1 %7, label %8, label %20, !dbg !3611

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3612
  call void @llvm.dbg.value(metadata i64 %9, metadata !750, metadata !DIExpression()), !dbg !3606
  %10 = icmp ugt i64 %2, 128, !dbg !3614
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %12, metadata !750, metadata !DIExpression()), !dbg !3606
  br label %20, !dbg !3616

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3617
  %15 = add nuw i64 %14, 1, !dbg !3617
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3617
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3617
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %18, metadata !750, metadata !DIExpression()), !dbg !3606
  br i1 %17, label %19, label %20, !dbg !3618

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3619
  unreachable, !dbg !3619

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3606
  call void @llvm.dbg.value(metadata i64 %21, metadata !750, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata ptr %0, metadata !3398, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64 %21, metadata !3401, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i64 %2, metadata !3402, metadata !DIExpression()), !dbg !3620
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3622
  call void @llvm.dbg.value(metadata ptr %22, metadata !3406, metadata !DIExpression()), !dbg !3623
  %23 = icmp eq ptr %22, null, !dbg !3625
  br i1 %23, label %24, label %25, !dbg !3626

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3627
  unreachable, !dbg !3627

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !747, metadata !DIExpression()), !dbg !3606
  store i64 %21, ptr %1, align 8, !dbg !3628, !tbaa !1390
  ret ptr %22, !dbg !3629
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !754 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !762, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %1, metadata !763, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %2, metadata !764, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %3, metadata !765, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %4, metadata !766, metadata !DIExpression()), !dbg !3630
  %6 = load i64, ptr %1, align 8, !dbg !3631, !tbaa !1390
  call void @llvm.dbg.value(metadata i64 %6, metadata !767, metadata !DIExpression()), !dbg !3630
  %7 = ashr i64 %6, 1, !dbg !3632
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3632
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3632
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3632
  call void @llvm.dbg.value(metadata i64 %10, metadata !768, metadata !DIExpression()), !dbg !3630
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3634
  call void @llvm.dbg.value(metadata i64 %11, metadata !768, metadata !DIExpression()), !dbg !3630
  %12 = icmp sgt i64 %3, -1, !dbg !3635
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3637
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3637
  call void @llvm.dbg.value(metadata i64 %15, metadata !768, metadata !DIExpression()), !dbg !3630
  %16 = icmp slt i64 %4, 0, !dbg !3638
  br i1 %16, label %17, label %30, !dbg !3638

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3638
  br i1 %18, label %19, label %24, !dbg !3638

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3638
  %21 = udiv i64 9223372036854775807, %20, !dbg !3638
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3638
  br i1 %23, label %46, label %43, !dbg !3638

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3638
  br i1 %25, label %43, label %26, !dbg !3638

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3638
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3638
  %29 = icmp ult i64 %28, %15, !dbg !3638
  br i1 %29, label %46, label %43, !dbg !3638

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3638
  br i1 %31, label %43, label %32, !dbg !3638

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3638
  br i1 %33, label %34, label %40, !dbg !3638

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3638
  br i1 %35, label %43, label %36, !dbg !3638

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3638
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3638
  %39 = icmp ult i64 %38, %4, !dbg !3638
  br i1 %39, label %46, label %43, !dbg !3638

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3638
  br i1 %42, label %46, label %43, !dbg !3638

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !769, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3630
  %44 = mul i64 %15, %4, !dbg !3638
  call void @llvm.dbg.value(metadata i64 %44, metadata !769, metadata !DIExpression()), !dbg !3630
  %45 = icmp slt i64 %44, 128, !dbg !3638
  br i1 %45, label %46, label %51, !dbg !3638

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !770, metadata !DIExpression()), !dbg !3630
  %48 = sdiv i64 %47, %4, !dbg !3639
  call void @llvm.dbg.value(metadata i64 %48, metadata !768, metadata !DIExpression()), !dbg !3630
  %49 = srem i64 %47, %4, !dbg !3642
  %50 = sub nsw i64 %47, %49, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %50, metadata !769, metadata !DIExpression()), !dbg !3630
  br label %51, !dbg !3644

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3630
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3630
  call void @llvm.dbg.value(metadata i64 %53, metadata !769, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %52, metadata !768, metadata !DIExpression()), !dbg !3630
  %54 = icmp eq ptr %0, null, !dbg !3645
  br i1 %54, label %55, label %56, !dbg !3647

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3648, !tbaa !1390
  br label %56, !dbg !3649

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3650
  %58 = icmp slt i64 %57, %2, !dbg !3652
  br i1 %58, label %59, label %96, !dbg !3653

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3654
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3654
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3654
  call void @llvm.dbg.value(metadata i64 %62, metadata !768, metadata !DIExpression()), !dbg !3630
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3655
  br i1 %65, label %95, label %66, !dbg !3655

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3656

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3656
  br i1 %68, label %69, label %74, !dbg !3656

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3656
  %71 = udiv i64 9223372036854775807, %70, !dbg !3656
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3656
  br i1 %73, label %95, label %93, !dbg !3656

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3656
  br i1 %75, label %93, label %76, !dbg !3656

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3656
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3656
  %79 = icmp ult i64 %78, %62, !dbg !3656
  br i1 %79, label %95, label %93, !dbg !3656

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3656
  br i1 %81, label %93, label %82, !dbg !3656

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3656
  br i1 %83, label %84, label %90, !dbg !3656

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3656
  br i1 %85, label %93, label %86, !dbg !3656

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3656
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3656
  %89 = icmp ult i64 %88, %4, !dbg !3656
  br i1 %89, label %95, label %93, !dbg !3656

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3656
  br i1 %92, label %95, label %93, !dbg !3656

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !769, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3630
  %94 = mul i64 %62, %4, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %94, metadata !769, metadata !DIExpression()), !dbg !3630
  br label %96, !dbg !3657

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #39, !dbg !3658
  unreachable, !dbg !3658

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3630
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3630
  call void @llvm.dbg.value(metadata i64 %98, metadata !769, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %97, metadata !768, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %0, metadata !3476, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i64 %98, metadata !3477, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata ptr %0, metadata !3479, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 %98, metadata !3483, metadata !DIExpression()), !dbg !3661
  %99 = icmp eq i64 %98, 0, !dbg !3663
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3663
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #45, !dbg !3664
  call void @llvm.dbg.value(metadata ptr %101, metadata !3406, metadata !DIExpression()), !dbg !3665
  %102 = icmp eq ptr %101, null, !dbg !3667
  br i1 %102, label %103, label %104, !dbg !3668

103:                                              ; preds = %96
  tail call void @xalloc_die() #39, !dbg !3669
  unreachable, !dbg !3669

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !762, metadata !DIExpression()), !dbg !3630
  store i64 %97, ptr %1, align 8, !dbg !3670, !tbaa !1390
  ret ptr %101, !dbg !3671
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3672 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3674, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i64 %0, metadata !3676, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i64 1, metadata !3679, metadata !DIExpression()), !dbg !3680
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !3682
  call void @llvm.dbg.value(metadata ptr %2, metadata !3406, metadata !DIExpression()), !dbg !3683
  %3 = icmp eq ptr %2, null, !dbg !3685
  br i1 %3, label %4, label %5, !dbg !3686

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3687
  unreachable, !dbg !3687

5:                                                ; preds = %1
  ret ptr %2, !dbg !3688
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3689 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3677 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3676, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i64 %1, metadata !3679, metadata !DIExpression()), !dbg !3690
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !3691
  call void @llvm.dbg.value(metadata ptr %3, metadata !3406, metadata !DIExpression()), !dbg !3692
  %4 = icmp eq ptr %3, null, !dbg !3694
  br i1 %4, label %5, label %6, !dbg !3695

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3696
  unreachable, !dbg !3696

6:                                                ; preds = %2
  ret ptr %3, !dbg !3697
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3698 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3700, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %0, metadata !3702, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 1, metadata !3705, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 %0, metadata !3708, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 1, metadata !3711, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 %0, metadata !3708, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 1, metadata !3711, metadata !DIExpression()), !dbg !3712
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #43, !dbg !3714
  call void @llvm.dbg.value(metadata ptr %2, metadata !3406, metadata !DIExpression()), !dbg !3715
  %3 = icmp eq ptr %2, null, !dbg !3717
  br i1 %3, label %4, label %5, !dbg !3718

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3719
  unreachable, !dbg !3719

5:                                                ; preds = %1
  ret ptr %2, !dbg !3720
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3703 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3702, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i64 %1, metadata !3705, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i64 %0, metadata !3708, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 %1, metadata !3711, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 %0, metadata !3708, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 %1, metadata !3711, metadata !DIExpression()), !dbg !3722
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43, !dbg !3724
  call void @llvm.dbg.value(metadata ptr %3, metadata !3406, metadata !DIExpression()), !dbg !3725
  %4 = icmp eq ptr %3, null, !dbg !3727
  br i1 %4, label %5, label %6, !dbg !3728

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3729
  unreachable, !dbg !3729

6:                                                ; preds = %2
  ret ptr %3, !dbg !3730
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3731 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3735, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i64 %1, metadata !3736, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i64 %1, metadata !3430, metadata !DIExpression()), !dbg !3738
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !3740
  call void @llvm.dbg.value(metadata ptr %3, metadata !3406, metadata !DIExpression()), !dbg !3741
  %4 = icmp eq ptr %3, null, !dbg !3743
  br i1 %4, label %5, label %6, !dbg !3744

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3745
  unreachable, !dbg !3745

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3746, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %0, metadata !3749, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 %1, metadata !3750, metadata !DIExpression()), !dbg !3751
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3753
  ret ptr %3, !dbg !3754
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3755 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3759, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i64 %1, metadata !3760, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i64 %1, metadata !3444, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i64 %1, metadata !3446, metadata !DIExpression()), !dbg !3764
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !3766
  call void @llvm.dbg.value(metadata ptr %3, metadata !3406, metadata !DIExpression()), !dbg !3767
  %4 = icmp eq ptr %3, null, !dbg !3769
  br i1 %4, label %5, label %6, !dbg !3770

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3771
  unreachable, !dbg !3771

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3746, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata ptr %0, metadata !3749, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i64 %1, metadata !3750, metadata !DIExpression()), !dbg !3772
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3774
  ret ptr %3, !dbg !3775
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3776 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3780, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i64 %1, metadata !3781, metadata !DIExpression()), !dbg !3783
  %3 = add nsw i64 %1, 1, !dbg !3784
  call void @llvm.dbg.value(metadata i64 %3, metadata !3444, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i64 %3, metadata !3446, metadata !DIExpression()), !dbg !3787
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !3789
  call void @llvm.dbg.value(metadata ptr %4, metadata !3406, metadata !DIExpression()), !dbg !3790
  %5 = icmp eq ptr %4, null, !dbg !3792
  br i1 %5, label %6, label %7, !dbg !3793

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3794
  unreachable, !dbg !3794

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3782, metadata !DIExpression()), !dbg !3783
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3795
  store i8 0, ptr %8, align 1, !dbg !3796, !tbaa !887
  call void @llvm.dbg.value(metadata ptr %4, metadata !3746, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata ptr %0, metadata !3749, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i64 %1, metadata !3750, metadata !DIExpression()), !dbg !3797
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3799
  ret ptr %4, !dbg !3800
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3801 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3803, metadata !DIExpression()), !dbg !3804
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3805
  %3 = add i64 %2, 1, !dbg !3806
  call void @llvm.dbg.value(metadata ptr %0, metadata !3735, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i64 %3, metadata !3736, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i64 %3, metadata !3430, metadata !DIExpression()), !dbg !3809
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !3811
  call void @llvm.dbg.value(metadata ptr %4, metadata !3406, metadata !DIExpression()), !dbg !3812
  %5 = icmp eq ptr %4, null, !dbg !3814
  br i1 %5, label %6, label %7, !dbg !3815

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3816
  unreachable, !dbg !3816

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3746, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata ptr %0, metadata !3749, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i64 %3, metadata !3750, metadata !DIExpression()), !dbg !3817
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3819
  ret ptr %4, !dbg !3820
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3821 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3826, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %1, metadata !3823, metadata !DIExpression()), !dbg !3827
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.133, ptr noundef nonnull @.str.2.134, i32 noundef 5) #37, !dbg !3826
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.135, ptr noundef %2) #37, !dbg !3826
  %3 = icmp eq i32 %1, 0, !dbg !3826
  tail call void @llvm.assume(i1 %3), !dbg !3826
  tail call void @abort() #39, !dbg !3828
  unreachable, !dbg !3828
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @xgetcwd() local_unnamed_addr #10 !dbg !3829 {
  %1 = tail call ptr @getcwd(ptr noundef null, i64 noundef 0) #37, !dbg !3833
  call void @llvm.dbg.value(metadata ptr %1, metadata !3832, metadata !DIExpression()), !dbg !3834
  %2 = icmp eq ptr %1, null, !dbg !3835
  br i1 %2, label %3, label %8, !dbg !3837

3:                                                ; preds = %0
  %4 = tail call ptr @__errno_location() #40, !dbg !3838
  %5 = load i32, ptr %4, align 4, !dbg !3838, !tbaa !878
  %6 = icmp eq i32 %5, 12, !dbg !3839
  br i1 %6, label %7, label %8, !dbg !3840

7:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3841
  unreachable, !dbg !3841

8:                                                ; preds = %3, %0
  ret ptr %1, !dbg !3842
}

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3843 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3881, metadata !DIExpression()), !dbg !3886
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3887
  call void @llvm.dbg.value(metadata i1 poison, metadata !3882, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3886
  call void @llvm.dbg.value(metadata ptr %0, metadata !3888, metadata !DIExpression()), !dbg !3891
  %3 = load i32, ptr %0, align 8, !dbg !3893, !tbaa !3894
  %4 = and i32 %3, 32, !dbg !3895
  %5 = icmp eq i32 %4, 0, !dbg !3895
  call void @llvm.dbg.value(metadata i1 %5, metadata !3884, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3886
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3896
  %7 = icmp eq i32 %6, 0, !dbg !3897
  call void @llvm.dbg.value(metadata i1 %7, metadata !3885, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3886
  br i1 %5, label %8, label %18, !dbg !3898

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3900
  call void @llvm.dbg.value(metadata i1 %9, metadata !3882, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3886
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3901
  %11 = xor i1 %7, true, !dbg !3901
  %12 = sext i1 %11 to i32, !dbg !3901
  br i1 %10, label %21, label %13, !dbg !3901

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3902
  %15 = load i32, ptr %14, align 4, !dbg !3902, !tbaa !878
  %16 = icmp ne i32 %15, 9, !dbg !3903
  %17 = sext i1 %16 to i32, !dbg !3904
  br label %21, !dbg !3904

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3905

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3907
  store i32 0, ptr %20, align 4, !dbg !3909, !tbaa !878
  br label %21, !dbg !3907

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3886
  ret i32 %22, !dbg !3910
}

; Function Attrs: nounwind
declare !dbg !3911 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3915 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3953, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i32 0, metadata !3954, metadata !DIExpression()), !dbg !3957
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3958
  call void @llvm.dbg.value(metadata i32 %2, metadata !3955, metadata !DIExpression()), !dbg !3957
  %3 = icmp slt i32 %2, 0, !dbg !3959
  br i1 %3, label %4, label %6, !dbg !3961

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3962
  br label %24, !dbg !3963

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3964
  %8 = icmp eq i32 %7, 0, !dbg !3964
  br i1 %8, label %13, label %9, !dbg !3966

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3967
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3968
  %12 = icmp eq i64 %11, -1, !dbg !3969
  br i1 %12, label %16, label %13, !dbg !3970

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3971
  %15 = icmp eq i32 %14, 0, !dbg !3971
  br i1 %15, label %16, label %18, !dbg !3972

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3954, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i32 0, metadata !3956, metadata !DIExpression()), !dbg !3957
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3973
  call void @llvm.dbg.value(metadata i32 %17, metadata !3956, metadata !DIExpression()), !dbg !3957
  br label %24, !dbg !3974

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3975
  %20 = load i32, ptr %19, align 4, !dbg !3975, !tbaa !878
  call void @llvm.dbg.value(metadata i32 %20, metadata !3954, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i32 0, metadata !3956, metadata !DIExpression()), !dbg !3957
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3973
  call void @llvm.dbg.value(metadata i32 %21, metadata !3956, metadata !DIExpression()), !dbg !3957
  %22 = icmp eq i32 %20, 0, !dbg !3976
  br i1 %22, label %24, label %23, !dbg !3974

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3978, !tbaa !878
  call void @llvm.dbg.value(metadata i32 -1, metadata !3956, metadata !DIExpression()), !dbg !3957
  br label %24, !dbg !3980

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3957
  ret i32 %25, !dbg !3981
}

; Function Attrs: nofree nounwind
declare !dbg !3982 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3983 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3984 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3985 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3988 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4026, metadata !DIExpression()), !dbg !4027
  %2 = icmp eq ptr %0, null, !dbg !4028
  br i1 %2, label %6, label %3, !dbg !4030

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !4031
  %5 = icmp eq i32 %4, 0, !dbg !4031
  br i1 %5, label %6, label %8, !dbg !4032

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4033
  br label %16, !dbg !4034

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4035, metadata !DIExpression()), !dbg !4040
  %9 = load i32, ptr %0, align 8, !dbg !4042, !tbaa !3894
  %10 = and i32 %9, 256, !dbg !4044
  %11 = icmp eq i32 %10, 0, !dbg !4044
  br i1 %11, label %14, label %12, !dbg !4045

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !4046
  br label %14, !dbg !4046

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4047
  br label %16, !dbg !4048

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4027
  ret i32 %17, !dbg !4049
}

; Function Attrs: nofree nounwind
declare !dbg !4050 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4051 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4090, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i64 %1, metadata !4091, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i32 %2, metadata !4092, metadata !DIExpression()), !dbg !4096
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4097
  %5 = load ptr, ptr %4, align 8, !dbg !4097, !tbaa !4098
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4099
  %7 = load ptr, ptr %6, align 8, !dbg !4099, !tbaa !4100
  %8 = icmp eq ptr %5, %7, !dbg !4101
  br i1 %8, label %9, label %27, !dbg !4102

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4103
  %11 = load ptr, ptr %10, align 8, !dbg !4103, !tbaa !1717
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4104
  %13 = load ptr, ptr %12, align 8, !dbg !4104, !tbaa !4105
  %14 = icmp eq ptr %11, %13, !dbg !4106
  br i1 %14, label %15, label %27, !dbg !4107

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4108
  %17 = load ptr, ptr %16, align 8, !dbg !4108, !tbaa !4109
  %18 = icmp eq ptr %17, null, !dbg !4110
  br i1 %18, label %19, label %27, !dbg !4111

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !4112
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !4113
  call void @llvm.dbg.value(metadata i64 %21, metadata !4093, metadata !DIExpression()), !dbg !4114
  %22 = icmp eq i64 %21, -1, !dbg !4115
  br i1 %22, label %29, label %23, !dbg !4117

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4118, !tbaa !3894
  %25 = and i32 %24, -17, !dbg !4118
  store i32 %25, ptr %0, align 8, !dbg !4118, !tbaa !3894
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4119
  store i64 %21, ptr %26, align 8, !dbg !4120, !tbaa !4121
  br label %29, !dbg !4122

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4123
  br label %29, !dbg !4124

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4096
  ret i32 %30, !dbg !4125
}

; Function Attrs: nofree nounwind
declare !dbg !4126 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4129 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4134, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata ptr %1, metadata !4135, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i64 %2, metadata !4136, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata ptr %3, metadata !4137, metadata !DIExpression()), !dbg !4139
  %5 = icmp eq ptr %1, null, !dbg !4140
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4142
  %7 = select i1 %5, ptr @.str.148, ptr %1, !dbg !4142
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4142
  call void @llvm.dbg.value(metadata i64 %8, metadata !4136, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata ptr %7, metadata !4135, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata ptr %6, metadata !4134, metadata !DIExpression()), !dbg !4139
  %9 = icmp eq ptr %3, null, !dbg !4143
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4145
  call void @llvm.dbg.value(metadata ptr %10, metadata !4137, metadata !DIExpression()), !dbg !4139
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #37, !dbg !4146
  call void @llvm.dbg.value(metadata i64 %11, metadata !4138, metadata !DIExpression()), !dbg !4139
  %12 = icmp ult i64 %11, -3, !dbg !4147
  br i1 %12, label %13, label %17, !dbg !4149

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !4150
  %15 = icmp eq i32 %14, 0, !dbg !4150
  br i1 %15, label %16, label %29, !dbg !4151

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4152, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata ptr %10, metadata !4159, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i32 0, metadata !4162, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i64 8, metadata !4163, metadata !DIExpression()), !dbg !4164
  store i64 0, ptr %10, align 1, !dbg !4166
  br label %29, !dbg !4167

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4168
  br i1 %18, label %19, label %20, !dbg !4170

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !4171
  unreachable, !dbg !4171

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4172

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !4174
  br i1 %23, label %29, label %24, !dbg !4175

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4176
  br i1 %25, label %29, label %26, !dbg !4179

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4180, !tbaa !887
  %28 = zext i8 %27 to i32, !dbg !4181
  store i32 %28, ptr %6, align 4, !dbg !4182, !tbaa !878
  br label %29, !dbg !4183

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4139
  ret i64 %30, !dbg !4184
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4185 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4191 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4193, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 %1, metadata !4194, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 %2, metadata !4195, metadata !DIExpression()), !dbg !4197
  %4 = icmp eq i64 %2, 0, !dbg !4198
  br i1 %4, label %8, label %5, !dbg !4198

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4198
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4198
  br i1 %7, label %13, label %8, !dbg !4198

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4196, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4197
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4196, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4197
  %9 = mul i64 %2, %1, !dbg !4198
  call void @llvm.dbg.value(metadata i64 %9, metadata !4196, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata ptr %0, metadata !4200, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i64 %9, metadata !4203, metadata !DIExpression()), !dbg !4204
  %10 = icmp eq i64 %9, 0, !dbg !4206
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4206
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #45, !dbg !4207
  br label %15, !dbg !4208

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4196, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4197
  %14 = tail call ptr @__errno_location() #40, !dbg !4209
  store i32 12, ptr %14, align 4, !dbg !4211, !tbaa !878
  br label %15, !dbg !4212

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4197
  ret ptr %16, !dbg !4213
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4214 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4218, metadata !DIExpression()), !dbg !4223
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !4224
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4219, metadata !DIExpression()), !dbg !4225
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !4226
  %4 = icmp eq i32 %3, 0, !dbg !4226
  br i1 %4, label %5, label %12, !dbg !4228

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4229, metadata !DIExpression()), !dbg !4233
  %6 = load i16, ptr %2, align 16, !dbg !4236
  %7 = icmp eq i16 %6, 67, !dbg !4236
  br i1 %7, label %11, label %8, !dbg !4237

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4229, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata ptr @.str.1.153, metadata !4232, metadata !DIExpression()), !dbg !4238
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.153, i64 6), !dbg !4240
  %10 = icmp eq i32 %9, 0, !dbg !4241
  br i1 %10, label %11, label %12, !dbg !4242

11:                                               ; preds = %8, %5
  br label %12, !dbg !4243

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4223
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !4244
  ret i1 %13, !dbg !4244
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4245 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4249, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata ptr %1, metadata !4250, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i64 %2, metadata !4251, metadata !DIExpression()), !dbg !4252
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !4253
  ret i32 %4, !dbg !4254
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4255 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4259, metadata !DIExpression()), !dbg !4260
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4261
  ret ptr %2, !dbg !4262
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4263 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4265, metadata !DIExpression()), !dbg !4267
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4268
  call void @llvm.dbg.value(metadata ptr %2, metadata !4266, metadata !DIExpression()), !dbg !4267
  ret ptr %2, !dbg !4269
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4270 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4272, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata ptr %1, metadata !4273, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i64 %2, metadata !4274, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i32 %0, metadata !4265, metadata !DIExpression()), !dbg !4280
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !4282
  call void @llvm.dbg.value(metadata ptr %4, metadata !4266, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr %4, metadata !4275, metadata !DIExpression()), !dbg !4279
  %5 = icmp eq ptr %4, null, !dbg !4283
  br i1 %5, label %6, label %9, !dbg !4284

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4285
  br i1 %7, label %19, label %8, !dbg !4288

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4289, !tbaa !887
  br label %19, !dbg !4290

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !4291
  call void @llvm.dbg.value(metadata i64 %10, metadata !4276, metadata !DIExpression()), !dbg !4292
  %11 = icmp ult i64 %10, %2, !dbg !4293
  br i1 %11, label %12, label %14, !dbg !4295

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4296
  call void @llvm.dbg.value(metadata ptr %1, metadata !4298, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata ptr %4, metadata !4301, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i64 %13, metadata !4302, metadata !DIExpression()), !dbg !4303
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !4305
  br label %19, !dbg !4306

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4307
  br i1 %15, label %19, label %16, !dbg !4310

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4311
  call void @llvm.dbg.value(metadata ptr %1, metadata !4298, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata ptr %4, metadata !4301, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i64 %17, metadata !4302, metadata !DIExpression()), !dbg !4313
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4315
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4316
  store i8 0, ptr %18, align 1, !dbg !4317, !tbaa !887
  br label %19, !dbg !4318

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4319
  ret i32 %20, !dbg !4320
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
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #42 = { nounwind allocsize(0) }
attributes #43 = { nounwind allocsize(0,1) }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!79, !406, !410, !425, !695, !727, !474, !488, !536, !729, !731, !687, !738, !772, !774, !776, !778, !780, !782, !711, !784, !787, !791, !793}
!llvm.ident = !{!795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795, !795}
!llvm.module.flags = !{!796, !797, !798, !799, !800, !801}

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
!79 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !80, retainedTypes: !120, globals: !130, splitDebugInlining: false, nameTableKind: None)
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
!424 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !425, file: !426, line: 66, type: !469, isLocal: false, isDefinition: true)
!425 = distinct !DICompileUnit(language: DW_LANG_C11, file: !426, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !427, globals: !428, splitDebugInlining: false, nameTableKind: None)
!426 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!427 = !{!121, !129}
!428 = !{!429, !431, !451, !453, !455, !457, !423, !459, !461, !463, !465, !467}
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !426, line: 272, type: !231, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "old_file_name", scope: !433, file: !426, line: 304, type: !127, isLocal: true, isDefinition: true)
!433 = distinct !DISubprogram(name: "verror_at_line", scope: !426, file: !426, line: 298, type: !434, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !444)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !83, !83, !127, !89, !127, !436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !438)
!438 = !{!439, !441, !442, !443}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !437, file: !440, baseType: !89, size: 32)
!440 = !DIFile(filename: "lib/error.c", directory: "/src")
!441 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !437, file: !440, baseType: !89, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !437, file: !440, baseType: !121, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !437, file: !440, baseType: !121, size: 64, offset: 128)
!444 = !{!445, !446, !447, !448, !449, !450}
!445 = !DILocalVariable(name: "status", arg: 1, scope: !433, file: !426, line: 298, type: !83)
!446 = !DILocalVariable(name: "errnum", arg: 2, scope: !433, file: !426, line: 298, type: !83)
!447 = !DILocalVariable(name: "file_name", arg: 3, scope: !433, file: !426, line: 298, type: !127)
!448 = !DILocalVariable(name: "line_number", arg: 4, scope: !433, file: !426, line: 298, type: !89)
!449 = !DILocalVariable(name: "message", arg: 5, scope: !433, file: !426, line: 298, type: !127)
!450 = !DILocalVariable(name: "args", arg: 6, scope: !433, file: !426, line: 298, type: !436)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(name: "old_line_number", scope: !433, file: !426, line: 305, type: !89, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !426, line: 338, type: !19, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !426, line: 346, type: !267, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !426, line: 346, type: !245, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(name: "error_message_count", scope: !425, file: !426, line: 69, type: !89, isLocal: false, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !425, file: !426, line: 295, type: !83, isLocal: false, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !426, line: 208, type: !262, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !426, line: 208, type: !381, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !426, line: 214, type: !231, isLocal: true, isDefinition: true)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{null}
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(name: "program_name", scope: !474, file: !475, line: 31, type: !127, isLocal: false, isDefinition: true)
!474 = distinct !DICompileUnit(language: DW_LANG_C11, file: !475, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !476, globals: !477, splitDebugInlining: false, nameTableKind: None)
!475 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!476 = !{!122}
!477 = !{!472, !478, !480}
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !475, line: 46, type: !267, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !475, line: 49, type: !19, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "utf07FF", scope: !484, file: !485, line: 46, type: !512, isLocal: true, isDefinition: true)
!484 = distinct !DISubprogram(name: "proper_name_lite", scope: !485, file: !485, line: 38, type: !486, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !490)
!485 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!486 = !DISubroutineType(types: !487)
!487 = !{!127, !127, !127}
!488 = distinct !DICompileUnit(language: DW_LANG_C11, file: !485, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !489, splitDebugInlining: false, nameTableKind: None)
!489 = !{!482}
!490 = !{!491, !492, !493, !494, !499}
!491 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !484, file: !485, line: 38, type: !127)
!492 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !484, file: !485, line: 38, type: !127)
!493 = !DILocalVariable(name: "translation", scope: !484, file: !485, line: 40, type: !127)
!494 = !DILocalVariable(name: "w", scope: !484, file: !485, line: 47, type: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !496, line: 37, baseType: !497)
!496 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !198, line: 57, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !198, line: 42, baseType: !89)
!499 = !DILocalVariable(name: "mbs", scope: !484, file: !485, line: 48, type: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !501, line: 6, baseType: !502)
!501 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !503, line: 21, baseType: !504)
!503 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 13, size: 64, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !504, file: !503, line: 15, baseType: !83, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !504, file: !503, line: 20, baseType: !508, size: 32, offset: 32)
!508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !504, file: !503, line: 16, size: 32, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !508, file: !503, line: 18, baseType: !89, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !508, file: !503, line: 19, baseType: !19, size: 32)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 16, elements: !246)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !515, line: 78, type: !267, isLocal: true, isDefinition: true)
!515 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !515, line: 79, type: !240, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !515, line: 80, type: !138, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !515, line: 81, type: !138, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !515, line: 82, type: !220, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !515, line: 83, type: !245, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !515, line: 84, type: !267, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !515, line: 85, type: !262, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !515, line: 86, type: !262, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !515, line: 87, type: !267, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !536, file: !515, line: 76, type: !608, isLocal: false, isDefinition: true)
!536 = distinct !DICompileUnit(language: DW_LANG_C11, file: !515, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !537, retainedTypes: !543, globals: !544, splitDebugInlining: false, nameTableKind: None)
!537 = !{!103, !538, !87}
!538 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !104, line: 254, baseType: !89, size: 32, elements: !539)
!539 = !{!540, !541, !542}
!540 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!541 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!542 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!543 = !{!83, !123, !124}
!544 = !{!513, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !545, !549, !559, !561, !566, !568, !570, !572, !574, !597, !604, !606}
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !536, file: !515, line: 92, type: !547, isLocal: false, isDefinition: true)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 320, elements: !65)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !536, file: !515, line: 1040, type: !551, isLocal: false, isDefinition: true)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !515, line: 56, size: 448, elements: !552)
!552 = !{!553, !554, !555, !557, !558}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !551, file: !515, line: 59, baseType: !103, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !551, file: !515, line: 62, baseType: !83, size: 32, offset: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !551, file: !515, line: 66, baseType: !556, size: 256, offset: 64)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 256, elements: !268)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !551, file: !515, line: 69, baseType: !127, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !551, file: !515, line: 72, baseType: !127, size: 64, offset: 384)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !536, file: !515, line: 107, type: !551, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "slot0", scope: !536, file: !515, line: 831, type: !563, isLocal: true, isDefinition: true)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 256)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !515, line: 321, type: !245, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !515, line: 357, type: !245, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !515, line: 358, type: !245, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !515, line: 199, type: !262, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "quote", scope: !576, file: !515, line: 228, type: !595, isLocal: true, isDefinition: true)
!576 = distinct !DISubprogram(name: "gettext_quote", scope: !515, file: !515, line: 197, type: !577, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{!127, !127, !103}
!579 = !{!580, !581, !582, !583, !584}
!580 = !DILocalVariable(name: "msgid", arg: 1, scope: !576, file: !515, line: 197, type: !127)
!581 = !DILocalVariable(name: "s", arg: 2, scope: !576, file: !515, line: 197, type: !103)
!582 = !DILocalVariable(name: "translation", scope: !576, file: !515, line: 199, type: !127)
!583 = !DILocalVariable(name: "w", scope: !576, file: !515, line: 229, type: !495)
!584 = !DILocalVariable(name: "mbs", scope: !576, file: !515, line: 230, type: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !501, line: 6, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !503, line: 21, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 13, size: 64, elements: !588)
!588 = !{!589, !590}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !587, file: !503, line: 15, baseType: !83, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !587, file: !503, line: 20, baseType: !591, size: 32, offset: 32)
!591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !587, file: !503, line: 16, size: 32, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !591, file: !503, line: 18, baseType: !89, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !591, file: !503, line: 19, baseType: !19, size: 32)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !596)
!596 = !{!247, !21}
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "slotvec", scope: !536, file: !515, line: 834, type: !599, isLocal: true, isDefinition: true)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !515, line: 823, size: 128, elements: !601)
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !600, file: !515, line: 825, baseType: !124, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !600, file: !515, line: 826, baseType: !122, size: 64, offset: 64)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(name: "nslots", scope: !536, file: !515, line: 832, type: !83, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(name: "slotvec0", scope: !536, file: !515, line: 833, type: !600, isLocal: true, isDefinition: true)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 704, elements: !610)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!610 = !{!611}
!611 = !DISubrange(count: 11)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !614, line: 32, type: !245, isLocal: true, isDefinition: true)
!614 = !DIFile(filename: "lib/root-dev-ino.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b0632229108c1521929601778d55996f")
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !617, line: 67, type: !338, isLocal: true, isDefinition: true)
!617 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !617, line: 69, type: !262, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !617, line: 83, type: !262, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !617, line: 83, type: !19, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !617, line: 85, type: !245, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !617, line: 88, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 171)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !617, line: 88, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 34)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !617, line: 105, type: !54, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !617, line: 109, type: !9, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !617, line: 113, type: !642, isLocal: true, isDefinition: true)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 28)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !617, line: 120, type: !647, isLocal: true, isDefinition: true)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 32)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !617, line: 127, type: !652, isLocal: true, isDefinition: true)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 36)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !617, line: 134, type: !289, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !617, line: 142, type: !44, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !617, line: 150, type: !29, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !617, line: 159, type: !663, isLocal: true, isDefinition: true)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 52)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !617, line: 170, type: !14, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !617, line: 248, type: !220, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !617, line: 248, type: !314, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !617, line: 254, type: !220, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !617, line: 254, type: !133, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !617, line: 254, type: !289, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !617, line: 259, type: !3, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !617, line: 259, type: !682, isLocal: true, isDefinition: true)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 29)
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !687, file: !688, line: 26, type: !690, isLocal: false, isDefinition: true)
!687 = distinct !DICompileUnit(language: DW_LANG_C11, file: !688, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !689, splitDebugInlining: false, nameTableKind: None)
!688 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!689 = !{!685}
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 376, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 47)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(name: "exit_failure", scope: !695, file: !696, line: 24, type: !698, isLocal: false, isDefinition: true)
!695 = distinct !DICompileUnit(language: DW_LANG_C11, file: !696, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !697, splitDebugInlining: false, nameTableKind: None)
!696 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!697 = !{!693}
!698 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !701, line: 34, type: !74, isLocal: true, isDefinition: true)
!701 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !701, line: 34, type: !262, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !701, line: 34, type: !284, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !708, line: 108, type: !59, isLocal: true, isDefinition: true)
!708 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "internal_state", scope: !711, file: !708, line: 97, type: !714, isLocal: true, isDefinition: true)
!711 = distinct !DICompileUnit(language: DW_LANG_C11, file: !708, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !712, globals: !713, splitDebugInlining: false, nameTableKind: None)
!712 = !{!121, !124, !129}
!713 = !{!706, !709}
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !501, line: 6, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !503, line: 21, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 13, size: 64, elements: !717)
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !716, file: !503, line: 15, baseType: !83, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !716, file: !503, line: 20, baseType: !720, size: 32, offset: 32)
!720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !716, file: !503, line: 16, size: 32, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !720, file: !503, line: 18, baseType: !89, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !720, file: !503, line: 19, baseType: !19, size: 32)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !726, line: 35, type: !240, isLocal: true, isDefinition: true)
!726 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !614, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !730, splitDebugInlining: false, nameTableKind: None)
!730 = !{!612}
!731 = distinct !DICompileUnit(language: DW_LANG_C11, file: !617, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !732, retainedTypes: !736, globals: !737, splitDebugInlining: false, nameTableKind: None)
!732 = !{!733}
!733 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !617, line: 40, baseType: !89, size: 32, elements: !734)
!734 = !{!735}
!735 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!736 = !{!121}
!737 = !{!615, !618, !620, !622, !624, !626, !631, !636, !638, !640, !645, !650, !655, !657, !659, !661, !666, !668, !670, !672, !674, !676, !678, !680}
!738 = distinct !DICompileUnit(language: DW_LANG_C11, file: !739, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !740, retainedTypes: !771, splitDebugInlining: false, nameTableKind: None)
!739 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!740 = !{!741, !753}
!741 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !742, file: !739, line: 188, baseType: !89, size: 32, elements: !751)
!742 = distinct !DISubprogram(name: "x2nrealloc", scope: !739, file: !739, line: 176, type: !743, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !746)
!743 = !DISubroutineType(types: !744)
!744 = !{!121, !121, !745, !124}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!746 = !{!747, !748, !749, !750}
!747 = !DILocalVariable(name: "p", arg: 1, scope: !742, file: !739, line: 176, type: !121)
!748 = !DILocalVariable(name: "pn", arg: 2, scope: !742, file: !739, line: 176, type: !745)
!749 = !DILocalVariable(name: "s", arg: 3, scope: !742, file: !739, line: 176, type: !124)
!750 = !DILocalVariable(name: "n", scope: !742, file: !739, line: 178, type: !124)
!751 = !{!752}
!752 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!753 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !754, file: !739, line: 228, baseType: !89, size: 32, elements: !751)
!754 = distinct !DISubprogram(name: "xpalloc", scope: !739, file: !739, line: 223, type: !755, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !761)
!755 = !DISubroutineType(types: !756)
!756 = !{!121, !121, !757, !758, !760, !758}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !759, line: 130, baseType: !760)
!759 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !125, line: 35, baseType: !199)
!761 = !{!762, !763, !764, !765, !766, !767, !768, !769, !770}
!762 = !DILocalVariable(name: "pa", arg: 1, scope: !754, file: !739, line: 223, type: !121)
!763 = !DILocalVariable(name: "pn", arg: 2, scope: !754, file: !739, line: 223, type: !757)
!764 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !754, file: !739, line: 223, type: !758)
!765 = !DILocalVariable(name: "n_max", arg: 4, scope: !754, file: !739, line: 223, type: !760)
!766 = !DILocalVariable(name: "s", arg: 5, scope: !754, file: !739, line: 223, type: !758)
!767 = !DILocalVariable(name: "n0", scope: !754, file: !739, line: 230, type: !758)
!768 = !DILocalVariable(name: "n", scope: !754, file: !739, line: 237, type: !758)
!769 = !DILocalVariable(name: "nbytes", scope: !754, file: !739, line: 248, type: !758)
!770 = !DILocalVariable(name: "adjusted_nbytes", scope: !754, file: !739, line: 252, type: !758)
!771 = !{!122, !121, !158, !199, !126}
!772 = distinct !DICompileUnit(language: DW_LANG_C11, file: !701, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !773, splitDebugInlining: false, nameTableKind: None)
!773 = !{!699, !702, !704}
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !775, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!775 = !DIFile(filename: "lib/xgetcwd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3727157833d2e1ec9b24b353bc14eccb")
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!777 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!779 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!780 = distinct !DICompileUnit(language: DW_LANG_C11, file: !781, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !736, splitDebugInlining: false, nameTableKind: None)
!781 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !736, splitDebugInlining: false, nameTableKind: None)
!783 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !785, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !786, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!786 = !{!158, !126, !121}
!787 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !788, splitDebugInlining: false, nameTableKind: None)
!788 = !{!789, !724}
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !726, line: 35, type: !245, isLocal: true, isDefinition: true)
!791 = distinct !DICompileUnit(language: DW_LANG_C11, file: !792, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!792 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!793 = distinct !DICompileUnit(language: DW_LANG_C11, file: !794, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !736, splitDebugInlining: false, nameTableKind: None)
!794 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!795 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!796 = !{i32 7, !"Dwarf Version", i32 5}
!797 = !{i32 2, !"Debug Info Version", i32 3}
!798 = !{i32 1, !"wchar_size", i32 4}
!799 = !{i32 8, !"PIC Level", i32 2}
!800 = !{i32 7, !"PIE Level", i32 2}
!801 = !{i32 7, !"uwtable", i32 2}
!802 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 49, type: !803, scopeLine: 50, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !805)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !83}
!805 = !{!806}
!806 = !DILocalVariable(name: "status", arg: 1, scope: !802, file: !2, line: 49, type: !83)
!807 = !DILocation(line: 0, scope: !802)
!808 = !DILocation(line: 51, column: 14, scope: !809)
!809 = distinct !DILexicalBlock(scope: !802, file: !2, line: 51, column: 7)
!810 = !DILocation(line: 51, column: 7, scope: !802)
!811 = !DILocation(line: 52, column: 5, scope: !812)
!812 = distinct !DILexicalBlock(scope: !809, file: !2, line: 52, column: 5)
!813 = !{!814, !814, i64 0}
!814 = !{!"any pointer", !815, i64 0}
!815 = !{!"omnipotent char", !816, i64 0}
!816 = !{!"Simple C/C++ TBAA"}
!817 = !DILocation(line: 55, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !809, file: !2, line: 54, column: 5)
!819 = !DILocation(line: 56, column: 7, scope: !818)
!820 = !DILocation(line: 60, column: 7, scope: !818)
!821 = !DILocation(line: 64, column: 7, scope: !818)
!822 = !DILocation(line: 68, column: 7, scope: !818)
!823 = !DILocation(line: 69, column: 7, scope: !818)
!824 = !DILocation(line: 70, column: 7, scope: !818)
!825 = !DILocation(line: 73, column: 7, scope: !818)
!826 = !DILocalVariable(name: "program", arg: 1, scope: !827, file: !82, line: 836, type: !127)
!827 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !82, file: !82, line: 836, type: !828, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !830)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !127}
!830 = !{!826, !831, !838, !839, !841, !842}
!831 = !DILocalVariable(name: "infomap", scope: !827, file: !82, line: 838, type: !832)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !833, size: 896, elements: !263)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !827, file: !82, line: 838, size: 128, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !834, file: !82, line: 838, baseType: !127, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !834, file: !82, line: 838, baseType: !127, size: 64, offset: 64)
!838 = !DILocalVariable(name: "node", scope: !827, file: !82, line: 848, type: !127)
!839 = !DILocalVariable(name: "map_prog", scope: !827, file: !82, line: 849, type: !840)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!841 = !DILocalVariable(name: "lc_messages", scope: !827, file: !82, line: 861, type: !127)
!842 = !DILocalVariable(name: "url_program", scope: !827, file: !82, line: 874, type: !127)
!843 = !DILocation(line: 0, scope: !827, inlinedAt: !844)
!844 = distinct !DILocation(line: 74, column: 7, scope: !818)
!845 = !DILocation(line: 857, column: 3, scope: !827, inlinedAt: !844)
!846 = !DILocation(line: 861, column: 29, scope: !827, inlinedAt: !844)
!847 = !DILocation(line: 862, column: 7, scope: !848, inlinedAt: !844)
!848 = distinct !DILexicalBlock(scope: !827, file: !82, line: 862, column: 7)
!849 = !DILocation(line: 862, column: 19, scope: !848, inlinedAt: !844)
!850 = !DILocation(line: 862, column: 22, scope: !848, inlinedAt: !844)
!851 = !DILocation(line: 862, column: 7, scope: !827, inlinedAt: !844)
!852 = !DILocation(line: 868, column: 7, scope: !853, inlinedAt: !844)
!853 = distinct !DILexicalBlock(scope: !848, file: !82, line: 863, column: 5)
!854 = !DILocation(line: 870, column: 5, scope: !853, inlinedAt: !844)
!855 = !DILocation(line: 875, column: 3, scope: !827, inlinedAt: !844)
!856 = !DILocation(line: 877, column: 3, scope: !827, inlinedAt: !844)
!857 = !DILocation(line: 76, column: 3, scope: !802)
!858 = !DISubprogram(name: "dcgettext", scope: !859, file: !859, line: 51, type: !860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!859 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!860 = !DISubroutineType(types: !861)
!861 = !{!122, !127, !127, !83}
!862 = !{}
!863 = !DISubprogram(name: "__fprintf_chk", scope: !864, file: !864, line: 93, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!864 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!865 = !DISubroutineType(types: !866)
!866 = !{!83, !867, !83, !868, null}
!867 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !171)
!868 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !127)
!869 = !DISubprogram(name: "__printf_chk", scope: !864, file: !864, line: 95, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!870 = !DISubroutineType(types: !871)
!871 = !{!83, !83, !868, null}
!872 = !DISubprogram(name: "fputs_unlocked", scope: !873, file: !873, line: 691, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!873 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!874 = !DISubroutineType(types: !875)
!875 = !{!83, !868, !867}
!876 = !DILocation(line: 0, scope: !148)
!877 = !DILocation(line: 581, column: 7, scope: !156)
!878 = !{!879, !879, i64 0}
!879 = !{!"int", !815, i64 0}
!880 = !DILocation(line: 581, column: 19, scope: !156)
!881 = !DILocation(line: 581, column: 7, scope: !148)
!882 = !DILocation(line: 585, column: 26, scope: !155)
!883 = !DILocation(line: 0, scope: !155)
!884 = !DILocation(line: 586, column: 23, scope: !155)
!885 = !DILocation(line: 586, column: 28, scope: !155)
!886 = !DILocation(line: 586, column: 32, scope: !155)
!887 = !{!815, !815, i64 0}
!888 = !DILocation(line: 586, column: 38, scope: !155)
!889 = !DILocalVariable(name: "__s1", arg: 1, scope: !890, file: !891, line: 1359, type: !127)
!890 = distinct !DISubprogram(name: "streq", scope: !891, file: !891, line: 1359, type: !892, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !894)
!891 = !DIFile(filename: "./lib/string.h", directory: "/src")
!892 = !DISubroutineType(types: !893)
!893 = !{!158, !127, !127}
!894 = !{!889, !895}
!895 = !DILocalVariable(name: "__s2", arg: 2, scope: !890, file: !891, line: 1359, type: !127)
!896 = !DILocation(line: 0, scope: !890, inlinedAt: !897)
!897 = distinct !DILocation(line: 586, column: 41, scope: !155)
!898 = !DILocation(line: 1361, column: 11, scope: !890, inlinedAt: !897)
!899 = !DILocation(line: 1361, column: 10, scope: !890, inlinedAt: !897)
!900 = !DILocation(line: 586, column: 19, scope: !155)
!901 = !DILocation(line: 587, column: 5, scope: !155)
!902 = !DILocation(line: 588, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !148, file: !82, line: 588, column: 7)
!904 = !DILocation(line: 588, column: 7, scope: !148)
!905 = !DILocation(line: 590, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !903, file: !82, line: 589, column: 5)
!907 = !DILocation(line: 591, column: 7, scope: !906)
!908 = !DILocation(line: 595, column: 37, scope: !148)
!909 = !DILocation(line: 595, column: 35, scope: !148)
!910 = !DILocation(line: 596, column: 29, scope: !148)
!911 = !DILocation(line: 597, column: 8, scope: !164)
!912 = !DILocation(line: 597, column: 7, scope: !148)
!913 = !DILocation(line: 604, column: 24, scope: !163)
!914 = !DILocation(line: 604, column: 12, scope: !164)
!915 = !DILocation(line: 0, scope: !162)
!916 = !DILocation(line: 610, column: 16, scope: !162)
!917 = !DILocation(line: 610, column: 7, scope: !162)
!918 = !DILocation(line: 611, column: 21, scope: !162)
!919 = !{!920, !920, i64 0}
!920 = !{!"short", !815, i64 0}
!921 = !DILocation(line: 611, column: 19, scope: !162)
!922 = !DILocation(line: 611, column: 16, scope: !162)
!923 = !DILocation(line: 610, column: 30, scope: !162)
!924 = distinct !{!924, !917, !918, !925}
!925 = !{!"llvm.loop.mustprogress"}
!926 = !DILocation(line: 612, column: 18, scope: !927)
!927 = distinct !DILexicalBlock(scope: !162, file: !82, line: 612, column: 11)
!928 = !DILocation(line: 612, column: 11, scope: !162)
!929 = !DILocation(line: 618, column: 5, scope: !162)
!930 = !DILocation(line: 620, column: 23, scope: !148)
!931 = !DILocation(line: 625, column: 39, scope: !148)
!932 = !DILocation(line: 626, column: 3, scope: !148)
!933 = !DILocation(line: 626, column: 10, scope: !148)
!934 = !DILocation(line: 626, column: 21, scope: !148)
!935 = !DILocation(line: 628, column: 44, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !82, line: 628, column: 11)
!937 = distinct !DILexicalBlock(scope: !148, file: !82, line: 627, column: 5)
!938 = !DILocation(line: 628, column: 32, scope: !936)
!939 = !DILocation(line: 628, column: 49, scope: !936)
!940 = !DILocation(line: 628, column: 11, scope: !937)
!941 = !DILocation(line: 630, column: 11, scope: !942)
!942 = distinct !DILexicalBlock(scope: !937, file: !82, line: 630, column: 11)
!943 = !DILocation(line: 630, column: 11, scope: !937)
!944 = !DILocation(line: 632, column: 26, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !82, line: 632, column: 15)
!946 = distinct !DILexicalBlock(scope: !942, file: !82, line: 631, column: 9)
!947 = !DILocation(line: 632, column: 34, scope: !945)
!948 = !DILocation(line: 632, column: 37, scope: !945)
!949 = !DILocation(line: 632, column: 15, scope: !946)
!950 = !DILocation(line: 636, column: 16, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !82, line: 636, column: 15)
!952 = !DILocation(line: 636, column: 29, scope: !951)
!953 = !DILocation(line: 640, column: 16, scope: !937)
!954 = distinct !{!954, !932, !955, !925}
!955 = !DILocation(line: 641, column: 5, scope: !148)
!956 = !DILocation(line: 644, column: 3, scope: !148)
!957 = !DILocation(line: 0, scope: !890, inlinedAt: !958)
!958 = distinct !DILocation(line: 648, column: 31, scope: !148)
!959 = !DILocation(line: 0, scope: !890, inlinedAt: !960)
!960 = distinct !DILocation(line: 649, column: 31, scope: !148)
!961 = !DILocation(line: 0, scope: !890, inlinedAt: !962)
!962 = distinct !DILocation(line: 650, column: 31, scope: !148)
!963 = !DILocation(line: 0, scope: !890, inlinedAt: !964)
!964 = distinct !DILocation(line: 651, column: 31, scope: !148)
!965 = !DILocation(line: 0, scope: !890, inlinedAt: !966)
!966 = distinct !DILocation(line: 652, column: 31, scope: !148)
!967 = !DILocation(line: 0, scope: !890, inlinedAt: !968)
!968 = distinct !DILocation(line: 653, column: 31, scope: !148)
!969 = !DILocation(line: 0, scope: !890, inlinedAt: !970)
!970 = distinct !DILocation(line: 654, column: 31, scope: !148)
!971 = !DILocation(line: 0, scope: !890, inlinedAt: !972)
!972 = distinct !DILocation(line: 655, column: 31, scope: !148)
!973 = !DILocation(line: 0, scope: !890, inlinedAt: !974)
!974 = distinct !DILocation(line: 656, column: 31, scope: !148)
!975 = !DILocation(line: 0, scope: !890, inlinedAt: !976)
!976 = distinct !DILocation(line: 657, column: 31, scope: !148)
!977 = !DILocation(line: 663, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !148, file: !82, line: 663, column: 7)
!979 = !DILocation(line: 664, column: 7, scope: !978)
!980 = !DILocation(line: 664, column: 10, scope: !978)
!981 = !DILocation(line: 663, column: 7, scope: !148)
!982 = !DILocation(line: 669, column: 7, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !82, line: 665, column: 5)
!984 = !DILocation(line: 671, column: 5, scope: !983)
!985 = !DILocation(line: 676, column: 7, scope: !986)
!986 = distinct !DILexicalBlock(scope: !978, file: !82, line: 673, column: 5)
!987 = !DILocation(line: 679, column: 3, scope: !148)
!988 = !DILocation(line: 683, column: 3, scope: !148)
!989 = !DILocation(line: 686, column: 3, scope: !148)
!990 = !DILocation(line: 688, column: 3, scope: !148)
!991 = !DILocation(line: 691, column: 3, scope: !148)
!992 = !DILocation(line: 695, column: 3, scope: !148)
!993 = !DILocation(line: 696, column: 1, scope: !148)
!994 = !DISubprogram(name: "setlocale", scope: !995, file: !995, line: 122, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!995 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!996 = !DISubroutineType(types: !997)
!997 = !{!122, !83, !127}
!998 = !DISubprogram(name: "strncmp", scope: !999, file: !999, line: 159, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!999 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!83, !127, !127, !124}
!1002 = !DISubprogram(name: "exit", scope: !1003, file: !1003, line: 624, type: !803, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1003 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1004 = !DISubprogram(name: "getenv", scope: !1003, file: !1003, line: 641, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!122, !127}
!1007 = !DISubprogram(name: "strcmp", scope: !999, file: !999, line: 156, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!83, !127, !127}
!1010 = !DISubprogram(name: "strspn", scope: !999, file: !999, line: 297, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!126, !127, !127}
!1013 = !DISubprogram(name: "strchr", scope: !999, file: !999, line: 246, type: !1014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!122, !127, !83}
!1016 = !DISubprogram(name: "__ctype_b_loc", scope: !88, file: !88, line: 79, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!1022 = !DISubprogram(name: "strcspn", scope: !999, file: !999, line: 293, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1023 = !DISubprogram(name: "fwrite_unlocked", scope: !873, file: !873, line: 704, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!124, !1026, !124, !124, !867}
!1026 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1027)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1029 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 320, type: !1030, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1033)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!83, !83, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1033 = !{!1034, !1035, !1036, !1037, !1039, !1042, !1043}
!1034 = !DILocalVariable(name: "argc", arg: 1, scope: !1029, file: !2, line: 320, type: !83)
!1035 = !DILocalVariable(name: "argv", arg: 2, scope: !1029, file: !2, line: 320, type: !1032)
!1036 = !DILocalVariable(name: "logical", scope: !1029, file: !2, line: 325, type: !158)
!1037 = !DILocalVariable(name: "c", scope: !1038, file: !2, line: 337, type: !83)
!1038 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 336, column: 5)
!1039 = !DILocalVariable(name: "wd", scope: !1040, file: !2, line: 363, type: !127)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 362, column: 5)
!1041 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 361, column: 7)
!1042 = !DILocalVariable(name: "wd", scope: !1029, file: !2, line: 371, type: !122)
!1043 = !DILocalVariable(name: "file_name", scope: !1044, file: !2, line: 379, type: !1046)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 378, column: 5)
!1045 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 372, column: 7)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_name", file: !2, line: 32, size: 192, elements: !1048)
!1048 = !{!1049, !1050, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1047, file: !2, line: 34, baseType: !122, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "n_alloc", scope: !1047, file: !2, line: 35, baseType: !758, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1047, file: !2, line: 36, baseType: !122, size: 64, offset: 128)
!1052 = !DILocation(line: 0, scope: !1029)
!1053 = !DILocation(line: 325, column: 19, scope: !1029)
!1054 = !DILocation(line: 325, column: 46, scope: !1029)
!1055 = !DILocation(line: 325, column: 8, scope: !1029)
!1056 = !DILocation(line: 328, column: 21, scope: !1029)
!1057 = !DILocation(line: 328, column: 3, scope: !1029)
!1058 = !DILocation(line: 329, column: 3, scope: !1029)
!1059 = !DILocation(line: 330, column: 3, scope: !1029)
!1060 = !DILocation(line: 331, column: 3, scope: !1029)
!1061 = !DILocation(line: 333, column: 3, scope: !1029)
!1062 = !DILocation(line: 335, column: 3, scope: !1029)
!1063 = !DILocation(line: 337, column: 15, scope: !1038)
!1064 = !DILocation(line: 0, scope: !1038)
!1065 = !DILocation(line: 338, column: 11, scope: !1038)
!1066 = !DILocation(line: 347, column: 11, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 341, column: 9)
!1068 = !DILocation(line: 349, column: 9, scope: !1067)
!1069 = !DILocation(line: 351, column: 9, scope: !1067)
!1070 = !DILocation(line: 354, column: 11, scope: !1067)
!1071 = !DILocation(line: 358, column: 7, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 358, column: 7)
!1073 = !DILocation(line: 358, column: 14, scope: !1072)
!1074 = !DILocation(line: 358, column: 7, scope: !1029)
!1075 = !DILocation(line: 359, column: 5, scope: !1072)
!1076 = !DILocation(line: 361, column: 7, scope: !1041)
!1077 = !DILocation(line: 361, column: 7, scope: !1029)
!1078 = !DILocation(line: 296, column: 20, scope: !1079, inlinedAt: !1121)
!1079 = distinct !DISubprogram(name: "logical_getcwd", scope: !2, file: !2, line: 294, type: !1080, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1082)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!127}
!1082 = !{!1083, !1084, !1085, !1120}
!1083 = !DILocalVariable(name: "wd", scope: !1079, file: !2, line: 296, type: !127)
!1084 = !DILocalVariable(name: "p", scope: !1079, file: !2, line: 301, type: !127)
!1085 = !DILocalVariable(name: "st1", scope: !1079, file: !2, line: 311, type: !1086)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1087, line: 26, size: 1152, elements: !1088)
!1087 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1088 = !{!1089, !1091, !1093, !1095, !1097, !1099, !1101, !1102, !1103, !1104, !1106, !1108, !1116, !1117, !1118}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1086, file: !1087, line: 31, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !198, line: 145, baseType: !126)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1086, file: !1087, line: 36, baseType: !1092, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !198, line: 148, baseType: !126)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1086, file: !1087, line: 44, baseType: !1094, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !198, line: 151, baseType: !126)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1086, file: !1087, line: 45, baseType: !1096, size: 32, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !198, line: 150, baseType: !89)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1086, file: !1087, line: 47, baseType: !1098, size: 32, offset: 224)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !198, line: 146, baseType: !89)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1086, file: !1087, line: 48, baseType: !1100, size: 32, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !198, line: 147, baseType: !89)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1086, file: !1087, line: 50, baseType: !83, size: 32, offset: 288)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1086, file: !1087, line: 52, baseType: !1090, size: 64, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1086, file: !1087, line: 57, baseType: !197, size: 64, offset: 384)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1086, file: !1087, line: 61, baseType: !1105, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !198, line: 175, baseType: !199)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1086, file: !1087, line: 63, baseType: !1107, size: 64, offset: 512)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !198, line: 180, baseType: !199)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1086, file: !1087, line: 74, baseType: !1109, size: 128, offset: 576)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1110, line: 11, size: 128, elements: !1111)
!1110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1111 = !{!1112, !1114}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1109, file: !1110, line: 16, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !198, line: 160, baseType: !199)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1109, file: !1110, line: 21, baseType: !1115, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !198, line: 197, baseType: !199)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1086, file: !1087, line: 75, baseType: !1109, size: 128, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1086, file: !1087, line: 76, baseType: !1109, size: 128, offset: 832)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1086, file: !1087, line: 89, baseType: !1119, size: 192, offset: 960)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 192, elements: !75)
!1120 = !DILocalVariable(name: "st2", scope: !1079, file: !2, line: 312, type: !1086)
!1121 = distinct !DILocation(line: 363, column: 24, scope: !1040)
!1122 = !DILocation(line: 0, scope: !1079, inlinedAt: !1121)
!1123 = !DILocation(line: 299, column: 8, scope: !1124, inlinedAt: !1121)
!1124 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 299, column: 7)
!1125 = !DILocation(line: 299, column: 11, scope: !1124, inlinedAt: !1121)
!1126 = !DILocation(line: 299, column: 14, scope: !1124, inlinedAt: !1121)
!1127 = !DILocation(line: 299, column: 20, scope: !1124, inlinedAt: !1121)
!1128 = !DILocation(line: 299, column: 7, scope: !1079, inlinedAt: !1121)
!1129 = !DILocation(line: 302, column: 15, scope: !1079, inlinedAt: !1121)
!1130 = !DILocation(line: 302, column: 3, scope: !1079, inlinedAt: !1121)
!1131 = !DILocation(line: 304, column: 12, scope: !1132, inlinedAt: !1121)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 304, column: 11)
!1133 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 303, column: 5)
!1134 = !DILocation(line: 304, column: 17, scope: !1132, inlinedAt: !1121)
!1135 = !DILocation(line: 305, column: 32, scope: !1132, inlinedAt: !1121)
!1136 = !DILocation(line: 305, column: 37, scope: !1132, inlinedAt: !1121)
!1137 = !DILocation(line: 307, column: 8, scope: !1133, inlinedAt: !1121)
!1138 = distinct !{!1138, !1130, !1139, !925}
!1139 = !DILocation(line: 308, column: 5, scope: !1079, inlinedAt: !1121)
!1140 = !DILocation(line: 311, column: 3, scope: !1079, inlinedAt: !1121)
!1141 = !DILocation(line: 311, column: 15, scope: !1079, inlinedAt: !1121)
!1142 = !DILocation(line: 312, column: 3, scope: !1079, inlinedAt: !1121)
!1143 = !DILocation(line: 312, column: 15, scope: !1079, inlinedAt: !1121)
!1144 = !DILocation(line: 313, column: 7, scope: !1145, inlinedAt: !1121)
!1145 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 313, column: 7)
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
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1086)
!1158 = !{!1151, !1159}
!1159 = !DILocalVariable(name: "b", arg: 2, scope: !1152, file: !1153, line: 86, type: !1156)
!1160 = !DILocation(line: 0, scope: !1152, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 313, column: 56, scope: !1145, inlinedAt: !1121)
!1162 = !DILocation(line: 90, column: 14, scope: !1152, inlinedAt: !1161)
!1163 = !{!1164, !1165, i64 0}
!1164 = !{!"stat", !1165, i64 0, !1165, i64 8, !1165, i64 16, !879, i64 24, !879, i64 28, !879, i64 32, !879, i64 36, !1165, i64 40, !1165, i64 48, !1165, i64 56, !1165, i64 64, !1166, i64 72, !1166, i64 88, !1166, i64 104, !815, i64 120}
!1165 = !{!"long", !815, i64 0}
!1166 = !{!"timespec", !1165, i64 0, !1165, i64 8}
!1167 = !{!1164, !1165, i64 8}
!1168 = !DILocation(line: 313, column: 7, scope: !1079, inlinedAt: !1121)
!1169 = !DILocation(line: 316, column: 1, scope: !1079, inlinedAt: !1121)
!1170 = !DILocation(line: 0, scope: !1040)
!1171 = !DILocation(line: 364, column: 11, scope: !1040)
!1172 = !DILocation(line: 366, column: 11, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 365, column: 9)
!1174 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 364, column: 11)
!1175 = !DILocation(line: 371, column: 14, scope: !1029)
!1176 = !DILocation(line: 372, column: 10, scope: !1045)
!1177 = !DILocation(line: 372, column: 7, scope: !1029)
!1178 = !DILocation(line: 374, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 373, column: 5)
!1180 = !DILocation(line: 375, column: 7, scope: !1179)
!1181 = !DILocation(line: 376, column: 5, scope: !1179)
!1182 = !DILocation(line: 89, column: 25, scope: !1183, inlinedAt: !1189)
!1183 = distinct !DISubprogram(name: "file_name_init", scope: !2, file: !2, line: 87, type: !1184, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!1046}
!1186 = !{!1187, !1188}
!1187 = !DILocalVariable(name: "p", scope: !1183, file: !2, line: 89, type: !1046)
!1188 = !DILocalVariable(name: "init_alloc", scope: !1183, file: !2, line: 93, type: !83)
!1189 = distinct !DILocation(line: 379, column: 37, scope: !1044)
!1190 = !DILocation(line: 0, scope: !1183, inlinedAt: !1189)
!1191 = !DILocation(line: 94, column: 6, scope: !1183, inlinedAt: !1189)
!1192 = !DILocation(line: 94, column: 14, scope: !1183, inlinedAt: !1189)
!1193 = !{!1194, !1165, i64 8}
!1194 = !{!"file_name", !814, i64 0, !1165, i64 8, !814, i64 16}
!1195 = !DILocation(line: 96, column: 12, scope: !1183, inlinedAt: !1189)
!1196 = !DILocation(line: 96, column: 10, scope: !1183, inlinedAt: !1189)
!1197 = !{!1194, !814, i64 0}
!1198 = !DILocation(line: 97, column: 34, scope: !1183, inlinedAt: !1189)
!1199 = !DILocation(line: 97, column: 6, scope: !1183, inlinedAt: !1189)
!1200 = !DILocation(line: 97, column: 12, scope: !1183, inlinedAt: !1189)
!1201 = !{!1194, !814, i64 16}
!1202 = !DILocation(line: 98, column: 15, scope: !1183, inlinedAt: !1189)
!1203 = !DILocation(line: 0, scope: !1044)
!1204 = !DILocalVariable(name: "file_name", arg: 1, scope: !1205, file: !2, line: 262, type: !1046)
!1205 = distinct !DISubprogram(name: "robust_getcwd", scope: !2, file: !2, line: 262, type: !1206, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1208)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !1046}
!1208 = !{!1204, !1209, !1210, !1219, !1221}
!1209 = !DILocalVariable(name: "height", scope: !1205, file: !2, line: 264, type: !124)
!1210 = !DILocalVariable(name: "dev_ino_buf", scope: !1205, file: !2, line: 265, type: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !1212, line: 30, size: 128, elements: !1213)
!1212 = !DIFile(filename: "./lib/dev-ino.h", directory: "/src", checksumkind: CSK_MD5, checksum: "7eae2ded9ac0c200760eafd719dd996d")
!1213 = !{!1214, !1217}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1211, file: !1212, line: 32, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !1216, line: 47, baseType: !1092)
!1216 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1211, file: !1212, line: 33, baseType: !1218, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !1216, line: 59, baseType: !1090)
!1219 = !DILocalVariable(name: "root_dev_ino", scope: !1205, file: !2, line: 266, type: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1221 = !DILocalVariable(name: "dot_sb", scope: !1205, file: !2, line: 272, type: !1086)
!1222 = !DILocation(line: 0, scope: !1205, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 380, column: 7, scope: !1044)
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
!1249 = !{null, !1250, !1046, !124}
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1251 = !{!1246, !1252, !1253, !1254, !1259, !1260, !1261, !1262, !1263, !1275, !1280, !1281}
!1252 = !DILocalVariable(name: "file_name", arg: 2, scope: !1247, file: !2, line: 153, type: !1046)
!1253 = !DILocalVariable(name: "parent_height", arg: 3, scope: !1247, file: !2, line: 154, type: !124)
!1254 = !DILocalVariable(name: "dirp", scope: !1247, file: !2, line: 156, type: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !1257, line: 127, baseType: !1258)
!1257 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !1257, line: 127, flags: DIFlagFwdDecl)
!1259 = !DILocalVariable(name: "fd", scope: !1247, file: !2, line: 161, type: !83)
!1260 = !DILocalVariable(name: "parent_sb", scope: !1247, file: !2, line: 166, type: !1086)
!1261 = !DILocalVariable(name: "use_lstat", scope: !1247, file: !2, line: 173, type: !158)
!1262 = !DILocalVariable(name: "found", scope: !1247, file: !2, line: 175, type: !158)
!1263 = !DILocalVariable(name: "dp", scope: !1264, file: !2, line: 178, type: !1265)
!1264 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 177, column: 5)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !1268, line: 22, size: 2240, elements: !1269)
!1268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!1269 = !{!1270, !1271, !1272, !1273, !1274}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !1267, file: !1268, line: 25, baseType: !1092, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !1267, file: !1268, line: 26, baseType: !197, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !1267, file: !1268, line: 31, baseType: !123, size: 16, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !1267, file: !1268, line: 32, baseType: !129, size: 8, offset: 144)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1267, file: !1268, line: 33, baseType: !563, size: 2048, offset: 152)
!1275 = !DILocalVariable(name: "e", scope: !1276, file: !2, line: 186, type: !83)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 184, column: 13)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 183, column: 15)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 182, column: 9)
!1279 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 181, column: 11)
!1280 = !DILocalVariable(name: "ino", scope: !1264, file: !2, line: 196, type: !1215)
!1281 = !DILocalVariable(name: "ent_sb", scope: !1264, file: !2, line: 198, type: !1086)
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
!1357 = !{!"dirent", !1165, i64 0, !1165, i64 8, !920, i64 16, !815, i64 18, !815, i64 19}
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
!1389 = !{i64 0, i64 8, !1390, i64 8, i64 8, !1390, i64 16, i64 8, !1390, i64 24, i64 4, !878, i64 28, i64 4, !878, i64 32, i64 4, !878, i64 36, i64 4, !878, i64 40, i64 8, !1390, i64 48, i64 8, !1390, i64 56, i64 8, !1390, i64 64, i64 8, !1390, i64 72, i64 8, !1390, i64 80, i64 8, !1390, i64 88, i64 8, !1390, i64 96, i64 8, !1390, i64 104, i64 8, !1390, i64 112, i64 8, !1390, i64 120, i64 24, !887}
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
!1401 = !DILocation(line: 381, column: 24, scope: !1044)
!1402 = !DILocation(line: 288, column: 1, scope: !1205, inlinedAt: !1223)
!1403 = !DILocation(line: 381, column: 7, scope: !1044)
!1404 = !DILocalVariable(name: "p", arg: 1, scope: !1405, file: !2, line: 80, type: !1046)
!1405 = distinct !DISubprogram(name: "file_name_free", scope: !2, file: !2, line: 80, type: !1206, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1406)
!1406 = !{!1404}
!1407 = !DILocation(line: 0, scope: !1405, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 382, column: 7, scope: !1044)
!1409 = !DILocation(line: 82, column: 12, scope: !1405, inlinedAt: !1408)
!1410 = !DILocation(line: 82, column: 3, scope: !1405, inlinedAt: !1408)
!1411 = !DILocation(line: 83, column: 3, scope: !1405, inlinedAt: !1408)
!1412 = !DILocation(line: 386, column: 1, scope: !1029)
!1413 = !DISubprogram(name: "bindtextdomain", scope: !859, file: !859, line: 86, type: !1414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!122, !127, !127}
!1416 = !DISubprogram(name: "textdomain", scope: !859, file: !859, line: 82, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1417 = !DISubprogram(name: "atexit", scope: !1003, file: !1003, line: 602, type: !1418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!83, !469}
!1420 = !DISubprogram(name: "getopt_long", scope: !394, file: !394, line: 66, type: !1421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!83, !83, !1423, !127, !1425, !399}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!1426 = !DISubprogram(name: "strstr", scope: !999, file: !999, line: 350, type: !1414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1427 = !DISubprogram(name: "stat", scope: !1428, file: !1428, line: 205, type: !1429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1428 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!83, !868, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1250)
!1432 = !DISubprogram(name: "puts", scope: !873, file: !873, line: 661, type: !1433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!83, !127}
!1435 = !DISubprogram(name: "free", scope: !1003, file: !1003, line: 555, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !121}
!1438 = !DISubprogram(name: "__errno_location", scope: !1439, file: !1439, line: 37, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1439 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!399}
!1442 = !DISubprogram(name: "opendir", scope: !1257, file: !1257, line: 134, type: !1443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
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
!1460 = !DILocalVariable(name: "__dest", arg: 1, scope: !1461, file: !1462, line: 26, type: !1465)
!1461 = distinct !DISubprogram(name: "memcpy", scope: !1462, file: !1462, line: 26, type: !1463, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1466)
!1462 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!121, !1465, !1026, !124}
!1465 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !121)
!1466 = !{!1460, !1467, !1468}
!1467 = !DILocalVariable(name: "__src", arg: 2, scope: !1461, file: !1462, line: 26, type: !1026)
!1468 = !DILocalVariable(name: "__len", arg: 3, scope: !1461, file: !1462, line: 26, type: !124)
!1469 = !DILocation(line: 0, scope: !1461, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 134, column: 7, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 133, column: 5)
!1472 = !DILocation(line: 29, column: 10, scope: !1461, inlinedAt: !1470)
!1473 = !DILocation(line: 135, column: 9, scope: !1471)
!1474 = distinct !{!1474, !1475}
!1475 = !{!"llvm.loop.unroll.disable"}
!1476 = !DILocation(line: 137, column: 3, scope: !1445)
!1477 = !DILocation(line: 137, column: 9, scope: !1445)
!1478 = !DILocation(line: 138, column: 3, scope: !1445)
!1479 = distinct !{!1479, !1459, !1480, !925}
!1480 = !DILocation(line: 136, column: 5, scope: !1453)
!1481 = !DISubprogram(name: "dirfd", scope: !1257, file: !1257, line: 224, type: !1482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!83, !1255}
!1484 = !DISubprogram(name: "fchdir", scope: !1485, file: !1485, line: 521, type: !1486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1485 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!83, !83}
!1488 = !DISubprogram(name: "chdir", scope: !1485, file: !1485, line: 517, type: !1433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1489 = !DISubprogram(name: "fstat", scope: !1428, file: !1428, line: 210, type: !1490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!83, !83, !1250}
!1492 = !DISubprogram(name: "readdir", scope: !1257, file: !1257, line: 162, type: !1493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!1495, !1255}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1496 = !DISubprogram(name: "closedir", scope: !1257, file: !1257, line: 149, type: !1482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1497 = !DISubprogram(name: "lstat", scope: !1428, file: !1428, line: 313, type: !1429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1498 = !DISubprogram(name: "strlen", scope: !999, file: !999, line: 407, type: !1499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!126, !127}
!1501 = distinct !DISubprogram(name: "file_name_prepend", scope: !2, file: !2, line: 104, type: !1502, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !1046, !127, !124}
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1512}
!1505 = !DILocalVariable(name: "p", arg: 1, scope: !1501, file: !2, line: 104, type: !1046)
!1506 = !DILocalVariable(name: "s", arg: 2, scope: !1501, file: !2, line: 104, type: !127)
!1507 = !DILocalVariable(name: "s_len", arg: 3, scope: !1501, file: !2, line: 104, type: !124)
!1508 = !DILocalVariable(name: "n_free", scope: !1501, file: !2, line: 106, type: !758)
!1509 = !DILocalVariable(name: "n_used", scope: !1510, file: !2, line: 113, type: !758)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !2, line: 108, column: 5)
!1511 = distinct !DILexicalBlock(scope: !1501, file: !2, line: 107, column: 7)
!1512 = !DILocalVariable(name: "buf", scope: !1510, file: !2, line: 114, type: !122)
!1513 = !DILocation(line: 0, scope: !1501)
!1514 = !DILocation(line: 106, column: 21, scope: !1501)
!1515 = !DILocation(line: 106, column: 32, scope: !1501)
!1516 = !DILocation(line: 106, column: 27, scope: !1501)
!1517 = !DILocation(line: 107, column: 18, scope: !1511)
!1518 = !DILocation(line: 107, column: 14, scope: !1511)
!1519 = !DILocation(line: 107, column: 7, scope: !1501)
!1520 = !DILocation(line: 113, column: 25, scope: !1510)
!1521 = !DILocation(line: 113, column: 33, scope: !1510)
!1522 = !DILocation(line: 0, scope: !1510)
!1523 = !DILocation(line: 114, column: 57, scope: !1510)
!1524 = !DILocation(line: 114, column: 19, scope: !1510)
!1525 = !DILocation(line: 115, column: 35, scope: !1510)
!1526 = !DILocation(line: 115, column: 30, scope: !1510)
!1527 = !DILocation(line: 115, column: 43, scope: !1510)
!1528 = !DILocation(line: 115, column: 56, scope: !1510)
!1529 = !DILocation(line: 0, scope: !1461, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 115, column: 18, scope: !1510)
!1531 = !DILocation(line: 29, column: 10, scope: !1461, inlinedAt: !1530)
!1532 = !DILocation(line: 115, column: 16, scope: !1510)
!1533 = !DILocation(line: 116, column: 16, scope: !1510)
!1534 = !DILocation(line: 116, column: 7, scope: !1510)
!1535 = !DILocation(line: 117, column: 14, scope: !1510)
!1536 = !DILocation(line: 120, column: 12, scope: !1501)
!1537 = !DILocation(line: 118, column: 5, scope: !1510)
!1538 = !DILocation(line: 121, column: 15, scope: !1501)
!1539 = !DILocation(line: 122, column: 14, scope: !1501)
!1540 = !DILocation(line: 122, column: 20, scope: !1501)
!1541 = !DILocation(line: 0, scope: !1461, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 122, column: 3, scope: !1501)
!1543 = !DILocation(line: 29, column: 10, scope: !1461, inlinedAt: !1542)
!1544 = !DILocation(line: 123, column: 1, scope: !1501)
!1545 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !411, file: !411, line: 50, type: !828, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1546)
!1546 = !{!1547}
!1547 = !DILocalVariable(name: "file", arg: 1, scope: !1545, file: !411, line: 50, type: !127)
!1548 = !DILocation(line: 0, scope: !1545)
!1549 = !DILocation(line: 52, column: 13, scope: !1545)
!1550 = !DILocation(line: 53, column: 1, scope: !1545)
!1551 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !411, file: !411, line: 87, type: !1552, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1554)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !158}
!1554 = !{!1555}
!1555 = !DILocalVariable(name: "ignore", arg: 1, scope: !1551, file: !411, line: 87, type: !158)
!1556 = !DILocation(line: 0, scope: !1551)
!1557 = !DILocation(line: 89, column: 16, scope: !1551)
!1558 = !{!1559, !1559, i64 0}
!1559 = !{!"_Bool", !815, i64 0}
!1560 = !DILocation(line: 90, column: 1, scope: !1551)
!1561 = distinct !DISubprogram(name: "close_stdout", scope: !411, file: !411, line: 116, type: !470, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1562)
!1562 = !{!1563}
!1563 = !DILocalVariable(name: "write_error", scope: !1564, file: !411, line: 121, type: !127)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !411, line: 120, column: 5)
!1565 = distinct !DILexicalBlock(scope: !1561, file: !411, line: 118, column: 7)
!1566 = !DILocation(line: 118, column: 21, scope: !1565)
!1567 = !DILocation(line: 118, column: 7, scope: !1565)
!1568 = !DILocation(line: 118, column: 29, scope: !1565)
!1569 = !DILocation(line: 119, column: 7, scope: !1565)
!1570 = !DILocation(line: 119, column: 12, scope: !1565)
!1571 = !{i8 0, i8 2}
!1572 = !DILocation(line: 119, column: 25, scope: !1565)
!1573 = !DILocation(line: 119, column: 28, scope: !1565)
!1574 = !DILocation(line: 119, column: 34, scope: !1565)
!1575 = !DILocation(line: 118, column: 7, scope: !1561)
!1576 = !DILocation(line: 121, column: 33, scope: !1564)
!1577 = !DILocation(line: 0, scope: !1564)
!1578 = !DILocation(line: 122, column: 11, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1564, file: !411, line: 122, column: 11)
!1580 = !DILocation(line: 0, scope: !1579)
!1581 = !DILocation(line: 122, column: 11, scope: !1564)
!1582 = !DILocation(line: 123, column: 9, scope: !1579)
!1583 = !DILocation(line: 126, column: 9, scope: !1579)
!1584 = !DILocation(line: 128, column: 14, scope: !1564)
!1585 = !DILocation(line: 128, column: 7, scope: !1564)
!1586 = !DILocation(line: 133, column: 42, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1561, file: !411, line: 133, column: 7)
!1588 = !DILocation(line: 133, column: 28, scope: !1587)
!1589 = !DILocation(line: 133, column: 50, scope: !1587)
!1590 = !DILocation(line: 133, column: 7, scope: !1561)
!1591 = !DILocation(line: 134, column: 12, scope: !1587)
!1592 = !DILocation(line: 134, column: 5, scope: !1587)
!1593 = !DILocation(line: 135, column: 1, scope: !1561)
!1594 = !DISubprogram(name: "_exit", scope: !1485, file: !1485, line: 624, type: !803, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1595 = distinct !DISubprogram(name: "verror", scope: !426, file: !426, line: 251, type: !1596, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1598)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !83, !83, !127, !436}
!1598 = !{!1599, !1600, !1601, !1602}
!1599 = !DILocalVariable(name: "status", arg: 1, scope: !1595, file: !426, line: 251, type: !83)
!1600 = !DILocalVariable(name: "errnum", arg: 2, scope: !1595, file: !426, line: 251, type: !83)
!1601 = !DILocalVariable(name: "message", arg: 3, scope: !1595, file: !426, line: 251, type: !127)
!1602 = !DILocalVariable(name: "args", arg: 4, scope: !1595, file: !426, line: 251, type: !436)
!1603 = !DILocation(line: 0, scope: !1595)
!1604 = !DILocation(line: 261, column: 3, scope: !1595)
!1605 = !DILocation(line: 265, column: 7, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1595, file: !426, line: 265, column: 7)
!1607 = !DILocation(line: 265, column: 7, scope: !1595)
!1608 = !DILocation(line: 266, column: 5, scope: !1606)
!1609 = !DILocation(line: 272, column: 7, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1606, file: !426, line: 268, column: 5)
!1611 = !DILocation(line: 276, column: 3, scope: !1595)
!1612 = !DILocation(line: 282, column: 1, scope: !1595)
!1613 = distinct !DISubprogram(name: "flush_stdout", scope: !426, file: !426, line: 163, type: !470, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1614)
!1614 = !{!1615}
!1615 = !DILocalVariable(name: "stdout_fd", scope: !1613, file: !426, line: 166, type: !83)
!1616 = !DILocation(line: 0, scope: !1613)
!1617 = !DILocalVariable(name: "fd", arg: 1, scope: !1618, file: !426, line: 145, type: !83)
!1618 = distinct !DISubprogram(name: "is_open", scope: !426, file: !426, line: 145, type: !1486, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1619)
!1619 = !{!1617}
!1620 = !DILocation(line: 0, scope: !1618, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 182, column: 25, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1613, file: !426, line: 182, column: 7)
!1623 = !DILocation(line: 157, column: 15, scope: !1618, inlinedAt: !1621)
!1624 = !DILocation(line: 157, column: 12, scope: !1618, inlinedAt: !1621)
!1625 = !DILocation(line: 182, column: 7, scope: !1613)
!1626 = !DILocation(line: 184, column: 5, scope: !1622)
!1627 = !DILocation(line: 185, column: 1, scope: !1613)
!1628 = distinct !DISubprogram(name: "error_tail", scope: !426, file: !426, line: 219, type: !1596, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1629)
!1629 = !{!1630, !1631, !1632, !1633}
!1630 = !DILocalVariable(name: "status", arg: 1, scope: !1628, file: !426, line: 219, type: !83)
!1631 = !DILocalVariable(name: "errnum", arg: 2, scope: !1628, file: !426, line: 219, type: !83)
!1632 = !DILocalVariable(name: "message", arg: 3, scope: !1628, file: !426, line: 219, type: !127)
!1633 = !DILocalVariable(name: "args", arg: 4, scope: !1628, file: !426, line: 219, type: !436)
!1634 = !DILocation(line: 0, scope: !1628)
!1635 = !DILocation(line: 229, column: 13, scope: !1628)
!1636 = !DILocalVariable(name: "__stream", arg: 1, scope: !1637, file: !864, line: 132, type: !1640)
!1637 = distinct !DISubprogram(name: "vfprintf", scope: !864, file: !864, line: 132, type: !1638, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1675)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!83, !1640, !868, !436}
!1640 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1641)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !1644)
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1643, file: !175, line: 51, baseType: !83, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1643, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1643, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1643, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1643, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1643, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1643, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1643, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1643, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1643, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1643, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1643, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1643, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1643, file: !175, line: 70, baseType: !1659, size: 64, offset: 832)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1643, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1643, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1643, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1643, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1643, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1643, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1643, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1643, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1643, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1643, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1643, file: !175, line: 93, baseType: !1659, size: 64, offset: 1344)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1643, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1643, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1643, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1643, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!1675 = !{!1636, !1676, !1677}
!1676 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1637, file: !864, line: 133, type: !868)
!1677 = !DILocalVariable(name: "__ap", arg: 3, scope: !1637, file: !864, line: 133, type: !436)
!1678 = !DILocation(line: 0, scope: !1637, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 229, column: 3, scope: !1628)
!1680 = !DILocation(line: 135, column: 10, scope: !1637, inlinedAt: !1679)
!1681 = !DILocation(line: 232, column: 3, scope: !1628)
!1682 = !DILocation(line: 233, column: 7, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1628, file: !426, line: 233, column: 7)
!1684 = !DILocation(line: 233, column: 7, scope: !1628)
!1685 = !DILocalVariable(name: "errnum", arg: 1, scope: !1686, file: !426, line: 188, type: !83)
!1686 = distinct !DISubprogram(name: "print_errno_message", scope: !426, file: !426, line: 188, type: !803, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1687)
!1687 = !{!1685, !1688, !1689}
!1688 = !DILocalVariable(name: "s", scope: !1686, file: !426, line: 190, type: !127)
!1689 = !DILocalVariable(name: "errbuf", scope: !1686, file: !426, line: 193, type: !1690)
!1690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1691)
!1691 = !{!1692}
!1692 = !DISubrange(count: 1024)
!1693 = !DILocation(line: 0, scope: !1686, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 234, column: 5, scope: !1683)
!1695 = !DILocation(line: 193, column: 3, scope: !1686, inlinedAt: !1694)
!1696 = !DILocation(line: 193, column: 8, scope: !1686, inlinedAt: !1694)
!1697 = !DILocation(line: 195, column: 7, scope: !1686, inlinedAt: !1694)
!1698 = !DILocation(line: 207, column: 9, scope: !1699, inlinedAt: !1694)
!1699 = distinct !DILexicalBlock(scope: !1686, file: !426, line: 207, column: 7)
!1700 = !DILocation(line: 207, column: 7, scope: !1686, inlinedAt: !1694)
!1701 = !DILocation(line: 208, column: 9, scope: !1699, inlinedAt: !1694)
!1702 = !DILocation(line: 208, column: 5, scope: !1699, inlinedAt: !1694)
!1703 = !DILocation(line: 214, column: 3, scope: !1686, inlinedAt: !1694)
!1704 = !DILocation(line: 216, column: 1, scope: !1686, inlinedAt: !1694)
!1705 = !DILocation(line: 234, column: 5, scope: !1683)
!1706 = !DILocation(line: 238, column: 3, scope: !1628)
!1707 = !DILocalVariable(name: "__c", arg: 1, scope: !1708, file: !1709, line: 101, type: !83)
!1708 = distinct !DISubprogram(name: "putc_unlocked", scope: !1709, file: !1709, line: 101, type: !1710, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1712)
!1709 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!83, !83, !1641}
!1712 = !{!1707, !1713}
!1713 = !DILocalVariable(name: "__stream", arg: 2, scope: !1708, file: !1709, line: 101, type: !1641)
!1714 = !DILocation(line: 0, scope: !1708, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 238, column: 3, scope: !1628)
!1716 = !DILocation(line: 103, column: 10, scope: !1708, inlinedAt: !1715)
!1717 = !{!1718, !814, i64 40}
!1718 = !{!"_IO_FILE", !879, i64 0, !814, i64 8, !814, i64 16, !814, i64 24, !814, i64 32, !814, i64 40, !814, i64 48, !814, i64 56, !814, i64 64, !814, i64 72, !814, i64 80, !814, i64 88, !814, i64 96, !814, i64 104, !879, i64 112, !879, i64 116, !1165, i64 120, !920, i64 128, !815, i64 130, !815, i64 131, !814, i64 136, !1165, i64 144, !814, i64 152, !814, i64 160, !814, i64 168, !814, i64 176, !1165, i64 184, !879, i64 192, !815, i64 196}
!1719 = !{!1718, !814, i64 48}
!1720 = !{!"branch_weights", i32 2000, i32 1}
!1721 = !DILocation(line: 240, column: 3, scope: !1628)
!1722 = !DILocation(line: 241, column: 7, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1628, file: !426, line: 241, column: 7)
!1724 = !DILocation(line: 241, column: 7, scope: !1628)
!1725 = !DILocation(line: 242, column: 5, scope: !1723)
!1726 = !DILocation(line: 243, column: 1, scope: !1628)
!1727 = !DISubprogram(name: "__vfprintf_chk", scope: !864, file: !864, line: 96, type: !1728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!83, !1640, !83, !868, !436}
!1730 = !DISubprogram(name: "strerror_r", scope: !999, file: !999, line: 444, type: !1731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!122, !83, !122, !124}
!1733 = !DISubprogram(name: "__overflow", scope: !873, file: !873, line: 886, type: !1734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!83, !1641, !83}
!1736 = !DISubprogram(name: "fflush_unlocked", scope: !873, file: !873, line: 239, type: !1737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!83, !1641}
!1739 = !DISubprogram(name: "fcntl", scope: !1740, file: !1740, line: 149, type: !1741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1740 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!83, !83, !83, null}
!1743 = distinct !DISubprogram(name: "error", scope: !426, file: !426, line: 285, type: !1744, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1746)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null, !83, !83, !127, null}
!1746 = !{!1747, !1748, !1749, !1750}
!1747 = !DILocalVariable(name: "status", arg: 1, scope: !1743, file: !426, line: 285, type: !83)
!1748 = !DILocalVariable(name: "errnum", arg: 2, scope: !1743, file: !426, line: 285, type: !83)
!1749 = !DILocalVariable(name: "message", arg: 3, scope: !1743, file: !426, line: 285, type: !127)
!1750 = !DILocalVariable(name: "ap", scope: !1743, file: !426, line: 287, type: !1751)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !873, line: 52, baseType: !1752)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1753, line: 14, baseType: !1754)
!1753 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !440, baseType: !1755)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 192, elements: !60)
!1756 = !DILocation(line: 0, scope: !1743)
!1757 = !DILocation(line: 287, column: 3, scope: !1743)
!1758 = !DILocation(line: 287, column: 11, scope: !1743)
!1759 = !DILocation(line: 288, column: 3, scope: !1743)
!1760 = !DILocation(line: 289, column: 3, scope: !1743)
!1761 = !DILocation(line: 290, column: 3, scope: !1743)
!1762 = !DILocation(line: 291, column: 1, scope: !1743)
!1763 = !DILocation(line: 0, scope: !433)
!1764 = !DILocation(line: 302, column: 7, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !433, file: !426, line: 302, column: 7)
!1766 = !DILocation(line: 302, column: 7, scope: !433)
!1767 = !DILocation(line: 307, column: 11, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !426, line: 307, column: 11)
!1769 = distinct !DILexicalBlock(scope: !1765, file: !426, line: 303, column: 5)
!1770 = !DILocation(line: 307, column: 27, scope: !1768)
!1771 = !DILocation(line: 308, column: 11, scope: !1768)
!1772 = !DILocation(line: 308, column: 28, scope: !1768)
!1773 = !DILocation(line: 308, column: 25, scope: !1768)
!1774 = !DILocation(line: 309, column: 15, scope: !1768)
!1775 = !DILocation(line: 309, column: 33, scope: !1768)
!1776 = !DILocation(line: 310, column: 19, scope: !1768)
!1777 = !DILocation(line: 311, column: 22, scope: !1768)
!1778 = !DILocation(line: 311, column: 56, scope: !1768)
!1779 = !DILocation(line: 307, column: 11, scope: !1769)
!1780 = !DILocation(line: 316, column: 21, scope: !1769)
!1781 = !DILocation(line: 317, column: 23, scope: !1769)
!1782 = !DILocation(line: 318, column: 5, scope: !1769)
!1783 = !DILocation(line: 327, column: 3, scope: !433)
!1784 = !DILocation(line: 331, column: 7, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !433, file: !426, line: 331, column: 7)
!1786 = !DILocation(line: 331, column: 7, scope: !433)
!1787 = !DILocation(line: 332, column: 5, scope: !1785)
!1788 = !DILocation(line: 338, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1785, file: !426, line: 334, column: 5)
!1790 = !DILocation(line: 346, column: 3, scope: !433)
!1791 = !DILocation(line: 350, column: 3, scope: !433)
!1792 = !DILocation(line: 356, column: 1, scope: !433)
!1793 = distinct !DISubprogram(name: "error_at_line", scope: !426, file: !426, line: 359, type: !1794, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1796)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{null, !83, !83, !127, !89, !127, null}
!1796 = !{!1797, !1798, !1799, !1800, !1801, !1802}
!1797 = !DILocalVariable(name: "status", arg: 1, scope: !1793, file: !426, line: 359, type: !83)
!1798 = !DILocalVariable(name: "errnum", arg: 2, scope: !1793, file: !426, line: 359, type: !83)
!1799 = !DILocalVariable(name: "file_name", arg: 3, scope: !1793, file: !426, line: 359, type: !127)
!1800 = !DILocalVariable(name: "line_number", arg: 4, scope: !1793, file: !426, line: 360, type: !89)
!1801 = !DILocalVariable(name: "message", arg: 5, scope: !1793, file: !426, line: 360, type: !127)
!1802 = !DILocalVariable(name: "ap", scope: !1793, file: !426, line: 362, type: !1751)
!1803 = !DILocation(line: 0, scope: !1793)
!1804 = !DILocation(line: 362, column: 3, scope: !1793)
!1805 = !DILocation(line: 362, column: 11, scope: !1793)
!1806 = !DILocation(line: 363, column: 3, scope: !1793)
!1807 = !DILocation(line: 364, column: 3, scope: !1793)
!1808 = !DILocation(line: 366, column: 3, scope: !1793)
!1809 = !DILocation(line: 367, column: 1, scope: !1793)
!1810 = distinct !DISubprogram(name: "getprogname", scope: !728, file: !728, line: 54, type: !1080, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !862)
!1811 = !DILocation(line: 58, column: 10, scope: !1810)
!1812 = !DILocation(line: 58, column: 3, scope: !1810)
!1813 = distinct !DISubprogram(name: "set_program_name", scope: !475, file: !475, line: 37, type: !828, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !1814)
!1814 = !{!1815, !1816, !1817}
!1815 = !DILocalVariable(name: "argv0", arg: 1, scope: !1813, file: !475, line: 37, type: !127)
!1816 = !DILocalVariable(name: "slash", scope: !1813, file: !475, line: 44, type: !127)
!1817 = !DILocalVariable(name: "base", scope: !1813, file: !475, line: 45, type: !127)
!1818 = !DILocation(line: 0, scope: !1813)
!1819 = !DILocation(line: 44, column: 23, scope: !1813)
!1820 = !DILocation(line: 45, column: 22, scope: !1813)
!1821 = !DILocation(line: 46, column: 17, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1813, file: !475, line: 46, column: 7)
!1823 = !DILocation(line: 46, column: 9, scope: !1822)
!1824 = !DILocation(line: 46, column: 25, scope: !1822)
!1825 = !DILocation(line: 46, column: 40, scope: !1822)
!1826 = !DILocalVariable(name: "__s1", arg: 1, scope: !1827, file: !891, line: 974, type: !1027)
!1827 = distinct !DISubprogram(name: "memeq", scope: !891, file: !891, line: 974, type: !1828, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !1830)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!158, !1027, !1027, !124}
!1830 = !{!1826, !1831, !1832}
!1831 = !DILocalVariable(name: "__s2", arg: 2, scope: !1827, file: !891, line: 974, type: !1027)
!1832 = !DILocalVariable(name: "__n", arg: 3, scope: !1827, file: !891, line: 974, type: !124)
!1833 = !DILocation(line: 0, scope: !1827, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 46, column: 28, scope: !1822)
!1835 = !DILocation(line: 976, column: 11, scope: !1827, inlinedAt: !1834)
!1836 = !DILocation(line: 976, column: 10, scope: !1827, inlinedAt: !1834)
!1837 = !DILocation(line: 46, column: 7, scope: !1813)
!1838 = !DILocation(line: 49, column: 11, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !475, line: 49, column: 11)
!1840 = distinct !DILexicalBlock(scope: !1822, file: !475, line: 47, column: 5)
!1841 = !DILocation(line: 49, column: 36, scope: !1839)
!1842 = !DILocation(line: 49, column: 11, scope: !1840)
!1843 = !DILocation(line: 65, column: 16, scope: !1813)
!1844 = !DILocation(line: 71, column: 27, scope: !1813)
!1845 = !DILocation(line: 74, column: 33, scope: !1813)
!1846 = !DILocation(line: 76, column: 1, scope: !1813)
!1847 = !DISubprogram(name: "strrchr", scope: !999, file: !999, line: 273, type: !1014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1848 = !DILocation(line: 0, scope: !484)
!1849 = !DILocation(line: 40, column: 29, scope: !484)
!1850 = !DILocation(line: 41, column: 19, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !484, file: !485, line: 41, column: 7)
!1852 = !DILocation(line: 41, column: 7, scope: !484)
!1853 = !DILocation(line: 47, column: 3, scope: !484)
!1854 = !DILocation(line: 48, column: 3, scope: !484)
!1855 = !DILocation(line: 48, column: 13, scope: !484)
!1856 = !DILocalVariable(name: "ps", arg: 1, scope: !1857, file: !1858, line: 1135, type: !1861)
!1857 = distinct !DISubprogram(name: "mbszero", scope: !1858, file: !1858, line: 1135, type: !1859, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1862)
!1858 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !1861}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!1862 = !{!1856}
!1863 = !DILocation(line: 0, scope: !1857, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 48, column: 18, scope: !484)
!1865 = !DILocalVariable(name: "__dest", arg: 1, scope: !1866, file: !1462, line: 57, type: !121)
!1866 = distinct !DISubprogram(name: "memset", scope: !1462, file: !1462, line: 57, type: !1867, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!121, !121, !83, !124}
!1869 = !{!1865, !1870, !1871}
!1870 = !DILocalVariable(name: "__ch", arg: 2, scope: !1866, file: !1462, line: 57, type: !83)
!1871 = !DILocalVariable(name: "__len", arg: 3, scope: !1866, file: !1462, line: 57, type: !124)
!1872 = !DILocation(line: 0, scope: !1866, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 1137, column: 3, scope: !1857, inlinedAt: !1864)
!1874 = !DILocation(line: 59, column: 10, scope: !1866, inlinedAt: !1873)
!1875 = !DILocation(line: 49, column: 7, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !484, file: !485, line: 49, column: 7)
!1877 = !DILocation(line: 49, column: 39, scope: !1876)
!1878 = !DILocation(line: 49, column: 44, scope: !1876)
!1879 = !DILocation(line: 54, column: 1, scope: !484)
!1880 = !DISubprogram(name: "mbrtoc32", scope: !496, file: !496, line: 57, type: !1881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!124, !1883, !868, !124, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1884)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1861)
!1886 = distinct !DISubprogram(name: "clone_quoting_options", scope: !515, file: !515, line: 113, type: !1887, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !1890)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!1889, !1889}
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!1890 = !{!1891, !1892, !1893}
!1891 = !DILocalVariable(name: "o", arg: 1, scope: !1886, file: !515, line: 113, type: !1889)
!1892 = !DILocalVariable(name: "saved_errno", scope: !1886, file: !515, line: 115, type: !83)
!1893 = !DILocalVariable(name: "p", scope: !1886, file: !515, line: 116, type: !1889)
!1894 = !DILocation(line: 0, scope: !1886)
!1895 = !DILocation(line: 115, column: 21, scope: !1886)
!1896 = !DILocation(line: 116, column: 40, scope: !1886)
!1897 = !DILocation(line: 116, column: 31, scope: !1886)
!1898 = !DILocation(line: 118, column: 9, scope: !1886)
!1899 = !DILocation(line: 119, column: 3, scope: !1886)
!1900 = distinct !DISubprogram(name: "get_quoting_style", scope: !515, file: !515, line: 124, type: !1901, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !1905)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!103, !1903}
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!1905 = !{!1906}
!1906 = !DILocalVariable(name: "o", arg: 1, scope: !1900, file: !515, line: 124, type: !1903)
!1907 = !DILocation(line: 0, scope: !1900)
!1908 = !DILocation(line: 126, column: 11, scope: !1900)
!1909 = !DILocation(line: 126, column: 46, scope: !1900)
!1910 = !{!1911, !815, i64 0}
!1911 = !{!"quoting_options", !815, i64 0, !879, i64 4, !815, i64 8, !814, i64 40, !814, i64 48}
!1912 = !DILocation(line: 126, column: 3, scope: !1900)
!1913 = distinct !DISubprogram(name: "set_quoting_style", scope: !515, file: !515, line: 132, type: !1914, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !1916)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !1889, !103}
!1916 = !{!1917, !1918}
!1917 = !DILocalVariable(name: "o", arg: 1, scope: !1913, file: !515, line: 132, type: !1889)
!1918 = !DILocalVariable(name: "s", arg: 2, scope: !1913, file: !515, line: 132, type: !103)
!1919 = !DILocation(line: 0, scope: !1913)
!1920 = !DILocation(line: 134, column: 4, scope: !1913)
!1921 = !DILocation(line: 134, column: 45, scope: !1913)
!1922 = !DILocation(line: 135, column: 1, scope: !1913)
!1923 = distinct !DISubprogram(name: "set_char_quoting", scope: !515, file: !515, line: 143, type: !1924, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!83, !1889, !4, !83}
!1926 = !{!1927, !1928, !1929, !1930, !1931, !1933, !1934}
!1927 = !DILocalVariable(name: "o", arg: 1, scope: !1923, file: !515, line: 143, type: !1889)
!1928 = !DILocalVariable(name: "c", arg: 2, scope: !1923, file: !515, line: 143, type: !4)
!1929 = !DILocalVariable(name: "i", arg: 3, scope: !1923, file: !515, line: 143, type: !83)
!1930 = !DILocalVariable(name: "uc", scope: !1923, file: !515, line: 145, type: !129)
!1931 = !DILocalVariable(name: "p", scope: !1923, file: !515, line: 146, type: !1932)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!1933 = !DILocalVariable(name: "shift", scope: !1923, file: !515, line: 148, type: !83)
!1934 = !DILocalVariable(name: "r", scope: !1923, file: !515, line: 149, type: !89)
!1935 = !DILocation(line: 0, scope: !1923)
!1936 = !DILocation(line: 147, column: 6, scope: !1923)
!1937 = !DILocation(line: 147, column: 41, scope: !1923)
!1938 = !DILocation(line: 147, column: 62, scope: !1923)
!1939 = !DILocation(line: 147, column: 57, scope: !1923)
!1940 = !DILocation(line: 148, column: 15, scope: !1923)
!1941 = !DILocation(line: 149, column: 21, scope: !1923)
!1942 = !DILocation(line: 149, column: 24, scope: !1923)
!1943 = !DILocation(line: 149, column: 34, scope: !1923)
!1944 = !DILocation(line: 150, column: 19, scope: !1923)
!1945 = !DILocation(line: 150, column: 24, scope: !1923)
!1946 = !DILocation(line: 150, column: 6, scope: !1923)
!1947 = !DILocation(line: 151, column: 3, scope: !1923)
!1948 = distinct !DISubprogram(name: "set_quoting_flags", scope: !515, file: !515, line: 159, type: !1949, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !1951)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!83, !1889, !83}
!1951 = !{!1952, !1953, !1954}
!1952 = !DILocalVariable(name: "o", arg: 1, scope: !1948, file: !515, line: 159, type: !1889)
!1953 = !DILocalVariable(name: "i", arg: 2, scope: !1948, file: !515, line: 159, type: !83)
!1954 = !DILocalVariable(name: "r", scope: !1948, file: !515, line: 163, type: !83)
!1955 = !DILocation(line: 0, scope: !1948)
!1956 = !DILocation(line: 161, column: 8, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1948, file: !515, line: 161, column: 7)
!1958 = !DILocation(line: 161, column: 7, scope: !1948)
!1959 = !DILocation(line: 163, column: 14, scope: !1948)
!1960 = !{!1911, !879, i64 4}
!1961 = !DILocation(line: 164, column: 12, scope: !1948)
!1962 = !DILocation(line: 165, column: 3, scope: !1948)
!1963 = distinct !DISubprogram(name: "set_custom_quoting", scope: !515, file: !515, line: 169, type: !1964, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !1966)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !1889, !127, !127}
!1966 = !{!1967, !1968, !1969}
!1967 = !DILocalVariable(name: "o", arg: 1, scope: !1963, file: !515, line: 169, type: !1889)
!1968 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1963, file: !515, line: 170, type: !127)
!1969 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1963, file: !515, line: 170, type: !127)
!1970 = !DILocation(line: 0, scope: !1963)
!1971 = !DILocation(line: 172, column: 8, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1963, file: !515, line: 172, column: 7)
!1973 = !DILocation(line: 172, column: 7, scope: !1963)
!1974 = !DILocation(line: 174, column: 12, scope: !1963)
!1975 = !DILocation(line: 175, column: 8, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1963, file: !515, line: 175, column: 7)
!1977 = !DILocation(line: 175, column: 19, scope: !1976)
!1978 = !DILocation(line: 176, column: 5, scope: !1976)
!1979 = !DILocation(line: 177, column: 6, scope: !1963)
!1980 = !DILocation(line: 177, column: 17, scope: !1963)
!1981 = !{!1911, !814, i64 40}
!1982 = !DILocation(line: 178, column: 6, scope: !1963)
!1983 = !DILocation(line: 178, column: 18, scope: !1963)
!1984 = !{!1911, !814, i64 48}
!1985 = !DILocation(line: 179, column: 1, scope: !1963)
!1986 = !DISubprogram(name: "abort", scope: !1003, file: !1003, line: 598, type: !470, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !862)
!1987 = distinct !DISubprogram(name: "quotearg_buffer", scope: !515, file: !515, line: 774, type: !1988, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !1990)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!124, !122, !124, !127, !124, !1903}
!1990 = !{!1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998}
!1991 = !DILocalVariable(name: "buffer", arg: 1, scope: !1987, file: !515, line: 774, type: !122)
!1992 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1987, file: !515, line: 774, type: !124)
!1993 = !DILocalVariable(name: "arg", arg: 3, scope: !1987, file: !515, line: 775, type: !127)
!1994 = !DILocalVariable(name: "argsize", arg: 4, scope: !1987, file: !515, line: 775, type: !124)
!1995 = !DILocalVariable(name: "o", arg: 5, scope: !1987, file: !515, line: 776, type: !1903)
!1996 = !DILocalVariable(name: "p", scope: !1987, file: !515, line: 778, type: !1903)
!1997 = !DILocalVariable(name: "saved_errno", scope: !1987, file: !515, line: 779, type: !83)
!1998 = !DILocalVariable(name: "r", scope: !1987, file: !515, line: 780, type: !124)
!1999 = !DILocation(line: 0, scope: !1987)
!2000 = !DILocation(line: 778, column: 37, scope: !1987)
!2001 = !DILocation(line: 779, column: 21, scope: !1987)
!2002 = !DILocation(line: 781, column: 43, scope: !1987)
!2003 = !DILocation(line: 781, column: 53, scope: !1987)
!2004 = !DILocation(line: 781, column: 63, scope: !1987)
!2005 = !DILocation(line: 782, column: 43, scope: !1987)
!2006 = !DILocation(line: 782, column: 58, scope: !1987)
!2007 = !DILocation(line: 780, column: 14, scope: !1987)
!2008 = !DILocation(line: 783, column: 9, scope: !1987)
!2009 = !DILocation(line: 784, column: 3, scope: !1987)
!2010 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !515, file: !515, line: 251, type: !2011, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2015)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!124, !122, !124, !127, !124, !103, !83, !2013, !127, !127}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!2015 = !{!2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2040, !2042, !2045, !2046, !2047, !2048, !2051, !2052, !2055, !2059, !2060, !2068, !2071, !2072, !2074, !2075, !2076, !2077}
!2016 = !DILocalVariable(name: "buffer", arg: 1, scope: !2010, file: !515, line: 251, type: !122)
!2017 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2010, file: !515, line: 251, type: !124)
!2018 = !DILocalVariable(name: "arg", arg: 3, scope: !2010, file: !515, line: 252, type: !127)
!2019 = !DILocalVariable(name: "argsize", arg: 4, scope: !2010, file: !515, line: 252, type: !124)
!2020 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2010, file: !515, line: 253, type: !103)
!2021 = !DILocalVariable(name: "flags", arg: 6, scope: !2010, file: !515, line: 253, type: !83)
!2022 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2010, file: !515, line: 254, type: !2013)
!2023 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2010, file: !515, line: 255, type: !127)
!2024 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2010, file: !515, line: 256, type: !127)
!2025 = !DILocalVariable(name: "unibyte_locale", scope: !2010, file: !515, line: 258, type: !158)
!2026 = !DILocalVariable(name: "len", scope: !2010, file: !515, line: 260, type: !124)
!2027 = !DILocalVariable(name: "orig_buffersize", scope: !2010, file: !515, line: 261, type: !124)
!2028 = !DILocalVariable(name: "quote_string", scope: !2010, file: !515, line: 262, type: !127)
!2029 = !DILocalVariable(name: "quote_string_len", scope: !2010, file: !515, line: 263, type: !124)
!2030 = !DILocalVariable(name: "backslash_escapes", scope: !2010, file: !515, line: 264, type: !158)
!2031 = !DILocalVariable(name: "elide_outer_quotes", scope: !2010, file: !515, line: 265, type: !158)
!2032 = !DILocalVariable(name: "encountered_single_quote", scope: !2010, file: !515, line: 266, type: !158)
!2033 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2010, file: !515, line: 267, type: !158)
!2034 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2010, file: !515, line: 309, type: !158)
!2035 = !DILocalVariable(name: "lq", scope: !2036, file: !515, line: 361, type: !127)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !515, line: 361, column: 11)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !515, line: 360, column: 13)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !515, line: 333, column: 7)
!2039 = distinct !DILexicalBlock(scope: !2010, file: !515, line: 312, column: 5)
!2040 = !DILocalVariable(name: "i", scope: !2041, file: !515, line: 395, type: !124)
!2041 = distinct !DILexicalBlock(scope: !2010, file: !515, line: 395, column: 3)
!2042 = !DILocalVariable(name: "is_right_quote", scope: !2043, file: !515, line: 397, type: !158)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !515, line: 396, column: 5)
!2044 = distinct !DILexicalBlock(scope: !2041, file: !515, line: 395, column: 3)
!2045 = !DILocalVariable(name: "escaping", scope: !2043, file: !515, line: 398, type: !158)
!2046 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2043, file: !515, line: 399, type: !158)
!2047 = !DILocalVariable(name: "c", scope: !2043, file: !515, line: 417, type: !129)
!2048 = !DILocalVariable(name: "m", scope: !2049, file: !515, line: 598, type: !124)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !515, line: 596, column: 11)
!2050 = distinct !DILexicalBlock(scope: !2043, file: !515, line: 419, column: 9)
!2051 = !DILocalVariable(name: "printable", scope: !2049, file: !515, line: 600, type: !158)
!2052 = !DILocalVariable(name: "mbs", scope: !2053, file: !515, line: 609, type: !585)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !515, line: 608, column: 15)
!2054 = distinct !DILexicalBlock(scope: !2049, file: !515, line: 602, column: 17)
!2055 = !DILocalVariable(name: "w", scope: !2056, file: !515, line: 618, type: !495)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !515, line: 617, column: 19)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !515, line: 616, column: 17)
!2058 = distinct !DILexicalBlock(scope: !2053, file: !515, line: 616, column: 17)
!2059 = !DILocalVariable(name: "bytes", scope: !2056, file: !515, line: 619, type: !124)
!2060 = !DILocalVariable(name: "j", scope: !2061, file: !515, line: 648, type: !124)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !515, line: 648, column: 29)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !515, line: 647, column: 27)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !515, line: 645, column: 29)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !515, line: 636, column: 23)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !515, line: 628, column: 30)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !515, line: 623, column: 30)
!2067 = distinct !DILexicalBlock(scope: !2056, file: !515, line: 621, column: 25)
!2068 = !DILocalVariable(name: "ilim", scope: !2069, file: !515, line: 674, type: !124)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !515, line: 671, column: 15)
!2070 = distinct !DILexicalBlock(scope: !2049, file: !515, line: 670, column: 17)
!2071 = !DILabel(scope: !2010, name: "process_input", file: !515, line: 308)
!2072 = !DILabel(scope: !2073, name: "c_and_shell_escape", file: !515, line: 502)
!2073 = distinct !DILexicalBlock(scope: !2050, file: !515, line: 478, column: 9)
!2074 = !DILabel(scope: !2073, name: "c_escape", file: !515, line: 507)
!2075 = !DILabel(scope: !2043, name: "store_escape", file: !515, line: 709)
!2076 = !DILabel(scope: !2043, name: "store_c", file: !515, line: 712)
!2077 = !DILabel(scope: !2010, name: "force_outer_quoting_style", file: !515, line: 753)
!2078 = !DILocation(line: 0, scope: !2010)
!2079 = !DILocation(line: 258, column: 25, scope: !2010)
!2080 = !DILocation(line: 258, column: 36, scope: !2010)
!2081 = !DILocation(line: 265, column: 8, scope: !2010)
!2082 = !DILocation(line: 267, column: 3, scope: !2010)
!2083 = !DILocation(line: 261, column: 10, scope: !2010)
!2084 = !DILocation(line: 262, column: 15, scope: !2010)
!2085 = !DILocation(line: 263, column: 10, scope: !2010)
!2086 = !DILocation(line: 264, column: 8, scope: !2010)
!2087 = !DILocation(line: 266, column: 8, scope: !2010)
!2088 = !DILocation(line: 267, column: 8, scope: !2010)
!2089 = !DILocation(line: 308, column: 2, scope: !2010)
!2090 = !DILocation(line: 311, column: 3, scope: !2010)
!2091 = !DILocation(line: 318, column: 11, scope: !2039)
!2092 = !DILocation(line: 318, column: 12, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2039, file: !515, line: 318, column: 11)
!2094 = !DILocation(line: 319, column: 9, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !515, line: 319, column: 9)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !515, line: 319, column: 9)
!2097 = !DILocation(line: 319, column: 9, scope: !2096)
!2098 = !DILocation(line: 0, scope: !576, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 357, column: 26, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !515, line: 335, column: 11)
!2101 = distinct !DILexicalBlock(scope: !2038, file: !515, line: 334, column: 13)
!2102 = !DILocation(line: 199, column: 29, scope: !576, inlinedAt: !2099)
!2103 = !DILocation(line: 201, column: 19, scope: !2104, inlinedAt: !2099)
!2104 = distinct !DILexicalBlock(scope: !576, file: !515, line: 201, column: 7)
!2105 = !DILocation(line: 201, column: 7, scope: !576, inlinedAt: !2099)
!2106 = !DILocation(line: 229, column: 3, scope: !576, inlinedAt: !2099)
!2107 = !DILocation(line: 230, column: 3, scope: !576, inlinedAt: !2099)
!2108 = !DILocation(line: 230, column: 13, scope: !576, inlinedAt: !2099)
!2109 = !DILocalVariable(name: "ps", arg: 1, scope: !2110, file: !1858, line: 1135, type: !2113)
!2110 = distinct !DISubprogram(name: "mbszero", scope: !1858, file: !1858, line: 1135, type: !2111, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2114)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{null, !2113}
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!2114 = !{!2109}
!2115 = !DILocation(line: 0, scope: !2110, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 230, column: 18, scope: !576, inlinedAt: !2099)
!2117 = !DILocalVariable(name: "__dest", arg: 1, scope: !2118, file: !1462, line: 57, type: !121)
!2118 = distinct !DISubprogram(name: "memset", scope: !1462, file: !1462, line: 57, type: !1867, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2119)
!2119 = !{!2117, !2120, !2121}
!2120 = !DILocalVariable(name: "__ch", arg: 2, scope: !2118, file: !1462, line: 57, type: !83)
!2121 = !DILocalVariable(name: "__len", arg: 3, scope: !2118, file: !1462, line: 57, type: !124)
!2122 = !DILocation(line: 0, scope: !2118, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 1137, column: 3, scope: !2110, inlinedAt: !2116)
!2124 = !DILocation(line: 59, column: 10, scope: !2118, inlinedAt: !2123)
!2125 = !DILocation(line: 231, column: 7, scope: !2126, inlinedAt: !2099)
!2126 = distinct !DILexicalBlock(scope: !576, file: !515, line: 231, column: 7)
!2127 = !DILocation(line: 231, column: 40, scope: !2126, inlinedAt: !2099)
!2128 = !DILocation(line: 231, column: 45, scope: !2126, inlinedAt: !2099)
!2129 = !DILocation(line: 235, column: 1, scope: !576, inlinedAt: !2099)
!2130 = !DILocation(line: 0, scope: !576, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 358, column: 27, scope: !2100)
!2132 = !DILocation(line: 199, column: 29, scope: !576, inlinedAt: !2131)
!2133 = !DILocation(line: 201, column: 19, scope: !2104, inlinedAt: !2131)
!2134 = !DILocation(line: 201, column: 7, scope: !576, inlinedAt: !2131)
!2135 = !DILocation(line: 229, column: 3, scope: !576, inlinedAt: !2131)
!2136 = !DILocation(line: 230, column: 3, scope: !576, inlinedAt: !2131)
!2137 = !DILocation(line: 230, column: 13, scope: !576, inlinedAt: !2131)
!2138 = !DILocation(line: 0, scope: !2110, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 230, column: 18, scope: !576, inlinedAt: !2131)
!2140 = !DILocation(line: 0, scope: !2118, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 1137, column: 3, scope: !2110, inlinedAt: !2139)
!2142 = !DILocation(line: 59, column: 10, scope: !2118, inlinedAt: !2141)
!2143 = !DILocation(line: 231, column: 7, scope: !2126, inlinedAt: !2131)
!2144 = !DILocation(line: 231, column: 40, scope: !2126, inlinedAt: !2131)
!2145 = !DILocation(line: 231, column: 45, scope: !2126, inlinedAt: !2131)
!2146 = !DILocation(line: 235, column: 1, scope: !576, inlinedAt: !2131)
!2147 = !DILocation(line: 360, column: 14, scope: !2037)
!2148 = !DILocation(line: 360, column: 13, scope: !2038)
!2149 = !DILocation(line: 0, scope: !2036)
!2150 = !DILocation(line: 361, column: 45, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2036, file: !515, line: 361, column: 11)
!2152 = !DILocation(line: 361, column: 11, scope: !2036)
!2153 = !DILocation(line: 362, column: 13, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !515, line: 362, column: 13)
!2155 = distinct !DILexicalBlock(scope: !2151, file: !515, line: 362, column: 13)
!2156 = !DILocation(line: 362, column: 13, scope: !2155)
!2157 = !DILocation(line: 361, column: 52, scope: !2151)
!2158 = distinct !{!2158, !2152, !2159, !925}
!2159 = !DILocation(line: 362, column: 13, scope: !2036)
!2160 = !DILocation(line: 260, column: 10, scope: !2010)
!2161 = !DILocation(line: 365, column: 28, scope: !2038)
!2162 = !DILocation(line: 367, column: 7, scope: !2039)
!2163 = !DILocation(line: 370, column: 7, scope: !2039)
!2164 = !DILocation(line: 373, column: 7, scope: !2039)
!2165 = !DILocation(line: 376, column: 12, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2039, file: !515, line: 376, column: 11)
!2167 = !DILocation(line: 376, column: 11, scope: !2039)
!2168 = !DILocation(line: 381, column: 12, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2039, file: !515, line: 381, column: 11)
!2170 = !DILocation(line: 381, column: 11, scope: !2039)
!2171 = !DILocation(line: 382, column: 9, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !515, line: 382, column: 9)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !515, line: 382, column: 9)
!2174 = !DILocation(line: 382, column: 9, scope: !2173)
!2175 = !DILocation(line: 389, column: 7, scope: !2039)
!2176 = !DILocation(line: 392, column: 7, scope: !2039)
!2177 = !DILocation(line: 0, scope: !2041)
!2178 = !DILocation(line: 395, column: 8, scope: !2041)
!2179 = !DILocation(line: 309, column: 8, scope: !2010)
!2180 = !DILocation(line: 395, scope: !2041)
!2181 = !DILocation(line: 395, column: 34, scope: !2044)
!2182 = !DILocation(line: 395, column: 26, scope: !2044)
!2183 = !DILocation(line: 395, column: 48, scope: !2044)
!2184 = !DILocation(line: 395, column: 55, scope: !2044)
!2185 = !DILocation(line: 395, column: 3, scope: !2041)
!2186 = !DILocation(line: 395, column: 67, scope: !2044)
!2187 = !DILocation(line: 0, scope: !2043)
!2188 = !DILocation(line: 402, column: 11, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2043, file: !515, line: 401, column: 11)
!2190 = !DILocation(line: 404, column: 17, scope: !2189)
!2191 = !DILocation(line: 405, column: 39, scope: !2189)
!2192 = !DILocation(line: 409, column: 32, scope: !2189)
!2193 = !DILocation(line: 405, column: 19, scope: !2189)
!2194 = !DILocation(line: 405, column: 15, scope: !2189)
!2195 = !DILocation(line: 410, column: 11, scope: !2189)
!2196 = !DILocation(line: 410, column: 25, scope: !2189)
!2197 = !DILocalVariable(name: "__s1", arg: 1, scope: !2198, file: !891, line: 974, type: !1027)
!2198 = distinct !DISubprogram(name: "memeq", scope: !891, file: !891, line: 974, type: !1828, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2199)
!2199 = !{!2197, !2200, !2201}
!2200 = !DILocalVariable(name: "__s2", arg: 2, scope: !2198, file: !891, line: 974, type: !1027)
!2201 = !DILocalVariable(name: "__n", arg: 3, scope: !2198, file: !891, line: 974, type: !124)
!2202 = !DILocation(line: 0, scope: !2198, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 410, column: 14, scope: !2189)
!2204 = !DILocation(line: 976, column: 11, scope: !2198, inlinedAt: !2203)
!2205 = !DILocation(line: 976, column: 10, scope: !2198, inlinedAt: !2203)
!2206 = !DILocation(line: 401, column: 11, scope: !2043)
!2207 = !DILocation(line: 417, column: 25, scope: !2043)
!2208 = !DILocation(line: 418, column: 7, scope: !2043)
!2209 = !DILocation(line: 421, column: 15, scope: !2050)
!2210 = !DILocation(line: 423, column: 15, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !515, line: 423, column: 15)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !515, line: 422, column: 13)
!2213 = distinct !DILexicalBlock(scope: !2050, file: !515, line: 421, column: 15)
!2214 = !DILocation(line: 423, column: 15, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2211, file: !515, line: 423, column: 15)
!2216 = !DILocation(line: 423, column: 15, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !515, line: 423, column: 15)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !515, line: 423, column: 15)
!2219 = distinct !DILexicalBlock(scope: !2215, file: !515, line: 423, column: 15)
!2220 = !DILocation(line: 423, column: 15, scope: !2218)
!2221 = !DILocation(line: 423, column: 15, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !515, line: 423, column: 15)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !515, line: 423, column: 15)
!2224 = !DILocation(line: 423, column: 15, scope: !2223)
!2225 = !DILocation(line: 423, column: 15, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !515, line: 423, column: 15)
!2227 = distinct !DILexicalBlock(scope: !2219, file: !515, line: 423, column: 15)
!2228 = !DILocation(line: 423, column: 15, scope: !2227)
!2229 = !DILocation(line: 423, column: 15, scope: !2219)
!2230 = !DILocation(line: 423, column: 15, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !515, line: 423, column: 15)
!2232 = distinct !DILexicalBlock(scope: !2211, file: !515, line: 423, column: 15)
!2233 = !DILocation(line: 423, column: 15, scope: !2232)
!2234 = !DILocation(line: 431, column: 19, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2212, file: !515, line: 430, column: 19)
!2236 = !DILocation(line: 431, column: 24, scope: !2235)
!2237 = !DILocation(line: 431, column: 28, scope: !2235)
!2238 = !DILocation(line: 431, column: 38, scope: !2235)
!2239 = !DILocation(line: 431, column: 48, scope: !2235)
!2240 = !DILocation(line: 431, column: 59, scope: !2235)
!2241 = !DILocation(line: 433, column: 19, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !515, line: 433, column: 19)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !515, line: 433, column: 19)
!2244 = distinct !DILexicalBlock(scope: !2235, file: !515, line: 432, column: 17)
!2245 = !DILocation(line: 433, column: 19, scope: !2243)
!2246 = !DILocation(line: 434, column: 19, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !515, line: 434, column: 19)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !515, line: 434, column: 19)
!2249 = !DILocation(line: 434, column: 19, scope: !2248)
!2250 = !DILocation(line: 435, column: 17, scope: !2244)
!2251 = !DILocation(line: 442, column: 20, scope: !2213)
!2252 = !DILocation(line: 447, column: 11, scope: !2050)
!2253 = !DILocation(line: 450, column: 19, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2050, file: !515, line: 448, column: 13)
!2255 = !DILocation(line: 456, column: 19, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2254, file: !515, line: 455, column: 19)
!2257 = !DILocation(line: 456, column: 24, scope: !2256)
!2258 = !DILocation(line: 456, column: 28, scope: !2256)
!2259 = !DILocation(line: 456, column: 38, scope: !2256)
!2260 = !DILocation(line: 456, column: 47, scope: !2256)
!2261 = !DILocation(line: 456, column: 41, scope: !2256)
!2262 = !DILocation(line: 456, column: 52, scope: !2256)
!2263 = !DILocation(line: 455, column: 19, scope: !2254)
!2264 = !DILocation(line: 457, column: 25, scope: !2256)
!2265 = !DILocation(line: 457, column: 17, scope: !2256)
!2266 = !DILocation(line: 464, column: 25, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2256, file: !515, line: 458, column: 19)
!2268 = !DILocation(line: 468, column: 21, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !515, line: 468, column: 21)
!2270 = distinct !DILexicalBlock(scope: !2267, file: !515, line: 468, column: 21)
!2271 = !DILocation(line: 468, column: 21, scope: !2270)
!2272 = !DILocation(line: 469, column: 21, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !515, line: 469, column: 21)
!2274 = distinct !DILexicalBlock(scope: !2267, file: !515, line: 469, column: 21)
!2275 = !DILocation(line: 469, column: 21, scope: !2274)
!2276 = !DILocation(line: 470, column: 21, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !515, line: 470, column: 21)
!2278 = distinct !DILexicalBlock(scope: !2267, file: !515, line: 470, column: 21)
!2279 = !DILocation(line: 470, column: 21, scope: !2278)
!2280 = !DILocation(line: 471, column: 21, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !515, line: 471, column: 21)
!2282 = distinct !DILexicalBlock(scope: !2267, file: !515, line: 471, column: 21)
!2283 = !DILocation(line: 471, column: 21, scope: !2282)
!2284 = !DILocation(line: 472, column: 21, scope: !2267)
!2285 = !DILocation(line: 482, column: 33, scope: !2073)
!2286 = !DILocation(line: 483, column: 33, scope: !2073)
!2287 = !DILocation(line: 485, column: 33, scope: !2073)
!2288 = !DILocation(line: 486, column: 33, scope: !2073)
!2289 = !DILocation(line: 487, column: 33, scope: !2073)
!2290 = !DILocation(line: 490, column: 17, scope: !2073)
!2291 = !DILocation(line: 492, column: 21, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !515, line: 491, column: 15)
!2293 = distinct !DILexicalBlock(scope: !2073, file: !515, line: 490, column: 17)
!2294 = !DILocation(line: 499, column: 35, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2073, file: !515, line: 499, column: 17)
!2296 = !DILocation(line: 499, column: 57, scope: !2295)
!2297 = !DILocation(line: 0, scope: !2073)
!2298 = !DILocation(line: 502, column: 11, scope: !2073)
!2299 = !DILocation(line: 504, column: 17, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2073, file: !515, line: 503, column: 17)
!2301 = !DILocation(line: 507, column: 11, scope: !2073)
!2302 = !DILocation(line: 508, column: 17, scope: !2073)
!2303 = !DILocation(line: 517, column: 15, scope: !2050)
!2304 = !DILocation(line: 517, column: 40, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2050, file: !515, line: 517, column: 15)
!2306 = !DILocation(line: 517, column: 47, scope: !2305)
!2307 = !DILocation(line: 517, column: 18, scope: !2305)
!2308 = !DILocation(line: 521, column: 17, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2050, file: !515, line: 521, column: 15)
!2310 = !DILocation(line: 521, column: 15, scope: !2050)
!2311 = !DILocation(line: 525, column: 11, scope: !2050)
!2312 = !DILocation(line: 537, column: 15, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2050, file: !515, line: 536, column: 15)
!2314 = !DILocation(line: 544, column: 15, scope: !2050)
!2315 = !DILocation(line: 546, column: 19, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !515, line: 545, column: 13)
!2317 = distinct !DILexicalBlock(scope: !2050, file: !515, line: 544, column: 15)
!2318 = !DILocation(line: 549, column: 19, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2316, file: !515, line: 549, column: 19)
!2320 = !DILocation(line: 549, column: 30, scope: !2319)
!2321 = !DILocation(line: 558, column: 15, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !515, line: 558, column: 15)
!2323 = distinct !DILexicalBlock(scope: !2316, file: !515, line: 558, column: 15)
!2324 = !DILocation(line: 558, column: 15, scope: !2323)
!2325 = !DILocation(line: 559, column: 15, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !515, line: 559, column: 15)
!2327 = distinct !DILexicalBlock(scope: !2316, file: !515, line: 559, column: 15)
!2328 = !DILocation(line: 559, column: 15, scope: !2327)
!2329 = !DILocation(line: 560, column: 15, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !515, line: 560, column: 15)
!2331 = distinct !DILexicalBlock(scope: !2316, file: !515, line: 560, column: 15)
!2332 = !DILocation(line: 560, column: 15, scope: !2331)
!2333 = !DILocation(line: 562, column: 13, scope: !2316)
!2334 = !DILocation(line: 602, column: 17, scope: !2049)
!2335 = !DILocation(line: 0, scope: !2049)
!2336 = !DILocation(line: 605, column: 29, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2054, file: !515, line: 603, column: 15)
!2338 = !DILocation(line: 605, column: 27, scope: !2337)
!2339 = !DILocation(line: 668, column: 40, scope: !2049)
!2340 = !DILocation(line: 670, column: 23, scope: !2070)
!2341 = !DILocation(line: 609, column: 17, scope: !2053)
!2342 = !DILocation(line: 609, column: 27, scope: !2053)
!2343 = !DILocation(line: 0, scope: !2110, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 609, column: 32, scope: !2053)
!2345 = !DILocation(line: 0, scope: !2118, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 1137, column: 3, scope: !2110, inlinedAt: !2344)
!2347 = !DILocation(line: 59, column: 10, scope: !2118, inlinedAt: !2346)
!2348 = !DILocation(line: 613, column: 29, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2053, file: !515, line: 613, column: 21)
!2350 = !DILocation(line: 613, column: 21, scope: !2053)
!2351 = !DILocation(line: 614, column: 29, scope: !2349)
!2352 = !DILocation(line: 614, column: 19, scope: !2349)
!2353 = !DILocation(line: 618, column: 21, scope: !2056)
!2354 = !DILocation(line: 620, column: 54, scope: !2056)
!2355 = !DILocation(line: 0, scope: !2056)
!2356 = !DILocation(line: 619, column: 36, scope: !2056)
!2357 = !DILocation(line: 621, column: 25, scope: !2056)
!2358 = !DILocation(line: 631, column: 38, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2065, file: !515, line: 629, column: 23)
!2360 = !DILocation(line: 631, column: 48, scope: !2359)
!2361 = !DILocation(line: 665, column: 19, scope: !2057)
!2362 = !DILocation(line: 666, column: 15, scope: !2054)
!2363 = !DILocation(line: 626, column: 25, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2066, file: !515, line: 624, column: 23)
!2365 = !DILocation(line: 631, column: 51, scope: !2359)
!2366 = !DILocation(line: 631, column: 25, scope: !2359)
!2367 = !DILocation(line: 632, column: 28, scope: !2359)
!2368 = !DILocation(line: 631, column: 34, scope: !2359)
!2369 = distinct !{!2369, !2366, !2367, !925}
!2370 = !DILocation(line: 646, column: 29, scope: !2063)
!2371 = !DILocation(line: 0, scope: !2061)
!2372 = !DILocation(line: 649, column: 49, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2061, file: !515, line: 648, column: 29)
!2374 = !DILocation(line: 649, column: 39, scope: !2373)
!2375 = !DILocation(line: 649, column: 31, scope: !2373)
!2376 = !DILocation(line: 648, column: 60, scope: !2373)
!2377 = !DILocation(line: 648, column: 50, scope: !2373)
!2378 = !DILocation(line: 648, column: 29, scope: !2061)
!2379 = distinct !{!2379, !2378, !2380, !925}
!2380 = !DILocation(line: 654, column: 33, scope: !2061)
!2381 = !DILocation(line: 657, column: 43, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2064, file: !515, line: 657, column: 29)
!2383 = !DILocalVariable(name: "wc", arg: 1, scope: !2384, file: !2385, line: 865, type: !2388)
!2384 = distinct !DISubprogram(name: "c32isprint", scope: !2385, file: !2385, line: 865, type: !2386, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2390)
!2385 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!83, !2388}
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2389, line: 20, baseType: !89)
!2389 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2390 = !{!2383}
!2391 = !DILocation(line: 0, scope: !2384, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 657, column: 31, scope: !2382)
!2393 = !DILocation(line: 871, column: 10, scope: !2384, inlinedAt: !2392)
!2394 = !DILocation(line: 657, column: 31, scope: !2382)
!2395 = !DILocation(line: 657, column: 29, scope: !2064)
!2396 = !DILocation(line: 664, column: 23, scope: !2056)
!2397 = !DILocation(line: 670, column: 19, scope: !2070)
!2398 = !DILocation(line: 670, column: 45, scope: !2070)
!2399 = !DILocation(line: 674, column: 33, scope: !2069)
!2400 = !DILocation(line: 0, scope: !2069)
!2401 = !DILocation(line: 676, column: 17, scope: !2069)
!2402 = !DILocation(line: 398, column: 12, scope: !2043)
!2403 = !DILocation(line: 678, column: 43, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !515, line: 678, column: 25)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !515, line: 677, column: 19)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !515, line: 676, column: 17)
!2407 = distinct !DILexicalBlock(scope: !2069, file: !515, line: 676, column: 17)
!2408 = !DILocation(line: 680, column: 25, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !515, line: 680, column: 25)
!2410 = distinct !DILexicalBlock(scope: !2404, file: !515, line: 679, column: 23)
!2411 = !DILocation(line: 680, column: 25, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2409, file: !515, line: 680, column: 25)
!2413 = !DILocation(line: 680, column: 25, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !515, line: 680, column: 25)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !515, line: 680, column: 25)
!2416 = distinct !DILexicalBlock(scope: !2412, file: !515, line: 680, column: 25)
!2417 = !DILocation(line: 680, column: 25, scope: !2415)
!2418 = !DILocation(line: 680, column: 25, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !515, line: 680, column: 25)
!2420 = distinct !DILexicalBlock(scope: !2416, file: !515, line: 680, column: 25)
!2421 = !DILocation(line: 680, column: 25, scope: !2420)
!2422 = !DILocation(line: 680, column: 25, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !515, line: 680, column: 25)
!2424 = distinct !DILexicalBlock(scope: !2416, file: !515, line: 680, column: 25)
!2425 = !DILocation(line: 680, column: 25, scope: !2424)
!2426 = !DILocation(line: 680, column: 25, scope: !2416)
!2427 = !DILocation(line: 680, column: 25, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !515, line: 680, column: 25)
!2429 = distinct !DILexicalBlock(scope: !2409, file: !515, line: 680, column: 25)
!2430 = !DILocation(line: 680, column: 25, scope: !2429)
!2431 = !DILocation(line: 681, column: 25, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !515, line: 681, column: 25)
!2433 = distinct !DILexicalBlock(scope: !2410, file: !515, line: 681, column: 25)
!2434 = !DILocation(line: 681, column: 25, scope: !2433)
!2435 = !DILocation(line: 682, column: 25, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !515, line: 682, column: 25)
!2437 = distinct !DILexicalBlock(scope: !2410, file: !515, line: 682, column: 25)
!2438 = !DILocation(line: 682, column: 25, scope: !2437)
!2439 = !DILocation(line: 683, column: 38, scope: !2410)
!2440 = !DILocation(line: 683, column: 33, scope: !2410)
!2441 = !DILocation(line: 684, column: 23, scope: !2410)
!2442 = !DILocation(line: 685, column: 30, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2404, file: !515, line: 685, column: 30)
!2444 = !DILocation(line: 685, column: 30, scope: !2404)
!2445 = !DILocation(line: 687, column: 25, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !515, line: 687, column: 25)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !515, line: 687, column: 25)
!2448 = distinct !DILexicalBlock(scope: !2443, file: !515, line: 686, column: 23)
!2449 = !DILocation(line: 687, column: 25, scope: !2447)
!2450 = !DILocation(line: 689, column: 23, scope: !2448)
!2451 = !DILocation(line: 690, column: 35, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2405, file: !515, line: 690, column: 25)
!2453 = !DILocation(line: 690, column: 30, scope: !2452)
!2454 = !DILocation(line: 690, column: 25, scope: !2405)
!2455 = !DILocation(line: 692, column: 21, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !515, line: 692, column: 21)
!2457 = distinct !DILexicalBlock(scope: !2405, file: !515, line: 692, column: 21)
!2458 = !DILocation(line: 692, column: 21, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !515, line: 692, column: 21)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !515, line: 692, column: 21)
!2461 = distinct !DILexicalBlock(scope: !2456, file: !515, line: 692, column: 21)
!2462 = !DILocation(line: 692, column: 21, scope: !2460)
!2463 = !DILocation(line: 692, column: 21, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !515, line: 692, column: 21)
!2465 = distinct !DILexicalBlock(scope: !2461, file: !515, line: 692, column: 21)
!2466 = !DILocation(line: 692, column: 21, scope: !2465)
!2467 = !DILocation(line: 692, column: 21, scope: !2461)
!2468 = !DILocation(line: 0, scope: !2405)
!2469 = !DILocation(line: 693, column: 21, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !515, line: 693, column: 21)
!2471 = distinct !DILexicalBlock(scope: !2405, file: !515, line: 693, column: 21)
!2472 = !DILocation(line: 693, column: 21, scope: !2471)
!2473 = !DILocation(line: 694, column: 25, scope: !2405)
!2474 = !DILocation(line: 676, column: 17, scope: !2406)
!2475 = distinct !{!2475, !2476, !2477}
!2476 = !DILocation(line: 676, column: 17, scope: !2407)
!2477 = !DILocation(line: 695, column: 19, scope: !2407)
!2478 = !DILocation(line: 409, column: 30, scope: !2189)
!2479 = !DILocation(line: 702, column: 34, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2043, file: !515, line: 702, column: 11)
!2481 = !DILocation(line: 704, column: 14, scope: !2480)
!2482 = !DILocation(line: 705, column: 14, scope: !2480)
!2483 = !DILocation(line: 705, column: 35, scope: !2480)
!2484 = !DILocation(line: 705, column: 17, scope: !2480)
!2485 = !DILocation(line: 705, column: 47, scope: !2480)
!2486 = !DILocation(line: 705, column: 65, scope: !2480)
!2487 = !DILocation(line: 706, column: 11, scope: !2480)
!2488 = !DILocation(line: 702, column: 11, scope: !2043)
!2489 = !DILocation(line: 395, column: 15, scope: !2041)
!2490 = !DILocation(line: 709, column: 5, scope: !2043)
!2491 = !DILocation(line: 710, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2043, file: !515, line: 710, column: 7)
!2493 = !DILocation(line: 710, column: 7, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2492, file: !515, line: 710, column: 7)
!2495 = !DILocation(line: 710, column: 7, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !515, line: 710, column: 7)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !515, line: 710, column: 7)
!2498 = distinct !DILexicalBlock(scope: !2494, file: !515, line: 710, column: 7)
!2499 = !DILocation(line: 710, column: 7, scope: !2497)
!2500 = !DILocation(line: 710, column: 7, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !515, line: 710, column: 7)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !515, line: 710, column: 7)
!2503 = !DILocation(line: 710, column: 7, scope: !2502)
!2504 = !DILocation(line: 710, column: 7, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !515, line: 710, column: 7)
!2506 = distinct !DILexicalBlock(scope: !2498, file: !515, line: 710, column: 7)
!2507 = !DILocation(line: 710, column: 7, scope: !2506)
!2508 = !DILocation(line: 710, column: 7, scope: !2498)
!2509 = !DILocation(line: 710, column: 7, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !515, line: 710, column: 7)
!2511 = distinct !DILexicalBlock(scope: !2492, file: !515, line: 710, column: 7)
!2512 = !DILocation(line: 710, column: 7, scope: !2511)
!2513 = !DILocation(line: 712, column: 5, scope: !2043)
!2514 = !DILocation(line: 713, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !515, line: 713, column: 7)
!2516 = distinct !DILexicalBlock(scope: !2043, file: !515, line: 713, column: 7)
!2517 = !DILocation(line: 417, column: 21, scope: !2043)
!2518 = !DILocation(line: 713, column: 7, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !515, line: 713, column: 7)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !515, line: 713, column: 7)
!2521 = distinct !DILexicalBlock(scope: !2515, file: !515, line: 713, column: 7)
!2522 = !DILocation(line: 713, column: 7, scope: !2520)
!2523 = !DILocation(line: 713, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !515, line: 713, column: 7)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !515, line: 713, column: 7)
!2526 = !DILocation(line: 713, column: 7, scope: !2525)
!2527 = !DILocation(line: 713, column: 7, scope: !2521)
!2528 = !DILocation(line: 714, column: 7, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !515, line: 714, column: 7)
!2530 = distinct !DILexicalBlock(scope: !2043, file: !515, line: 714, column: 7)
!2531 = !DILocation(line: 714, column: 7, scope: !2530)
!2532 = !DILocation(line: 716, column: 13, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2043, file: !515, line: 716, column: 11)
!2534 = !DILocation(line: 716, column: 11, scope: !2043)
!2535 = !DILocation(line: 718, column: 5, scope: !2044)
!2536 = !DILocation(line: 395, column: 82, scope: !2044)
!2537 = !DILocation(line: 395, column: 3, scope: !2044)
!2538 = distinct !{!2538, !2185, !2539, !925}
!2539 = !DILocation(line: 718, column: 5, scope: !2041)
!2540 = !DILocation(line: 720, column: 11, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2010, file: !515, line: 720, column: 7)
!2542 = !DILocation(line: 720, column: 16, scope: !2541)
!2543 = !DILocation(line: 728, column: 51, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2010, file: !515, line: 728, column: 7)
!2545 = !DILocation(line: 731, column: 11, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !515, line: 731, column: 11)
!2547 = distinct !DILexicalBlock(scope: !2544, file: !515, line: 730, column: 5)
!2548 = !DILocation(line: 731, column: 11, scope: !2547)
!2549 = !DILocation(line: 732, column: 16, scope: !2546)
!2550 = !DILocation(line: 732, column: 9, scope: !2546)
!2551 = !DILocation(line: 736, column: 18, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2546, file: !515, line: 736, column: 16)
!2553 = !DILocation(line: 736, column: 29, scope: !2552)
!2554 = !DILocation(line: 745, column: 7, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2010, file: !515, line: 745, column: 7)
!2556 = !DILocation(line: 745, column: 20, scope: !2555)
!2557 = !DILocation(line: 746, column: 12, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !515, line: 746, column: 5)
!2559 = distinct !DILexicalBlock(scope: !2555, file: !515, line: 746, column: 5)
!2560 = !DILocation(line: 746, column: 5, scope: !2559)
!2561 = !DILocation(line: 747, column: 7, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !515, line: 747, column: 7)
!2563 = distinct !DILexicalBlock(scope: !2558, file: !515, line: 747, column: 7)
!2564 = !DILocation(line: 747, column: 7, scope: !2563)
!2565 = !DILocation(line: 746, column: 39, scope: !2558)
!2566 = distinct !{!2566, !2560, !2567, !925}
!2567 = !DILocation(line: 747, column: 7, scope: !2559)
!2568 = !DILocation(line: 749, column: 11, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2010, file: !515, line: 749, column: 7)
!2570 = !DILocation(line: 749, column: 7, scope: !2010)
!2571 = !DILocation(line: 750, column: 5, scope: !2569)
!2572 = !DILocation(line: 750, column: 17, scope: !2569)
!2573 = !DILocation(line: 753, column: 2, scope: !2010)
!2574 = !DILocation(line: 756, column: 51, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2010, file: !515, line: 756, column: 7)
!2576 = !DILocation(line: 756, column: 21, scope: !2575)
!2577 = !DILocation(line: 760, column: 42, scope: !2010)
!2578 = !DILocation(line: 758, column: 10, scope: !2010)
!2579 = !DILocation(line: 758, column: 3, scope: !2010)
!2580 = !DILocation(line: 762, column: 1, scope: !2010)
!2581 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1003, file: !1003, line: 98, type: !2582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!124}
!2584 = !DISubprogram(name: "iswprint", scope: !2585, file: !2585, line: 120, type: !2386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!2585 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2586 = distinct !DISubprogram(name: "quotearg_alloc", scope: !515, file: !515, line: 788, type: !2587, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!122, !127, !124, !1903}
!2589 = !{!2590, !2591, !2592}
!2590 = !DILocalVariable(name: "arg", arg: 1, scope: !2586, file: !515, line: 788, type: !127)
!2591 = !DILocalVariable(name: "argsize", arg: 2, scope: !2586, file: !515, line: 788, type: !124)
!2592 = !DILocalVariable(name: "o", arg: 3, scope: !2586, file: !515, line: 789, type: !1903)
!2593 = !DILocation(line: 0, scope: !2586)
!2594 = !DILocalVariable(name: "arg", arg: 1, scope: !2595, file: !515, line: 801, type: !127)
!2595 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !515, file: !515, line: 801, type: !2596, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2598)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!122, !127, !124, !745, !1903}
!2598 = !{!2594, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606}
!2599 = !DILocalVariable(name: "argsize", arg: 2, scope: !2595, file: !515, line: 801, type: !124)
!2600 = !DILocalVariable(name: "size", arg: 3, scope: !2595, file: !515, line: 801, type: !745)
!2601 = !DILocalVariable(name: "o", arg: 4, scope: !2595, file: !515, line: 802, type: !1903)
!2602 = !DILocalVariable(name: "p", scope: !2595, file: !515, line: 804, type: !1903)
!2603 = !DILocalVariable(name: "saved_errno", scope: !2595, file: !515, line: 805, type: !83)
!2604 = !DILocalVariable(name: "flags", scope: !2595, file: !515, line: 807, type: !83)
!2605 = !DILocalVariable(name: "bufsize", scope: !2595, file: !515, line: 808, type: !124)
!2606 = !DILocalVariable(name: "buf", scope: !2595, file: !515, line: 812, type: !122)
!2607 = !DILocation(line: 0, scope: !2595, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 791, column: 10, scope: !2586)
!2609 = !DILocation(line: 804, column: 37, scope: !2595, inlinedAt: !2608)
!2610 = !DILocation(line: 805, column: 21, scope: !2595, inlinedAt: !2608)
!2611 = !DILocation(line: 807, column: 18, scope: !2595, inlinedAt: !2608)
!2612 = !DILocation(line: 807, column: 24, scope: !2595, inlinedAt: !2608)
!2613 = !DILocation(line: 808, column: 72, scope: !2595, inlinedAt: !2608)
!2614 = !DILocation(line: 809, column: 56, scope: !2595, inlinedAt: !2608)
!2615 = !DILocation(line: 810, column: 49, scope: !2595, inlinedAt: !2608)
!2616 = !DILocation(line: 811, column: 49, scope: !2595, inlinedAt: !2608)
!2617 = !DILocation(line: 808, column: 20, scope: !2595, inlinedAt: !2608)
!2618 = !DILocation(line: 811, column: 62, scope: !2595, inlinedAt: !2608)
!2619 = !DILocation(line: 812, column: 15, scope: !2595, inlinedAt: !2608)
!2620 = !DILocation(line: 813, column: 60, scope: !2595, inlinedAt: !2608)
!2621 = !DILocation(line: 815, column: 32, scope: !2595, inlinedAt: !2608)
!2622 = !DILocation(line: 815, column: 47, scope: !2595, inlinedAt: !2608)
!2623 = !DILocation(line: 813, column: 3, scope: !2595, inlinedAt: !2608)
!2624 = !DILocation(line: 816, column: 9, scope: !2595, inlinedAt: !2608)
!2625 = !DILocation(line: 791, column: 3, scope: !2586)
!2626 = !DILocation(line: 0, scope: !2595)
!2627 = !DILocation(line: 804, column: 37, scope: !2595)
!2628 = !DILocation(line: 805, column: 21, scope: !2595)
!2629 = !DILocation(line: 807, column: 18, scope: !2595)
!2630 = !DILocation(line: 807, column: 27, scope: !2595)
!2631 = !DILocation(line: 807, column: 24, scope: !2595)
!2632 = !DILocation(line: 808, column: 72, scope: !2595)
!2633 = !DILocation(line: 809, column: 56, scope: !2595)
!2634 = !DILocation(line: 810, column: 49, scope: !2595)
!2635 = !DILocation(line: 811, column: 49, scope: !2595)
!2636 = !DILocation(line: 808, column: 20, scope: !2595)
!2637 = !DILocation(line: 811, column: 62, scope: !2595)
!2638 = !DILocation(line: 812, column: 15, scope: !2595)
!2639 = !DILocation(line: 813, column: 60, scope: !2595)
!2640 = !DILocation(line: 815, column: 32, scope: !2595)
!2641 = !DILocation(line: 815, column: 47, scope: !2595)
!2642 = !DILocation(line: 813, column: 3, scope: !2595)
!2643 = !DILocation(line: 816, column: 9, scope: !2595)
!2644 = !DILocation(line: 817, column: 7, scope: !2595)
!2645 = !DILocation(line: 818, column: 11, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2595, file: !515, line: 817, column: 7)
!2647 = !DILocation(line: 818, column: 5, scope: !2646)
!2648 = !DILocation(line: 819, column: 3, scope: !2595)
!2649 = distinct !DISubprogram(name: "quotearg_free", scope: !515, file: !515, line: 837, type: !470, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2650)
!2650 = !{!2651, !2652}
!2651 = !DILocalVariable(name: "sv", scope: !2649, file: !515, line: 839, type: !599)
!2652 = !DILocalVariable(name: "i", scope: !2653, file: !515, line: 840, type: !83)
!2653 = distinct !DILexicalBlock(scope: !2649, file: !515, line: 840, column: 3)
!2654 = !DILocation(line: 839, column: 24, scope: !2649)
!2655 = !DILocation(line: 0, scope: !2649)
!2656 = !DILocation(line: 0, scope: !2653)
!2657 = !DILocation(line: 840, column: 21, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2653, file: !515, line: 840, column: 3)
!2659 = !DILocation(line: 840, column: 3, scope: !2653)
!2660 = !DILocation(line: 842, column: 13, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2649, file: !515, line: 842, column: 7)
!2662 = !{!2663, !814, i64 8}
!2663 = !{!"slotvec", !1165, i64 0, !814, i64 8}
!2664 = !DILocation(line: 842, column: 17, scope: !2661)
!2665 = !DILocation(line: 842, column: 7, scope: !2649)
!2666 = !DILocation(line: 841, column: 17, scope: !2658)
!2667 = !DILocation(line: 841, column: 5, scope: !2658)
!2668 = !DILocation(line: 840, column: 32, scope: !2658)
!2669 = distinct !{!2669, !2659, !2670, !925}
!2670 = !DILocation(line: 841, column: 20, scope: !2653)
!2671 = !DILocation(line: 844, column: 7, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2661, file: !515, line: 843, column: 5)
!2673 = !DILocation(line: 845, column: 21, scope: !2672)
!2674 = !{!2663, !1165, i64 0}
!2675 = !DILocation(line: 846, column: 20, scope: !2672)
!2676 = !DILocation(line: 847, column: 5, scope: !2672)
!2677 = !DILocation(line: 848, column: 10, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2649, file: !515, line: 848, column: 7)
!2679 = !DILocation(line: 848, column: 7, scope: !2649)
!2680 = !DILocation(line: 850, column: 7, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2678, file: !515, line: 849, column: 5)
!2682 = !DILocation(line: 851, column: 15, scope: !2681)
!2683 = !DILocation(line: 852, column: 5, scope: !2681)
!2684 = !DILocation(line: 853, column: 10, scope: !2649)
!2685 = !DILocation(line: 854, column: 1, scope: !2649)
!2686 = distinct !DISubprogram(name: "quotearg_n", scope: !515, file: !515, line: 919, type: !996, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2687)
!2687 = !{!2688, !2689}
!2688 = !DILocalVariable(name: "n", arg: 1, scope: !2686, file: !515, line: 919, type: !83)
!2689 = !DILocalVariable(name: "arg", arg: 2, scope: !2686, file: !515, line: 919, type: !127)
!2690 = !DILocation(line: 0, scope: !2686)
!2691 = !DILocation(line: 921, column: 10, scope: !2686)
!2692 = !DILocation(line: 921, column: 3, scope: !2686)
!2693 = distinct !DISubprogram(name: "quotearg_n_options", scope: !515, file: !515, line: 866, type: !2694, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!122, !83, !127, !124, !1903}
!2696 = !{!2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2707, !2708, !2710, !2711, !2712}
!2697 = !DILocalVariable(name: "n", arg: 1, scope: !2693, file: !515, line: 866, type: !83)
!2698 = !DILocalVariable(name: "arg", arg: 2, scope: !2693, file: !515, line: 866, type: !127)
!2699 = !DILocalVariable(name: "argsize", arg: 3, scope: !2693, file: !515, line: 866, type: !124)
!2700 = !DILocalVariable(name: "options", arg: 4, scope: !2693, file: !515, line: 867, type: !1903)
!2701 = !DILocalVariable(name: "saved_errno", scope: !2693, file: !515, line: 869, type: !83)
!2702 = !DILocalVariable(name: "sv", scope: !2693, file: !515, line: 871, type: !599)
!2703 = !DILocalVariable(name: "nslots_max", scope: !2693, file: !515, line: 873, type: !83)
!2704 = !DILocalVariable(name: "preallocated", scope: !2705, file: !515, line: 879, type: !158)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !515, line: 878, column: 5)
!2706 = distinct !DILexicalBlock(scope: !2693, file: !515, line: 877, column: 7)
!2707 = !DILocalVariable(name: "new_nslots", scope: !2705, file: !515, line: 880, type: !758)
!2708 = !DILocalVariable(name: "size", scope: !2709, file: !515, line: 891, type: !124)
!2709 = distinct !DILexicalBlock(scope: !2693, file: !515, line: 890, column: 3)
!2710 = !DILocalVariable(name: "val", scope: !2709, file: !515, line: 892, type: !122)
!2711 = !DILocalVariable(name: "flags", scope: !2709, file: !515, line: 894, type: !83)
!2712 = !DILocalVariable(name: "qsize", scope: !2709, file: !515, line: 895, type: !124)
!2713 = !DILocation(line: 0, scope: !2693)
!2714 = !DILocation(line: 869, column: 21, scope: !2693)
!2715 = !DILocation(line: 871, column: 24, scope: !2693)
!2716 = !DILocation(line: 874, column: 17, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2693, file: !515, line: 874, column: 7)
!2718 = !DILocation(line: 875, column: 5, scope: !2717)
!2719 = !DILocation(line: 877, column: 7, scope: !2706)
!2720 = !DILocation(line: 877, column: 14, scope: !2706)
!2721 = !DILocation(line: 877, column: 7, scope: !2693)
!2722 = !DILocation(line: 879, column: 31, scope: !2705)
!2723 = !DILocation(line: 0, scope: !2705)
!2724 = !DILocation(line: 880, column: 7, scope: !2705)
!2725 = !DILocation(line: 880, column: 26, scope: !2705)
!2726 = !DILocation(line: 880, column: 13, scope: !2705)
!2727 = !DILocation(line: 882, column: 31, scope: !2705)
!2728 = !DILocation(line: 883, column: 33, scope: !2705)
!2729 = !DILocation(line: 883, column: 42, scope: !2705)
!2730 = !DILocation(line: 883, column: 31, scope: !2705)
!2731 = !DILocation(line: 882, column: 22, scope: !2705)
!2732 = !DILocation(line: 882, column: 15, scope: !2705)
!2733 = !DILocation(line: 884, column: 11, scope: !2705)
!2734 = !DILocation(line: 885, column: 15, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2705, file: !515, line: 884, column: 11)
!2736 = !{i64 0, i64 8, !1390, i64 8, i64 8, !813}
!2737 = !DILocation(line: 885, column: 9, scope: !2735)
!2738 = !DILocation(line: 886, column: 20, scope: !2705)
!2739 = !DILocation(line: 886, column: 18, scope: !2705)
!2740 = !DILocation(line: 886, column: 32, scope: !2705)
!2741 = !DILocation(line: 886, column: 43, scope: !2705)
!2742 = !DILocation(line: 886, column: 53, scope: !2705)
!2743 = !DILocation(line: 0, scope: !2118, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 886, column: 7, scope: !2705)
!2745 = !DILocation(line: 59, column: 10, scope: !2118, inlinedAt: !2744)
!2746 = !DILocation(line: 887, column: 16, scope: !2705)
!2747 = !DILocation(line: 887, column: 14, scope: !2705)
!2748 = !DILocation(line: 888, column: 5, scope: !2706)
!2749 = !DILocation(line: 888, column: 5, scope: !2705)
!2750 = !DILocation(line: 891, column: 19, scope: !2709)
!2751 = !DILocation(line: 891, column: 25, scope: !2709)
!2752 = !DILocation(line: 0, scope: !2709)
!2753 = !DILocation(line: 892, column: 23, scope: !2709)
!2754 = !DILocation(line: 894, column: 26, scope: !2709)
!2755 = !DILocation(line: 894, column: 32, scope: !2709)
!2756 = !DILocation(line: 896, column: 55, scope: !2709)
!2757 = !DILocation(line: 897, column: 55, scope: !2709)
!2758 = !DILocation(line: 898, column: 55, scope: !2709)
!2759 = !DILocation(line: 899, column: 55, scope: !2709)
!2760 = !DILocation(line: 895, column: 20, scope: !2709)
!2761 = !DILocation(line: 901, column: 14, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2709, file: !515, line: 901, column: 9)
!2763 = !DILocation(line: 901, column: 9, scope: !2709)
!2764 = !DILocation(line: 903, column: 35, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2762, file: !515, line: 902, column: 7)
!2766 = !DILocation(line: 903, column: 20, scope: !2765)
!2767 = !DILocation(line: 904, column: 17, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2765, file: !515, line: 904, column: 13)
!2769 = !DILocation(line: 904, column: 13, scope: !2765)
!2770 = !DILocation(line: 905, column: 11, scope: !2768)
!2771 = !DILocation(line: 906, column: 27, scope: !2765)
!2772 = !DILocation(line: 906, column: 19, scope: !2765)
!2773 = !DILocation(line: 907, column: 69, scope: !2765)
!2774 = !DILocation(line: 909, column: 44, scope: !2765)
!2775 = !DILocation(line: 910, column: 44, scope: !2765)
!2776 = !DILocation(line: 907, column: 9, scope: !2765)
!2777 = !DILocation(line: 911, column: 7, scope: !2765)
!2778 = !DILocation(line: 913, column: 11, scope: !2709)
!2779 = !DILocation(line: 914, column: 5, scope: !2709)
!2780 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !515, file: !515, line: 925, type: !2781, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!122, !83, !127, !124}
!2783 = !{!2784, !2785, !2786}
!2784 = !DILocalVariable(name: "n", arg: 1, scope: !2780, file: !515, line: 925, type: !83)
!2785 = !DILocalVariable(name: "arg", arg: 2, scope: !2780, file: !515, line: 925, type: !127)
!2786 = !DILocalVariable(name: "argsize", arg: 3, scope: !2780, file: !515, line: 925, type: !124)
!2787 = !DILocation(line: 0, scope: !2780)
!2788 = !DILocation(line: 927, column: 10, scope: !2780)
!2789 = !DILocation(line: 927, column: 3, scope: !2780)
!2790 = distinct !DISubprogram(name: "quotearg", scope: !515, file: !515, line: 931, type: !1005, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2791)
!2791 = !{!2792}
!2792 = !DILocalVariable(name: "arg", arg: 1, scope: !2790, file: !515, line: 931, type: !127)
!2793 = !DILocation(line: 0, scope: !2790)
!2794 = !DILocation(line: 0, scope: !2686, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 933, column: 10, scope: !2790)
!2796 = !DILocation(line: 921, column: 10, scope: !2686, inlinedAt: !2795)
!2797 = !DILocation(line: 933, column: 3, scope: !2790)
!2798 = distinct !DISubprogram(name: "quotearg_mem", scope: !515, file: !515, line: 937, type: !2799, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!122, !127, !124}
!2801 = !{!2802, !2803}
!2802 = !DILocalVariable(name: "arg", arg: 1, scope: !2798, file: !515, line: 937, type: !127)
!2803 = !DILocalVariable(name: "argsize", arg: 2, scope: !2798, file: !515, line: 937, type: !124)
!2804 = !DILocation(line: 0, scope: !2798)
!2805 = !DILocation(line: 0, scope: !2780, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 939, column: 10, scope: !2798)
!2807 = !DILocation(line: 927, column: 10, scope: !2780, inlinedAt: !2806)
!2808 = !DILocation(line: 939, column: 3, scope: !2798)
!2809 = distinct !DISubprogram(name: "quotearg_n_style", scope: !515, file: !515, line: 943, type: !2810, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!122, !83, !103, !127}
!2812 = !{!2813, !2814, !2815, !2816}
!2813 = !DILocalVariable(name: "n", arg: 1, scope: !2809, file: !515, line: 943, type: !83)
!2814 = !DILocalVariable(name: "s", arg: 2, scope: !2809, file: !515, line: 943, type: !103)
!2815 = !DILocalVariable(name: "arg", arg: 3, scope: !2809, file: !515, line: 943, type: !127)
!2816 = !DILocalVariable(name: "o", scope: !2809, file: !515, line: 945, type: !1904)
!2817 = !DILocation(line: 0, scope: !2809)
!2818 = !DILocation(line: 945, column: 3, scope: !2809)
!2819 = !DILocation(line: 945, column: 32, scope: !2809)
!2820 = !{!2821}
!2821 = distinct !{!2821, !2822, !"quoting_options_from_style: argument 0"}
!2822 = distinct !{!2822, !"quoting_options_from_style"}
!2823 = !DILocation(line: 945, column: 36, scope: !2809)
!2824 = !DILocalVariable(name: "style", arg: 1, scope: !2825, file: !515, line: 183, type: !103)
!2825 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !515, file: !515, line: 183, type: !2826, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2828)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!551, !103}
!2828 = !{!2824, !2829}
!2829 = !DILocalVariable(name: "o", scope: !2825, file: !515, line: 185, type: !551)
!2830 = !DILocation(line: 0, scope: !2825, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 945, column: 36, scope: !2809)
!2832 = !DILocation(line: 185, column: 26, scope: !2825, inlinedAt: !2831)
!2833 = !DILocation(line: 186, column: 13, scope: !2834, inlinedAt: !2831)
!2834 = distinct !DILexicalBlock(scope: !2825, file: !515, line: 186, column: 7)
!2835 = !DILocation(line: 186, column: 7, scope: !2825, inlinedAt: !2831)
!2836 = !DILocation(line: 187, column: 5, scope: !2834, inlinedAt: !2831)
!2837 = !DILocation(line: 188, column: 11, scope: !2825, inlinedAt: !2831)
!2838 = !DILocation(line: 946, column: 10, scope: !2809)
!2839 = !DILocation(line: 947, column: 1, scope: !2809)
!2840 = !DILocation(line: 946, column: 3, scope: !2809)
!2841 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !515, file: !515, line: 950, type: !2842, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!122, !83, !103, !127, !124}
!2844 = !{!2845, !2846, !2847, !2848, !2849}
!2845 = !DILocalVariable(name: "n", arg: 1, scope: !2841, file: !515, line: 950, type: !83)
!2846 = !DILocalVariable(name: "s", arg: 2, scope: !2841, file: !515, line: 950, type: !103)
!2847 = !DILocalVariable(name: "arg", arg: 3, scope: !2841, file: !515, line: 951, type: !127)
!2848 = !DILocalVariable(name: "argsize", arg: 4, scope: !2841, file: !515, line: 951, type: !124)
!2849 = !DILocalVariable(name: "o", scope: !2841, file: !515, line: 953, type: !1904)
!2850 = !DILocation(line: 0, scope: !2841)
!2851 = !DILocation(line: 953, column: 3, scope: !2841)
!2852 = !DILocation(line: 953, column: 32, scope: !2841)
!2853 = !{!2854}
!2854 = distinct !{!2854, !2855, !"quoting_options_from_style: argument 0"}
!2855 = distinct !{!2855, !"quoting_options_from_style"}
!2856 = !DILocation(line: 953, column: 36, scope: !2841)
!2857 = !DILocation(line: 0, scope: !2825, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 953, column: 36, scope: !2841)
!2859 = !DILocation(line: 185, column: 26, scope: !2825, inlinedAt: !2858)
!2860 = !DILocation(line: 186, column: 13, scope: !2834, inlinedAt: !2858)
!2861 = !DILocation(line: 186, column: 7, scope: !2825, inlinedAt: !2858)
!2862 = !DILocation(line: 187, column: 5, scope: !2834, inlinedAt: !2858)
!2863 = !DILocation(line: 188, column: 11, scope: !2825, inlinedAt: !2858)
!2864 = !DILocation(line: 954, column: 10, scope: !2841)
!2865 = !DILocation(line: 955, column: 1, scope: !2841)
!2866 = !DILocation(line: 954, column: 3, scope: !2841)
!2867 = distinct !DISubprogram(name: "quotearg_style", scope: !515, file: !515, line: 958, type: !2868, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!122, !103, !127}
!2870 = !{!2871, !2872}
!2871 = !DILocalVariable(name: "s", arg: 1, scope: !2867, file: !515, line: 958, type: !103)
!2872 = !DILocalVariable(name: "arg", arg: 2, scope: !2867, file: !515, line: 958, type: !127)
!2873 = !DILocation(line: 0, scope: !2867)
!2874 = !DILocation(line: 0, scope: !2809, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 960, column: 10, scope: !2867)
!2876 = !DILocation(line: 945, column: 3, scope: !2809, inlinedAt: !2875)
!2877 = !DILocation(line: 945, column: 32, scope: !2809, inlinedAt: !2875)
!2878 = !{!2879}
!2879 = distinct !{!2879, !2880, !"quoting_options_from_style: argument 0"}
!2880 = distinct !{!2880, !"quoting_options_from_style"}
!2881 = !DILocation(line: 945, column: 36, scope: !2809, inlinedAt: !2875)
!2882 = !DILocation(line: 0, scope: !2825, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 945, column: 36, scope: !2809, inlinedAt: !2875)
!2884 = !DILocation(line: 185, column: 26, scope: !2825, inlinedAt: !2883)
!2885 = !DILocation(line: 186, column: 13, scope: !2834, inlinedAt: !2883)
!2886 = !DILocation(line: 186, column: 7, scope: !2825, inlinedAt: !2883)
!2887 = !DILocation(line: 187, column: 5, scope: !2834, inlinedAt: !2883)
!2888 = !DILocation(line: 188, column: 11, scope: !2825, inlinedAt: !2883)
!2889 = !DILocation(line: 946, column: 10, scope: !2809, inlinedAt: !2875)
!2890 = !DILocation(line: 947, column: 1, scope: !2809, inlinedAt: !2875)
!2891 = !DILocation(line: 960, column: 3, scope: !2867)
!2892 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !515, file: !515, line: 964, type: !2893, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!122, !103, !127, !124}
!2895 = !{!2896, !2897, !2898}
!2896 = !DILocalVariable(name: "s", arg: 1, scope: !2892, file: !515, line: 964, type: !103)
!2897 = !DILocalVariable(name: "arg", arg: 2, scope: !2892, file: !515, line: 964, type: !127)
!2898 = !DILocalVariable(name: "argsize", arg: 3, scope: !2892, file: !515, line: 964, type: !124)
!2899 = !DILocation(line: 0, scope: !2892)
!2900 = !DILocation(line: 0, scope: !2841, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 966, column: 10, scope: !2892)
!2902 = !DILocation(line: 953, column: 3, scope: !2841, inlinedAt: !2901)
!2903 = !DILocation(line: 953, column: 32, scope: !2841, inlinedAt: !2901)
!2904 = !{!2905}
!2905 = distinct !{!2905, !2906, !"quoting_options_from_style: argument 0"}
!2906 = distinct !{!2906, !"quoting_options_from_style"}
!2907 = !DILocation(line: 953, column: 36, scope: !2841, inlinedAt: !2901)
!2908 = !DILocation(line: 0, scope: !2825, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 953, column: 36, scope: !2841, inlinedAt: !2901)
!2910 = !DILocation(line: 185, column: 26, scope: !2825, inlinedAt: !2909)
!2911 = !DILocation(line: 186, column: 13, scope: !2834, inlinedAt: !2909)
!2912 = !DILocation(line: 186, column: 7, scope: !2825, inlinedAt: !2909)
!2913 = !DILocation(line: 187, column: 5, scope: !2834, inlinedAt: !2909)
!2914 = !DILocation(line: 188, column: 11, scope: !2825, inlinedAt: !2909)
!2915 = !DILocation(line: 954, column: 10, scope: !2841, inlinedAt: !2901)
!2916 = !DILocation(line: 955, column: 1, scope: !2841, inlinedAt: !2901)
!2917 = !DILocation(line: 966, column: 3, scope: !2892)
!2918 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !515, file: !515, line: 970, type: !2919, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!122, !127, !124, !4}
!2921 = !{!2922, !2923, !2924, !2925}
!2922 = !DILocalVariable(name: "arg", arg: 1, scope: !2918, file: !515, line: 970, type: !127)
!2923 = !DILocalVariable(name: "argsize", arg: 2, scope: !2918, file: !515, line: 970, type: !124)
!2924 = !DILocalVariable(name: "ch", arg: 3, scope: !2918, file: !515, line: 970, type: !4)
!2925 = !DILocalVariable(name: "options", scope: !2918, file: !515, line: 972, type: !551)
!2926 = !DILocation(line: 0, scope: !2918)
!2927 = !DILocation(line: 972, column: 3, scope: !2918)
!2928 = !DILocation(line: 972, column: 26, scope: !2918)
!2929 = !DILocation(line: 973, column: 13, scope: !2918)
!2930 = !{i64 0, i64 4, !887, i64 4, i64 4, !878, i64 8, i64 32, !887, i64 40, i64 8, !813, i64 48, i64 8, !813}
!2931 = !DILocation(line: 0, scope: !1923, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 974, column: 3, scope: !2918)
!2933 = !DILocation(line: 147, column: 41, scope: !1923, inlinedAt: !2932)
!2934 = !DILocation(line: 147, column: 62, scope: !1923, inlinedAt: !2932)
!2935 = !DILocation(line: 147, column: 57, scope: !1923, inlinedAt: !2932)
!2936 = !DILocation(line: 148, column: 15, scope: !1923, inlinedAt: !2932)
!2937 = !DILocation(line: 149, column: 21, scope: !1923, inlinedAt: !2932)
!2938 = !DILocation(line: 149, column: 24, scope: !1923, inlinedAt: !2932)
!2939 = !DILocation(line: 150, column: 19, scope: !1923, inlinedAt: !2932)
!2940 = !DILocation(line: 150, column: 24, scope: !1923, inlinedAt: !2932)
!2941 = !DILocation(line: 150, column: 6, scope: !1923, inlinedAt: !2932)
!2942 = !DILocation(line: 975, column: 10, scope: !2918)
!2943 = !DILocation(line: 976, column: 1, scope: !2918)
!2944 = !DILocation(line: 975, column: 3, scope: !2918)
!2945 = distinct !DISubprogram(name: "quotearg_char", scope: !515, file: !515, line: 979, type: !2946, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2948)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!122, !127, !4}
!2948 = !{!2949, !2950}
!2949 = !DILocalVariable(name: "arg", arg: 1, scope: !2945, file: !515, line: 979, type: !127)
!2950 = !DILocalVariable(name: "ch", arg: 2, scope: !2945, file: !515, line: 979, type: !4)
!2951 = !DILocation(line: 0, scope: !2945)
!2952 = !DILocation(line: 0, scope: !2918, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 981, column: 10, scope: !2945)
!2954 = !DILocation(line: 972, column: 3, scope: !2918, inlinedAt: !2953)
!2955 = !DILocation(line: 972, column: 26, scope: !2918, inlinedAt: !2953)
!2956 = !DILocation(line: 973, column: 13, scope: !2918, inlinedAt: !2953)
!2957 = !DILocation(line: 0, scope: !1923, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 974, column: 3, scope: !2918, inlinedAt: !2953)
!2959 = !DILocation(line: 147, column: 41, scope: !1923, inlinedAt: !2958)
!2960 = !DILocation(line: 147, column: 62, scope: !1923, inlinedAt: !2958)
!2961 = !DILocation(line: 147, column: 57, scope: !1923, inlinedAt: !2958)
!2962 = !DILocation(line: 148, column: 15, scope: !1923, inlinedAt: !2958)
!2963 = !DILocation(line: 149, column: 21, scope: !1923, inlinedAt: !2958)
!2964 = !DILocation(line: 149, column: 24, scope: !1923, inlinedAt: !2958)
!2965 = !DILocation(line: 150, column: 19, scope: !1923, inlinedAt: !2958)
!2966 = !DILocation(line: 150, column: 24, scope: !1923, inlinedAt: !2958)
!2967 = !DILocation(line: 150, column: 6, scope: !1923, inlinedAt: !2958)
!2968 = !DILocation(line: 975, column: 10, scope: !2918, inlinedAt: !2953)
!2969 = !DILocation(line: 976, column: 1, scope: !2918, inlinedAt: !2953)
!2970 = !DILocation(line: 981, column: 3, scope: !2945)
!2971 = distinct !DISubprogram(name: "quotearg_colon", scope: !515, file: !515, line: 985, type: !1005, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2972)
!2972 = !{!2973}
!2973 = !DILocalVariable(name: "arg", arg: 1, scope: !2971, file: !515, line: 985, type: !127)
!2974 = !DILocation(line: 0, scope: !2971)
!2975 = !DILocation(line: 0, scope: !2945, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 987, column: 10, scope: !2971)
!2977 = !DILocation(line: 0, scope: !2918, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 981, column: 10, scope: !2945, inlinedAt: !2976)
!2979 = !DILocation(line: 972, column: 3, scope: !2918, inlinedAt: !2978)
!2980 = !DILocation(line: 972, column: 26, scope: !2918, inlinedAt: !2978)
!2981 = !DILocation(line: 973, column: 13, scope: !2918, inlinedAt: !2978)
!2982 = !DILocation(line: 0, scope: !1923, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 974, column: 3, scope: !2918, inlinedAt: !2978)
!2984 = !DILocation(line: 147, column: 57, scope: !1923, inlinedAt: !2983)
!2985 = !DILocation(line: 149, column: 21, scope: !1923, inlinedAt: !2983)
!2986 = !DILocation(line: 150, column: 6, scope: !1923, inlinedAt: !2983)
!2987 = !DILocation(line: 975, column: 10, scope: !2918, inlinedAt: !2978)
!2988 = !DILocation(line: 976, column: 1, scope: !2918, inlinedAt: !2978)
!2989 = !DILocation(line: 987, column: 3, scope: !2971)
!2990 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !515, file: !515, line: 991, type: !2799, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !2991)
!2991 = !{!2992, !2993}
!2992 = !DILocalVariable(name: "arg", arg: 1, scope: !2990, file: !515, line: 991, type: !127)
!2993 = !DILocalVariable(name: "argsize", arg: 2, scope: !2990, file: !515, line: 991, type: !124)
!2994 = !DILocation(line: 0, scope: !2990)
!2995 = !DILocation(line: 0, scope: !2918, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 993, column: 10, scope: !2990)
!2997 = !DILocation(line: 972, column: 3, scope: !2918, inlinedAt: !2996)
!2998 = !DILocation(line: 972, column: 26, scope: !2918, inlinedAt: !2996)
!2999 = !DILocation(line: 973, column: 13, scope: !2918, inlinedAt: !2996)
!3000 = !DILocation(line: 0, scope: !1923, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 974, column: 3, scope: !2918, inlinedAt: !2996)
!3002 = !DILocation(line: 147, column: 57, scope: !1923, inlinedAt: !3001)
!3003 = !DILocation(line: 149, column: 21, scope: !1923, inlinedAt: !3001)
!3004 = !DILocation(line: 150, column: 6, scope: !1923, inlinedAt: !3001)
!3005 = !DILocation(line: 975, column: 10, scope: !2918, inlinedAt: !2996)
!3006 = !DILocation(line: 976, column: 1, scope: !2918, inlinedAt: !2996)
!3007 = !DILocation(line: 993, column: 3, scope: !2990)
!3008 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !515, file: !515, line: 997, type: !2810, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !3009)
!3009 = !{!3010, !3011, !3012, !3013}
!3010 = !DILocalVariable(name: "n", arg: 1, scope: !3008, file: !515, line: 997, type: !83)
!3011 = !DILocalVariable(name: "s", arg: 2, scope: !3008, file: !515, line: 997, type: !103)
!3012 = !DILocalVariable(name: "arg", arg: 3, scope: !3008, file: !515, line: 997, type: !127)
!3013 = !DILocalVariable(name: "options", scope: !3008, file: !515, line: 999, type: !551)
!3014 = !DILocation(line: 185, column: 26, scope: !2825, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 1000, column: 13, scope: !3008)
!3016 = !DILocation(line: 0, scope: !3008)
!3017 = !DILocation(line: 999, column: 3, scope: !3008)
!3018 = !DILocation(line: 999, column: 26, scope: !3008)
!3019 = !DILocation(line: 0, scope: !2825, inlinedAt: !3015)
!3020 = !DILocation(line: 186, column: 13, scope: !2834, inlinedAt: !3015)
!3021 = !DILocation(line: 186, column: 7, scope: !2825, inlinedAt: !3015)
!3022 = !DILocation(line: 187, column: 5, scope: !2834, inlinedAt: !3015)
!3023 = !{!3024}
!3024 = distinct !{!3024, !3025, !"quoting_options_from_style: argument 0"}
!3025 = distinct !{!3025, !"quoting_options_from_style"}
!3026 = !DILocation(line: 1000, column: 13, scope: !3008)
!3027 = !DILocation(line: 0, scope: !1923, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 1001, column: 3, scope: !3008)
!3029 = !DILocation(line: 147, column: 57, scope: !1923, inlinedAt: !3028)
!3030 = !DILocation(line: 149, column: 21, scope: !1923, inlinedAt: !3028)
!3031 = !DILocation(line: 150, column: 6, scope: !1923, inlinedAt: !3028)
!3032 = !DILocation(line: 1002, column: 10, scope: !3008)
!3033 = !DILocation(line: 1003, column: 1, scope: !3008)
!3034 = !DILocation(line: 1002, column: 3, scope: !3008)
!3035 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !515, file: !515, line: 1006, type: !3036, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!122, !83, !127, !127, !127}
!3038 = !{!3039, !3040, !3041, !3042}
!3039 = !DILocalVariable(name: "n", arg: 1, scope: !3035, file: !515, line: 1006, type: !83)
!3040 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3035, file: !515, line: 1006, type: !127)
!3041 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3035, file: !515, line: 1007, type: !127)
!3042 = !DILocalVariable(name: "arg", arg: 4, scope: !3035, file: !515, line: 1007, type: !127)
!3043 = !DILocation(line: 0, scope: !3035)
!3044 = !DILocalVariable(name: "n", arg: 1, scope: !3045, file: !515, line: 1014, type: !83)
!3045 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !515, file: !515, line: 1014, type: !3046, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!122, !83, !127, !127, !127, !124}
!3048 = !{!3044, !3049, !3050, !3051, !3052, !3053}
!3049 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3045, file: !515, line: 1014, type: !127)
!3050 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3045, file: !515, line: 1015, type: !127)
!3051 = !DILocalVariable(name: "arg", arg: 4, scope: !3045, file: !515, line: 1016, type: !127)
!3052 = !DILocalVariable(name: "argsize", arg: 5, scope: !3045, file: !515, line: 1016, type: !124)
!3053 = !DILocalVariable(name: "o", scope: !3045, file: !515, line: 1018, type: !551)
!3054 = !DILocation(line: 0, scope: !3045, inlinedAt: !3055)
!3055 = distinct !DILocation(line: 1009, column: 10, scope: !3035)
!3056 = !DILocation(line: 1018, column: 3, scope: !3045, inlinedAt: !3055)
!3057 = !DILocation(line: 1018, column: 26, scope: !3045, inlinedAt: !3055)
!3058 = !DILocation(line: 1018, column: 30, scope: !3045, inlinedAt: !3055)
!3059 = !DILocation(line: 0, scope: !1963, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 1019, column: 3, scope: !3045, inlinedAt: !3055)
!3061 = !DILocation(line: 174, column: 12, scope: !1963, inlinedAt: !3060)
!3062 = !DILocation(line: 175, column: 8, scope: !1976, inlinedAt: !3060)
!3063 = !DILocation(line: 175, column: 19, scope: !1976, inlinedAt: !3060)
!3064 = !DILocation(line: 176, column: 5, scope: !1976, inlinedAt: !3060)
!3065 = !DILocation(line: 177, column: 6, scope: !1963, inlinedAt: !3060)
!3066 = !DILocation(line: 177, column: 17, scope: !1963, inlinedAt: !3060)
!3067 = !DILocation(line: 178, column: 6, scope: !1963, inlinedAt: !3060)
!3068 = !DILocation(line: 178, column: 18, scope: !1963, inlinedAt: !3060)
!3069 = !DILocation(line: 1020, column: 10, scope: !3045, inlinedAt: !3055)
!3070 = !DILocation(line: 1021, column: 1, scope: !3045, inlinedAt: !3055)
!3071 = !DILocation(line: 1009, column: 3, scope: !3035)
!3072 = !DILocation(line: 0, scope: !3045)
!3073 = !DILocation(line: 1018, column: 3, scope: !3045)
!3074 = !DILocation(line: 1018, column: 26, scope: !3045)
!3075 = !DILocation(line: 1018, column: 30, scope: !3045)
!3076 = !DILocation(line: 0, scope: !1963, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 1019, column: 3, scope: !3045)
!3078 = !DILocation(line: 174, column: 12, scope: !1963, inlinedAt: !3077)
!3079 = !DILocation(line: 175, column: 8, scope: !1976, inlinedAt: !3077)
!3080 = !DILocation(line: 175, column: 19, scope: !1976, inlinedAt: !3077)
!3081 = !DILocation(line: 176, column: 5, scope: !1976, inlinedAt: !3077)
!3082 = !DILocation(line: 177, column: 6, scope: !1963, inlinedAt: !3077)
!3083 = !DILocation(line: 177, column: 17, scope: !1963, inlinedAt: !3077)
!3084 = !DILocation(line: 178, column: 6, scope: !1963, inlinedAt: !3077)
!3085 = !DILocation(line: 178, column: 18, scope: !1963, inlinedAt: !3077)
!3086 = !DILocation(line: 1020, column: 10, scope: !3045)
!3087 = !DILocation(line: 1021, column: 1, scope: !3045)
!3088 = !DILocation(line: 1020, column: 3, scope: !3045)
!3089 = distinct !DISubprogram(name: "quotearg_custom", scope: !515, file: !515, line: 1024, type: !3090, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !3092)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!122, !127, !127, !127}
!3092 = !{!3093, !3094, !3095}
!3093 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3089, file: !515, line: 1024, type: !127)
!3094 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3089, file: !515, line: 1024, type: !127)
!3095 = !DILocalVariable(name: "arg", arg: 3, scope: !3089, file: !515, line: 1025, type: !127)
!3096 = !DILocation(line: 0, scope: !3089)
!3097 = !DILocation(line: 0, scope: !3035, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 1027, column: 10, scope: !3089)
!3099 = !DILocation(line: 0, scope: !3045, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 1009, column: 10, scope: !3035, inlinedAt: !3098)
!3101 = !DILocation(line: 1018, column: 3, scope: !3045, inlinedAt: !3100)
!3102 = !DILocation(line: 1018, column: 26, scope: !3045, inlinedAt: !3100)
!3103 = !DILocation(line: 1018, column: 30, scope: !3045, inlinedAt: !3100)
!3104 = !DILocation(line: 0, scope: !1963, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 1019, column: 3, scope: !3045, inlinedAt: !3100)
!3106 = !DILocation(line: 174, column: 12, scope: !1963, inlinedAt: !3105)
!3107 = !DILocation(line: 175, column: 8, scope: !1976, inlinedAt: !3105)
!3108 = !DILocation(line: 175, column: 19, scope: !1976, inlinedAt: !3105)
!3109 = !DILocation(line: 176, column: 5, scope: !1976, inlinedAt: !3105)
!3110 = !DILocation(line: 177, column: 6, scope: !1963, inlinedAt: !3105)
!3111 = !DILocation(line: 177, column: 17, scope: !1963, inlinedAt: !3105)
!3112 = !DILocation(line: 178, column: 6, scope: !1963, inlinedAt: !3105)
!3113 = !DILocation(line: 178, column: 18, scope: !1963, inlinedAt: !3105)
!3114 = !DILocation(line: 1020, column: 10, scope: !3045, inlinedAt: !3100)
!3115 = !DILocation(line: 1021, column: 1, scope: !3045, inlinedAt: !3100)
!3116 = !DILocation(line: 1027, column: 3, scope: !3089)
!3117 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !515, file: !515, line: 1031, type: !3118, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!122, !127, !127, !127, !124}
!3120 = !{!3121, !3122, !3123, !3124}
!3121 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3117, file: !515, line: 1031, type: !127)
!3122 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3117, file: !515, line: 1031, type: !127)
!3123 = !DILocalVariable(name: "arg", arg: 3, scope: !3117, file: !515, line: 1032, type: !127)
!3124 = !DILocalVariable(name: "argsize", arg: 4, scope: !3117, file: !515, line: 1032, type: !124)
!3125 = !DILocation(line: 0, scope: !3117)
!3126 = !DILocation(line: 0, scope: !3045, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 1034, column: 10, scope: !3117)
!3128 = !DILocation(line: 1018, column: 3, scope: !3045, inlinedAt: !3127)
!3129 = !DILocation(line: 1018, column: 26, scope: !3045, inlinedAt: !3127)
!3130 = !DILocation(line: 1018, column: 30, scope: !3045, inlinedAt: !3127)
!3131 = !DILocation(line: 0, scope: !1963, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 1019, column: 3, scope: !3045, inlinedAt: !3127)
!3133 = !DILocation(line: 174, column: 12, scope: !1963, inlinedAt: !3132)
!3134 = !DILocation(line: 175, column: 8, scope: !1976, inlinedAt: !3132)
!3135 = !DILocation(line: 175, column: 19, scope: !1976, inlinedAt: !3132)
!3136 = !DILocation(line: 176, column: 5, scope: !1976, inlinedAt: !3132)
!3137 = !DILocation(line: 177, column: 6, scope: !1963, inlinedAt: !3132)
!3138 = !DILocation(line: 177, column: 17, scope: !1963, inlinedAt: !3132)
!3139 = !DILocation(line: 178, column: 6, scope: !1963, inlinedAt: !3132)
!3140 = !DILocation(line: 178, column: 18, scope: !1963, inlinedAt: !3132)
!3141 = !DILocation(line: 1020, column: 10, scope: !3045, inlinedAt: !3127)
!3142 = !DILocation(line: 1021, column: 1, scope: !3045, inlinedAt: !3127)
!3143 = !DILocation(line: 1034, column: 3, scope: !3117)
!3144 = distinct !DISubprogram(name: "quote_n_mem", scope: !515, file: !515, line: 1049, type: !3145, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !3147)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!127, !83, !127, !124}
!3147 = !{!3148, !3149, !3150}
!3148 = !DILocalVariable(name: "n", arg: 1, scope: !3144, file: !515, line: 1049, type: !83)
!3149 = !DILocalVariable(name: "arg", arg: 2, scope: !3144, file: !515, line: 1049, type: !127)
!3150 = !DILocalVariable(name: "argsize", arg: 3, scope: !3144, file: !515, line: 1049, type: !124)
!3151 = !DILocation(line: 0, scope: !3144)
!3152 = !DILocation(line: 1051, column: 10, scope: !3144)
!3153 = !DILocation(line: 1051, column: 3, scope: !3144)
!3154 = distinct !DISubprogram(name: "quote_mem", scope: !515, file: !515, line: 1055, type: !3155, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !3157)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!127, !127, !124}
!3157 = !{!3158, !3159}
!3158 = !DILocalVariable(name: "arg", arg: 1, scope: !3154, file: !515, line: 1055, type: !127)
!3159 = !DILocalVariable(name: "argsize", arg: 2, scope: !3154, file: !515, line: 1055, type: !124)
!3160 = !DILocation(line: 0, scope: !3154)
!3161 = !DILocation(line: 0, scope: !3144, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 1057, column: 10, scope: !3154)
!3163 = !DILocation(line: 1051, column: 10, scope: !3144, inlinedAt: !3162)
!3164 = !DILocation(line: 1057, column: 3, scope: !3154)
!3165 = distinct !DISubprogram(name: "quote_n", scope: !515, file: !515, line: 1061, type: !3166, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!127, !83, !127}
!3168 = !{!3169, !3170}
!3169 = !DILocalVariable(name: "n", arg: 1, scope: !3165, file: !515, line: 1061, type: !83)
!3170 = !DILocalVariable(name: "arg", arg: 2, scope: !3165, file: !515, line: 1061, type: !127)
!3171 = !DILocation(line: 0, scope: !3165)
!3172 = !DILocation(line: 0, scope: !3144, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 1063, column: 10, scope: !3165)
!3174 = !DILocation(line: 1051, column: 10, scope: !3144, inlinedAt: !3173)
!3175 = !DILocation(line: 1063, column: 3, scope: !3165)
!3176 = distinct !DISubprogram(name: "quote", scope: !515, file: !515, line: 1067, type: !3177, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !3179)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!127, !127}
!3179 = !{!3180}
!3180 = !DILocalVariable(name: "arg", arg: 1, scope: !3176, file: !515, line: 1067, type: !127)
!3181 = !DILocation(line: 0, scope: !3176)
!3182 = !DILocation(line: 0, scope: !3165, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 1069, column: 10, scope: !3176)
!3184 = !DILocation(line: 0, scope: !3144, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 1063, column: 10, scope: !3165, inlinedAt: !3183)
!3186 = !DILocation(line: 1051, column: 10, scope: !3144, inlinedAt: !3185)
!3187 = !DILocation(line: 1069, column: 3, scope: !3176)
!3188 = distinct !DISubprogram(name: "get_root_dev_ino", scope: !614, file: !614, line: 29, type: !3189, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3196)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!3191, !3191}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !1212, line: 30, size: 128, elements: !3193)
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3192, file: !1212, line: 32, baseType: !1215, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3192, file: !1212, line: 33, baseType: !1218, size: 64, offset: 64)
!3196 = !{!3197, !3198}
!3197 = !DILocalVariable(name: "root_d_i", arg: 1, scope: !3188, file: !614, line: 29, type: !3191)
!3198 = !DILocalVariable(name: "statbuf", scope: !3188, file: !614, line: 31, type: !3199)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1087, line: 26, size: 1152, elements: !3200)
!3200 = !{!3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3217, !3218, !3219}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3199, file: !1087, line: 31, baseType: !1090, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3199, file: !1087, line: 36, baseType: !1092, size: 64, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3199, file: !1087, line: 44, baseType: !1094, size: 64, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3199, file: !1087, line: 45, baseType: !1096, size: 32, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3199, file: !1087, line: 47, baseType: !1098, size: 32, offset: 224)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3199, file: !1087, line: 48, baseType: !1100, size: 32, offset: 256)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3199, file: !1087, line: 50, baseType: !83, size: 32, offset: 288)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3199, file: !1087, line: 52, baseType: !1090, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3199, file: !1087, line: 57, baseType: !197, size: 64, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3199, file: !1087, line: 61, baseType: !1105, size: 64, offset: 448)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3199, file: !1087, line: 63, baseType: !1107, size: 64, offset: 512)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3199, file: !1087, line: 74, baseType: !3213, size: 128, offset: 576)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1110, line: 11, size: 128, elements: !3214)
!3214 = !{!3215, !3216}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3213, file: !1110, line: 16, baseType: !1113, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3213, file: !1110, line: 21, baseType: !1115, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3199, file: !1087, line: 75, baseType: !3213, size: 128, offset: 704)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3199, file: !1087, line: 76, baseType: !3213, size: 128, offset: 832)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3199, file: !1087, line: 89, baseType: !1119, size: 192, offset: 960)
!3220 = !DILocation(line: 0, scope: !3188)
!3221 = !DILocation(line: 31, column: 3, scope: !3188)
!3222 = !DILocation(line: 31, column: 15, scope: !3188)
!3223 = !DILocation(line: 32, column: 7, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3188, file: !614, line: 32, column: 7)
!3225 = !DILocation(line: 32, column: 7, scope: !3188)
!3226 = !DILocation(line: 35, column: 30, scope: !3188)
!3227 = !DILocation(line: 34, column: 20, scope: !3188)
!3228 = !DILocation(line: 36, column: 3, scope: !3188)
!3229 = !DILocation(line: 37, column: 1, scope: !3188)
!3230 = distinct !DISubprogram(name: "version_etc_arn", scope: !617, file: !617, line: 61, type: !3231, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3268)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{null, !3233, !127, !127, !127, !3267, !124}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !3235)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3235, file: !175, line: 51, baseType: !83, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3235, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3235, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3235, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3235, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3235, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3235, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3235, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3235, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3235, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3235, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3235, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3235, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3235, file: !175, line: 70, baseType: !3251, size: 64, offset: 832)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3235, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3235, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3235, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3235, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3235, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3235, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3235, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3235, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3235, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3235, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3235, file: !175, line: 93, baseType: !3251, size: 64, offset: 1344)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3235, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3235, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3235, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3235, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!3268 = !{!3269, !3270, !3271, !3272, !3273, !3274}
!3269 = !DILocalVariable(name: "stream", arg: 1, scope: !3230, file: !617, line: 61, type: !3233)
!3270 = !DILocalVariable(name: "command_name", arg: 2, scope: !3230, file: !617, line: 62, type: !127)
!3271 = !DILocalVariable(name: "package", arg: 3, scope: !3230, file: !617, line: 62, type: !127)
!3272 = !DILocalVariable(name: "version", arg: 4, scope: !3230, file: !617, line: 63, type: !127)
!3273 = !DILocalVariable(name: "authors", arg: 5, scope: !3230, file: !617, line: 64, type: !3267)
!3274 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3230, file: !617, line: 64, type: !124)
!3275 = !DILocation(line: 0, scope: !3230)
!3276 = !DILocation(line: 66, column: 7, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3230, file: !617, line: 66, column: 7)
!3278 = !DILocation(line: 66, column: 7, scope: !3230)
!3279 = !DILocation(line: 67, column: 5, scope: !3277)
!3280 = !DILocation(line: 69, column: 5, scope: !3277)
!3281 = !DILocation(line: 83, column: 3, scope: !3230)
!3282 = !DILocation(line: 85, column: 3, scope: !3230)
!3283 = !DILocation(line: 88, column: 3, scope: !3230)
!3284 = !DILocation(line: 95, column: 3, scope: !3230)
!3285 = !DILocation(line: 97, column: 3, scope: !3230)
!3286 = !DILocation(line: 105, column: 7, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3230, file: !617, line: 98, column: 5)
!3288 = !DILocation(line: 106, column: 7, scope: !3287)
!3289 = !DILocation(line: 109, column: 7, scope: !3287)
!3290 = !DILocation(line: 110, column: 7, scope: !3287)
!3291 = !DILocation(line: 113, column: 7, scope: !3287)
!3292 = !DILocation(line: 115, column: 7, scope: !3287)
!3293 = !DILocation(line: 120, column: 7, scope: !3287)
!3294 = !DILocation(line: 122, column: 7, scope: !3287)
!3295 = !DILocation(line: 127, column: 7, scope: !3287)
!3296 = !DILocation(line: 129, column: 7, scope: !3287)
!3297 = !DILocation(line: 134, column: 7, scope: !3287)
!3298 = !DILocation(line: 137, column: 7, scope: !3287)
!3299 = !DILocation(line: 142, column: 7, scope: !3287)
!3300 = !DILocation(line: 145, column: 7, scope: !3287)
!3301 = !DILocation(line: 150, column: 7, scope: !3287)
!3302 = !DILocation(line: 154, column: 7, scope: !3287)
!3303 = !DILocation(line: 159, column: 7, scope: !3287)
!3304 = !DILocation(line: 163, column: 7, scope: !3287)
!3305 = !DILocation(line: 170, column: 7, scope: !3287)
!3306 = !DILocation(line: 174, column: 7, scope: !3287)
!3307 = !DILocation(line: 176, column: 1, scope: !3230)
!3308 = distinct !DISubprogram(name: "version_etc_ar", scope: !617, file: !617, line: 183, type: !3309, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3311)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{null, !3233, !127, !127, !127, !3267}
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3317}
!3312 = !DILocalVariable(name: "stream", arg: 1, scope: !3308, file: !617, line: 183, type: !3233)
!3313 = !DILocalVariable(name: "command_name", arg: 2, scope: !3308, file: !617, line: 184, type: !127)
!3314 = !DILocalVariable(name: "package", arg: 3, scope: !3308, file: !617, line: 184, type: !127)
!3315 = !DILocalVariable(name: "version", arg: 4, scope: !3308, file: !617, line: 185, type: !127)
!3316 = !DILocalVariable(name: "authors", arg: 5, scope: !3308, file: !617, line: 185, type: !3267)
!3317 = !DILocalVariable(name: "n_authors", scope: !3308, file: !617, line: 187, type: !124)
!3318 = !DILocation(line: 0, scope: !3308)
!3319 = !DILocation(line: 189, column: 8, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3308, file: !617, line: 189, column: 3)
!3321 = !DILocation(line: 189, scope: !3320)
!3322 = !DILocation(line: 189, column: 23, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3320, file: !617, line: 189, column: 3)
!3324 = !DILocation(line: 189, column: 3, scope: !3320)
!3325 = !DILocation(line: 189, column: 52, scope: !3323)
!3326 = distinct !{!3326, !3324, !3327, !925}
!3327 = !DILocation(line: 190, column: 5, scope: !3320)
!3328 = !DILocation(line: 191, column: 3, scope: !3308)
!3329 = !DILocation(line: 192, column: 1, scope: !3308)
!3330 = distinct !DISubprogram(name: "version_etc_va", scope: !617, file: !617, line: 199, type: !3331, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3341)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{null, !3233, !127, !127, !127, !3333}
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3335)
!3335 = !{!3336, !3338, !3339, !3340}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3334, file: !3337, line: 192, baseType: !89, size: 32)
!3337 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3334, file: !3337, line: 192, baseType: !89, size: 32, offset: 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3334, file: !3337, line: 192, baseType: !121, size: 64, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3334, file: !3337, line: 192, baseType: !121, size: 64, offset: 128)
!3341 = !{!3342, !3343, !3344, !3345, !3346, !3347, !3348}
!3342 = !DILocalVariable(name: "stream", arg: 1, scope: !3330, file: !617, line: 199, type: !3233)
!3343 = !DILocalVariable(name: "command_name", arg: 2, scope: !3330, file: !617, line: 200, type: !127)
!3344 = !DILocalVariable(name: "package", arg: 3, scope: !3330, file: !617, line: 200, type: !127)
!3345 = !DILocalVariable(name: "version", arg: 4, scope: !3330, file: !617, line: 201, type: !127)
!3346 = !DILocalVariable(name: "authors", arg: 5, scope: !3330, file: !617, line: 201, type: !3333)
!3347 = !DILocalVariable(name: "n_authors", scope: !3330, file: !617, line: 203, type: !124)
!3348 = !DILocalVariable(name: "authtab", scope: !3330, file: !617, line: 204, type: !3349)
!3349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 640, elements: !65)
!3350 = !DILocation(line: 0, scope: !3330)
!3351 = !DILocation(line: 204, column: 3, scope: !3330)
!3352 = !DILocation(line: 204, column: 15, scope: !3330)
!3353 = !DILocation(line: 208, column: 35, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !617, line: 206, column: 3)
!3355 = distinct !DILexicalBlock(scope: !3330, file: !617, line: 206, column: 3)
!3356 = !DILocation(line: 208, column: 33, scope: !3354)
!3357 = !DILocation(line: 208, column: 67, scope: !3354)
!3358 = !DILocation(line: 206, column: 3, scope: !3355)
!3359 = !DILocation(line: 208, column: 14, scope: !3354)
!3360 = !DILocation(line: 0, scope: !3355)
!3361 = !DILocation(line: 211, column: 3, scope: !3330)
!3362 = !DILocation(line: 213, column: 1, scope: !3330)
!3363 = distinct !DISubprogram(name: "version_etc", scope: !617, file: !617, line: 230, type: !3364, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !3233, !127, !127, !127, null}
!3366 = !{!3367, !3368, !3369, !3370, !3371}
!3367 = !DILocalVariable(name: "stream", arg: 1, scope: !3363, file: !617, line: 230, type: !3233)
!3368 = !DILocalVariable(name: "command_name", arg: 2, scope: !3363, file: !617, line: 231, type: !127)
!3369 = !DILocalVariable(name: "package", arg: 3, scope: !3363, file: !617, line: 231, type: !127)
!3370 = !DILocalVariable(name: "version", arg: 4, scope: !3363, file: !617, line: 232, type: !127)
!3371 = !DILocalVariable(name: "authors", scope: !3363, file: !617, line: 234, type: !3372)
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !873, line: 52, baseType: !3373)
!3373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1753, line: 14, baseType: !3374)
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3337, baseType: !3375)
!3375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3334, size: 192, elements: !60)
!3376 = !DILocation(line: 0, scope: !3363)
!3377 = !DILocation(line: 234, column: 3, scope: !3363)
!3378 = !DILocation(line: 234, column: 11, scope: !3363)
!3379 = !DILocation(line: 235, column: 3, scope: !3363)
!3380 = !DILocation(line: 236, column: 3, scope: !3363)
!3381 = !DILocation(line: 237, column: 3, scope: !3363)
!3382 = !DILocation(line: 238, column: 1, scope: !3363)
!3383 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !617, file: !617, line: 241, type: !470, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !862)
!3384 = !DILocation(line: 243, column: 3, scope: !3383)
!3385 = !DILocation(line: 248, column: 3, scope: !3383)
!3386 = !DILocation(line: 254, column: 3, scope: !3383)
!3387 = !DILocation(line: 259, column: 3, scope: !3383)
!3388 = !DILocation(line: 261, column: 1, scope: !3383)
!3389 = distinct !DISubprogram(name: "xnrealloc", scope: !3390, file: !3390, line: 147, type: !3391, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3393)
!3390 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!121, !121, !124, !124}
!3393 = !{!3394, !3395, !3396}
!3394 = !DILocalVariable(name: "p", arg: 1, scope: !3389, file: !3390, line: 147, type: !121)
!3395 = !DILocalVariable(name: "n", arg: 2, scope: !3389, file: !3390, line: 147, type: !124)
!3396 = !DILocalVariable(name: "s", arg: 3, scope: !3389, file: !3390, line: 147, type: !124)
!3397 = !DILocation(line: 0, scope: !3389)
!3398 = !DILocalVariable(name: "p", arg: 1, scope: !3399, file: !739, line: 83, type: !121)
!3399 = distinct !DISubprogram(name: "xreallocarray", scope: !739, file: !739, line: 83, type: !3391, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3400)
!3400 = !{!3398, !3401, !3402}
!3401 = !DILocalVariable(name: "n", arg: 2, scope: !3399, file: !739, line: 83, type: !124)
!3402 = !DILocalVariable(name: "s", arg: 3, scope: !3399, file: !739, line: 83, type: !124)
!3403 = !DILocation(line: 0, scope: !3399, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 149, column: 10, scope: !3389)
!3405 = !DILocation(line: 85, column: 25, scope: !3399, inlinedAt: !3404)
!3406 = !DILocalVariable(name: "p", arg: 1, scope: !3407, file: !739, line: 37, type: !121)
!3407 = distinct !DISubprogram(name: "check_nonnull", scope: !739, file: !739, line: 37, type: !3408, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3410)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!121, !121}
!3410 = !{!3406}
!3411 = !DILocation(line: 0, scope: !3407, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 85, column: 10, scope: !3399, inlinedAt: !3404)
!3413 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3412)
!3414 = distinct !DILexicalBlock(scope: !3407, file: !739, line: 39, column: 7)
!3415 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3412)
!3416 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3412)
!3417 = !DILocation(line: 149, column: 3, scope: !3389)
!3418 = !DILocation(line: 0, scope: !3399)
!3419 = !DILocation(line: 85, column: 25, scope: !3399)
!3420 = !DILocation(line: 0, scope: !3407, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 85, column: 10, scope: !3399)
!3422 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3421)
!3423 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3421)
!3424 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3421)
!3425 = !DILocation(line: 85, column: 3, scope: !3399)
!3426 = distinct !DISubprogram(name: "xmalloc", scope: !739, file: !739, line: 47, type: !3427, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!121, !124}
!3429 = !{!3430}
!3430 = !DILocalVariable(name: "s", arg: 1, scope: !3426, file: !739, line: 47, type: !124)
!3431 = !DILocation(line: 0, scope: !3426)
!3432 = !DILocation(line: 49, column: 25, scope: !3426)
!3433 = !DILocation(line: 0, scope: !3407, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 49, column: 10, scope: !3426)
!3435 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3434)
!3436 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3434)
!3437 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3434)
!3438 = !DILocation(line: 49, column: 3, scope: !3426)
!3439 = !DISubprogram(name: "malloc", scope: !1003, file: !1003, line: 540, type: !3427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!3440 = distinct !DISubprogram(name: "ximalloc", scope: !739, file: !739, line: 53, type: !3441, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3443)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!121, !758}
!3443 = !{!3444}
!3444 = !DILocalVariable(name: "s", arg: 1, scope: !3440, file: !739, line: 53, type: !758)
!3445 = !DILocation(line: 0, scope: !3440)
!3446 = !DILocalVariable(name: "s", arg: 1, scope: !3447, file: !3448, line: 55, type: !758)
!3447 = distinct !DISubprogram(name: "imalloc", scope: !3448, file: !3448, line: 55, type: !3441, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3449)
!3448 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3449 = !{!3446}
!3450 = !DILocation(line: 0, scope: !3447, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 55, column: 25, scope: !3440)
!3452 = !DILocation(line: 57, column: 26, scope: !3447, inlinedAt: !3451)
!3453 = !DILocation(line: 0, scope: !3407, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 55, column: 10, scope: !3440)
!3455 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3454)
!3456 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3454)
!3457 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3454)
!3458 = !DILocation(line: 55, column: 3, scope: !3440)
!3459 = distinct !DISubprogram(name: "xcharalloc", scope: !739, file: !739, line: 59, type: !1446, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3460)
!3460 = !{!3461}
!3461 = !DILocalVariable(name: "n", arg: 1, scope: !3459, file: !739, line: 59, type: !124)
!3462 = !DILocation(line: 0, scope: !3459)
!3463 = !DILocation(line: 0, scope: !3426, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 61, column: 10, scope: !3459)
!3465 = !DILocation(line: 49, column: 25, scope: !3426, inlinedAt: !3464)
!3466 = !DILocation(line: 0, scope: !3407, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 49, column: 10, scope: !3426, inlinedAt: !3464)
!3468 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3467)
!3469 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3467)
!3470 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3467)
!3471 = !DILocation(line: 61, column: 3, scope: !3459)
!3472 = distinct !DISubprogram(name: "xrealloc", scope: !739, file: !739, line: 68, type: !3473, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!121, !121, !124}
!3475 = !{!3476, !3477}
!3476 = !DILocalVariable(name: "p", arg: 1, scope: !3472, file: !739, line: 68, type: !121)
!3477 = !DILocalVariable(name: "s", arg: 2, scope: !3472, file: !739, line: 68, type: !124)
!3478 = !DILocation(line: 0, scope: !3472)
!3479 = !DILocalVariable(name: "ptr", arg: 1, scope: !3480, file: !3481, line: 2057, type: !121)
!3480 = distinct !DISubprogram(name: "rpl_realloc", scope: !3481, file: !3481, line: 2057, type: !3473, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3482)
!3481 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3482 = !{!3479, !3483}
!3483 = !DILocalVariable(name: "size", arg: 2, scope: !3480, file: !3481, line: 2057, type: !124)
!3484 = !DILocation(line: 0, scope: !3480, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 70, column: 25, scope: !3472)
!3486 = !DILocation(line: 2059, column: 24, scope: !3480, inlinedAt: !3485)
!3487 = !DILocation(line: 2059, column: 10, scope: !3480, inlinedAt: !3485)
!3488 = !DILocation(line: 0, scope: !3407, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 70, column: 10, scope: !3472)
!3490 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3489)
!3491 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3489)
!3492 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3489)
!3493 = !DILocation(line: 70, column: 3, scope: !3472)
!3494 = !DISubprogram(name: "realloc", scope: !1003, file: !1003, line: 551, type: !3473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!3495 = distinct !DISubprogram(name: "xirealloc", scope: !739, file: !739, line: 74, type: !3496, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3498)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!121, !121, !758}
!3498 = !{!3499, !3500}
!3499 = !DILocalVariable(name: "p", arg: 1, scope: !3495, file: !739, line: 74, type: !121)
!3500 = !DILocalVariable(name: "s", arg: 2, scope: !3495, file: !739, line: 74, type: !758)
!3501 = !DILocation(line: 0, scope: !3495)
!3502 = !DILocalVariable(name: "p", arg: 1, scope: !3503, file: !3448, line: 66, type: !121)
!3503 = distinct !DISubprogram(name: "irealloc", scope: !3448, file: !3448, line: 66, type: !3496, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3504)
!3504 = !{!3502, !3505}
!3505 = !DILocalVariable(name: "s", arg: 2, scope: !3503, file: !3448, line: 66, type: !758)
!3506 = !DILocation(line: 0, scope: !3503, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 76, column: 25, scope: !3495)
!3508 = !DILocation(line: 0, scope: !3480, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 68, column: 26, scope: !3503, inlinedAt: !3507)
!3510 = !DILocation(line: 2059, column: 24, scope: !3480, inlinedAt: !3509)
!3511 = !DILocation(line: 2059, column: 10, scope: !3480, inlinedAt: !3509)
!3512 = !DILocation(line: 0, scope: !3407, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 76, column: 10, scope: !3495)
!3514 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3513)
!3515 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3513)
!3516 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3513)
!3517 = !DILocation(line: 76, column: 3, scope: !3495)
!3518 = distinct !DISubprogram(name: "xireallocarray", scope: !739, file: !739, line: 89, type: !3519, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3521)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!121, !121, !758, !758}
!3521 = !{!3522, !3523, !3524}
!3522 = !DILocalVariable(name: "p", arg: 1, scope: !3518, file: !739, line: 89, type: !121)
!3523 = !DILocalVariable(name: "n", arg: 2, scope: !3518, file: !739, line: 89, type: !758)
!3524 = !DILocalVariable(name: "s", arg: 3, scope: !3518, file: !739, line: 89, type: !758)
!3525 = !DILocation(line: 0, scope: !3518)
!3526 = !DILocalVariable(name: "p", arg: 1, scope: !3527, file: !3448, line: 98, type: !121)
!3527 = distinct !DISubprogram(name: "ireallocarray", scope: !3448, file: !3448, line: 98, type: !3519, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3528)
!3528 = !{!3526, !3529, !3530}
!3529 = !DILocalVariable(name: "n", arg: 2, scope: !3527, file: !3448, line: 98, type: !758)
!3530 = !DILocalVariable(name: "s", arg: 3, scope: !3527, file: !3448, line: 98, type: !758)
!3531 = !DILocation(line: 0, scope: !3527, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 91, column: 25, scope: !3518)
!3533 = !DILocation(line: 101, column: 13, scope: !3527, inlinedAt: !3532)
!3534 = !DILocation(line: 0, scope: !3407, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 91, column: 10, scope: !3518)
!3536 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3535)
!3537 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3535)
!3538 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3535)
!3539 = !DILocation(line: 91, column: 3, scope: !3518)
!3540 = distinct !DISubprogram(name: "xnmalloc", scope: !739, file: !739, line: 98, type: !3541, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!121, !124, !124}
!3543 = !{!3544, !3545}
!3544 = !DILocalVariable(name: "n", arg: 1, scope: !3540, file: !739, line: 98, type: !124)
!3545 = !DILocalVariable(name: "s", arg: 2, scope: !3540, file: !739, line: 98, type: !124)
!3546 = !DILocation(line: 0, scope: !3540)
!3547 = !DILocation(line: 0, scope: !3399, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 100, column: 10, scope: !3540)
!3549 = !DILocation(line: 85, column: 25, scope: !3399, inlinedAt: !3548)
!3550 = !DILocation(line: 0, scope: !3407, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 85, column: 10, scope: !3399, inlinedAt: !3548)
!3552 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3551)
!3553 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3551)
!3554 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3551)
!3555 = !DILocation(line: 100, column: 3, scope: !3540)
!3556 = distinct !DISubprogram(name: "xinmalloc", scope: !739, file: !739, line: 104, type: !3557, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3559)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!121, !758, !758}
!3559 = !{!3560, !3561}
!3560 = !DILocalVariable(name: "n", arg: 1, scope: !3556, file: !739, line: 104, type: !758)
!3561 = !DILocalVariable(name: "s", arg: 2, scope: !3556, file: !739, line: 104, type: !758)
!3562 = !DILocation(line: 0, scope: !3556)
!3563 = !DILocation(line: 0, scope: !3518, inlinedAt: !3564)
!3564 = distinct !DILocation(line: 106, column: 10, scope: !3556)
!3565 = !DILocation(line: 0, scope: !3527, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 91, column: 25, scope: !3518, inlinedAt: !3564)
!3567 = !DILocation(line: 101, column: 13, scope: !3527, inlinedAt: !3566)
!3568 = !DILocation(line: 0, scope: !3407, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 91, column: 10, scope: !3518, inlinedAt: !3564)
!3570 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3569)
!3571 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3569)
!3572 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3569)
!3573 = !DILocation(line: 106, column: 3, scope: !3556)
!3574 = distinct !DISubprogram(name: "x2realloc", scope: !739, file: !739, line: 116, type: !3575, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!121, !121, !745}
!3577 = !{!3578, !3579}
!3578 = !DILocalVariable(name: "p", arg: 1, scope: !3574, file: !739, line: 116, type: !121)
!3579 = !DILocalVariable(name: "ps", arg: 2, scope: !3574, file: !739, line: 116, type: !745)
!3580 = !DILocation(line: 0, scope: !3574)
!3581 = !DILocation(line: 0, scope: !742, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 118, column: 10, scope: !3574)
!3583 = !DILocation(line: 178, column: 14, scope: !742, inlinedAt: !3582)
!3584 = !DILocation(line: 180, column: 9, scope: !3585, inlinedAt: !3582)
!3585 = distinct !DILexicalBlock(scope: !742, file: !739, line: 180, column: 7)
!3586 = !DILocation(line: 180, column: 7, scope: !742, inlinedAt: !3582)
!3587 = !DILocation(line: 182, column: 13, scope: !3588, inlinedAt: !3582)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !739, line: 182, column: 11)
!3589 = distinct !DILexicalBlock(scope: !3585, file: !739, line: 181, column: 5)
!3590 = !DILocation(line: 182, column: 11, scope: !3589, inlinedAt: !3582)
!3591 = !DILocation(line: 197, column: 11, scope: !3592, inlinedAt: !3582)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !739, line: 197, column: 11)
!3593 = distinct !DILexicalBlock(scope: !3585, file: !739, line: 195, column: 5)
!3594 = !DILocation(line: 197, column: 11, scope: !3593, inlinedAt: !3582)
!3595 = !DILocation(line: 198, column: 9, scope: !3592, inlinedAt: !3582)
!3596 = !DILocation(line: 0, scope: !3399, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 201, column: 7, scope: !742, inlinedAt: !3582)
!3598 = !DILocation(line: 85, column: 25, scope: !3399, inlinedAt: !3597)
!3599 = !DILocation(line: 0, scope: !3407, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 85, column: 10, scope: !3399, inlinedAt: !3597)
!3601 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3600)
!3602 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3600)
!3603 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3600)
!3604 = !DILocation(line: 202, column: 7, scope: !742, inlinedAt: !3582)
!3605 = !DILocation(line: 118, column: 3, scope: !3574)
!3606 = !DILocation(line: 0, scope: !742)
!3607 = !DILocation(line: 178, column: 14, scope: !742)
!3608 = !DILocation(line: 180, column: 9, scope: !3585)
!3609 = !DILocation(line: 180, column: 7, scope: !742)
!3610 = !DILocation(line: 182, column: 13, scope: !3588)
!3611 = !DILocation(line: 182, column: 11, scope: !3589)
!3612 = !DILocation(line: 190, column: 30, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3588, file: !739, line: 183, column: 9)
!3614 = !DILocation(line: 191, column: 16, scope: !3613)
!3615 = !DILocation(line: 191, column: 13, scope: !3613)
!3616 = !DILocation(line: 192, column: 9, scope: !3613)
!3617 = !DILocation(line: 197, column: 11, scope: !3592)
!3618 = !DILocation(line: 197, column: 11, scope: !3593)
!3619 = !DILocation(line: 198, column: 9, scope: !3592)
!3620 = !DILocation(line: 0, scope: !3399, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 201, column: 7, scope: !742)
!3622 = !DILocation(line: 85, column: 25, scope: !3399, inlinedAt: !3621)
!3623 = !DILocation(line: 0, scope: !3407, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 85, column: 10, scope: !3399, inlinedAt: !3621)
!3625 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3624)
!3626 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3624)
!3627 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3624)
!3628 = !DILocation(line: 202, column: 7, scope: !742)
!3629 = !DILocation(line: 203, column: 3, scope: !742)
!3630 = !DILocation(line: 0, scope: !754)
!3631 = !DILocation(line: 230, column: 14, scope: !754)
!3632 = !DILocation(line: 238, column: 7, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !754, file: !739, line: 238, column: 7)
!3634 = !DILocation(line: 238, column: 7, scope: !754)
!3635 = !DILocation(line: 240, column: 9, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !754, file: !739, line: 240, column: 7)
!3637 = !DILocation(line: 240, column: 18, scope: !3636)
!3638 = !DILocation(line: 253, column: 8, scope: !754)
!3639 = !DILocation(line: 258, column: 27, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !739, line: 257, column: 5)
!3641 = distinct !DILexicalBlock(scope: !754, file: !739, line: 256, column: 7)
!3642 = !DILocation(line: 259, column: 50, scope: !3640)
!3643 = !DILocation(line: 259, column: 32, scope: !3640)
!3644 = !DILocation(line: 260, column: 5, scope: !3640)
!3645 = !DILocation(line: 262, column: 9, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !754, file: !739, line: 262, column: 7)
!3647 = !DILocation(line: 262, column: 7, scope: !754)
!3648 = !DILocation(line: 263, column: 9, scope: !3646)
!3649 = !DILocation(line: 263, column: 5, scope: !3646)
!3650 = !DILocation(line: 264, column: 9, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !754, file: !739, line: 264, column: 7)
!3652 = !DILocation(line: 264, column: 14, scope: !3651)
!3653 = !DILocation(line: 265, column: 7, scope: !3651)
!3654 = !DILocation(line: 265, column: 11, scope: !3651)
!3655 = !DILocation(line: 266, column: 11, scope: !3651)
!3656 = !DILocation(line: 267, column: 14, scope: !3651)
!3657 = !DILocation(line: 264, column: 7, scope: !754)
!3658 = !DILocation(line: 268, column: 5, scope: !3651)
!3659 = !DILocation(line: 0, scope: !3472, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 269, column: 8, scope: !754)
!3661 = !DILocation(line: 0, scope: !3480, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 70, column: 25, scope: !3472, inlinedAt: !3660)
!3663 = !DILocation(line: 2059, column: 24, scope: !3480, inlinedAt: !3662)
!3664 = !DILocation(line: 2059, column: 10, scope: !3480, inlinedAt: !3662)
!3665 = !DILocation(line: 0, scope: !3407, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 70, column: 10, scope: !3472, inlinedAt: !3660)
!3667 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3666)
!3668 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3666)
!3669 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3666)
!3670 = !DILocation(line: 270, column: 7, scope: !754)
!3671 = !DILocation(line: 271, column: 3, scope: !754)
!3672 = distinct !DISubprogram(name: "xzalloc", scope: !739, file: !739, line: 279, type: !3427, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3673)
!3673 = !{!3674}
!3674 = !DILocalVariable(name: "s", arg: 1, scope: !3672, file: !739, line: 279, type: !124)
!3675 = !DILocation(line: 0, scope: !3672)
!3676 = !DILocalVariable(name: "n", arg: 1, scope: !3677, file: !739, line: 294, type: !124)
!3677 = distinct !DISubprogram(name: "xcalloc", scope: !739, file: !739, line: 294, type: !3541, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3678)
!3678 = !{!3676, !3679}
!3679 = !DILocalVariable(name: "s", arg: 2, scope: !3677, file: !739, line: 294, type: !124)
!3680 = !DILocation(line: 0, scope: !3677, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 281, column: 10, scope: !3672)
!3682 = !DILocation(line: 296, column: 25, scope: !3677, inlinedAt: !3681)
!3683 = !DILocation(line: 0, scope: !3407, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 296, column: 10, scope: !3677, inlinedAt: !3681)
!3685 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3684)
!3686 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3684)
!3687 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3684)
!3688 = !DILocation(line: 281, column: 3, scope: !3672)
!3689 = !DISubprogram(name: "calloc", scope: !1003, file: !1003, line: 543, type: !3541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!3690 = !DILocation(line: 0, scope: !3677)
!3691 = !DILocation(line: 296, column: 25, scope: !3677)
!3692 = !DILocation(line: 0, scope: !3407, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 296, column: 10, scope: !3677)
!3694 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3693)
!3695 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3693)
!3696 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3693)
!3697 = !DILocation(line: 296, column: 3, scope: !3677)
!3698 = distinct !DISubprogram(name: "xizalloc", scope: !739, file: !739, line: 285, type: !3441, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3699)
!3699 = !{!3700}
!3700 = !DILocalVariable(name: "s", arg: 1, scope: !3698, file: !739, line: 285, type: !758)
!3701 = !DILocation(line: 0, scope: !3698)
!3702 = !DILocalVariable(name: "n", arg: 1, scope: !3703, file: !739, line: 300, type: !758)
!3703 = distinct !DISubprogram(name: "xicalloc", scope: !739, file: !739, line: 300, type: !3557, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3704)
!3704 = !{!3702, !3705}
!3705 = !DILocalVariable(name: "s", arg: 2, scope: !3703, file: !739, line: 300, type: !758)
!3706 = !DILocation(line: 0, scope: !3703, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 287, column: 10, scope: !3698)
!3708 = !DILocalVariable(name: "n", arg: 1, scope: !3709, file: !3448, line: 77, type: !758)
!3709 = distinct !DISubprogram(name: "icalloc", scope: !3448, file: !3448, line: 77, type: !3557, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3710)
!3710 = !{!3708, !3711}
!3711 = !DILocalVariable(name: "s", arg: 2, scope: !3709, file: !3448, line: 77, type: !758)
!3712 = !DILocation(line: 0, scope: !3709, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 302, column: 25, scope: !3703, inlinedAt: !3707)
!3714 = !DILocation(line: 91, column: 10, scope: !3709, inlinedAt: !3713)
!3715 = !DILocation(line: 0, scope: !3407, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 302, column: 10, scope: !3703, inlinedAt: !3707)
!3717 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3716)
!3718 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3716)
!3719 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3716)
!3720 = !DILocation(line: 287, column: 3, scope: !3698)
!3721 = !DILocation(line: 0, scope: !3703)
!3722 = !DILocation(line: 0, scope: !3709, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 302, column: 25, scope: !3703)
!3724 = !DILocation(line: 91, column: 10, scope: !3709, inlinedAt: !3723)
!3725 = !DILocation(line: 0, scope: !3407, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 302, column: 10, scope: !3703)
!3727 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3726)
!3728 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3726)
!3729 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3726)
!3730 = !DILocation(line: 302, column: 3, scope: !3703)
!3731 = distinct !DISubprogram(name: "xmemdup", scope: !739, file: !739, line: 310, type: !3732, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3734)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!121, !1027, !124}
!3734 = !{!3735, !3736}
!3735 = !DILocalVariable(name: "p", arg: 1, scope: !3731, file: !739, line: 310, type: !1027)
!3736 = !DILocalVariable(name: "s", arg: 2, scope: !3731, file: !739, line: 310, type: !124)
!3737 = !DILocation(line: 0, scope: !3731)
!3738 = !DILocation(line: 0, scope: !3426, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 312, column: 18, scope: !3731)
!3740 = !DILocation(line: 49, column: 25, scope: !3426, inlinedAt: !3739)
!3741 = !DILocation(line: 0, scope: !3407, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 49, column: 10, scope: !3426, inlinedAt: !3739)
!3743 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3742)
!3744 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3742)
!3745 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3742)
!3746 = !DILocalVariable(name: "__dest", arg: 1, scope: !3747, file: !1462, line: 26, type: !1465)
!3747 = distinct !DISubprogram(name: "memcpy", scope: !1462, file: !1462, line: 26, type: !1463, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3748)
!3748 = !{!3746, !3749, !3750}
!3749 = !DILocalVariable(name: "__src", arg: 2, scope: !3747, file: !1462, line: 26, type: !1026)
!3750 = !DILocalVariable(name: "__len", arg: 3, scope: !3747, file: !1462, line: 26, type: !124)
!3751 = !DILocation(line: 0, scope: !3747, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 312, column: 10, scope: !3731)
!3753 = !DILocation(line: 29, column: 10, scope: !3747, inlinedAt: !3752)
!3754 = !DILocation(line: 312, column: 3, scope: !3731)
!3755 = distinct !DISubprogram(name: "ximemdup", scope: !739, file: !739, line: 316, type: !3756, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3758)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!121, !1027, !758}
!3758 = !{!3759, !3760}
!3759 = !DILocalVariable(name: "p", arg: 1, scope: !3755, file: !739, line: 316, type: !1027)
!3760 = !DILocalVariable(name: "s", arg: 2, scope: !3755, file: !739, line: 316, type: !758)
!3761 = !DILocation(line: 0, scope: !3755)
!3762 = !DILocation(line: 0, scope: !3440, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 318, column: 18, scope: !3755)
!3764 = !DILocation(line: 0, scope: !3447, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 55, column: 25, scope: !3440, inlinedAt: !3763)
!3766 = !DILocation(line: 57, column: 26, scope: !3447, inlinedAt: !3765)
!3767 = !DILocation(line: 0, scope: !3407, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 55, column: 10, scope: !3440, inlinedAt: !3763)
!3769 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3768)
!3770 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3768)
!3771 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3768)
!3772 = !DILocation(line: 0, scope: !3747, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 318, column: 10, scope: !3755)
!3774 = !DILocation(line: 29, column: 10, scope: !3747, inlinedAt: !3773)
!3775 = !DILocation(line: 318, column: 3, scope: !3755)
!3776 = distinct !DISubprogram(name: "ximemdup0", scope: !739, file: !739, line: 325, type: !3777, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3779)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!122, !1027, !758}
!3779 = !{!3780, !3781, !3782}
!3780 = !DILocalVariable(name: "p", arg: 1, scope: !3776, file: !739, line: 325, type: !1027)
!3781 = !DILocalVariable(name: "s", arg: 2, scope: !3776, file: !739, line: 325, type: !758)
!3782 = !DILocalVariable(name: "result", scope: !3776, file: !739, line: 327, type: !122)
!3783 = !DILocation(line: 0, scope: !3776)
!3784 = !DILocation(line: 327, column: 30, scope: !3776)
!3785 = !DILocation(line: 0, scope: !3440, inlinedAt: !3786)
!3786 = distinct !DILocation(line: 327, column: 18, scope: !3776)
!3787 = !DILocation(line: 0, scope: !3447, inlinedAt: !3788)
!3788 = distinct !DILocation(line: 55, column: 25, scope: !3440, inlinedAt: !3786)
!3789 = !DILocation(line: 57, column: 26, scope: !3447, inlinedAt: !3788)
!3790 = !DILocation(line: 0, scope: !3407, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 55, column: 10, scope: !3440, inlinedAt: !3786)
!3792 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3791)
!3793 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3791)
!3794 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3791)
!3795 = !DILocation(line: 328, column: 3, scope: !3776)
!3796 = !DILocation(line: 328, column: 13, scope: !3776)
!3797 = !DILocation(line: 0, scope: !3747, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 329, column: 10, scope: !3776)
!3799 = !DILocation(line: 29, column: 10, scope: !3747, inlinedAt: !3798)
!3800 = !DILocation(line: 329, column: 3, scope: !3776)
!3801 = distinct !DISubprogram(name: "xstrdup", scope: !739, file: !739, line: 335, type: !1005, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3802)
!3802 = !{!3803}
!3803 = !DILocalVariable(name: "string", arg: 1, scope: !3801, file: !739, line: 335, type: !127)
!3804 = !DILocation(line: 0, scope: !3801)
!3805 = !DILocation(line: 337, column: 27, scope: !3801)
!3806 = !DILocation(line: 337, column: 43, scope: !3801)
!3807 = !DILocation(line: 0, scope: !3731, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 337, column: 10, scope: !3801)
!3809 = !DILocation(line: 0, scope: !3426, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 312, column: 18, scope: !3731, inlinedAt: !3808)
!3811 = !DILocation(line: 49, column: 25, scope: !3426, inlinedAt: !3810)
!3812 = !DILocation(line: 0, scope: !3407, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 49, column: 10, scope: !3426, inlinedAt: !3810)
!3814 = !DILocation(line: 39, column: 8, scope: !3414, inlinedAt: !3813)
!3815 = !DILocation(line: 39, column: 7, scope: !3407, inlinedAt: !3813)
!3816 = !DILocation(line: 40, column: 5, scope: !3414, inlinedAt: !3813)
!3817 = !DILocation(line: 0, scope: !3747, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 312, column: 10, scope: !3731, inlinedAt: !3808)
!3819 = !DILocation(line: 29, column: 10, scope: !3747, inlinedAt: !3818)
!3820 = !DILocation(line: 337, column: 3, scope: !3801)
!3821 = distinct !DISubprogram(name: "xalloc_die", scope: !701, file: !701, line: 32, type: !470, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !772, retainedNodes: !3822)
!3822 = !{!3823}
!3823 = !DILocalVariable(name: "__errstatus", scope: !3824, file: !701, line: 34, type: !3825)
!3824 = distinct !DILexicalBlock(scope: !3821, file: !701, line: 34, column: 3)
!3825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!3826 = !DILocation(line: 34, column: 3, scope: !3824)
!3827 = !DILocation(line: 0, scope: !3824)
!3828 = !DILocation(line: 40, column: 3, scope: !3821)
!3829 = distinct !DISubprogram(name: "xgetcwd", scope: !775, file: !775, line: 35, type: !3830, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3831)
!3830 = !DISubroutineType(types: !476)
!3831 = !{!3832}
!3832 = !DILocalVariable(name: "cwd", scope: !3829, file: !775, line: 37, type: !122)
!3833 = !DILocation(line: 37, column: 15, scope: !3829)
!3834 = !DILocation(line: 0, scope: !3829)
!3835 = !DILocation(line: 38, column: 9, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3829, file: !775, line: 38, column: 7)
!3837 = !DILocation(line: 38, column: 13, scope: !3836)
!3838 = !DILocation(line: 38, column: 16, scope: !3836)
!3839 = !DILocation(line: 38, column: 22, scope: !3836)
!3840 = !DILocation(line: 38, column: 7, scope: !3829)
!3841 = !DILocation(line: 39, column: 5, scope: !3836)
!3842 = !DILocation(line: 40, column: 3, scope: !3829)
!3843 = distinct !DISubprogram(name: "close_stream", scope: !777, file: !777, line: 55, type: !3844, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3880)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!83, !3846}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !3848)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !3849)
!3849 = !{!3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3848, file: !175, line: 51, baseType: !83, size: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3848, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3848, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3848, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3848, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3848, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3848, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3848, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3848, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3848, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3848, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3848, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3848, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3848, file: !175, line: 70, baseType: !3864, size: 64, offset: 832)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3848, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3848, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3848, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3848, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3848, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3848, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3848, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3848, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3848, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3848, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3848, file: !175, line: 93, baseType: !3864, size: 64, offset: 1344)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3848, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3848, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3848, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3848, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!3880 = !{!3881, !3882, !3884, !3885}
!3881 = !DILocalVariable(name: "stream", arg: 1, scope: !3843, file: !777, line: 55, type: !3846)
!3882 = !DILocalVariable(name: "some_pending", scope: !3843, file: !777, line: 57, type: !3883)
!3883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!3884 = !DILocalVariable(name: "prev_fail", scope: !3843, file: !777, line: 58, type: !3883)
!3885 = !DILocalVariable(name: "fclose_fail", scope: !3843, file: !777, line: 59, type: !3883)
!3886 = !DILocation(line: 0, scope: !3843)
!3887 = !DILocation(line: 57, column: 30, scope: !3843)
!3888 = !DILocalVariable(name: "__stream", arg: 1, scope: !3889, file: !1709, line: 135, type: !3846)
!3889 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1709, file: !1709, line: 135, type: !3844, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3890)
!3890 = !{!3888}
!3891 = !DILocation(line: 0, scope: !3889, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 58, column: 27, scope: !3843)
!3893 = !DILocation(line: 137, column: 10, scope: !3889, inlinedAt: !3892)
!3894 = !{!1718, !879, i64 0}
!3895 = !DILocation(line: 58, column: 43, scope: !3843)
!3896 = !DILocation(line: 59, column: 29, scope: !3843)
!3897 = !DILocation(line: 59, column: 45, scope: !3843)
!3898 = !DILocation(line: 69, column: 17, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3843, file: !777, line: 69, column: 7)
!3900 = !DILocation(line: 57, column: 50, scope: !3843)
!3901 = !DILocation(line: 69, column: 33, scope: !3899)
!3902 = !DILocation(line: 69, column: 53, scope: !3899)
!3903 = !DILocation(line: 69, column: 59, scope: !3899)
!3904 = !DILocation(line: 69, column: 7, scope: !3843)
!3905 = !DILocation(line: 71, column: 11, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3899, file: !777, line: 70, column: 5)
!3907 = !DILocation(line: 72, column: 9, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3906, file: !777, line: 71, column: 11)
!3909 = !DILocation(line: 72, column: 15, scope: !3908)
!3910 = !DILocation(line: 77, column: 1, scope: !3843)
!3911 = !DISubprogram(name: "__fpending", scope: !3912, file: !3912, line: 75, type: !3913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!3912 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!124, !3846}
!3915 = distinct !DISubprogram(name: "rpl_fclose", scope: !779, file: !779, line: 58, type: !3916, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !3952)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!83, !3918}
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !3920)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !3921)
!3921 = !{!3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3920, file: !175, line: 51, baseType: !83, size: 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3920, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3920, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3920, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3920, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3920, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3920, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3920, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3920, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3920, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3920, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3920, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3920, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3920, file: !175, line: 70, baseType: !3936, size: 64, offset: 832)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3920, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3920, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3920, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3920, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3920, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3920, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3920, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3920, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3920, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3920, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3920, file: !175, line: 93, baseType: !3936, size: 64, offset: 1344)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3920, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3920, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3920, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3920, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!3952 = !{!3953, !3954, !3955, !3956}
!3953 = !DILocalVariable(name: "fp", arg: 1, scope: !3915, file: !779, line: 58, type: !3918)
!3954 = !DILocalVariable(name: "saved_errno", scope: !3915, file: !779, line: 60, type: !83)
!3955 = !DILocalVariable(name: "fd", scope: !3915, file: !779, line: 63, type: !83)
!3956 = !DILocalVariable(name: "result", scope: !3915, file: !779, line: 74, type: !83)
!3957 = !DILocation(line: 0, scope: !3915)
!3958 = !DILocation(line: 63, column: 12, scope: !3915)
!3959 = !DILocation(line: 64, column: 10, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3915, file: !779, line: 64, column: 7)
!3961 = !DILocation(line: 64, column: 7, scope: !3915)
!3962 = !DILocation(line: 65, column: 12, scope: !3960)
!3963 = !DILocation(line: 65, column: 5, scope: !3960)
!3964 = !DILocation(line: 70, column: 9, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3915, file: !779, line: 70, column: 7)
!3966 = !DILocation(line: 70, column: 23, scope: !3965)
!3967 = !DILocation(line: 70, column: 33, scope: !3965)
!3968 = !DILocation(line: 70, column: 26, scope: !3965)
!3969 = !DILocation(line: 70, column: 59, scope: !3965)
!3970 = !DILocation(line: 71, column: 7, scope: !3965)
!3971 = !DILocation(line: 71, column: 10, scope: !3965)
!3972 = !DILocation(line: 70, column: 7, scope: !3915)
!3973 = !DILocation(line: 100, column: 12, scope: !3915)
!3974 = !DILocation(line: 105, column: 7, scope: !3915)
!3975 = !DILocation(line: 72, column: 19, scope: !3965)
!3976 = !DILocation(line: 105, column: 19, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3915, file: !779, line: 105, column: 7)
!3978 = !DILocation(line: 107, column: 13, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3977, file: !779, line: 106, column: 5)
!3980 = !DILocation(line: 109, column: 5, scope: !3979)
!3981 = !DILocation(line: 112, column: 1, scope: !3915)
!3982 = !DISubprogram(name: "fileno", scope: !873, file: !873, line: 809, type: !3916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!3983 = !DISubprogram(name: "fclose", scope: !873, file: !873, line: 178, type: !3916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!3984 = !DISubprogram(name: "__freading", scope: !3912, file: !3912, line: 51, type: !3916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!3985 = !DISubprogram(name: "lseek", scope: !1485, file: !1485, line: 339, type: !3986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!197, !83, !197, !83}
!3988 = distinct !DISubprogram(name: "rpl_fflush", scope: !781, file: !781, line: 130, type: !3989, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4025)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!83, !3991}
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !3993)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !3994)
!3994 = !{!3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3993, file: !175, line: 51, baseType: !83, size: 32)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3993, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3993, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3993, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3993, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3993, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3993, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3993, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3993, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3993, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3993, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3993, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3993, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3993, file: !175, line: 70, baseType: !4009, size: 64, offset: 832)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3993, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3993, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3993, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3993, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3993, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3993, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3993, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3993, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3993, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3993, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3993, file: !175, line: 93, baseType: !4009, size: 64, offset: 1344)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3993, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3993, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3993, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3993, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!4025 = !{!4026}
!4026 = !DILocalVariable(name: "stream", arg: 1, scope: !3988, file: !781, line: 130, type: !3991)
!4027 = !DILocation(line: 0, scope: !3988)
!4028 = !DILocation(line: 151, column: 14, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !3988, file: !781, line: 151, column: 7)
!4030 = !DILocation(line: 151, column: 22, scope: !4029)
!4031 = !DILocation(line: 151, column: 27, scope: !4029)
!4032 = !DILocation(line: 151, column: 7, scope: !3988)
!4033 = !DILocation(line: 152, column: 12, scope: !4029)
!4034 = !DILocation(line: 152, column: 5, scope: !4029)
!4035 = !DILocalVariable(name: "fp", arg: 1, scope: !4036, file: !781, line: 42, type: !3991)
!4036 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !781, file: !781, line: 42, type: !4037, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !4039)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{null, !3991}
!4039 = !{!4035}
!4040 = !DILocation(line: 0, scope: !4036, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 157, column: 3, scope: !3988)
!4042 = !DILocation(line: 44, column: 12, scope: !4043, inlinedAt: !4041)
!4043 = distinct !DILexicalBlock(scope: !4036, file: !781, line: 44, column: 7)
!4044 = !DILocation(line: 44, column: 19, scope: !4043, inlinedAt: !4041)
!4045 = !DILocation(line: 44, column: 7, scope: !4036, inlinedAt: !4041)
!4046 = !DILocation(line: 46, column: 5, scope: !4043, inlinedAt: !4041)
!4047 = !DILocation(line: 159, column: 10, scope: !3988)
!4048 = !DILocation(line: 159, column: 3, scope: !3988)
!4049 = !DILocation(line: 236, column: 1, scope: !3988)
!4050 = !DISubprogram(name: "fflush", scope: !873, file: !873, line: 230, type: !3989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!4051 = distinct !DISubprogram(name: "rpl_fseeko", scope: !783, file: !783, line: 28, type: !4052, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !4089)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!83, !4054, !4088, !83}
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !4056)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !4057)
!4057 = !{!4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4056, file: !175, line: 51, baseType: !83, size: 32)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4056, file: !175, line: 54, baseType: !122, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4056, file: !175, line: 55, baseType: !122, size: 64, offset: 128)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4056, file: !175, line: 56, baseType: !122, size: 64, offset: 192)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4056, file: !175, line: 57, baseType: !122, size: 64, offset: 256)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4056, file: !175, line: 58, baseType: !122, size: 64, offset: 320)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4056, file: !175, line: 59, baseType: !122, size: 64, offset: 384)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4056, file: !175, line: 60, baseType: !122, size: 64, offset: 448)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4056, file: !175, line: 61, baseType: !122, size: 64, offset: 512)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4056, file: !175, line: 64, baseType: !122, size: 64, offset: 576)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4056, file: !175, line: 65, baseType: !122, size: 64, offset: 640)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4056, file: !175, line: 66, baseType: !122, size: 64, offset: 704)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4056, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4056, file: !175, line: 70, baseType: !4072, size: 64, offset: 832)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4056, file: !175, line: 72, baseType: !83, size: 32, offset: 896)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4056, file: !175, line: 73, baseType: !83, size: 32, offset: 928)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4056, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4056, file: !175, line: 77, baseType: !123, size: 16, offset: 1024)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4056, file: !175, line: 78, baseType: !202, size: 8, offset: 1040)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4056, file: !175, line: 79, baseType: !59, size: 8, offset: 1048)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4056, file: !175, line: 81, baseType: !205, size: 64, offset: 1088)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4056, file: !175, line: 89, baseType: !208, size: 64, offset: 1152)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4056, file: !175, line: 91, baseType: !210, size: 64, offset: 1216)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4056, file: !175, line: 92, baseType: !213, size: 64, offset: 1280)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4056, file: !175, line: 93, baseType: !4072, size: 64, offset: 1344)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4056, file: !175, line: 94, baseType: !121, size: 64, offset: 1408)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4056, file: !175, line: 95, baseType: !124, size: 64, offset: 1472)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4056, file: !175, line: 96, baseType: !83, size: 32, offset: 1536)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4056, file: !175, line: 98, baseType: !220, size: 160, offset: 1568)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !873, line: 63, baseType: !197)
!4089 = !{!4090, !4091, !4092, !4093}
!4090 = !DILocalVariable(name: "fp", arg: 1, scope: !4051, file: !783, line: 28, type: !4054)
!4091 = !DILocalVariable(name: "offset", arg: 2, scope: !4051, file: !783, line: 28, type: !4088)
!4092 = !DILocalVariable(name: "whence", arg: 3, scope: !4051, file: !783, line: 28, type: !83)
!4093 = !DILocalVariable(name: "pos", scope: !4094, file: !783, line: 123, type: !4088)
!4094 = distinct !DILexicalBlock(scope: !4095, file: !783, line: 119, column: 5)
!4095 = distinct !DILexicalBlock(scope: !4051, file: !783, line: 55, column: 7)
!4096 = !DILocation(line: 0, scope: !4051)
!4097 = !DILocation(line: 55, column: 12, scope: !4095)
!4098 = !{!1718, !814, i64 16}
!4099 = !DILocation(line: 55, column: 33, scope: !4095)
!4100 = !{!1718, !814, i64 8}
!4101 = !DILocation(line: 55, column: 25, scope: !4095)
!4102 = !DILocation(line: 56, column: 7, scope: !4095)
!4103 = !DILocation(line: 56, column: 15, scope: !4095)
!4104 = !DILocation(line: 56, column: 37, scope: !4095)
!4105 = !{!1718, !814, i64 32}
!4106 = !DILocation(line: 56, column: 29, scope: !4095)
!4107 = !DILocation(line: 57, column: 7, scope: !4095)
!4108 = !DILocation(line: 57, column: 15, scope: !4095)
!4109 = !{!1718, !814, i64 72}
!4110 = !DILocation(line: 57, column: 29, scope: !4095)
!4111 = !DILocation(line: 55, column: 7, scope: !4051)
!4112 = !DILocation(line: 123, column: 26, scope: !4094)
!4113 = !DILocation(line: 123, column: 19, scope: !4094)
!4114 = !DILocation(line: 0, scope: !4094)
!4115 = !DILocation(line: 124, column: 15, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4094, file: !783, line: 124, column: 11)
!4117 = !DILocation(line: 124, column: 11, scope: !4094)
!4118 = !DILocation(line: 135, column: 19, scope: !4094)
!4119 = !DILocation(line: 136, column: 12, scope: !4094)
!4120 = !DILocation(line: 136, column: 20, scope: !4094)
!4121 = !{!1718, !1165, i64 144}
!4122 = !DILocation(line: 167, column: 7, scope: !4094)
!4123 = !DILocation(line: 169, column: 10, scope: !4051)
!4124 = !DILocation(line: 169, column: 3, scope: !4051)
!4125 = !DILocation(line: 170, column: 1, scope: !4051)
!4126 = !DISubprogram(name: "fseeko", scope: !873, file: !873, line: 736, type: !4127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!83, !4054, !197, !83}
!4129 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !708, file: !708, line: 100, type: !4130, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !4133)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!124, !1884, !127, !124, !4132}
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!4133 = !{!4134, !4135, !4136, !4137, !4138}
!4134 = !DILocalVariable(name: "pwc", arg: 1, scope: !4129, file: !708, line: 100, type: !1884)
!4135 = !DILocalVariable(name: "s", arg: 2, scope: !4129, file: !708, line: 100, type: !127)
!4136 = !DILocalVariable(name: "n", arg: 3, scope: !4129, file: !708, line: 100, type: !124)
!4137 = !DILocalVariable(name: "ps", arg: 4, scope: !4129, file: !708, line: 100, type: !4132)
!4138 = !DILocalVariable(name: "ret", scope: !4129, file: !708, line: 130, type: !124)
!4139 = !DILocation(line: 0, scope: !4129)
!4140 = !DILocation(line: 105, column: 9, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4129, file: !708, line: 105, column: 7)
!4142 = !DILocation(line: 105, column: 7, scope: !4129)
!4143 = !DILocation(line: 117, column: 10, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4129, file: !708, line: 117, column: 7)
!4145 = !DILocation(line: 117, column: 7, scope: !4129)
!4146 = !DILocation(line: 130, column: 16, scope: !4129)
!4147 = !DILocation(line: 135, column: 11, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4129, file: !708, line: 135, column: 7)
!4149 = !DILocation(line: 135, column: 25, scope: !4148)
!4150 = !DILocation(line: 135, column: 30, scope: !4148)
!4151 = !DILocation(line: 135, column: 7, scope: !4129)
!4152 = !DILocalVariable(name: "ps", arg: 1, scope: !4153, file: !1858, line: 1135, type: !4132)
!4153 = distinct !DISubprogram(name: "mbszero", scope: !1858, file: !1858, line: 1135, type: !4154, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !4156)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{null, !4132}
!4156 = !{!4152}
!4157 = !DILocation(line: 0, scope: !4153, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 137, column: 5, scope: !4148)
!4159 = !DILocalVariable(name: "__dest", arg: 1, scope: !4160, file: !1462, line: 57, type: !121)
!4160 = distinct !DISubprogram(name: "memset", scope: !1462, file: !1462, line: 57, type: !1867, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !4161)
!4161 = !{!4159, !4162, !4163}
!4162 = !DILocalVariable(name: "__ch", arg: 2, scope: !4160, file: !1462, line: 57, type: !83)
!4163 = !DILocalVariable(name: "__len", arg: 3, scope: !4160, file: !1462, line: 57, type: !124)
!4164 = !DILocation(line: 0, scope: !4160, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 1137, column: 3, scope: !4153, inlinedAt: !4158)
!4166 = !DILocation(line: 59, column: 10, scope: !4160, inlinedAt: !4165)
!4167 = !DILocation(line: 137, column: 5, scope: !4148)
!4168 = !DILocation(line: 138, column: 11, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4129, file: !708, line: 138, column: 7)
!4170 = !DILocation(line: 138, column: 7, scope: !4129)
!4171 = !DILocation(line: 139, column: 5, scope: !4169)
!4172 = !DILocation(line: 143, column: 26, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4129, file: !708, line: 143, column: 7)
!4174 = !DILocation(line: 143, column: 41, scope: !4173)
!4175 = !DILocation(line: 143, column: 7, scope: !4129)
!4176 = !DILocation(line: 145, column: 15, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4178, file: !708, line: 145, column: 11)
!4178 = distinct !DILexicalBlock(scope: !4173, file: !708, line: 144, column: 5)
!4179 = !DILocation(line: 145, column: 11, scope: !4178)
!4180 = !DILocation(line: 146, column: 32, scope: !4177)
!4181 = !DILocation(line: 146, column: 16, scope: !4177)
!4182 = !DILocation(line: 146, column: 14, scope: !4177)
!4183 = !DILocation(line: 146, column: 9, scope: !4177)
!4184 = !DILocation(line: 286, column: 1, scope: !4129)
!4185 = !DISubprogram(name: "mbsinit", scope: !4186, file: !4186, line: 293, type: !4187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !862)
!4186 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!83, !4189}
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!4191 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !785, file: !785, line: 27, type: !3391, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4192)
!4192 = !{!4193, !4194, !4195, !4196}
!4193 = !DILocalVariable(name: "ptr", arg: 1, scope: !4191, file: !785, line: 27, type: !121)
!4194 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4191, file: !785, line: 27, type: !124)
!4195 = !DILocalVariable(name: "size", arg: 3, scope: !4191, file: !785, line: 27, type: !124)
!4196 = !DILocalVariable(name: "nbytes", scope: !4191, file: !785, line: 29, type: !124)
!4197 = !DILocation(line: 0, scope: !4191)
!4198 = !DILocation(line: 30, column: 7, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4191, file: !785, line: 30, column: 7)
!4200 = !DILocalVariable(name: "ptr", arg: 1, scope: !4201, file: !3481, line: 2057, type: !121)
!4201 = distinct !DISubprogram(name: "rpl_realloc", scope: !3481, file: !3481, line: 2057, type: !3473, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !4202)
!4202 = !{!4200, !4203}
!4203 = !DILocalVariable(name: "size", arg: 2, scope: !4201, file: !3481, line: 2057, type: !124)
!4204 = !DILocation(line: 0, scope: !4201, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 37, column: 10, scope: !4191)
!4206 = !DILocation(line: 2059, column: 24, scope: !4201, inlinedAt: !4205)
!4207 = !DILocation(line: 2059, column: 10, scope: !4201, inlinedAt: !4205)
!4208 = !DILocation(line: 37, column: 3, scope: !4191)
!4209 = !DILocation(line: 32, column: 7, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4199, file: !785, line: 31, column: 5)
!4211 = !DILocation(line: 32, column: 13, scope: !4210)
!4212 = !DILocation(line: 33, column: 7, scope: !4210)
!4213 = !DILocation(line: 38, column: 1, scope: !4191)
!4214 = distinct !DISubprogram(name: "hard_locale", scope: !726, file: !726, line: 28, type: !4215, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!158, !83}
!4217 = !{!4218, !4219}
!4218 = !DILocalVariable(name: "category", arg: 1, scope: !4214, file: !726, line: 28, type: !83)
!4219 = !DILocalVariable(name: "locale", scope: !4214, file: !726, line: 30, type: !4220)
!4220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4221)
!4221 = !{!4222}
!4222 = !DISubrange(count: 257)
!4223 = !DILocation(line: 0, scope: !4214)
!4224 = !DILocation(line: 30, column: 3, scope: !4214)
!4225 = !DILocation(line: 30, column: 8, scope: !4214)
!4226 = !DILocation(line: 32, column: 7, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4214, file: !726, line: 32, column: 7)
!4228 = !DILocation(line: 32, column: 7, scope: !4214)
!4229 = !DILocalVariable(name: "__s1", arg: 1, scope: !4230, file: !891, line: 1359, type: !127)
!4230 = distinct !DISubprogram(name: "streq", scope: !891, file: !891, line: 1359, type: !892, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4231)
!4231 = !{!4229, !4232}
!4232 = !DILocalVariable(name: "__s2", arg: 2, scope: !4230, file: !891, line: 1359, type: !127)
!4233 = !DILocation(line: 0, scope: !4230, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 35, column: 9, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4214, file: !726, line: 35, column: 7)
!4236 = !DILocation(line: 1361, column: 11, scope: !4230, inlinedAt: !4234)
!4237 = !DILocation(line: 35, column: 29, scope: !4235)
!4238 = !DILocation(line: 0, scope: !4230, inlinedAt: !4239)
!4239 = distinct !DILocation(line: 35, column: 32, scope: !4235)
!4240 = !DILocation(line: 1361, column: 11, scope: !4230, inlinedAt: !4239)
!4241 = !DILocation(line: 1361, column: 10, scope: !4230, inlinedAt: !4239)
!4242 = !DILocation(line: 35, column: 7, scope: !4214)
!4243 = !DILocation(line: 46, column: 3, scope: !4214)
!4244 = !DILocation(line: 47, column: 1, scope: !4214)
!4245 = distinct !DISubprogram(name: "setlocale_null_r", scope: !792, file: !792, line: 154, type: !4246, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4248)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!83, !83, !122, !124}
!4248 = !{!4249, !4250, !4251}
!4249 = !DILocalVariable(name: "category", arg: 1, scope: !4245, file: !792, line: 154, type: !83)
!4250 = !DILocalVariable(name: "buf", arg: 2, scope: !4245, file: !792, line: 154, type: !122)
!4251 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4245, file: !792, line: 154, type: !124)
!4252 = !DILocation(line: 0, scope: !4245)
!4253 = !DILocation(line: 159, column: 10, scope: !4245)
!4254 = !DILocation(line: 159, column: 3, scope: !4245)
!4255 = distinct !DISubprogram(name: "setlocale_null", scope: !792, file: !792, line: 186, type: !4256, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!127, !83}
!4258 = !{!4259}
!4259 = !DILocalVariable(name: "category", arg: 1, scope: !4255, file: !792, line: 186, type: !83)
!4260 = !DILocation(line: 0, scope: !4255)
!4261 = !DILocation(line: 189, column: 10, scope: !4255)
!4262 = !DILocation(line: 189, column: 3, scope: !4255)
!4263 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !794, file: !794, line: 35, type: !4256, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4264)
!4264 = !{!4265, !4266}
!4265 = !DILocalVariable(name: "category", arg: 1, scope: !4263, file: !794, line: 35, type: !83)
!4266 = !DILocalVariable(name: "result", scope: !4263, file: !794, line: 37, type: !127)
!4267 = !DILocation(line: 0, scope: !4263)
!4268 = !DILocation(line: 37, column: 24, scope: !4263)
!4269 = !DILocation(line: 62, column: 3, scope: !4263)
!4270 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !794, file: !794, line: 66, type: !4246, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4271)
!4271 = !{!4272, !4273, !4274, !4275, !4276}
!4272 = !DILocalVariable(name: "category", arg: 1, scope: !4270, file: !794, line: 66, type: !83)
!4273 = !DILocalVariable(name: "buf", arg: 2, scope: !4270, file: !794, line: 66, type: !122)
!4274 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4270, file: !794, line: 66, type: !124)
!4275 = !DILocalVariable(name: "result", scope: !4270, file: !794, line: 111, type: !127)
!4276 = !DILocalVariable(name: "length", scope: !4277, file: !794, line: 125, type: !124)
!4277 = distinct !DILexicalBlock(scope: !4278, file: !794, line: 124, column: 5)
!4278 = distinct !DILexicalBlock(scope: !4270, file: !794, line: 113, column: 7)
!4279 = !DILocation(line: 0, scope: !4270)
!4280 = !DILocation(line: 0, scope: !4263, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 111, column: 24, scope: !4270)
!4282 = !DILocation(line: 37, column: 24, scope: !4263, inlinedAt: !4281)
!4283 = !DILocation(line: 113, column: 14, scope: !4278)
!4284 = !DILocation(line: 113, column: 7, scope: !4270)
!4285 = !DILocation(line: 116, column: 19, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4287, file: !794, line: 116, column: 11)
!4287 = distinct !DILexicalBlock(scope: !4278, file: !794, line: 114, column: 5)
!4288 = !DILocation(line: 116, column: 11, scope: !4287)
!4289 = !DILocation(line: 120, column: 16, scope: !4286)
!4290 = !DILocation(line: 120, column: 9, scope: !4286)
!4291 = !DILocation(line: 125, column: 23, scope: !4277)
!4292 = !DILocation(line: 0, scope: !4277)
!4293 = !DILocation(line: 126, column: 18, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4277, file: !794, line: 126, column: 11)
!4295 = !DILocation(line: 126, column: 11, scope: !4277)
!4296 = !DILocation(line: 128, column: 39, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4294, file: !794, line: 127, column: 9)
!4298 = !DILocalVariable(name: "__dest", arg: 1, scope: !4299, file: !1462, line: 26, type: !1465)
!4299 = distinct !DISubprogram(name: "memcpy", scope: !1462, file: !1462, line: 26, type: !1463, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4300)
!4300 = !{!4298, !4301, !4302}
!4301 = !DILocalVariable(name: "__src", arg: 2, scope: !4299, file: !1462, line: 26, type: !1026)
!4302 = !DILocalVariable(name: "__len", arg: 3, scope: !4299, file: !1462, line: 26, type: !124)
!4303 = !DILocation(line: 0, scope: !4299, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 128, column: 11, scope: !4297)
!4305 = !DILocation(line: 29, column: 10, scope: !4299, inlinedAt: !4304)
!4306 = !DILocation(line: 129, column: 11, scope: !4297)
!4307 = !DILocation(line: 133, column: 23, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4309, file: !794, line: 133, column: 15)
!4309 = distinct !DILexicalBlock(scope: !4294, file: !794, line: 132, column: 9)
!4310 = !DILocation(line: 133, column: 15, scope: !4309)
!4311 = !DILocation(line: 138, column: 44, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4308, file: !794, line: 134, column: 13)
!4313 = !DILocation(line: 0, scope: !4299, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 138, column: 15, scope: !4312)
!4315 = !DILocation(line: 29, column: 10, scope: !4299, inlinedAt: !4314)
!4316 = !DILocation(line: 139, column: 15, scope: !4312)
!4317 = !DILocation(line: 139, column: 32, scope: !4312)
!4318 = !DILocation(line: 140, column: 13, scope: !4312)
!4319 = !DILocation(line: 0, scope: !4278)
!4320 = !DILocation(line: 145, column: 1, scope: !4270)
